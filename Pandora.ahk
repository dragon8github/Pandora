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
 
!z::
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
mkdir %name% ; cd %name% ; Invoke-WebRequest -uri "%url%" -OutFile "%zipname%" ; Expand-Archive -Path %zipname% -DestinationPath . ; rm %zipname%
)
run, powershell.exe %command%
return

 
#Include src/lib.ahk              ; 公共函数
#Include src/help.ahk             ; 辅助功能
#Include src/makedown.ahk         ; makedown
#Include src/cdn.ahk              ; CDN   
#Include src/html.ahk             ; HTML    
#Include src/three.ahk            ; THREE    
#Include src/vue.ahk              ; Vue
#Include src/wx.ahk               ; wx
#Include src/elementui.ahk	      ; elementUI
#Include src/shell.ahk            ; shell
#include src/css.ahk              ; css
#Include src/arr.ahk              ; arr
#Include src/python.ahk		      ; python
#Include src/js.ahk               ; JavaScript  
#Include src/node.ahk             ; nodejs 
#Include src/canvas.ahk		      ; canvas
#Include src/TypeScript.ahk       ; TypeScript
#Include src/echarts.ahk	      ; echarts
#Include src/jsutils.ahk          ; jsutils
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
#Include src/wilddog.ahk	      ; wilddog


