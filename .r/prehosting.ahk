

/*
:*:map::
MsgBox, 123
return


*/

__TIP__() {
	MsgBox, 123
}

!z::
	HFN := Func("__TIP__")
	Hotstring(":*:map", HFN)
return


