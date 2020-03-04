^d::
	; 获取当前 chrome 浏览器的进程id
	WinGet, v, PID, , Chrome
	
	; 如果id存在的话
	if (v) {
		; kill
		Process, Close, % v
	}
	
	; 执行华为的 kill_IE 命令文件释放IE
	; bat := A_Desktop . "\Kill_IE.bat"
	; run, % bat
	
	
	file := A_Desktop . "\event.lnk"
	run, % file 
return

^n::
	; 获取当前 chrome 浏览器的进程id
	WinGet, v, PID, , Chrome
	
	; 如果id存在的话
	if (v) {
		; kill
		Process, Close, % v
	}


	; 使用 chrome 浏览器打开内网预览地址，并且最大化，但好像max参数无效。
	;run, chrome.exe http://19.104.40.37:8084/,,max
	file := A_Desktop . "\my.lnk"
	run, % file
	; 执行华为的 kill_IE 命令文件释放IE
	bat := A_Desktop . "\Kill_IE.bat"
	run, % bat
return

^h::
	; 获取当前 chrome 浏览器的进程id
	WinGet, v, PID, , Chrome
	
	; 如果id存在的话
	if (v) {
		; kill
		Process, Close, % v
	}
	
	; 执行华为的 kill_IE 命令文件释放IE
	bat := A_Desktop . "\Kill_IE.bat"
	run, % bat
	
	; 延迟一下，避免出现乱序而将刚打开的程序杀死。
	Sleep, 300
	
	; 执行华为程序
	DGIOC := A_Desktop . "\DGIOC.url"
	run, % DGIOC
return

~!enter::
  WinGet, OutputVar, MinMax, A
	if (OutputVar == 1) {
		WinRestore, A
	} else {
		WinMaximize, A
	}
return