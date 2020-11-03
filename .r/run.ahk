
>^y::
	; 获取当前 chrome 浏览器的进程id
	WinGet, v, PID, , Chrome
	
	; 如果id存在的话
	if (v) {
		; kill
		Process, Close, % v
	}
	
	; 延迟一下，避免出现乱序而将刚打开的程序杀死。
	Sleep, 300
	
	; 执行华为程序
	DGIOC := A_Desktop . "\YIQING.lnk"
	run, % DGIOC
return
