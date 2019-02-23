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

::conf::
::confi::
::config::
::configu::
::configure::
SendInput, {text}configure
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

::ahklevel::
::ahksend::
::ahksendlevel::
Var =
(
SendLevel 1
Send, falangjindutiao{tab}
return
)
code(Var)
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
RunByCmder(Clipboard)
return

:*:d]::  ; 此热字串通过后面的命令把 "]d" 替换成当前日期和时间.
FormatTime, CurrentDateTime,, yyyy/MM/dd hh:mm:ss
SendInput %CurrentDateTime%
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


!l:: 
    lifeArray := ["beforeMount", "beforeCreate", "created", "mounted", "destroyed", "activated", "", "", "componentWillMount", "componentDidMount", "componentDidUnmount", "", "",  "componentWillReceiveProps", "shouldComponentUpdate", "componentWillUpdate", "componentDidUpdate", "componentDidUpdate", "", "", "primary", "success", "info", "warning", "danger", "", "", "xs —— 超小屏幕 手机 (<768px)", "sm —— 小屏幕 平板 (≥768px)", "md —— 中等屏幕 桌面显示器 (≥992px)", "lg —— 大屏幕 大桌面显示器 (≥1200px)" "", "", "",  "public", "private", "protected", "","","String", "Number", "Boolean", "Object", "Function", "Array", "","", "thumbnail", "small", "bmiddle", "large"]
    Loop % lifeArray.MaxIndex() {
        this_life := lifeArray[a_index]
        Menu, LifeMenu, Add, %this_life%, MenuHandlerlifeArray
    }
    Menu, LifeMenu, Show
    Menu, LifeMenu, DeleteAll
return

MenuHandlerlifeArray:
Var := A_ThisMenuItem
if (Var == "xs —— 超小屏幕 手机 (<768px)") {
    Var := "xs"
}

else if (Var == "sm —— 小屏幕 平板 (≥768px)") {
    Var := "sm"
}

else if (Var == "md —— 中等屏幕 桌面显示器 (≥992px)") {
    Var := "md"
}

else if (Var == "lg —— 大屏幕 大桌面显示器 (≥1200px)") {
    Var := "lg"
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
    If(InStr(str, "http://") || InStr(str, "https://") || InStr(str, "//") || InStr(str, "www.") || InStr(str, ".com") || InStr(str, "C:") || InStr(str, "D:") || InStr(str, "E:")  || InStr(str, "F:")  || InStr(str, "F:")  || InStr(str, "G:")  || InStr(str, "H:") ) {
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


AppsKey & s::
>^s::
    try {
        run, %A_Desktop%\Sublime Text.lnk
        run, %A_Desktop%\sublime_text.exe.lnk
    }
return

!Up::
    Send, {PGUP}
return

+!Up::
    Send, +{PGUP}
return

!Down::
    Send, {PGDN}
return

+!Down::
    Send, +{PGDN}
return

!Right::
    Send, {end}       
return


+!Right::
    Send, +{end} 
return

!Left::
    Send, {Home}
return

+!Left::
    Send, +{Home}
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

#c::
    run, %A_Desktop%/Cmder.exe.lnk
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
AppsKey & i::
>^i::
::aliip::
::didiip::
::ip5::
    SendRaw, 116.85.26.25 ;119.23.22.136
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

::.git::
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

::git::
    _sendinput("git add . && git commit -m '迭代' --no-verify && git push -u origin master{LEFT 42}")
Return

::gitdev::
::gitd::
::git dev::
    _sendinput("git add . && git commit -m '迭代' --no-verify && git push -u origin dev{LEFT 39}")
return


::gittest::
::gitt::
::git test::
    _sendinput("git add . && git commit -m '迭代' --no-verify && git push -u origin test{LEFT 40}")
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


>!enter::
>^enter::
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


^!1::
Var =
(
// cylee'todo1
)
code(Var)
return

^!2::
Var =
(
// cylee'todo2
)
code(Var)
return

^!3::
Var =
(
// cylee'todo3
)
code(Var)
return

^!4::
Var =
(
// cylee'todo4
)
code(Var)
return

^!5::
Var =
(
// cylee'todo5
)
code(Var)
return

^!6::
Var =
(
// cylee'todo6
)
code(Var)
return

^!7::
Var =
(
// cylee'todo7
)
code(Var)
return

^!8::
Var =
(
// cylee'todo8
)
code(Var)
return

^!9::
Var =
(
// cylee'todo9
)
code(Var)
return

^!0::
Var =
(
// cylee'todo0
)
code(Var)
return

!PGUP::
    SendInput, {PGUP 100}
return

!PGDN::
    SendInput, {PGDN 100}
return

::es.sh::
::es.test::
::es.data::
Var =
(
#!/usr/bin/env bash

ADDRESS=$1

if [ -z $ADDRESS ]; then
  ADDRESS="localhost:9200"
fi

# Check that Elasticsearch is running
curl -s "http://$ADDRESS" 2>&1 > /dev/null
if [ $? != 0 ]; then
    echo "Unable to contact Elasticsearch at $ADDRESS"
    echo "Please ensure Elasticsearch is running and can be reached at http://$ADDRESS/"
    exit -1
fi

echo "WARNING, this script will delete the 'get-together' and the 'myindex' indices and re-index all data!"
echo "Press Control-C to cancel this operation."
echo
echo "Press [Enter] to continue."
read

# Delete the old index, swallow failures if it doesn't exist
curl -s -XDELETE "$ADDRESS/get-together" > /dev/null

# Create the next index using mapping.json
echo "Creating 'get-together' index..."
curl -s -XPOST "$ADDRESS/get-together" -d@$(dirname $0)/mapping.json

# Wait for index to become yellow
curl -s "$ADDRESS/get-together/_health?wait_for_status=yellow&timeout=10s" > /dev/null
echo
echo "Done creating 'get-together' index."

echo
echo "Indexing data..."

echo "Indexing groups..."
curl -s -XPOST "$ADDRESS/get-together/group/1" -d'{
  "name": "Denver Clojure",
  "organizer": ["Daniel", "Lee"],
  "description": "Group of Clojure enthusiasts from Denver who want to hack on code together and learn more about Clojure",
  "created_on": "2012-06-15",
  "tags": ["clojure", "denver", "functional programming", "jvm", "java"],
  "members": ["Lee", "Daniel", "Mike"],
  "location_group": "Denver, Colorado, USA"
}'

echo
curl -s -XPOST "$ADDRESS/get-together/group/2" -d'{
  "name": "Elasticsearch Denver",
  "organizer": "Lee",
  "description": "Get together to learn more about using Elasticsearch, the applications and neat things you can do with ES!",
  "created_on": "2013-03-15",
  "tags": ["denver", "elasticsearch", "big data", "lucene", "solr"],
  "members": ["Lee", "Mike"],
  "location_group": "Denver, Colorado, USA"
}'

echo
curl -s -XPOST "$ADDRESS/get-together/group/3" -d'{
  "name": "Elasticsearch San Francisco",
  "organizer": "Mik",
  "description": "Elasticsearch group for ES users of all knowledge levels",
  "created_on": "2012-08-07",
  "tags": ["elasticsearch", "big data", "lucene", "open source"],
  "members": ["Lee", "Igor"],
  "location_group": "San Francisco, California, USA"
}'

