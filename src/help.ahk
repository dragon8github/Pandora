::api.open::
::api.sw::
::apisw::
Var =
(
function copyToClipboard (text) {
    if(text.indexOf('-') !== -1) {
        let arr = text.split('-');
        text = arr[0] + arr[1];
    }
    var textArea = document.createElement("textarea");
      textArea.style.position = 'fixed';
      textArea.style.top = '0';
      textArea.style.left = '0';
      textArea.style.width = '2em';
      textArea.style.height = '2em';
      textArea.style.padding = '0';
      textArea.style.border = 'none';
      textArea.style.outline = 'none';
      textArea.style.boxShadow = 'none';
      textArea.style.background = 'transparent';
      textArea.value = text;
      document.body.appendChild(textArea);
      textArea.select();

      try {
        var successful = document.execCommand('copy');
      } catch (err) {
        console.log('该浏览器不支持点击复制到剪贴板');
      }
      document.body.removeChild(textArea);
}

document.querySelectorAll('.opblock-tag, .models h4').forEach(function (e, i) {
     e.click()
});

document.querySelectorAll('.nostyle[href]').forEach(function (e, i) {
    e.removeAttribute('href')
});

document.querySelectorAll('.opblock-summary').forEach(function (e, i) {
    e.addEventListener('click', function (event) {
	    console.log(20180929161401, e.querySelector('.opblock-summary-path').innerText)
	    copyToClipboard(e.querySelector('.opblock-summary-path').innerText.trim())
	})
});
)
code(Var)
return

+c::    
    str := Clipboard
    Clipboard := 
    Send, ^c
    ClipWait
    Clipboard := str . "`r`n" . Clipboard
return



~!+l::
Clipboard := 
Send, ^c
ClipWait
MyVar := Clipboard
V := ""
repeatArr := []
Loop, parse, MyVar, `n, `r
{
	if (StrLen(A_LoopField) and InStr(A_LoopField, " class")) {
		; 获取class值
		RegExMatch(A_LoopField, "mi`a)class\s*=\s*['|""]{1}(.+?)['|""]{1}", OutputVar)
		; 获取缩进
		RegExMatch(A_LoopField, "^(\s*)(.*)<", spaceValue)

		; MsgBox, %spaceValue1%
		; MsgBox, %OutputVar1%
        
        ; 如果没有重复的话
        if (arrincludes(repeatArr, OutputVar1) == false) {
            ; 先加入到数组中
            repeatArr.Push(OutputVar1)
            
            ; 先去掉左右空白符
            data := Trim(OutputVar1)
            s := StrSplit(data, A_Space)
            Loop % s.MaxIndex() {
                D := s[a_index]
                V .= spaceValue1 . "." . D . " {" . "`r`n"
                V .= spaceValue1 . "`t" . "`r`n"
                V .= spaceValue1 . "}" . "`r`n`r`n"
            }
        }
	}
}
Clipboard := V
tip("生成完毕", "已将生成代码加入到剪切板中")
return


^!r::
	Clipboard :=
	Send, ^c
	ClipWait
	tmp := Trim(Clipboard)
	_array := StrSplit(tmp, "`r`n")
	myarr := []
    repeatarr := []
    
	if (_array.Length() > 1) {
		For key, value in _array {
			if (!arrincludes(myarr, value)) {
				myarr.push(value)
			} else {
                repeatarr.push(value)
            }
		}
	}
    
	str := 
	For index, value in myarr {
		str .= value
		if (index != myarr.Length()) {
			str.= "`r`n"
		}
	}
    code(str)
    
    repstr :=
    For index, value in repeatarr {
        repstr .= value
		if (index != repeatarr.Length()) {
			repstr.= "`r`n"
		}
	}
    Clipboard := repstr
return

^!l::
    tmp := Clipboard
    Clipboard = 
    Send, ^c
    ClipWait 2
    if (StrLen(Clipboard) > 0) {
        StringLower, String1, Clipboard
        code(String1)
    }
    Clipboard := tmp
return

^!u::
    tmp := Clipboard
    Clipboard = 
    Send, ^c
    ClipWait 2
    if (StrLen(Clipboard) > 0) {
        StringUpper, String1, Clipboard
        code(String1)
    }
    Clipboard := tmp
