/**
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
*/
; 每次输入字符时, 热字串识别器会检查当前活动窗口, 并且如果活动窗口不同于之前, 则会重置. 如果活动窗口发生变化, 但在键入任何字符之前返回, 则不会检测到更改(但可能会由于其他原因重置热字串识别器). 
; 通过两个热字符串的触发角，优雅自然无障碍的重置。
;~Enter:: ; 要养成tab的习惯，默认要关闭这个了。不过我在F11的时候会加入，没关系的。
~Tab::
	; 热字串识别器也可以通过调用 Hotstring("Reset") 来重置.
	Hotstring("Reset")
return

::dgxy::
Var =
(
113.843319, 22.921901
)
code(Var)
Return

::vpwd::
SendRaw, R+m3{]H]m11D1e!h
return

::es::
Send, elasticsearch
return

resetlabel:
    Hotstring("Reset")
return

::jwd::
Var =
(
// [longitude, latitude]
[Lng, Lat] 
)
code(Var)
return

::cfg::
SendInput, configure
return


::ahkarr::
::ahkfor::
::ahkloop::
::ahkarray::
Var =
(
myarray := ["a", "b", "c", "d"]
For key, value in myarray
            MsgBox `%key`% = `%value`%
)
code(Var)
return

::ahkcmd::
Var =
(
url := "https://raw.githubusercontent.com/dragon8github/Pandora/master/template/mocha.zip"
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
FileCreateDir, `%name`%
RunWaitOne("cd " . name . " && curl -O " . url)
run, `%name`%
)
code(Var)
return

::renzhi::
::rz::
Var =
(
(〜￣△￣)〜认知～(￣▽￣～)
)
code(Var)
return

::a-z::
Var =
(
"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
"abcdefghiJklmnopqrstuvwxyz"
a
b
c
d
e
f
g
h
i
J
k
l
m
n
o
p
q
r
s
t
u
v
w
x
y
z
//////////////////////////////////////////////
A
B
C
D
E
F
G
H
I
J
K
L
M
N
O
P
Q
R
S
T
U
V
W
X
Y
Z
)
code(Var)
return

^F11::
Hotstring("EndChars", "`t`n")
Hotkey, ~Enter, resetlabel
return

^F10::
Hotstring("EndChars", "`t")
Hotkey, ~Enter, Off
return

::fo::
Var =
(
/*
                   _ooOoo_
                  o8888888o
                  88" . "88
                  (| -_- |)
                  O\  =  /O
               ____/`---'\____
             .'  \\|     |//  `.
            /  \\|||  :  |||//  \
           /  _||||| -:- |||||-  \
           |   | \\\  -  /// |   |
           | \_|  ''\---/''  |   |
           \  .-\__  `-`  ___/-. /
         ___`. .'  /--.--\  `. . __
      ."" '<  `.___\_<|>_/___.'  >'"".
     | | :  `- \`.;`\ _ /`;.`/ - ` : | |
     \  \ `-.   \_ __\ /__ _/   .-` /  /
======`-.____`-.___\_____/___.-`____.-'======
                   `=---='
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
         佛祖保佑       永无BUG
*/
)
code(Var)
return

::ahknewhtml::
::ahknew::
::ahkhtml::
Var =
(
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

</body>
</html>
`),  `%name`%
RunBy(name)	
run, `% name
)
code(Var)
return

<+?::
Var =
(
/*  */
)
code(Var)
Send, {left 3}
return


::ahkmenu2::
Var =
(
reactArray := ["新建create-react-app", "新建react-redux.html", "React runtime", "ReactDOM.render",  "constructor", "this.porps", "ref", "static defaultProps", "this.state",  "this.setState", "react for", "this.state.list.map" ,  "箭头函数点击事件handleClick", "style={{ display: this.state.expandForm ? 'block' : 'none' }}","const { ... } = this.props", "const { ... } = this.state", "class App extends Component",   "render () {}", "WrappedComponent", "WrappedComponent + @Decorator", "this.forceUpdate()"]
Loop `% reactArray.MaxIndex() {
    this_life := reactArray[a_index]
    Menu, reactArray, Add, `%this_life`%, ReactMenuHandler
}
Menu, reactArray, Show


ReactMenuHandler:

if (A_ThisMenuItem == "ref") {
Var = 
(
写上你的代码
`)
code(Var)
}
)
code(Var)
return

::gitp::
::git push::
::git p::
::git pu::
::gitpu::
SendRaw, git push -u origin master
return