echo
curl -s -XPOST "$ADDRESS/get-together/group/4" -d'{
  "name": "Boulder/Denver big data get-together",
  "organizer": "Andy",
  "description": "Come learn and share your experience with nosql & big data technologies, no experience required",
  "created_on": "2010-04-02",
  "tags": ["big data", "data visualization", "open source", "cloud computing", "hadoop"],
  "members": ["Greg", "Bill"],
  "location_group": "Boulder, Colorado, USA"
}'

echo
curl -s -XPOST "$ADDRESS/get-together/group/5" -d'{
  "name": "Enterprise search London get-together",
  "organizer": "Tyler",
  "description": "Enterprise search get-togethers are an opportunity to get together with other people doing search.",
  "created_on": "2009-11-25",
  "tags": ["enterprise search", "apache lucene", "solr", "open source", "text analytics"],
  "members": ["Clint", "James"],
  "location_group": "London, England, UK"
}'

echo
echo "Done indexing groups."

echo "Indexing events..."

curl -s -XPOST "$ADDRESS/get-together/event/100?parent=1" -d'{
  "host": ["Lee", "Troy"],
  "title": "Liberator and Immutant",
  "description": "We will discuss two different frameworks in Clojure for doing different things. Liberator is a ring-compatible web framework based on Erlang Webmachine. Immutant is an all-in-one enterprise application based on JBoss.",
  "attendees": ["Lee", "Troy", "Daniel", "Tom"],
  "date": "2013-09-05T18:00",
  "location_event": {
    "name": "Stoneys Full Steam Tavern",
    "geolocation": "39.752337,-105.00083"
  },
  "reviews": 4
}'
echo
curl -s -XPOST "$ADDRESS/get-together/event/101?parent=1" -d'{
  "host": "Sean",
  "title": "Sunday, Surly Sunday",
  "description": "Sort out any setup issues and work on Surlybird issues. We can use the EC2 node as a bounce point for pairing.",
  "attendees": ["Daniel", "Michael", "Sean"],
  "date": "2013-07-21T18:30",
  "location_event": {
    "name": "IRC, #denofclojure"
  },
  "reviews": 2
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/102?parent=1" -d'{
  "host": "Daniel",
  "title": "10 Clojure coding techniques you should know, and project openbike",
  "description": "What are ten Clojure coding techniques that you wish everyone knew? We will also check on the status of Project Openbike.",
  "attendees": ["Lee", "Tyler", "Daniel", "Stuart", "Lance"],
  "date": "2013-07-11T18:00",
  "location_event": {
    "name": "Stoneys Full Steam Tavern",
    "geolocation": "39.752337,-105.00083"
  },
  "reviews": 3
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/103?parent=2" -d'{
  "host": "Lee",
  "title": "Introduction to Elasticsearch",
  "description": "An introduction to ES and each other. We can meet and greet and I will present on some Elasticsearch basics and how we use it.",
  "attendees": ["Lee", "Martin", "Greg", "Mike"],
  "date": "2013-04-17T19:00",
  "location_event": {
    "name": "Stoneys Full Steam Tavern",
    "geolocation": "39.752337,-105.00083"
  },
  "reviews": 5
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/104?parent=2" -d'{
  "host": "Lee",
  "title": "Queries and Filters",
  "description": "A get together to talk about different ways to query Elasticsearch, what works best for different kinds of applications.",
  "attendees": ["Lee", "Greg", "Richard"],
  "date": "2013-06-17T18:00",
  "location_event": {
    "name": "Stoneys Full Steam Tavern",
    "geolocation": "39.752337,-105.00083"
  },
  "reviews": 1
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/105?parent=2" -d'{
  "host": "Lee",
  "title": "Elasticsearch and Logstash",
  "description": "We can get together and talk about Logstash - http://logstash.net with a sneak peek at Kibana",
  "attendees": ["Lee", "Greg", "Mike", "Delilah"],
  "date": "2013-07-17T18:30",
  "location_event": {
    "name": "Stoneys Full Steam Tavern",
    "geolocation": "39.752337,-105.00083"
  },
  "reviews": null
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/106?parent=3" -d'{
  "host": "Mik",
  "title": "Social management and monitoring tools",
  "description": "Shay Banon will be there to answer questions and we can talk about management tools.",
  "attendees": ["Shay", "Mik", "John", "Chris"],
  "date": "2013-03-06T18:00",
  "location_event": {
    "name": "Quid Inc",
    "geolocation": "37.798442,-122.399801"
  },
  "reviews": 5
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/107?parent=3" -d'{
  "host": "Mik",
  "title": "Logging and Elasticsearch",
  "description": "Get a deep dive for what Elasticsearch is and how it can be used for logging with Logstash as well as Kibana!",
  "attendees": ["Shay", "Rashid", "Erik", "Grant", "Mik"],
  "date": "2013-04-08T18:00",
  "location_event": {
    "name": "Salesforce headquarters",
    "geolocation": "37.793592,-122.397033"
  },
  "reviews": 3
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/108?parent=3" -d'{
  "host": "Elyse",
  "title": "Piggyback on Elasticsearch training in San Francisco",
  "description": "We can piggyback on training by Elasticsearch to have some Q&A time with the ES devs",
  "attendees": ["Shay", "Igor", "Uri", "Elyse"],
  "date": "2013-05-23T19:00",
  "location_event": {
    "name": "NoSQL Roadshow",
    "geolocation": "37.787742,-122.398964"
  },
  "reviews": 5
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/109?parent=4" -d'{
  "host": "Andy",
  "title": "Hortonworks, the future of Hadoop and big data",
  "description": "Presentation on the work that hortonworks is doing on Hadoop",
  "attendees": ["Andy", "Simon", "David", "Sam"],
  "date": "2013-06-19T18:00",
  "location_event": {
    "name": "SendGrid Denver office",
    "geolocation": "39.748477,-104.998852"
  },
  "reviews": 2
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/110?parent=4" -d'{
  "host": "Andy",
  "title": "Big Data and the cloud at Microsoft",
  "description": "Discussion about the Microsoft Azure cloud and HDInsight.",
  "attendees": ["Andy", "Michael", "Ben", "David"],
  "date": "2013-07-31T18:00",
  "location_event": {
    "name": "Bing Boulder office",
    "geolocation": "40.018528,-105.275806"
  },
  "reviews": 1
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/111?parent=4" -d'{
  "host": "Andy",
  "title": "Moving Hadoop to the mainstream",
  "description": "Come hear about how Hadoop is moving to the main stream",
  "attendees": ["Andy", "Matt", "Bill"],
  "date": "2013-07-21T18:00",
  "location_event": {
    "name": "Courtyard Boulder Louisville",
    "geolocation": "39.959409,-105.163497"
  },
  "reviews": 4
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/112?parent=5" -d'{
  "host": "Dave Nolan",
  "title": "real-time Elasticsearch",
  "description": "We will discuss using Elasticsearch to index data in real time",
  "attendees": ["Dave", "Shay", "John", "Harry"],
  "date": "2013-02-18T18:30",
  "location_event": {
    "name": "SkillsMatter Exchange",
    "geolocation": "51.524806,-0.099095"
  },
  "reviews": 3
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/113?parent=5" -d'{
  "host": "Dave",
  "title": "Elasticsearch at Rangespan and Exonar",
  "description": "Representatives from Rangespan and Exonar will come and discuss how they use Elasticsearch",
  "attendees": ["Dave", "Andrew", "David", "Clint"],
  "date": "2013-06-24T18:30",
  "location_event": {
    "name": "Alumni Theatre",
    "geolocation": "51.51558,-0.117699"
  },
  "reviews": 3
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/114?parent=5" -d'{
  "host": "Yann",
  "title": "Using Hadoop with Elasticsearch",
  "description": "We will walk through using Hadoop with Elasticsearch for big data crunching!",
  "attendees": ["Yann", "Bill", "James"],
  "date": "2013-09-09T18:30",
  "location_event": {
    "name": "SkillsMatter Exchange",
    "geolocation": "51.524806,-0.099095"
  },
  "reviews": 2
}'