return

::git2::
::gitt::
Var =
(
git add components/ && git commit -m "迭代" && git push -u origin master
)
SendInput, %Var%{left 30}
return

::ahktime::
::ahknow::
::ahkdate::
Var =
(
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
)
code(Var)
return

::now::
Var := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
code(Var)
return

::git commit::
::git c::
::gitc::
Var =
(
git commit -m ""
)
Send, {text}%Var%
Send, {left}
return


::git push::
::gitpush::
Var =
(
git push -u origin master
)
Send, {text}%Var%
return

::ahkmenu::
Var =
(
!n::

	; try 异常处理
	Menu, A, Add, try / except, ShellHandler

	Menu, ShellMenu, Add, 环境变量, :A
	Menu, ShellMenu, Add, 时间, :B
	Menu, ShellMenu, Add, find , :C
	Menu, ShellMenu, Add, xargs, :D
	Menu, ShellMenu, Add, tr（文本转换）, :E
	Menu, ShellMenu, Add, grep（搜索文本）, :F
	Menu, ShellMenu, Add, sed（替换文本）, :G
	
	
	Menu, ShellMenu, Show
	Menu, ShellMenu, DeleteAll
return


ShellHandler:
; MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.
v := A_ThisMenuItem
Var := 

if (v == "") {
	
}

code(Var)
return
)
code(Var)
return

::startup::
::kaijiqidong::
::qidong::
    Run, %A_Startup%
return

::shehuizhuyi::
Var =
(
富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善
)
code(Var)
return


:*:d]::  ; 此热字串通过后面的命令把 "]d" 替换成当前日期和时间.
FormatTime, CurrentDateTime,, yyyy/MM/dd hh:mm:ss
SendInput %CurrentDateTime%
return

^!c::
    SetKeyDelay, 100
    Sleep, 150
    Send, ^!1
    Send, {Alt}hpc
return

^1::
!1::
    Send, {text}dgeduc-g
return

^2::
!2::
    Send, {text}123456
return

::hosts::
::host::
::vhost::
    SendInput, {text}C:\Windows\System32\drivers\etc
return


MenuHandler:
    SendRaw, % A_ThisMenuItem
Return  

MenuHandlerlifeArray:
    if (A_ThisMenuItem == "xs —— 超小屏幕 手机 (<768px)") {
        SendRaw, xs
    }
    
    else if (A_ThisMenuItem == "sm —— 小屏幕 平板 (≥768px)") {
        SendRaw, sm
    }
    
    else if (A_ThisMenuItem == "md —— 中等屏幕 桌面显示器 (≥992px)") {
        SendRaw, md
    }
    
    else if (A_ThisMenuItem == "lg —— 大屏幕 大桌面显示器 (≥1200px)") {
        SendRaw, lg
    }
    Send, % A_ThisMenuItem
return


::githubimg::
::github-img::
::github.img::
    SendRaw, ![](./showImages/index.jpg)
return

::@de::
    Send, @Decorator
return

::@qq::
::@qq.com::
    Send, 928532756@qq.com
return

::gg::
    Send, google.com
return

^+/::
Var = 
(
/**
 * say something ...
 * @param {*} 参数 参数说明
 */
)
code(Var)
return

::base64::
    Send, data:image/png;base64,
return


::bd::
    SendRaw, http://www.baidu.com
return

^!o::
    str := Trim(Clipboard)
    If(InStr(str, "http://") || InStr(str, "https://") || InStr(str, "www.") || InStr(str, ".com") || InStr(str, "C:") || InStr(str, "D:") || InStr(str, "E:")  || InStr(str, "F:")  || InStr(str, "F:")  || InStr(str, "G:")  || InStr(str, "H:") ) {
        RUN, % str
    } else {
        RUN, https://www.baidu.com/s?wd=%str%
    }
return

