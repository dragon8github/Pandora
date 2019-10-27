; 强制无条件安装键盘钩子.
#InstallKeybdHook 

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
#Include src/book.ahk	      ; book
#Include src/Card.ahk	      ; card
/**//////////////////////////////////////////////
*/

#Include src/JSON.ahk	          ; JSON Script
#Include src/ActiveScript.ahk	  ; Microsoft Script
#Include src/lib.ahk              ; 公共函数
#Include src/help.ahk             ; 辅助功能
#Include src/Lua.ahk              ; secondkey_board  

#Include src/bilibili.ahk	      ; bilibili
#Include src/makedown.ahk         ; makedown
#Include src/cdn.ahk              ; CDN
#Include src/shell.ahk            ; shell
#Include src/docker.ahk		      ; docker
#Include src/elasticsearch.ahk	  ; elasticsearch
#Include src/sql.ahk		      ; sql

#Include python/utils.ahk		  ; utils
#Include python/arr.ahk		      ; arr
#Include python/pandas.ahk		  ; pandas



!F12::
	Suspend
return


!z::

s := StrReplace(Clipboard, "`r`n`r`n", "")
code(s)
return


