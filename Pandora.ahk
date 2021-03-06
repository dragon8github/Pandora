﻿; IfWinNotActive 多个筛选条件 GroupAdd
GroupAdd, ESC, 神武
GroupAdd, ESC, CityEngine

; news: 注意，如果下面的代码中如果处在 #IfWinNotActive 系列的 API ，那这个会失效。也就是覆盖了这个语法，譬如 jietu.ahk 那个
; 所以，要检查一下 「#ifWin」 关键词，如果存在的话，要移到最下边引用。
#IfWinNotActive, ahk_group ESC

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
global __PIC_PATH__ := ""

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
#Include src/Lua.ahk              ; secondkey_board 
#Include src/OCR.ahk              ; OCR
#Include src/local.ahk            ; LOCAL


#Include src/three2.ahk           ; THREE
#Include src/bilibili.ahk	      ; bilibili
#Include src/makedown.ahk         ; makedown
#Include src/cdn.ahk              ; CDN
#Include src/shell.ahk            ; shell
#Include src/docker.ahk		      ; docker
#Include src/elasticsearch.ahk	  ; elasticsearch

#Include src/elementui.ahk	      ; elementUI
#Include src/echarts.ahk	      ; echarts
#Include src/openlayer.ahk        ; openlayer  
#Include src/vue.ahk              ; Vue
#include src/css.ahk              ; css
#Include src/arr.ahk              ; array
#Include src/node.ahk             ; nodejs 
#Include src/html.ahk             ; HTML    
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
#Include src/go.ahk               ; go
#Include src/mongoose.ahk	      ; mongoose
#Include src/cesium.ahk			  ; cesium
#Include src/mysql.ahk			  ; mysql

#Include src/php.ahk              ; php	
#Include src/ten.ahk              ; Tensorflow.js
#Include src/jietu.ahk			  ; 截图：https://www.autoahk.com/archives/28754 （依赖 Gdip.ahk，源码中被我删除了大量的重复代码）

; #Include src/flutter.ahk	      ; flutter
; #Include src/reactNative.ahk    ; ReactNative
; #Include src/taro.ahk	          ; taro
; #Include src/sql.ahk            ; sql
#IfWinNotActive

#Include src/lib.ahk              ; 公共函数
#Include src/help.ahk             ; 辅助功能
#include src/sw.ahk
#Include src/ce.ahk			  	  ; ce

!F12::
	Suspend
return


^!a::
WinGetTitle, Title, A
MsgBox, The active window is "%Title%".

; 获取当前 chrome OutputVar浏览器的进程id
WinGet, v, PID, , Chrome, Chrome
MsgBox, % v

clipboard := Title

WinGetPos, X, Y, W, H, %Title%
MsgBox, %X% , %Y% | %W% x %H%

WinGetClass, class, A
MsgBox, The active window's class is "%class%".
return


!z::

return