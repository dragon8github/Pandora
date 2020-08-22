
; 强制无条件安装键盘钩子.
#InstallKeybdHook 

; 决定当脚本已经运行时是否允许它再次运行. Force: 跳过对话框并自动替换旧实例, 效果类似于 Reload 命令.
#SingleInstance, Force

; 让脚本持续运行, 直到用户退出.
#Persistent 


; 设置文本格式UTF-8
FileEncoding, UTF-8

tip(title=" ", content=" ") {
    TrayTip, %title%, %content%, 20 ,16
    SetTimer, _HideTrayTip, 1500
}

_HideTrayTip() {  ; NOTE: For Windows 10, replace this function with the one defined above.
    TrayTip
}

; 复制黏贴大段文本
code(code) {
    tmp := Clipboard

    Clipboard := code

    ; 这里也需要等待，否则有几率出现黏贴不出的情况，如果出现黏贴不出的情况，就尝试调大这里的数值把
    Sleep, 200
    WinGetTitle, title, A

    Send, {CtrlDown}v{CtrlUp}

    ; 这里至少需要等待100m，原因不详
    sleep, 100
    ; 还原剪切板
    Clipboard := tmp
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


^!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    Send, ^c ; WinClip.copy()
    ClipWait, 2
    if (Clipboard) {
          if (StrLen(Clipboard) >= 50) {
              MsgBox, 请不要把此功能当做翻译机
              return 
          }
          ; 百度翻译API
          Var := ajax("https://service-115y2sb2-1255983702.gz.apigw.tencentcs.com/release/baidu_transapi?text=" . Clipboard . "&type=tuofeng")
          ; 翻译好像会返回双引号和空格符，我移除了
          v := SubStr(Var, 2, -1)
          v := Trim(v)
          ; 黏贴结果
          code(v)
          ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
          Clipboard := v
    }

Return

!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    Send, ^c ; ; WinClip.copy()
    ClipWait, 2
    if (Clipboard) {
      if (StrLen(Clipboard) >= 50) {
          MsgBox, 请不要把此功能当做翻译机
          return 
      }
      ; 百度翻译API
      Var := ajax("https://service-115y2sb2-1255983702.gz.apigw.tencentcs.com/release/baidu_transapi?text=" . Clipboard . "&type=_", true)
      
      ; 翻译好像会返回双引号和空格符，我移除了
      v := SubStr(Var, 2, -1)
      v := Trim(v)

      tip("翻译成功", "【" . Clipboard . "】 的翻译结果为： " . v)
      ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
      Clipboard := v
    }
Return