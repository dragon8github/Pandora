
; 初始化右下角托盘的菜单。可以选择性开启脚本
Menu, Tray, Add
Menu, Tray, Add, JavaScript, GoMenuHandler
Menu, Tray, Add, Go, GoMenuHandler
Menu, Tray, Add, PHP, GoMenuHandler
Menu, Tray, Add, Python, GoMenuHandler

; 获取环境变量
EnvGet, OutputVar, PANDORA_SCRIPT

; 如果环境变量存在的话
if (!OutputVar) {
	; 重新赋值
	OutputVar := "Javascript"
	
	; 设置环境变量
	EnvSet, PANDORA_SCRIPT, %OutputVar%
}

; 设置当前勾选语言
Menu, Tray, ToggleCheck, % OutputVar

; 设置全局变量
global PANDORA_SCRIPT := OutputVar


GoMenuHandler:
	Menu, Tray, Uncheck, JavaScript
	Menu, Tray, Uncheck, Go
	Menu, Tray, Uncheck, PHP
	Menu, Tray, Uncheck, Python
	
	
	Menu, Tray, ToggleCheck, %A_ThisMenuItem%
	
	EnvSet, PANDORA_SCRIPT, %A_ThisMenuItem%
	global PANDORA_SCRIPT := A_ThisMenuItem
	reload
return
