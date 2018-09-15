; #IfWinNotActive 神武3
; #InstallKeybdHook
#Persistent ; 让脚本持续运行, 直到用户退出.
Hotstring("EndChars", "`n")  ; 设置为回车键作为终止符

FileEncoding, UTF-8
FileDelete, *.bak 
FileDelete, .\src\*.bak

#include src/GUI.ahk		 ; GUI系列 
#Include src/lib.ahk         ; 公共函数
#Include src/help.ahk        ; 辅助功能  
#Include src/html.ahk        ; HTML    
#Include src/vue.ahk         ; Vue
#include src/css.ahk         ; css   
#Include src/TypeScript.ahk  ; TypeScript
#Include src/tp.ahk		 	 ; thinkphp
#Include src/js.ahk          ; JavaScript   
#Include src/node.ahk        ; nodejs    
#Include src/react.ahk       ; React
#Include src/cdn.ahk         ; CDN   
#Include src/php.ahk         ; php   
#Include src/github.ahk      ; 云代码库    
#Include src/ht.ahk          ; ht-elementUI库   
#Include src/Lua.ahk         ; secondkey_board  
#Include src/gulp.ahk        ; gulp
#Include src/shell.ahk       ; shell
#Include src/docker.ahk      ; docker
#Include src/python.ahk		 ; python
#Include src/echarts.ahk	 ; echarts