!o::
    tmp := Clipboard
    Clipboard := 
    Send, ^c
    ClipWait, 2
    str := Trim(Clipboard)
    If(InStr(str, "http://") || InStr(str, "https://") || InStr(str, "www.") || InStr(str, ".com") || InStr(str, "C:") || InStr(str, "D:") || InStr(str, "E:")  || InStr(str, "F:")  || InStr(str, "F:")  || InStr(str, "G:")  || InStr(str, "H:") ) {
        RUN, % str
    } else {
        RUN, https://www.baidu.com/s?wd=%str%
    }
    Sleep, 200
    Clipboard := tmp
return

+BackSpace::
    Send, {Del}
return

!BackSpace::
    Send, +{Home}
    Send, {Del}
return


!l:: 
    lifeArray := ["beforeMount", "beforeCreate", "created", "mounted", "activated", "", "", "componentWillMount", "componentDidMount", "componentDidUnmount", "", "",  "componentWillReceiveProps", "shouldComponentUpdate", "componentWillUpdate", "componentDidUpdate", "componentDidUpdate", "", "", "primary", "success", "info", "warning", "danger", "", "", "xs —— 超小屏幕 手机 (<768px)", "sm —— 小屏幕 平板 (≥768px)", "md —— 中等屏幕 桌面显示器 (≥992px)", "lg —— 大屏幕 大桌面显示器 (≥1200px)" "", "", "",  "public", "private", "protected"]
    Loop % lifeArray.MaxIndex() {
        this_life := lifeArray[a_index]
        Menu, LifeMenu, Add, %this_life%, MenuHandlerlifeArray
    }
    Menu, LifeMenu, Show
    ; 不然每次都会添加白线
    Menu, LifeMenu, DeleteAll
return

AppsKey & s::
>^s::
    try {
        run, %A_Desktop%\Sublime Text.lnk
        run, %A_Desktop%\sublime_text.exe.lnk
    }
return

!j::
    WinGetTitle, title, A
    if (InStr(title, "Sublime Text") == 0) {
        tmp := Clipboard
        Clipboard :=
        Send, ^c
        ClipWait 1
        Clipboard := StrReplace(Clipboard, "`r`n")  
        Send, ^v
        Clipboard := tmp
    } else {
        Send, ^j
    }
return

!Up::
    Send, {PGUP}
return

^!Up::
#Up::
    Send, {PGUP 10}
return

+!Up::
    Send, +{PGUP}
return

!Down::
    Send, {PGDN}
return

^!Down::
#Down::
    Send, {PGDN 10}
return


+!Down::
    Send, +{PGDN}
return

!Right::
    SendInput, {end} 
return

+!Right::
    SendInput, +{end} 
return

; ~!Left::
!Left::
    SendInput, {Home}
return

+!Left::
    SendInput, +{Home}
return

/*
^!p::
    ; FileSelectFile / FileSelectFolder
	FileSelectFile, OutputVar,,3 
	Clipboard := OutputVar
return
*/


!d::
    run, %A_WorkingDir%/src
return

>!t::
    RUN, https://www.tslang.cn/docs/handbook/basic-types.html
return

>!c::
    run, cmd
return

::@info::
    Send, lizhaohong@hongte.info
return


; ALT + R 重启脚本
!r::
    WinGetActiveTitle, OutputVar
    Pos := InStr(OutputVar, ".ahk") 
    ;if WinActive("ahk_class SciTEWindow")
    if Pos > 0
        Send, ^s
    reload
Return

^!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    SendInput, ^c
    ClipWait, 2
    if (StrLen(Clipboard) >= 50) {
        MsgBox, 请不要把此功能当做翻译机
        return 
    }
    ; 百度翻译API
    Var := ajax("http://119.23.22.136:6635/baidu_transapi.php?text=" . Clipboard . "&type=tuofeng")
    ; 黏贴结果
    code(Var)
    ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
    Clipboard := Var
Return

!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    SendInput, ^c
    ClipWait, 2
    if (StrLen(Clipboard) >= 50) {
        MsgBox, 请不要把此功能当做翻译机
        return 
    }
    ; 百度翻译API
    Var := ajax("http://119.23.22.136:6635/baidu_transapi.php?text=" . Clipboard . "&type=_", true)
    tip("翻译成功", "【" . Clipboard . "】 的翻译结果为： " . Var)
    ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
    Clipboard := Var
