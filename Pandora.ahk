#IfWinNotActive 神武3
; #InstallKeybdHook
#Persistent ; 让脚本持续运行, 直到用户退出.
Hotstring("EndChars", "`t")  ; 设置为tab键作为终止符（也可以加入回车键）`n

FileEncoding, UTF-8
FileDelete, *.bak 
FileDelete, .\src\*.bak


#include src/GUI_init.ahk	  ; GUI初始化系列
#include src/GUI.ahk		  ; GUI系列
#Include src/ISearch.ahk	  ; ISearch
/**
//////////////////////////////////////////////
说明一下： GUI的初始化必须置顶
//////////////////////////////////////////////
 */
 
 ; 暂时只支持6大txt显示。不够再添加吧。控制一下体积。
 txtit(ary) {
  ; 数组长度，一共有几个需要显示的？
  len := ary.Length()
  ; 一行显示几个？
  xsize := 3
  ; 一共有几行
  ycount := Ceil(len / xsize)
  ; 开始遍历
  For index, value in ary {
     ; 索引是从1开始的，我习惯从0开始
     i := index - 1
     ; x轴的位置
     _x := A_ScreenWidth * (i / xsize)
     ; y轴的位置（如果是第一行普遍都是0）
     _y := i < xsize ? 0 : A_ScreenHeight / (Abs(index / xsize) + 1)
     ; 宽度
     _w := A_ScreenWidth / xsize
     _h := A_ScreenHeight / ycount
    
     ; 开始执行
     Run,% "C:\Windows\notepad.exe",,, pid
     WinWait, ahk_pid %pid%
     WinActivate, ahk_pid %pid%
     WinMove, ahk_pid %pid%,, _x, _y, _w, _h
     code(value)
  }
  
  Return
}

!x::
txtit(["fuckyou", "fuckyou", "fuckyou"])
return


#Include src/lib.ahk              ; 公共函数
#Include src/help.ahk             ; 辅助功能
#Include src/makedown.ahk         ; makedown
#Include src/cdn.ahk              ; CDN   
#Include src/html.ahk             ; HTML    
#Include src/three.ahk            ; THREE    
#Include src/vue.ahk              ; Vue
#Include src/wx.ahk               ; wx
#Include src/shell.ahk            ; shell
#include src/css.ahk              ; css
#Include src/js.ahk               ; JavaScript  
#Include src/node.ahk             ; nodejs 
#Include src/canvas.ahk		      ; canvas
#Include src/TypeScript.ahk       ; TypeScript
#Include src/echarts.ahk	      ; echarts
#Include src/jsutils.ahk          ; jsutils
#Include src/php.ahk              ; php
#Include src/elementui.ahk	      ; elementUI
#Include src/sql.ahk		      ; sql
#Include src/reactNative.ahk      ; ReactNative
#Include src/event.ahk            ; event
#Include src/arr.ahk              ; arr
#Include src/ajax.ahk             ; ajax   
#Include src/react.ahk            ; React
#Include src/Lua.ahk              ; secondkey_board  
#Include src/gulp.ahk             ; gulp
#Include src/python.ahk		      ; python
#Include src/koa.ahk		      ; koa
#Include src/docker.ahk		      ; docker
#Include src/flutter.ahk	      ; flutter
#Include src/bilibili.ahk	      ; bilibili
#Include src/elasticsearch.ahk	  ; elasticsearch
#Include src/golang.ahk	          ; golang
#Include src/wilddog.ahk	      ; wilddog


