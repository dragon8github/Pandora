
__TIP__(a = 123) {
	MsgBox, % a
}

!z::
	HFN := Func("__TIP__")
	Hotstring(":*:fuck", HFN.bind("321"))
return

; ---- 上面是注册热字符串，这里是注册热键

GUICodeHotkey:
	MsgBox You pressed %A_ThisHotkey%.
return

!z::
	; Hotkey, ^!1, GUICodeHotkey
	fn := Func("code").Bind("fuck")
	Hotkey, ^!1, % fn 
return