Return

/**
; 抓取菜单
+!c::  
    ; 必须add一下才可以使用DeletaAll
    Menu, MyMenu, add
    Menu, MyMenu, DeleteAll
    SendInput, ^c
    Sleep, 150 
    MyVar := clipboard
    clipboard := ""
    RegExMatch(MyVar, "i)(\b\w+\b)(?CCallout)") 
    Callout(m) {
        if (StrLen(m) >= 3 and StrLen(m) < 20) {
            clipboard .= m . ","
        }
        return 1
    }
    MyVar := clipboard
    Sort MyVar, U D,
    ; D默认使用逗号作为分隔符，U移除重复项
    Sort MyVar, U D,
    ColorArray := StrSplit(MyVar, ",")
    Loop % ColorArray.MaxIndex() {
        this_color := ColorArray[a_index]
        Menu, MyMenu, Add, %this_color%, MenuHandler
    }
    TrayTip, 生成成功, （づ￣3￣）づ╭?～ 按下 Ctrl + x 可以启动, 20, 17
return

!x::
     Menu, MyMenu, Show
Return
*/

::ip::
if (A_IPAddress2 == "0.0.0.0") {
    code(A_IPAddress1)
} else { 
    code(A_IPAddress2)
}
return

; 获取当前ip，分为1234四个网卡
::ip1::
    SendInput, % A_IPAddress1
return

::ip2::
    SendInput, % A_IPAddress2
return

::ip3::
    SendInput, % A_IPAddress3
return

::ip4::
    SendInput, % A_IPAddress4
return

AppsKey & l::
>^l::
    ip := A_IPAddress1
    if (A_IPAddress2 == "0.0.0.0") {
       ip := A_IPAddress1
    } else { 
       ip := A_IPAddress2
    }
    Var := "http://" . ip . ":3000"
    SendRaw, % Var
return

; 我阿里云的ip，方便我记忆
AppsKey & i::
>^i::
::aliip::
::ip5::
    SendRaw, 119.23.22.136
return


AppsKey & t::
>^t::
time := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
SendInput, % time
return

::git::
    SendInput, git add . && git commit -m '' --no-verify && git push -u origin master{LEFT 42}
Return

::git-push::
::gitpush::
::git push::
    SendInput, git push -u origin master
return

::git-pull::
::gitpull::
::git pull::
    SendInput, git pull origin master
return

::gitig::
::.git::
::gitignore::
Var = 
(
.DS_Store
node_modules/
dist/
npm-debug.log*
yarn-debug.log*
yarn-error.log*
test/unit/coverage
test/e2e/reports
selenium-debug.log

# Editor directories and files
.idea
*.suo
*.ntvs*
*.njsproj
*.sln
)
code(Var)
return

::auth::
    SendInput, Authorization
return

!a::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%, RGB  
    Clipboard := SubStr(color, 3) ; 考虑在前面加上，但我就算了，实战的时候发现这个东西有点多余"#" . 
    TrayTip, my title, current color is `n %Clipboard%, 20, 17
return

^+d::
    InputBox, OutputVar, title, enter your download url?
    if (OutputVar != "") {
        text := ajax(OutputVar)
        RUN, notepad
        WinWaitActive, 无标题 - 记事本, , 2
        if ErrorLevel {
            MsgBox, WinWait timed out.
        }
        else {
            ; 这里需要聚焦一下
            Winactivate
            code(text)
        }
    }
return


::jss::
    Send, JavaScript
return

; 不知道从什么时候开始，大写的C盘写不出来了。这里我用小写吧无所谓，反正window不区分大小写
::desk::
::desktop::
    StringLower, str, A_Desktop
    SendInput, %str%
return

::desk/::
::desktop/::
    Var := StrReplace(A_Desktop, "\", "/")
    StringLower, str, Var
    SendRaw, %str%
return


!enter::
    WinGet, OutputVar, MinMax, A
    if (OutputVar == 1) {
        WinRestore, A
    } else {
        WinMaximize, A
    }
return

::ahkvar::
::varahk::
Var = 
(
Var = 
(

`)
code(Var)
)
code(Var)
return