::ahkmsg::
::ahkinput::
::ahkmsgbox::
::ahkbox::
::ahkcomfig::
Var =
(
InputBox, OutputVar, title, enter a name?,,,,,,,,test
)
code(Var)
return

::chromemax::
::chrome max::
Var =
(
--start-maximized --kiosk
)
code(Var)
return

::nosafe::
::notsafe::
::chromesafe::
::unsafe::
::safe::
Var =
(
 --args --disable-web-security --user-data-dir
)
SendInput, % Var
return

::macnosafe::
::iosodesafe::
::macunsafe::
::mac.safe::
::mac.nosafe::
::mac.unsafe::
Var =
(
open -a Google\ Chrome --args --disable-web-security --user-data-dir
)
code(Var)
return

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

::ahkcomfirm::
Var =
(
InputBox, OutputVar, title, enter a name?,,,,,,,,test
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
<template>
    <div class="`%OutputVar`%">
        `%OutputVar`%
    </div>
</template>
`)
)
code(Var)
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


::ahktime::
::ahkdate::
Var =
(
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
)
code(Var)
return

::ahknow::
Var =
(
Var := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
)
code(Var)
return

::noww::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
code(t)
return

::now::
Var := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
code(Var)
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

ShellHandler2:
v := A_ThisMenuItem
return

ShellHandler:
; MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.
v := A_ThisMenuItem
Var := 

if (v == "") {
Var = 
(

`)
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

^!c::
    Clipboard := 
    Send, ^c
    ClipWait, 1
    Clipboard := StrReplace(Clipboard, "`r`n")  
return

:*:d]::  ; 此热字串通过后面的命令把 "]d" 替换成当前日期和时间.
FormatTime, CurrentDateTime,, yyyy/MM/dd hh:mm:ss
SendInput %CurrentDateTime%
return

^1::
!1::
    Send, {text}dgdp
return

^2::
!2::
    Send, {text}ch#ks!690
return

::hosts::
::host::
::vhost::
    SendInput, {text}C:\Windows\System32\drivers\etc
return


!l:: 
    lifeArray := ["beforeMount", "beforeCreate", "created", "mounted", "destroyed", "activated", "", "", "componentWillMount", "componentDidMount", "componentDidUnmount", "", "",  "componentWillReceiveProps", "shouldComponentUpdate", "componentWillUpdate", "componentDidUpdate", "componentDidUpdate", "", "", "primary", "success", "info", "warning", "danger", "", "", "xs —— 超小屏幕 手机 (<768px)", "sm —— 小屏幕 平板 (≥768px)", "md —— 中等屏幕 桌面显示器 (≥1024px)", "lg —— 大屏幕 大桌面显示器 (≥1280px)", "iPhone6 750*1334", "普通设计稿：1160/980", "", "",  "public", "private", "protected", "","","String", "Number", "Boolean", "Object", "Function", "Array", "","", "thumbnail", "small", "bmiddle", "large", "", "", "✔", "✖", "JavaScript七大基本类型：boolean，null，undefined，number，string，object，symbol"]
    Loop % lifeArray.MaxIndex() {
        this_life := lifeArray[a_index]
        Menu, LifeMenu, Add, %this_life%, MenuHandlerlifeArray
    }
    Menu, LifeMenu, Show
    Menu, LifeMenu, DeleteAll
return

MenuHandlerlifeArray:
Var := A_ThisMenuItem
v := A_ThisMenuItem


if (v == "") {
Var =
(
)
}

if (v == "xs —— 超小屏幕 手机 (<768px)") {
Var =
(
xs
)
}

if (v == "✖的html形态：&times;") {
Var =
(
<button type="button" class="close" aria-label="Close">
  <span aria-hidden="true">&times;</span>
</button>
)
}

if (v == "sm —— 小屏幕 平板 (≥768px)") {
Var =
(
sm
)
}

if (v == "md —— 中等屏幕 桌面显示器 (≥992px)") {
Var =
(
md
)
}

if (v == "lg —— 大屏幕 大桌面显示器 (≥1200px)") {
Var =
(
lg
)
}


if (v == "beforeMount") {
Var =
(
beforeMount () {
	
},
)
}
if (v == "beforeCreate") {
Var =
(
beforeCreate () {
	
},
)
}
if (v == "created") {
Var =
(
created () {
	
},
)
}
if (v == "mounted") {
Var =
(
mounted () {
	
},
)
}
if (v == "destroyed") {
Var =
(
destroyed () {
	
},
)
}
if (v == "activated") {
Var =
(
activated () {
	
},
)
}

code(Var)
return


