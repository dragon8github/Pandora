; 创建专属目录
if !FileExist(".pandora")
	FileCreateDir, .pandora
	; 创建缓存目录
	if !FileExist(".pandora/.cache")
		FileCreateDir, .pandora/.cache

; 其实不应该放在这里的，但不知道为啥必须放在这里才生效
OnClipboardChange("ClipChanged")
ClipChanged(Type) {
    if (type == 1) {
        filename := A_WorkingDir . "\.pandora\.cache\" . A_YYYY . A_MM . A_DD . ".txt"
        if (Var != Clipboard and StrLen(Trim(StrReplace(Clipboard, "`r`n"))) != 0) {
            time := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
            FileAppend, __________________%time%__________________`r`n`r`n%Clipboard%`r`n`r`n, *%filename%
        }
    }
}

; 下载内容
ajax(url, q:=false, text:="正在为你下载代码，请保持网络顺畅")
{
    whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    whr.Open("GET", url, true)
    whr.Send()
    if (text != "") {
        TrayTip, 请稍后, % text, 20, 17
    }   
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

; 复制黏贴大段文本
code(code)
{
    tmp := Clipboard
    Clipboard := code
    ; 这里也需要等待，否则有几率出现黏贴不出的情况，如果出现黏贴不出的情况，就尝试调大这里的数值把
    Sleep, 40
    SendInput, ^+v
    ; 这里至少需要等待100m，原因不详
    sleep, 100
    Clipboard := tmp
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


