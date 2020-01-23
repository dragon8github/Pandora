!m::

	Menu, bilibiliMenu, Add, 🔴, bilibiliHandler2					
	Menu, bilibiliMenu, Add, ❓, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🚀, bilibiliHandler2
	Menu, bilibiliMenu, Add, ✅, bilibiliHandler2
	Menu, bilibiliMenu, Add, ❎, bilibiliHandler2
	Menu, bilibiliMenu, Add, ⚠️, bilibiliHandler2
	Menu, bilibiliMenu, Add, 📝, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🌈, bilibiliHandler2
	Menu, bilibiliMenu, Add, ⭐️, bilibiliHandler2
	Menu, bilibiliMenu, Add, ✔, bilibiliHandler2
	Menu, bilibiliMenu, Add, ✖️, bilibiliHandler2
	Menu, bilibiliMenu, Add, ·, bilibiliHandler2
	
	Menu, bilibiliMenu, Add,,
	Menu, bilibiliMenu, Add,,

	Menu, bilibiliMenu, Add, (=・ω・=), bilibiliHandler2
	Menu, bilibiliMenu, Add, (｀・ω・´), bilibiliHandler2
	Menu, bilibiliMenu, Add, ╮(￣▽￣)╭, bilibiliHandler2
	Menu, bilibiliMenu, Add, ～(￣▽￣～), bilibiliHandler2
	Menu, bilibiliMenu, Add, ←_←, bilibiliHandler2
	Menu, bilibiliMenu, Add, →_→, bilibiliHandler2
	Menu, bilibiliMenu, Add, (￣3￣), bilibiliHandler2
	Menu, bilibiliMenu, Add, Σ(ﾟдﾟ;), bilibiliHandler2
	Menu, bilibiliMenu, Add, (╯°口°)╯(┴—┴, bilibiliHandler2
	Menu, bilibiliMenu, Add, (｡･ω･｡), bilibiliHandler2
	Menu, bilibiliMenu, Add, （#-_-)┯━┯, bilibiliHandler2
	Menu, bilibiliMenu, Add, _(:3」∠)_, bilibiliHandler2
	Menu, bilibiliMenu, Add, ╰(‵□′)╯砸瓦鲁多, bilibiliHandler2
	
	Menu, bilibiliMenu, Show
	Menu, bilibiliMenu, DeleteAll

return

bilibiliHandler2:
v := A_ThisMenuItem
Clipboard := v
SendEvent, {text}%v%
return

bilibiliHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}


code(Var)
return