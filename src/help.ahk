
~esc::
; Send, {AltUp}
; Send, {CtrlUp}
return


::baiduip::
Var =
(
106.12.222.209
)
code(Var)
return

!F2::

; 名字
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec

; .pandora\名字.png
path := A_Desktop . "\.pandora\" . t . ".png"

tmpcli := Clipboard

isFile := FileExist(tmpcli)

; 如果是图片，直接使用图片的路径上传试试
if (isFile != "" && (InStr(tmpcli, "png") || InStr(tmpcli, "gif") || InStr(tmpcli, "jpg"))) {
    path := tmpcli
} else {
    ; 否则，新建图片
    createPic(path)
}

ToolTip, 正在上传

; 注意，这里的路径必须是数组格式。哪怕只有一个。
data := uploadfile({ Filedata: [path], file: "multipart" })

_data := JSON.Load(data)

Clipboard := _data.imgurl

ToolTip, % _data.imgurl

SetTimer, RemoveToolTip, -3000

return

::li::
Var =
(
li{$}*20
)
code(Var)
return

^!n::
    Send, ^c
    ClipWait, 2
    tmp := Clipboard
     if (StrLen(tmp)) {
        ; 以换行符为分隔符切割为数组
        array := StrSplit(tmp, "`n")
        ; base 基准值
        __BASE__ := array[1]
        ; 基准值必须是数字才可以
        if (__BASE__ is number) {
            ; 结果
            result := __BASE__ . "`n"
            ; 遍历数组
            For key, value in array
                ; 第一位已经初始化了，所以从第二位开始
                if (key > 1) {
                    ; 索引
                    index := key - 1
                    ; 后缀
                    ext := array.Length() == key ? "" : "`n"
                    ; 叠加
                    result .= Floor(__BASE__ ) + index . ext
            }
            
            code(result)
        }
    }
return

::app::
Var =
(
Applications
)
code(Var)
return

::gcode::
::githubcode::
::gitcode::
Var =
(
document.querySelectorAll('pre').forEach((val, key) => {
    val.innerHTML = ``<code>${val.innerHTML}</code>``
})
)
code(Var)
return

>^>+c::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
console.groupCollapsed('%t%')
console.log(%t%, )
console.groupEnd()
)
code(Var)
Send, {up}
Send, {end}
Send, {left}
return

!+d::
::now::
t := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
code(t)
return

::lundun::
::fake::
::lorem::
Var =
(
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
)
code(Var)
return

::head::
::toux::
::touxiang::
Var =
(
avatar
)
code(Var)
return

::ios::
Var =
(
裴(péi)祥(xiáng)艮(gěn)
)
code(Var)
return

::sk::
Var =
(
Sketch
)
code(Var)
return

::wancheng::
::fin::
Var =
(
finally
)
code(Var)
return

::it::
Var =
(
iterable
)
code(Var)
return

::dgjw::
Var =
(
113.761868, 23.025179
)
code(Var)
return

::Po::
Var =
(
Portal
)
code(Var)
return

^!j::
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

; 每次输入字符时, 热字串识别器会检查当前活动窗口, 并且如果活动窗口不同于之前, 则会重置. 如果活动窗口发生变化, 但在键入任何字符之前返回, 则不会检测到更改(但可能会由于其他原因重置热字串识别器). 
; 通过两个热字符串的触发角，优雅自然无障碍的重置。
~Tab::
    ; 热字串识别器也可以通过调用 Hotstring("Reset") 来重置.
    Hotstring("Reset")
return

^!p::
tmp := Clipboard

