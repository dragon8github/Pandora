
toUpFir(v) {
    f := SubStr(v, 1, 1)
    StringUpper, f, f
    return f . SubStr(v, 2)
}

tip(title=" ", content=" ") {
    TrayTip, %title%, %content%, 20 ,16
    SetTimer, _HideTrayTip, 1500
}

_HideTrayTip() {  ; NOTE: For Windows 10, replace this function with the one defined above.
    TrayTip
}

pandoraFolderInit() {
    DIRECTORY := A_Desktop . "\.pandora"
	AttributeString := FileExist(DIRECTORY)
	; 如果没有目录，则创建
	if (AttributeString != "D") {
		FileCreateDir, % DIRECTORY
	}
    return DIRECTORY
}

gettvchild(id){
    ret =
    if(firstid := TV_GetChild(id)){
        ret := [],first := true
        ret[firstid] := ""
        while(nextid := TV_GetNext(first ? (firstid,first:=false) : nextid)){
            ret[nextid] := ""
        }
    }
    for k,v in ret
    {
        if (TV_GetChild(k))
            ret[k] := gettvchild(k)
    }
    return ret
}
 
expandallchild(id){
    ret := "",TV_Modify(id,"Expand")
    if(firstid := TV_GetChild(id)){
        ret := [],first := true
        ret[firstid] := ""
        while(nextid := TV_GetNext(first ? (firstid,first:=false) : nextid)){
            ret[nextid] := ""
        }
    }
    for k,v in ret
    {
        if (TV_GetChild(k))
            TV_Modify(k,"Expand"),ret[k] := expandallchild(k)
    }
    return ret
}
 
