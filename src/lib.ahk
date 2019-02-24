/* （已废弃。将来再考虑重启。必须放在最外面才有效）
; 创建专属目录
if !FileExist(".pandora")
	FileCreateDir, .pandora
	; 创建缓存目录
	if !FileExist(".pandora/.cache")
		FileCreateDir, .pandora/.cache

; 其实不应该放在这里的，但不知道为啥必须放在这里才生效
OnClipboardChange("ClipChanged")
ClipChanged(Type) {
	MsgBox, 123
    try {
       if (type == 1) {
            filename := A_WorkingDir . "\.pandora\.cache\" . A_YYYY . A_MM . A_DD . ".txt"
            if (Var != Clipboard and StrLen(Trim(StrReplace(Clipboard, "`r`n"))) != 0) {
                time := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
                FileAppend, __________________%time%__________________`r`n`r`n%Clipboard%`r`n`r`n, *%filename%
            }
        }  
    } catch e {
        
    }
}
*/

; (获取当前输入法的代码， 注册表位置： HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\  https://blog.csdn.net/liuyukuan/article/details/53836287)
/*
#z::
SetFormat, Integer, H 
WinID:=WinActive("A")
ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0) 
InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt") 
Clipboard:=InputLocaleID
MsgBox, %InputLocaleID% 
return
*/


tip(title=" ", content=" ") {
    TrayTip, %title%, %content%, 20 ,16
    SetTimer, _HideTrayTip, 1500
}

_HideTrayTip() {  ; NOTE: For Windows 10, replace this function with the one defined above.
    TrayTip
}

arrincludes(myarr, v) {
	b := false
	For key, value in myarr {
		if (value == v) {
			b := true
			break
		}
	}
	return b
}

RunByCmder(name) {
    myIdea := "C:\Users\Lee\cmder\Cmder.exe"
    Run, %myIdea% %name%
}

_send(v, isSendLevel = false, isTab = false) {
    
    if (isSendLevel) {
        SendLevel 1
    }
    
    Send, % v
    
    if (WinExist("ahk_class SoPY_Comp")) {
        send, {shift}
    }

    if (isTab) {
       send, {tab}
    }
}

_sendinput(v, isSendLevel = false) {
    if (isSendLevel) {
        SendLevel 1
    }
    if (WinExist("ahk_class SoPY_Comp")) {
        send, {Shift}
    }
    SendInput, % v
}

;^!g::
;GitBy(Clipboard)
;return

RunBy(name) {
    myIdea := "C:\Program Files\Sublime Text 3\sublime_text3.exe"
    if (!FileExist(myIdea)) {
        myIdea := "C:\Program Files\Sublime Text 3\sublime_text.exe"
         if (!FileExist(myIdea)) {
            myIdea := "notepad"
         }
    }
    Run, %myIdea% %name%
}

; a := RunWaitOne("node -v")
; MsgBox, % a
RunWaitOne(command) {
    ; WshShell 对象: http://msdn.microsoft.com/en-us/library/aew9yb99
    shell := ComObjCreate("WScript.Shell")
    ; 通过 cmd.exe 执行单条命令
    exec := shell.Exec(ComSpec " /C " command)
    ; 读取并返回命令的输出
	return exec.StdOut.ReadAll()
}


; 下载内容
ajax(url, q:=false, text:="正在为你下载代码，请保持网络顺畅")
{
    whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    whr.Open("GET", url, true)
    whr.Send()
    ;if (text != "") {
    ;    TrayTip, 请稍后, % text, 20, 17
    ;}   
    whr.WaitForResponse()
    
    
    if (q==false) {
        if (whr.ResponseText) {
            tip("下载成功")
        } else {
            tip("无内容返回")
        }
    }
    
    return  whr.ResponseText
}


; 下载内容
post(url, data, q:=false, text:="正在为你下载代码，请保持网络顺畅")
{
    whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    whr.Open("POST", url, true)
    whr.SetRequestHeader("Content-Type", "application/json;charset=utf-8")
    whr.Send(data)
    ;if (text != "") {
    ;    TrayTip, 请稍后, % text, 20, 17
    ;}   
    whr.WaitForResponse()
    
    if (q==false) {
        
        if (whr.ResponseText) {
            TrayTip, 下载成功, （づ￣3￣）づ╭?～ , 20, 17
        } else {
            TrayTip, 无内容返回, (￣ε(#￣)☆╰╮o(￣皿￣///) , 20, 17
        }
    }
    
    return  whr.ResponseText
}



; 关闭输入法
; 使用示例：SwitchIME(0x08040804)
; 使用示例：SwitchIME(0x04090409)
SwitchIME(dwLayout){
    HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
    ControlGetFocus,ctl,A
    SendMessage,0x50,0,HKL,%ctl%,A
}


; 获取当前窗口的id，使用是if WinActive("ahk_id 0x3d1362")
; https://wyagd001.github.io/zh-cn/docs/misc/WinTitle.htm#ActiveWindow
::winid::
     Send, % WinExist("A")
return

; 获取当前窗口的class，使用范围较广
; https://wyagd001.github.io/zh-cn/docs/commands/WinGetClass.htm
::winclass::
    WinGetClass, class, A
    Send, % class
return

cs(code) {
    ; 这个函数的主要意义是保存到剪切板，也是为了统一收集send请求。如果以后有需要再移除也行。
    Clipboard := code
    Send, {Text}%code%
}


; 复制黏贴大段文本
code(code) {
    tmp := Clipboard
    Clipboard := code
    ; 这里也需要等待，否则有几率出现黏贴不出的情况，如果出现黏贴不出的情况，就尝试调大这里的数值把
    Sleep, 200
    Send, {CtrlDown}{ShiftDown}v{CtrlUp}{ShiftUp}
    ; 这里至少需要等待100m，原因不详
    sleep, 100
    ; 还原剪切板
    Clipboard := tmp
}