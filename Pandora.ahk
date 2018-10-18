#IfWinNotActive 神武3
; #InstallKeybdHook
#Persistent ; 让脚本持续运行, 直到用户退出.
Hotstring("EndChars", "`n`t")  ; 设置为回车键作为终止符

FileEncoding, UTF-8
FileDelete, *.bak 
FileDelete, .\src\*.bak

; 每次输入字符时, 热字串识别器会检查当前活动窗口, 并且如果活动窗口不同于之前, 则会重置. 如果活动窗口发生变化, 但在键入任何字符之前返回, 则不会检测到更改(但可能会由于其他原因重置热字串识别器). 
; 通过两个热字符串的触发角，优雅自然无障碍的重置。（实验中...）
~Enter::
~Tab::
	; 热字串识别器也可以通过调用 Hotstring("Reset") 来重置.
	Hotstring("Reset")
return

#include src/GUI.ahk		; GUI系列 
#Include src/lib.ahk        ; 公共函数
#Include src/help.ahk       ; 辅助功能
#Include src/makedown.ahk   ; makedown
#Include src/html.ahk       ; HTML    
#Include src/three.ahk      ; THREE    
#Include src/vue.ahk        ; Vue
#Include src/wx.ahk         ; wx
#Include src/shell.ahk      ; shell
#Include src/node.ahk       ; nodejs 
#include src/css.ahk        ; css   
#Include src/TypeScript.ahk ; TypeScript
#Include src/tp.ahk		 	; thinkphp
#Include src/js.ahk         ; JavaScript   
#Include src/arr.ahk        ; arr
#Include src/ajax.ahk         ; ajax   
#Include src/react.ahk      ; React
#Include src/cdn.ahk        ; CDN   
#Include src/php.ahk        ; php   
#Include src/github.ahk     ; 云代码库    
#Include src/ht.ahk         ; ht-elementUI库   
#Include src/Lua.ahk        ; secondkey_board  
#Include src/gulp.ahk       ; gulp
#Include src/docker.ahk     ; docker
#Include src/python.ahk		; python
#Include src/echarts.ahk	; echarts
#Include src/sql.ahk		; sql
#Include src/bdmap.ahk		; sql
#include src/prehosting.ahk	; 预设置的快捷键