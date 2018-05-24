; ALT + R 重启脚本
!r::
    Send, ^s
    reload
Return

; Alt + F11 重启脚本
~!F11::
    reload
return

!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    SendInput, ^c
    ClipWait, 2
    if (StrLen(Clipboard) >= 10) {
        MsgBox, 请不要把此功能当做翻译机
        return 
    }
    ; 有道翻译API（暂废弃）
    ; Var := ajax("http://119.23.22.136:6634/index.php?text=" . Clipboard . "&type=_")
    ; 百度翻译API
    Var := ajax("http://119.23.22.136:6634/baidu_transapi.php?text=" . Clipboard . "&type=_")
    ; 切换到英文（关闭中文输入法）
    SwitchIME(0x08040804)
    ; 黏贴结果
    SendInput, % Var
    ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
    Clipboard := Var
Return

^!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    SendInput, ^c
    ClipWait, 2
    if (StrLen(Clipboard) >= 10) {
        MsgBox, 请不要把此功能当做翻译机
        return 
    }
    ; 百度翻译API
    Var := ajax("http://119.23.22.136:6634/baidu_transapi.php?text=" . Clipboard . "&type=tuofeng")
    ; 切换到英文
    SwitchIME(0x08040804)
    ; 黏贴结果
    SendInput, % Var
    ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
    Clipboard := Var
Return


+!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    SendInput, ^c
    ClipWait, 2
    ; 百度翻译API
    Var := ajax("http://119.23.22.136:6634/baidu_transapi.php?text=" . Clipboard . "&type=_", true)
    TrayTip, 翻译成功, 翻译结果为： %Var%, 20, 17
    ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
    Clipboard := Var
Return

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


; 抓取菜单
+!c::  
    SendInput, ^c  ;^a
    Sleep, 150 
    Menu, MyMenu, DeleteAll
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
    MenuHandler:
        SendRaw, % A_ThisMenuItem
    Return  
return

!x::
     Menu, MyMenu, Show
Return

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

; 我阿里云的ip，方便我记忆
>^i::
    SendRaw, 119.23.22.136
return


>^t::
time := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
SendInput, % time
return

::git::
    SendInput,  rm -rf *.bak && git add . && git commit -m '' && git push -u origin master{LEFT 30}
Return

::auth::
    SendInput, Authorization
return

!a::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%, RGB  
    Clipboard := "#" . SubStr(color, 3)
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