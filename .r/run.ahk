^n::
	run, chrome.exe http://19.104.40.37:8084/,,max
	bat := A_Desktop . "\Kill_IE.bat"
	run, % bat
return

~!enter::
  WinGet, OutputVar, MinMax, A
	if (OutputVar == 1) {
		WinRestore, A
	} else {
		WinMaximize, A
	}
return