;生成32位UUID
GUID(){
    shellobj := ComObjCreate("Scriptlet.TypeLib")
    ret := shellobj.GUID
    uuid := RegExReplace(ret,"({|}|-)","") ;去掉花括号和-
    return uuid
}

htmlit() 
{
    dir := A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
    FileCreateDir, % dir
    return  dir . "\index.html"
}

p(v) 
{
; WinClip.paste(v)
code(v)
}

createPic(PicPath)
{
	; Start gdi+
    pToken := Gdip_Startup() 

		;从剪切板直接获取位图
		pBitmapAlpha := Gdip_CreateBitmapFromClipboard()
		;图片的宽度
		ImgWidth := Gdip_GetImageWidth(pBitmapAlpha)  
		;图片的高度
		ImgHeight := Gdip_GetImageHeight(pBitmapAlpha)
		
		;保存图片到指定的位置;第三个参数控制图片质量
		Gdip_SaveBitmapToFile(pBitmapAlpha, PicPath, "255")
		Gdip_DisposeImage(pBitmapAlpha)

    ; close gdi+    
    Gdip_Shutdown(pToken) 
}

getPicWH(PicPath) 
{
if (PicPath) {
    objImage := ComObjCreate("WIA.ImageFile")
    objImage.LoadFile(PicPath)
    return objImage
}
}



HexToRGB(color) {
    colorR := SubStr(color, 3, 2)
    colorG := SubStr(color, 5, 2)
    colorB := SubStr(color, 7, 2)
    colorR = 0x%colorR%
    colorG = 0x%colorG%
    colorB = 0x%colorB%
    SetFormat, IntegerFast, D
    colorR += 0
    SetFormat, IntegerFast, D
    colorG += 0
    SetFormat, IntegerFast, D
    colorB += 0
    colorRGB = rgba(%colorR%`, %colorG%`, %colorB%, 1)
    return colorRGB
}

toUpFir(v) {
    f := SubStr(v, 1, 1)
    StringUpper, f, f
    return f . SubStr(v, 2)
}



tip2(title="") {
    ToolTip, % title
    SetTimer, RemoveToolTip, -1500
}

tip(title=" ", content=" ") {
    TrayTip, %title%, %content%, 20 ,16
    SetTimer, _HideTrayTip, 1500
}

tip3(v) {
clipboard := v
tip2(v)
}

_HideTrayTip() {  ; NOTE: For Windows 10, replace this function with the one defined above.
    TrayTip
}

