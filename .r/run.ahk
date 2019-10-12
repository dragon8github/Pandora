^n::
	filename := A_Desktop . "\my.lnk"
	run, % filename, ,max
return

~!enter::
  WinGet, OutputVar, MinMax, A
	if (OutputVar == 1) {
		WinRestore, A
	} else {
		WinMaximize, A
	}
return