if (InStr(tmp, "/")) {
    Clipboard := StrReplace(Clipboard, "/", "\")
} else {
    Clipboard := StrReplace(Clipboard, "\", "/")
}

return

>+d::
Var =
(
debug(console.log)
)
code(Var)
return

::yilai::
Var =
(
depend
)
code(Var)
return

::prop::
::shuxing::
Var =
(
properties
)
code(Var)
return

::ahkpsd::
::ahkpsdit::
Var =
(
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/tianmap.zip")
return
)
code(Var)
return

::god::
::godmodel::
::godmode::
Var =
(
GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}
)
code(Var)
return




::zhiling::
cs("directive")
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
Send, configure
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

::ahkhtml2::
Var =
(
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"

A = 
(

) 

B = 
(

)

FileAppend,
(
%A% . %B%
`),  `%name`%
RunBy(name) 
run, `% name
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

::nosafemac::
::unsafemac::
::safemac::
Var =
(
open -a Google\ Chrome --args --disable-web-security --user-data-dir
)
Send, % Var
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
Send, % Var
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
    
    ; 迭代
    s := StrSplit(Clipboard, "`r`n")[2]
    ; 必须是第二行
    if (s == "if (v == """") {") {
        f := StrSplit(Clipboard, "`r`n")[1]
Clipboard = 
(
if (v == "%f%") {
Var = 
(
%f%
`)
_send("%f%", true, true)
return
}
)
    }
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
    if (StrLen(A_LoopField) and (InStr(A_LoopField, " class") or InStr(A_LoopField, " className"))) {
        
        ; 获取class值
        RegExMatch(A_LoopField, "mi`a)[class|className]\s*=\s*['|""]{1}(.+?)['|""]{1}", OutputVar)
        
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
Var := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
code(Var)
return



::ahkmenu::
Var =
(
>!m::

    Menu, A, Add, try / except, moogoseHandler
    Menu, moogoseMenu, Add, 环境变量, :A

    
    Menu, moogoseMenu, Add, 时间, moogosetxt


    Menu, moogoseMenu, Show
    Menu, moogoseMenu, DeleteAll
return

moogoseHandler2:
v := A_ThisMenuItem
_send(v, true, true)
return

moogoseHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
`)
}

code(Var)
return

moogosetxt:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
`)
}

txtit(Var)
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
Send %CurrentDateTime%
return

!1::
cs("dgdp")
Sleep, 100
Send, {tab}
cs("ch#ks!690")
return

!2::
cs("ljdp")
Sleep, 100
Send, {tab}
cs("GzNhc#020")
return

::hosts::
::host::
::vhost::
    Send, {text}C:\Windows\System32\drivers\etc
return


!l:: 
    lifeArray := ["beforeMount", "beforeCreate", "created", "mounted", "destroyed", "activated", "", "", "componentWillMount", "componentDidMount", "componentDidUnmount", "", "",  "componentWillReceiveProps", "shouldComponentUpdate", "componentWillUpdate", "componentDidUpdate", "componentDidUpdate", "", "", "primary", "success", "info", "warning", "danger", "", "", "xs —— 超小屏幕 手机 (<768px)", "sm —— 小屏幕 平板 (≥768px)", "md —— 中等屏幕 桌面显示器 (≥1024px)", "lg —— 大屏幕 大桌面显示器 (≥1280px)", "iPhone6 750*1334", "普通设计稿：1160/980", "720p: 1280 x 720, HD（高清）", "1080p: 1920 x 1080, FULL HD（全高清）", "1440p: 2560 x 1440, QHD/Quad HD，即4倍的HD", "2160p: 3840 x 2160, 4K", "4320p: 7680 x 4320, 8K", "", "",  "public", "private", "protected",  "","", "thumbnail", "small", "bmiddle", "large", "", "", "JavaScript七大基本类型：boolean，null，undefined，number，string，object，symbol", "YYYY/MM/DD HH:mm:ss"]
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
    Send, {PGUP}
    Send, {Alt Up}
return

+!Up::
    Send, +{PGUP}
    Send, {Alt Up}
return

!Down::
    Send, {PGDN}
    Send, {Alt Up}
return

+!Down::
    Send, +{PGDN}
    Send, {Alt Up}
return

!Right::
    Send, {end}
    Send, {Alt Up}
return

+!Right::
    Send, +{end} 
    Send, {Alt Up}
return

!Left::
    Send, {Home}
    Send, {Alt Up}
return

+!Left::
    Send, +{Home}
    Send, {Alt Up}
return

/*
^!p::
    ; FileSelectFile / FileSelectFolder
    FileSelectFile, OutputVar,,3 
    Clipboard := OutputVar
return
*/


!d::
    run, %A_WorkingDir%
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
    Send, ^c
    ClipWait, 2
    if (StrLen(Clipboard) >= 50) {
        MsgBox, 请不要把此功能当做翻译机
        return 
    }
    ; 百度翻译API
    Var := ajax("http://106.12.222.209:8083/baidu_transapi.php?text=" . Clipboard . "&type=tuofeng")
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
    Send, ^c
    ClipWait, 2
    if (StrLen(Clipboard) >= 50) {
        MsgBox, 请不要把此功能当做翻译机
        return 
    }
    ; 百度翻译API
    Var := ajax("http://106.12.222.209:8083/baidu_transapi.php?text=" . Clipboard . "&type=_", true)
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
    Send, ^c
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
    Send, % A_IPAddress1
return

::ip2::
    Send, % A_IPAddress2
return

::ip3::
    Send, % A_IPAddress3
return

::ip4::
    Send, % A_IPAddress4
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
SendRaw, 149.129.40.183 
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
_sendinput("git add . && git commit -m '{#}' --no-verify && git push{LEFT 25}")
Return




::auth::
    Send, Authorization
return

>+a::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%, RGB  
    Clipboard := SubStr(color, 3) ; 考虑在前面加上，但我就算了，实战的时候发现这个东西有点多余"#" . 
    TrayTip, my title, current color is `n %Clipboard%, 20, 17
return

>^>+a::
MouseGetPos, posX, posY
PixelGetColor, color, %posX%, %posY%, Slow RGB
Clipboard := HexToRGB(color)
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
    Send, %A_Desktop%
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


::ahkvar2::
::varahk2::
Var = 
(
InputBox, OutputVar, title, enter a name?,,,,,,,,user
String1 := SubStr(OutputVar, 1, 1)
StringUpper, String1, String1
OutputVar2 := String1 . SubStr(OutputVar, 2)
Var = 
(

`)
code(Var)
)
code(Var)
return



!PGUP::
    Send, {PGUP 30}
    Send, {Alt Up}
return

!PGDN::
    Send, {PGDN 30}
    Send, {Alt Up}
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
``````javascript

``````
)
code(Var)
Send, {up}
return


!SC029::
::``````j::
::``````js::
::``````jss::
::``j::
::``js::
Var =
(
``````javascript

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

::sucai::
::cailiao::
::m::
Var =
(
Material
)
code(Var)
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
Send, ^x
ClipWait, 2
a := "『" . Clipboard . "』"
code(a)
Clipboard := tmp
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

::0-9::
cs("0123456789")
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

export default class %OutputVar% extends Chart {
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
微信小程序
)
code(Var)
return

::ahkreplace::
::ahkstr::
Var =
(
v := StrReplace(v, "，", ",")
)
code(Var)
return


::se::
Var =
(
segmentfault
)
code(Var)
return

^5::
cs("iocadmin3")
Send, {tab}
Sleep, 100
cs("iocadmin")
Send, {enter}
return

::mangzhong::
Var =
(
一想到你我就…… 😭😭😭……空恨别梦久
)
code(Var)
return

::pianduan::
Var =
(
snippets
)
code(Var)
return

::ahkgui::
::guiahk::
Var =
(
/**
//////////////////////////////////////////////
初始化 Book GUI 的代码逻辑
//////////////////////////////////////////////
 */
GUI, Card:Default


; 背景颜色
Gui, Card:Color, E6FFE6

; margin 布局
Gui, Card:Margin, 10, 10

; 字体大小
Gui, Card:Font, s12, Verdana


; Tab 选项卡
Gui, Card:Add, Tab3, gSwitchCardTab vCardTab Section Choose1 w1250, 知识卡片|新增卡片

Gui, Card:Tab, 1

; 树
Gui, Card:Add, ListView, vCardTree gCardTreeSelect AltSubmit Section HScroll H700 W350, 标题|标签


global cardGistObj := {}

; 初始化树
initCard()


; 代码容器
Gui, Card:Add, Edit, ys vCardContent w890 H700 Limit199307100337  
---
>+g::
	Gui, Card:Show,, Card
return

CardGuiEscape:
CardGuiClose:
	Gui, Book:Hide
return


initCard() {
	data := gistList()
	
	; 遍历所有片段
	For key, value in data {
		; 遍历 files ，但目前我只获取第一个即可
		For key2, value2 in value.files {
			; 加入变量
			cardGistObj[value.description] := value2.content
			; 添加到树中
			LV_Add("", value.description, key2)
			; 只拿第一个，如果有需要以后再说
			break
		}
	}
	
	; 自动适应宽度
	LV_ModifyCol()
}

SwitchCardTab() {

}

CardTreeSelect() {
	; 获取点击的索引
	index := A_EventInfo
	
	; 获取标题
	LV_GetText(RowText, A_EventInfo)
	
	; 获取内容
	content := cardGistObj[RowText]
	
	if (A_GuiEvent == "I" && InStr(ErrorLevel, "SF", true)) {
		GuiControl, Card:Text, CardContent, `% content
	}
	
	if (A_GuiEvent = "Normal") {
		; GuiControl, Card:Text, CardContent, `% content 
	}
	
	if (A_GuiEvent = "RightClick") {
		Clipboard := content 
		ToolTip  已加入到剪切板： "%content%"
		SetTimer, RemoveToolTip, -1000
	}

	if (A_GuiEvent = "DoubleClick") {
		Clipboard := content 
		ToolTip  已加入到剪切板： "%content%"
		SetTimer, RemoveToolTip, -1000
	}
}
)
txtit(Var)
return

::445::
Var =
(
445222199307100337
)
code(Var)
return

+F12::
Send, +{Insert}
return


>+l::
cs("localhost:")
return