var_dump(obj,level:=0){
    static str
    if !level
        str := ""
    if IsObject(obj)
    {
        space =
        loop % level
            space .= A_Tab
        str .= space "{`n"
        for k,v in obj
        {
            if IsObject(v)
            {
                str .= space A_Tab (RegExMatch(k,"^\d+$") ? k : """" k """") ":`n"
                var_dump(v,level+1)
                str := RegExReplace(str,"(*ANYCRLF)\n$",",`n")
            }
            else
                str .= space A_Tab (RegExMatch(k,"^\d+$") ? k : """" k """") ":""" RegExReplace(v,"""","""""") """,`n"
        }
        str := RegExReplace(str,"(*ANYCRLF),\n*$","`n")
        str .= space "}`n"
    }
    else
        str := obj
    return str
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
    
    if (WinExist("ahk_class SoPY_Comp") || WinExist("ahk_class Microsoft.IME.UIManager.CandidateWindow.Host")) {
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

    if (WinExist("ahk_class SoPY_Comp") || WinExist("ahk_class Microsoft.IME.UIManager.CandidateWindow.Host")) {
        send, {Shift}
    }
    
    SendInput, % v
}



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

RunByVsCode(name) {
    myIdea := "C:\Program Files\Microsoft VS Code\Code.exe"
    Run, %myIdea% %name%
}


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
    ; whr.SetRequestHeader("Content-Type", "application/json;charset=UTF-8")
    
    whr.Send()

    whr.WaitForResponse()
    
    if (q==false) {
        if (whr.ResponseText) {
            tip("下载成功")
        } else {
            tip("无内容返回")
        }
    }
    
    arr := whr.responseBody
    pData := NumGet(ComObjValue(arr) + 8 + A_PtrSize)
    length := arr.MaxIndex() + 1
    text := StrGet(pData, length, "utf-8")
    return text
    
    ; return  whr.ResponseText
}

; Delete
delete(url)
{
    whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    whr.Open("DELETE", url, true)
    whr.Send()
        whr.WaitForResponse()
    return  whr.ResponseText
}



; 下载内容
post(url, data, q:=false, text:="正在为你下载代码，请保持网络顺畅")
{
    whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    whr.Open("POST", url, true)
    whr.SetRequestHeader("Content-Type", "application/json;charset=utf-8")
    whr.Send(data)
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
    SendInput, {Text}%code%
}


; 复制黏贴大段文本
code(code) {
    tmp := Clipboard
    Clipboard := code
    ; 这里也需要等待，否则有几率出现黏贴不出的情况，如果出现黏贴不出的情况，就尝试调大这里的数值把
    Sleep, 200
    WinGetTitle, title, A
    if (InStr(title, "Android Studio") or InStr(title, "PyCharm") or InStr(title, "WebStorm") or InStr(title, "PhpStorm") or InStr(title, "IDEA") or InStr(title, "Notepad2")) {
        SendInput, {CtrlDown}v{CtrlUp}
    } else {
        Send, {CtrlDown}{ShiftDown}v{CtrlUp}{ShiftUp}
    }
    ; 这里至少需要等待100m，原因不详
    sleep, 100
    ; 还原剪切板
    Clipboard := tmp
}

; 生成快捷键： alt + ctrl + 0~9
^!1::
^!2::
^!3::
^!4::
^!5::
^!6::
    num := SubStr(A_ThisHotkey, 0, 1)
    code(__ALTCTRL__[num])
return

 ; 暂时只支持6大txt显示。不够再添加吧。控制一下体积。
 txtit(ary, spliter="---") {
  ; 全局变量真的只能这样用了，定义在外面没有办法生存。
  global pidary := pidary ? pidary : []
  ; 存储
  global __ALTCTRL__ := []
  
  ; 数组长度，一共有几个需要显示的？
  len := ary.Length()
  
  ; 如果是字符串的话：数组的长度一定不会为空，如果为空，说明是字符串吧
  if (len == "") {
    ; 切割字符串为数组
    ary := StrSplit(ary, spliter)
    ; 新的数组长度
    len := ary.Length()
  }
  
  ; 一行显示几个？
  xsize := len <= 2 ? 2 : 3
  ; 一共有几行
  ycount := Ceil(len / xsize)
  ; 开始遍历
  For index, value in ary {
     ; 索引是从1开始的，我习惯从0开始
     i := index - 1
     ; x轴的位置
     _x := A_ScreenWidth * (Mod(i, xsize) / xsize)
     ; y轴的位置（如果只有一行普遍都是0即可)
     _y := i < xsize ? 0 : A_ScreenHeight / (Abs(index / xsize) + 1)
     ; 当前宽度
     _w := A_ScreenWidth / xsize
     ; 当前高度
     _h := A_ScreenHeight / ycount
    ; 存储到 __ALTCTRL__
    __ALTCTRL__.push(value)
     try {
         ; 开始执行
         Run, notepad2,,, pid
         pidary.push(pid)
         WinWait, ahk_pid %pid%
         WinMove, ahk_pid %pid%,, _x, _y, _w, _h
         WinActivate, ahk_pid %pid%
         code(value)
     }
     catch e {
        MsgBox, 你的电脑没有安装nodepad2，请先下载安装并且加入到Path，然后重启电脑重试。
        run, http://www.flos-freeware.ch/zip/Notepad2_4.2.25_x64.exe
        Exit
     }
  }
  return
}

!x::
For key, value in pidary {
    Process, Close, %value%
}
return

join(ary, symbol = "; ") {
str := 
for index, element in ary {
    str .= element . symbol
}
return str
}

pshell(command) {
 _command := "$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8' `; " . command
 run, powershell.exe %_command%
}


psdit(url, otherCommand = "") {
 ; 找到最后一个/的位置
 index := InStr(url, "/", false, 0) + 1
 ; zip名字
 zipname := SubStr(url, index)
 ; 去除后缀
 suffixIndex := InStr(zipname, ".", false, 1) - 1
 ; 由于要使用git命令，所以要将window格式转化为unix格式的路径
 desk := StrReplace(A_Desktop, "\", "/")
 ; 文件夹的名字
 name := desk . "/" . SubStr(zipname, 1, suffixIndex) . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
 ; 核心命令 
 command = 
 (
 mkdir %name% ; cd %name% ; Invoke-WebRequest -uri "%url%" -OutFile "%zipname%" ; Expand-Archive -Path %zipname% -DestinationPath . ; rm %zipname% ; %otherCommand%
 )
 ; 使用pw执行
 ; run, powershell.exe %command%
 pshell(command)
 ; 等待一下时间
 sleep, 3500
 ; 打开文件夹
 run, % name
}

::ahkurl::
::ahktemplate::
::ahktmp::
::ahkpwd::
::ahkgithub::
Var =
(
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/vue3-template.zip", "yarn `; npm rebuild node-sass `; npm run dev")
)
code(Var)
return

::ahktxt::
::vartxt::
Var =
(
Var =
(

`)
txtit(Var)
)
code(Var)
return

::ahkpshell::
::pshellahk::
Var =
(
name := "my-app" . "-" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
command := []
command.push("cd " . A_Desktop)
command.push("npx create-react-app " . name)
command.push("cd" . name)
command.push("echo SKIP_PREFLIGHT_CHECK=true > .env")
command.push("npm start")
command := join(command)
pshell(command)
return 
)
code(Var)
return


jsonParse(str) {
;StringReplace, str1, str, \", ", All
;StringReplace, str2, str1, ", \", All 

jscontent =
(
eval('(' + "%str%" + ')')
)


script := new ActiveScript("JScript")
return script.Eval(jscontent)
}

gistById(access_token, id) {
data := ajax("https://gitee.com/api/v5/gists/" . id . "?access_token=" . access_token)
return data
}

gistByName(access_token, name) {
    json_str := ajax("https://gitee.com/api/v5/gists?access_token=" . access_token)
    data := JSON.Load(json_str)
    result :=
    For key, value in data
        if(value.description == name) {
            result := value.files[name].content
        }
    
    return result
}

gistList(access_token) {
    json_str := ajax("https://gitee.com/api/v5/gists?access_token=" . access_token)
    data := JSON.Load(json_str)
    return data
}