#IfWinNotActive 神武3

; 强制无条件安装键盘钩子.
#InstallKeybdHook 

; 决定当脚本已经运行时是否允许它再次运行. Force: 跳过对话框并自动替换旧实例, 效果类似于 Reload 命令.
#SingleInstance, Force

; 让脚本持续运行, 直到用户退出.
#Persistent 

; 允许每个变量使用 256 MB.
#MaxMem 256

; 设置为tab键作为终止符（也可以加入回车键）`n
Hotstring("EndChars", "`t")  

; 设置文本格式UTF-8
FileEncoding, UTF-8

; 删除一些无用的备份文件
FileDelete, *.bak 
FileDelete, .\src\*.bak

global latestImageName := ""
global todoList := ""
global __ALTCTRL__ := []


/**
//////////////////////////////////////////////
说明一下： GUI的初始化必须置顶 
*/
#include src/GUI_init.ahk	  ; GUI初始化系列
#include src/GUI.ahk		  ; GUI系列
#Include src/ISearch.ahk	  ; ISearch
#Include src/book.ahk	      ; book
#Include src/Card.ahk	      ; card
/**//////////////////////////////////////////////
*/
#Include src/WinClip/WinClipAPI.ahk
#Include src/WinClip/WinClip.ahk

#Include src/uploadFile.ahk	      ; uploadFile.ahk
#Include src/Gdip.ahk             ; Gdip
#Include src/JSON.ahk	          ; JSON Script
#Include src/ActiveScript.ahk	  ; Microsoft Script
#Include src/lib.ahk              ; 公共函数
#Include src/Lua.ahk              ; secondkey_board 
#Include src/OCR.ahk              ; OCR
#Include src/local.ahk            ; LOCAL
#Include src/jietu.ahk			  ; 截图：https://www.autoahk.com/archives/28754 （依赖 Gdip.ahk，源码中被我删除了大量的重复代码）


#Include src/bilibili.ahk	      ; bilibili
#Include src/makedown.ahk         ; makedown
#Include src/cdn.ahk              ; CDN
#Include src/shell.ahk            ; shell
#Include src/docker.ahk		      ; docker
#Include src/elasticsearch.ahk	  ; elasticsearch

#Include src/elementui.ahk	      ; elementUI
#Include src/echarts.ahk	      ; echarts
#include src/css.ahk              ; css
#Include src/vue.ahk              ; Vue
#Include src/arr.ahk              ; array
#Include src/node.ahk             ; nodejs 
#Include src/jsutils.ahk          ; jsutils
#Include src/js.ahk               ; JavaScript  
#Include src/event.ahk            ; event
#Include src/ajax.ahk             ; ajax   
#Include src/react.ahk            ; React
#Include src/gulp.ahk             ; gulp
#Include src/koa.ahk		      ; koa
#Include src/canvas.ahk		      ; canvas
#Include src/TypeScript.ahk       ; TypeScript
#Include src/wx.ahk               ; wx
#Include src/nest.ahk             ; nest
#Include src/html.ahk             ; HTML    

#Include src/mongoose.ahk	      ; mongoose

#Include src/php.ahk              ; php	
#Include src/help.ahk             ; 辅助功能

; #Include src/flutter.ahk	      ; flutter
; #Include src/three.ahk          ; THREE
; #Include src/reactNative.ahk    ; ReactNative
; #Include src/taro.ahk	          ; taro
; #Include src/sql.ahk		      ; sql


!F12::
	Suspend
return


; 一个记录秒数的示例类...
class SecondCounter {
    __New() {
        this.interval := 1000
        this.count := 0
        this.cb := ObjBindMethod(this, "Fuck")
    }
    Start() {
        ; SetTimer 需要一个纯变量引用
        cb := this.cb
        SetTimer % cb, % this.interval
        ToolTip % "Counter started"
    }
    Stop() {
		; SetTimer 需要一个纯变量引用
        cb := this.cb
        SetTimer % cb, Off
			
        ToolTip % "Counter stopped at " this.count
		SetTimer, RemoveToolTip, -1000
    }
    ; 本例中,定时器调用了以下方法:
    Fuck() {
        ToolTip % ++this.count
    }
}

; #z::
; counter := new SecondCounter
; counter.Start()
; Sleep 5000
; counter.Stop()
; return

wh(img, PicPath = "bg.png") {
fuck_w2 := img.Width
fuck_h2 := img.Height

fuck_wem := img.Width / 16
fuck_hem := img.Height / 16

; 找到最后一个/的位置
index := InStr(PicPath, "\", false, 0) + 1
; zip名字
zipname := SubStr(PicPath, index)

Var = 
(
width="%fuck_w2%" height="%fuck_h2%"

width: %fuck_w2%px;
height: %fuck_h2%px;

width: rem(%fuck_w2%);
height: rem(%fuck_h2%);

width: %fuck_wem%em;
height: %fuck_hem%em;

@include bg('@/assets/%zipname%', rem(%fuck_w2%), rem(%fuck_h2%));
)
txtit(Var)
}

#z::
if (latestImageName) {
    img := getPicWH(latestImageName)
    wh(img, latestImageName)
} else {
    tip2("未找到图片，请重新截图")
}
return

#p::
Send, ^c
ClipWait, 2
if (clipboard) {
    PicPath := WinClip.GetFiles()
    if (!InStr(PicPath, ".webp")) {
        img := getPicWH(PicPath)
        wh(img, PicPath)
    }
} else {
    tip2("未找到图片，请重新截图")
}
return