echo
echo "Done indexing events."

# Refresh so data is available
curl -s -XPOST "$ADDRESS/get-together/_refresh"

echo
echo "Done indexing data."
echo

echo
echo "Creating Templates."
curl -s -XPUT "http://$ADDRESS/_template/logging_index_all" -d'{
    "template" : "logstash-09-*",
    "order" : 1,
    "settings" : {
        "number_of_shards" : 2,
        "number_of_replicas" : 1
   },
    "mappings" : {
        "date" : { "store": false }
    },
    "alias" : { "november" : {} }
}'

echo
curl -s -XPUT "http://$ADDRESS/_template/logging_index" -d '{
    "template" : "logstash-*",
    "order" : 0,
    "settings" : {
        "number_of_shards" : 2,
        “number_of_replicas” : 1
   },
    "mappings" : {
     "date" : { "store": true }
    }
}'
echo
echo "Done Creating Templates."


echo
echo "Adding Dynamic Mapping"
curl -s -XDELETE "http://$ADDRESS/myindex" > /dev/null
curl -s -XPUT "http://$ADDRESS/myindex" -d'
{
    "mappings" : {
        "my_type" : {
            "dynamic_templates" : [{
                "UUID" : {
                    "match" : "*_guid",
                    "match_mapping_type" : "string",
                    "mapping" : {
                        "type" : "string",
                        "index" : "not_analyzed"
                    }
                }
            }]
        }
    }
}'
echo
echo "Done Adding Dynamic Mapping"

