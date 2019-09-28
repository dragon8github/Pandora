

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



__TIP__(a = 123) {
	MsgBox, % a
}

!z::
	HFN := Func("__TIP__")
	Hotstring(":*:fuck", HFN.bind("321"))
return