pandoraFolderInit() {
    DIRECTORY := A_Desktop . "\.pandora"
	AttributeString := FileExist(DIRECTORY)
	; 如果没有目录，则创建
	if (AttributeString != "D") {
        ; 创建文件夹
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

fuck(value) {
    return Trim(StrReplace(StrReplace(StrReplace(value, "`r"), "`n"), "`r`n"))
}

arrincludes(myarr, v) {
	b := false
	For key, value in myarr {
    
        vv := fuck(value)
    
		if (vv == v) {
			b := true
			break
		}
	}
	return b
}

RunByHyper(name) {
   WinGet, OutputVar, IDLast, Hyper

   if (OutputVar) {
        WinActivate, ahk_id %OutputVar%
        ; tip2("Hyper 推荐只开启一个，如果需要多个，请使用 ctrl + shift + t 新建多标签")
        return 
   }

    myIdea := "Hyper.exe"
    RunWait, %myIdea% %name%,, max, pid

    prevHyperPid := pid

    ; 等待窗口出现
    WinWait, Hyper

    ; 如果出现了
    if (WinExist("Hyper")) {

       WinGet, OutputVar, IDLast, Hyper

       WinActivate, ahk_id %OutputVar%

       ; 激活窗口
       ; WinActivate, Hyper

       ; 等待激活窗口
       WinWaitActive, Hyper,, 100

       ; 如果激活成功了，那么透明化它
       if (ErrorLevel) {
           return
       } else {
           WinSet, Transparent, 180, ahk_id %OutputVar%
       }     
    }
}

RunByCmder(name) {
    myIdea := A_Desktop . "\cmder\Cmder.exe"
    Run, %myIdea% %name%,, max
}

_send(v, isSendLevel = false, isTab = false) {
    
    if (isSendLevel) {
        SendLevel 1
    }
    
    Send, % v
    
    ; todo 百度输入法再呼出菜单栏的时候会隐藏才是最骚的
    if (WinExist("ahk_class SoPY_Comp") || WinExist("ahk_class Microsoft.IME.UIManager.CandidateWindow.Host") || WinExist("ahk_class ahk_class BAIDU_CLASS_IME_87C946A9-47CC-4068-A02B-9381C1F11B24")) {
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
            myIdea := "C:\Program Files (x86)\Sublime Text 3\sublime_text.exe"
             if (!FileExist(myIdea)) {
                myIdea := "notepad"
             }
         }
    }
    Run, %myIdea% %name%
}

RunByVsCode(name) {
    ; 如果包含 index.html，那么打开文件夹而不是文件。
    if (InStr(name, "index.html")) {
        ; 截取文件夹的字符串（从右边开始搜索）
        StringGetPos, pos, name, index.html, R1
        ; 文件夹地址
        name := SubStr(name, 1, pos)
    }

    myIdea := "C:\Program Files\Microsoft VS Code\Code.exe"

    if (!FileExist(myIdea)) {
        myIdea := A_Temp . "\..\Programs\Microsoft VS Code\Code.exe"
    }
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

    ; 重要，甚至是必备的。
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
    ; 需要转化为字符串
    whr.Send(JSON.Dump(data))
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
    p(code)
}


; 复制黏贴大段文本
code(code) {
    tmp := Clipboard

    Clipboard := code

    ; 这里也需要等待，否则有几率出现黏贴不出的情况，如果出现黏贴不出的情况，就尝试调大这里的数值把
    Sleep, 200
    WinGetTitle, title, A


    ; if (InStr(title, "有道云笔记")) {
    ;     Send, {CtrlDown}v{CtrlUp}
    ; } else if (InStr(title, "Android Studio") or InStr(title, "PyCharm") or InStr(title, "WebStorm") or InStr(title, "PhpStorm") or InStr(title, "IDEA") or InStr(title, "Notepad2")) {
    ;     ; Send, {CtrlDown}v{CtrlUp}
    ;     WinClip.paste()
    ; } else {
    ;     ; Send, {CtrlDown}{ShiftDown}v{CtrlUp}{ShiftUp}
    ;     WinClip.paste()
    ; }

    ; Send, {CtrlDown}{ShiftDown}v{CtrlUp}{ShiftUp}
    
    WinClip.paste()


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
 txtit2(ary, spliter="---") {
  ; 全局变量真的只能这样用了，定义在外面没有办法生存。
  global pidary := pidary ? pidary : []
  
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



txtit(code, spliter = "---") {
	; 缩放比 小米0.7 surface 0.45
	zoom := A_ScreenWidth > 2000 ? 0.45 : 0.7

	; GUI 的宽高
	GUI_width := A_ScreenWidth * zoom
	GUI_height := A_ScreenHeight * zoom

	; 创建临时 GUI
	Gui, Code:New
	
	; 切割字符串为数组
    ary := StrSplit(code, spliter)
	
    ; 新的数组长度
    len := ary.Length()
	
	; 获取函数 code 引用
	fn := Func("code")
    
    
	; 开始遍历
    For index, value in ary {
		; 索引是从1开始的，我习惯从0开始
		i := index - 1
        
        ; 除了第一次以外，由于 strSplit 的原因，会有换行符。 我把它移除
        if (i > 0) {
            ; 前两个字符，应该就是`n了
            value := SubStr(value, 2)
        }
		
		; 如果<= 3个，我就占 1/1。
		; 如果>= 4个，我就沾满 1/2。
		; 如果>= 7个, 我就沾据 1/3
		h_rate :=  1 / Ceil(len / 3)
		h := GUI_height * h_rate
		
		; 暂时写死每个占据 1/3 大小。 
		w := GUI_width / 3
	
		x_rate := Mod(i, 3)
		x := GUI_width * (x_rate == 0 ? 0 : (x_rate / 3))
		
		y_rate := Floor(i / 3)
		y := GUI_height * (y_rate == 0 ? 0 : (1 / (y_rate + 1)))

        ; 存储到 __ALTCTRL__
        __ALTCTRL__.push(value)

		; 添加文本框  ReadOnly
		Gui, Code:Add, Edit, X0 Y%y% X%x% W%w% H%h% -Wrap HScroll , % value
		
		; 绑定数据
		_fn := fn.Bind(value)
		
		; 新建热键
		Hotkey, ^!%index%, % _fn 
	}
	
	; Show
	Gui, Code:Show, W%GUI_width% H%GUI_height%, 代码大全 - CTRL + ALT + N 可以快速输出代码
}


CodeGuiEscape:
CodeGuiClose:
	Gui, Code:Destroy
return

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


::vartxt::
::txtvar::
::txtit::
::vartxt::
::ahktxt::
::ahktxtit::
::txtit::
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