echo
echo "Adding Aliases"
curl -s -XDELETE "http://$ADDRESS/november_2014_invoices" > /dev/null
curl -s -XDELETE "http://$ADDRESS/december_2014_invoices" > /dev/null
curl -s -XPOST "http://$ADDRESS/november_2014_invoices" -d'{}'
echo
curl -s -XPOST "http://$ADDRESS/december_2014_invoices" -d'
{
    "mappings" :
    {
        "invoice" :
        {
            "properties" :
            {
                "revenue" : { "type" : "integer" }
            }
        }
    }
}'

echo

curl -s -XPOST "http://$ADDRESS/_aliases" -d'
{
    "actions" : [
	{
		"add" :
		{
			"index" : "november_2014_invoices",
			"alias" : "2014_invoices"
		},
		"add" :
		{
			"index" : "december_2014_invoices",
			"alias" : "2014_invoices"
		},
		"remove" :
		{
		  "index" : "myindex",
		  "alias" : "december_2014_invoices"
		}
	}
    ]
}'
echo
echo "Done Adding Aliases"

echo "Adding Filter Alias"
curl -s -XPOST "http://$ADDRESS/_aliases" -d '
{
    "actions" : [
        {
            "add" : {
                 "index" : "december_2014_invoices",
                 "alias" : "bigmoney",
                 "filter" :
                 {
                    "range" :
                    {
                      "revenue" :
                      {
                        "gt" : 1000
                      }

                    }
                 }
            }
        }
    ]
}'
echo
echo "Done Adding Filter Alias"

echo
echo "Adding Routing Alias"
curl -s -XPOST "http://$ADDRESS/_aliases" -d '
{
    "actions" : [
        {
            "add" : {
                 "index" : "december_2014_invoices",
                 "alias" : "2014_invoices",
                 "search_routing" : "en,es",
                 "index_routing" : "en"
            }
        }
    ]
}'
echo
echo "Done Adding Routing Alias"

echo
)
code(Var)
return