::@qq::
::@qq.com::
    Send, 928532756@qq.com
return

^+/::
Var = 
(
/**
 * say something ...
 *
 * @param  {Number}   say something ...
 * @param  {String}   say something ...
 * @param  {Object}   say something ...
 * @param  {Array}    say something ...
 * @param  {Boolean}  say something ...
 * @param  {Function} say something ...
 * @return {String}   say something ...
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
    if (SubStr(str, 0, 2) == "//") {
        str := "http:" . str
    }
    If(InStr(str, "http://") || InStr(str, "https://") || InStr(str, "//") || InStr(str, "www.") || InStr(str, ".com") || InStr(str, "C:") || InStr(str, "D:") || InStr(str, "E:")  || InStr(str, "F:")  || InStr(str, "F:")  || InStr(str, "G:")  || InStr(str, "H:")|| InStr(str, ".net") || Instr(str, "data:") ) {
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
    if (SubStr(str, 0, 2) == "//") {
        str := "http:" . str
    }
    If(InStr(str, "http://") || InStr(str, "https://") || InStr(str, "//") || InStr(str, "www.") || InStr(str, ".com") || InStr(str, "C:") || InStr(str, "D:") || InStr(str, "E:")  || InStr(str, "F:")  || InStr(str, "F:")  || InStr(str, "G:")  || InStr(str, "H:") ) {
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


>^s::
Sleep, 100
cs("npm run start")
return

!Up::
    SendInput, {PGUP}
return

+!Up::
    SendInput, +{PGUP}
return

!Down::
    SendInput, {PGDN}
return

+!Down::
    SendInput, +{PGDN}
return

!Right::
    SendInput, {end}       
return


+!Right::
    SendInput, +{end} 
return

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
Var =
(
// 启动计时器
console.time('20190219153729')

// your code...


// 停止计时，输出时间
console.timeEnd('20190219153729')
)
code(Var)
return

#c::
    ;run, %A_Desktop%/Cmder.exe.lnk
    RunByCmder(A_Desktop) ; Clipboard
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
    Var := ajax("http://116.85.26.25/baidu_transapi.php?text=" . Clipboard . "&type=tuofeng")
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
    Var := ajax("http://116.85.26.25/baidu_transapi.php?text=" . Clipboard . "&type=_", true)
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
    Var := "http://" . ip . ":8099"
    SendRaw, % Var
return

; 我阿里云的ip，方便我记忆
::didiip::
    SendRaw, 116.85.26.25 
return

::aliip::
::vip::
SendRaw, 149.129.65.63 
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

:?:.git::
::gitig::
:?:.git::
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

::git::
_sendinput("git add . && git commit -m '{+} ' --no-verify && git push -u origin master{LEFT 42}")
Return

::gitdev::
::gitd::
::git dev::
    _sendinput("git add . && git commit -m '{+ } ' --no-verify && git push -u origin dev{LEFT 39}")
return


::gittest::
::gitt::
::git test::
    _sendinput("git add . && git commit -m '{+ } ' --no-verify && git push -u origin test{LEFT 40}")
return


::auth::
    SendInput, Authorization
return

+a::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%, RGB  
    Clipboard := SubStr(color, 3) ; 考虑在前面加上，但我就算了，实战的时候发现这个东西有点多余"#" . 
    TrayTip, my title, current color is `n %Clipboard%, 20, 17
return

/*
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
*/

::jss::
cs("JavaScript")
return

; 不知道从什么时候开始，大写的C盘写不出来了。这里我用小写吧无所谓，反正window不区分大小写
::desk::
::~::
::desktop::
    SendInput, %A_Desktop%
return

::desk/::
::desktop/::
    Var := StrReplace(A_Desktop, "\", "/")
    StringLower, str, Var
    SendRaw, %str%
return

::ahktitle::
Var =
(
WinGetTitle, title, A
if (InStr(title, "Android Studio")) {
    
}
)
code(Var)
return

~^s::
    WinGetTitle, title, A
    if (InStr(title, "Android Studio")) {
        Send, ^+\
    } else {
        Send, ^s
    }
return

~!enter::
    WinGetTitle, title, A
    if (!InStr(title, "Android Studio")) {
        WinGet, OutputVar, MinMax, A
        if (OutputVar == 1) {
            WinRestore, A
        } else {
            WinMaximize, A
        }
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



!PGUP::
    SendInput, {PGUP 100}
return

!PGDN::
    SendInput, {PGDN 100}
return


::randimg::
::rangeimg::
::testimg::
::testimage::
::testimages::
Var =
(
https://uploadbeta.com/api/pictures/random/?key=BingEverydayWallpaperPicture
)
code(Var)
return

::testmp4::
Var =
(
https://player.vimeo.com/video/253905163
)
code(Var)
return

::testtxt::
::testtext::
::testt::
Var =
(
武当山，中国道教圣地，又名太和山、谢罗山、参上山、仙室山，古有“太岳”、“玄岳”、“大岳”之称。位于湖北西北部十堰市丹江口市境内。东接闻名古城襄阳市，西靠车城十堰市 ，南望原始森林神农架，北临高峡平湖 丹江口水库。
明代，武当山被皇帝封为“大岳”、“治世玄岳”，被尊为“皇室家庙”。武当山以“四大名山皆拱揖，五方仙岳共朝宗”的“五岳之冠”地位闻名于世。
1994年12月，武当山古建筑群入选《世界遗产名录》，2006年被整体列为“全国重点文物保护单位” 。2007年，武当山和长城、丽江、周庄等景区一起入选 “欧洲人最喜爱的中国十大景区”。2010至2013年，武当山分别被评为国家5A级旅游区、国家森林公园、中国十大避暑名山、海峡两岸交流基地，入选最美 “国家地质公园”。 
截至2013年，武当山有古建筑53处，建筑面积2.7万平方米，建筑遗址9处，占地面积20多万平方米，全山保存各类文物5035件。 
武当山是道教名山和武当武术的发源地，被称为“亘古无双胜境，天下第一仙山”。武当武术，是中华武术的重要流派。元末明初，道士张三丰集其大成，开创武当派。
)
code(Var)
return

::wxrand::
::wxrange::
::wxselect::
Var =
(
// 目标人数
const target = 10
// 组所有成员
const people = [...document.querySelectorAll('.members .nickname')].map(_ => _.innerText)
// 组成员人数
const len = people.length
// 被选中的孩子们
let beSelectPeoples = new Set()
// 直到满足目标人数
while(beSelectPeoples.size != target) {
  // 随机数
  const rand = ~~(0 + Math.random() * (len + 1))
  // 被选中的孩子
  const beSelectPeople = people[rand]
  // 加入队列
  beSelectPeoples.add(beSelectPeople)
}
)
code(Var)
return


::chrome app::
::chrome.app::
::chrome-app::
Var =
(
--app=http://12345v1.dgdatav.com:6080/#/dg/overallSituation
)
code(Var)
return

::ahksend::
::ahks::
Var =
(
_send("root", true, true)
return
)
code(Var)
Send, {UP 1}{Home 1}
Send, {Right 7}
Send, +{right 4}
return

XButton1::
    Send, {Home}
return

::ahktxt::
::ahktxtit::
Var =
(
Var = 
(
<template>

</template>
---
<script>
  export default {
    data() {
      return {
        
      };
    }
  };
</script>
---
<style lang="scss" scoped>
@import "~@/scss/functions.scss";

</style>
`)
txtit(Var)
)
code(Var)
return

::``````::
Var =
(
``````bash

``````
)
code(Var)
Send, {up}
return

::``````j::
::``````js::
::``````jss::
::``j::
::``js::
Var =
(
``````JavaScript

``````
)
code(Var)
Send, {up}
return


::``````t::
::``````ts::
Var =
(
``````Typescript

``````
)
code(Var)
Send, {up}
return


::or::
Var =
(
oracle
)
code(Var)
return

::ahkpwshell::
::ahkpowsershell::
::ahkpw::
::ahkpws::
::ahkshell::
Var =
(
; zip名字
zipname := "vue3-template.zip"
; 文件夹名字
zippath := "./vue3-template"
; 下载文件的地址
url := "https://raw.githubusercontent.com/dragon8github/Pandora/master/template/vue3-template.zip"
; 由于要使用git命令，所以要将window格式转化为unix格式的路径
desk := StrReplace(A_Desktop, "\", "/")
; 文件夹的名字
name := desk . "/vue3_template_" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
; 一系列命令 
command = 
(
mkdir `%name`% ; cd `%name`% ; Invoke-WebRequest -uri "`%url`%" -OutFile "`%zipname`%" ; Expand-Archive -Path `%zipname`% -DestinationPath . ; rm `%zipname`%
`)
run, powershell.exe `%command`%
)
code(Var)
return


::shazan::
::shaz::
::shazam::
::shazhan::
::sz::
Var =
(
/*━━━━━┒   ⚡⚡⚡⚡⚡
   ┓┏┓┏┓   
   ┛┗┛┗┛┃  改你mb的需求！！
   ┓┏┓┏┓┃    ＼○／
   ┛┗┛┗┛┃    　/
   ┓┏┓┏┓┃    ノ) 
   ┛┗┛┗┛┃
   ┓┏┓┏┓┃ 
   ┛┗┛┗┛┃
   ┓┏┓┏┓┃ 
   ┛┗┛┗┛┃
   ┓┏┓┏┓┃
   ┃┃┃┃┃┃
   ┻┻┻┻┻┻*/
)
code(Var)
return

::zyx::
Var =
(
张宇煊
)
code(Var)
return


::ahkitem::
::ahkmenuitem::
Var =
(
Menu, PythonMenu, Add,🍁🍁🍁🍁🍁🍁🍁🍁  命令行  🍁🍁🍁🍁🍁🍁🍁🍁, PythonHandler
)
code(Var)
return

::fafa::
Var =
(
🍁🍁🍁🍁🍁🍁🍁🍁
)
code(Var)
return

::md::
::mdui::
Var =
(
Material Design
)
code(Var)
return

^3::
!3::
cs("admin_hmggwh")
return


^4::
!4::
cs("dgjy123")
return


/*
:*:[]::
Var =
(
『』
)
code(Var)
return
*/

^[::
![::
^]::
!]::
tmp := Clipboard
Clipboard :=
SendInput, ^x
ClipWait, 2
a := "『" . Clipboard . "』"
cs(a)
Clipboard := tmp
return


^b::
WinGetTitle, title, A
if (InStr(title, "有道云笔记")) {
tmp := Clipboard
Clipboard :=
SendInput, ^x
ClipWait, 2
cs("**" . Clipboard . "**")
Clipboard := tmp
}
return


#p::
run, powershell.exe
return

::dgcenter::
::dg.center::
::dg-center::
Var =
(
center: [113.843319, 22.921901],
)
code(Var)
return

::ok::
::gou::
Var =
(
✔
)
code(Var)
return

::ts::
cs("Typescript")
return


::0::
Send, 0️⃣
return
::1::
Send, 1️⃣
return
::2::
Send, 2️⃣
return
::3::
Send, 3️⃣
return
::4::
Send, 4️⃣
return
::5::
Send, 5️⃣
return
::6::
Send, 6️⃣
return
::7::
Send, 7️⃣
return
::8::
Send, 8️⃣
return
::9::
Send, 9️⃣
return
::10::
Send, 1️⃣0️⃣
return
::11::
Send, 1️⃣1️⃣
return
::12::
Send, 1️⃣2️⃣
return
::13::
Send, 1️⃣3️⃣
return
::14::
Send, 1️⃣4️⃣
return
::15::
Send, 1️⃣5️⃣
return
::16::
Send, 1️⃣6️⃣
return
::17::
Send, 1️⃣7️⃣
return
::18::
Send, 1️⃣8️⃣
return
::19::
Send, 1️⃣9️⃣
return
::20::
Send, 2️⃣0️⃣
return

::seq::
cs("sequelize")
return

::jek::
cs(" Jenkins")
return

::ahksend::
::_send::
::ahk_send::
::ahk.send::
Var =
(
_send("delay", true, true)
return
)
code(Var)
Return

::lzh::
cs("李钊鸿")
return

::137::
cs("13713332652")
return

::tongwei::
Var =
(
彤炜
)
code(Var)
return

::shutong::
cs("数通HCIA-Routing & Switching")
return

::new chart::
::chart::
::new charts::
::chart.init::
InputBox, OutputVar, title, enter a name?,,,,,,,,BaseLineChart
Var =
(
import echarts from 'vue-echarts'
import Chart from '../Chart.js'
import FormItem from '@/components/FormItem'

export default class ChinaMap extends Chart {
      static w = 400;
      static h = 400;
      constructor(...props) {
        super(...props)

        // 第一步：定义显示名称
        this.__NAME__ = ''

        // 第二步：定义依赖配置
        this.setForm()

        // 第三步：初始示例数据
        this.demo = {}

        // 第四步： 定义 setData
        this.setData = ({data, xAxis} = {}) => {
            this.option.xAxis[0].data = data.map(_ => _.name)
            this.option.series = getBar(data)
        }

        // 第五步： 初始化配置
        this.setOption({

        })
    }
}
)
code(Var)
Return

::sw::
Var =
(
Swagger
)
code(Var)
return

::wx::
Var =
(
wx926e9eb2e54b3e1b
)
code(Var)
return