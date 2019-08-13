﻿; 强制无条件安装键盘钩子.
; #InstallKeybdHook 

; 决定当脚本已经运行时是否允许它再次运行. Force: 跳过对话框并自动替换旧实例, 效果类似于 Reload 命令.
#SingleInstance, Force

; 让脚本持续运行, 直到用户退出.
#Persistent 

; 设置为tab键作为终止符（也可以加入回车键）`n
Hotstring("EndChars", "`t")  

; 设置文本格式UTF-8
FileEncoding, UTF-8

; 删除一些无用的备份文件
FileDelete, *.bak 
FileDelete, .\src\*.bak

/**
//////////////////////////////////////////////
说明一下： GUI的初始化必须置顶 
*/

#include src/GUI_init.ahk	  ; GUI初始化系列
#include src/GUI.ahk		  ; GUI系列
#Include src/ISearch.ahk	  ; ISearch
/**//////////////////////////////////////////////
*/

#Include src/lib.ahk              ; 公共函数
#Include src/help.ahk             ; 辅助功能
#Include src/makedown.ahk         ; makedown
#Include src/cdn.ahk              ; CDN   
#Include src/taro.ahk	          ; taro
#Include src/elementui.ahk	      ; elementUI
#Include src/html.ahk             ; HTML    
#Include src/three.ahk            ; THREE    
#Include src/wx.ahk               ; wx
#Include src/shell.ahk            ; shell
#Include src/echarts.ahk	      ; echarts
#include src/css.ahk              ; css
#Include src/vue.ahk              ; Vue
#Include src/arr.ahk              ; arr
#Include src/python.ahk		      ; python
#Include src/node.ahk             ; nodejs 
#Include src/jsutils.ahk          ; jsutils
#Include src/js.ahk               ; JavaScript  
#Include src/canvas.ahk		      ; canvas
#Include src/TypeScript.ahk       ; TypeScript
#Include src/php.ahk              ; php
#Include src/sql.ahk		      ; sql
#Include src/reactNative.ahk      ; ReactNative
#Include src/event.ahk            ; event
#Include src/ajax.ahk             ; ajax   
#Include src/react.ahk            ; React
#Include src/Lua.ahk              ; secondkey_board  
#Include src/gulp.ahk             ; gulp
#Include src/koa.ahk		      ; koa
#Include src/docker.ahk		      ; docker
#Include src/flutter.ahk	      ; flutter
#Include src/bilibili.ahk	      ; bilibili
#Include src/elasticsearch.ahk	  ; elasticsearch
#Include src/golang.ahk	          ; golang
#Include src/book.ahk	          ; book