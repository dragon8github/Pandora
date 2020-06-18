!m::

	Menu, KALUOPAI, Add, 【0】愚者（The Fool，0), bilibiliHandler2
	Menu, KALUOPAI, Add, 【1】魔术师（The Magician，I), bilibiliHandler2
	Menu, KALUOPAI, Add, 【2】女祭司（The High Priestess，II), bilibiliHandler2
	Menu, KALUOPAI, Add, 【3】女皇（The Empress，III), bilibiliHandler2
	Menu, KALUOPAI, Add, 【4】皇帝（The Emperor，IV), bilibiliHandler2
	Menu, KALUOPAI, Add, 【5】教皇（The Hierophant，or the Pope，V), bilibiliHandler2
	Menu, KALUOPAI, Add, 【6】恋人（The Lovers，VI), bilibiliHandler2
	Menu, KALUOPAI, Add, 【7】战车（The Chariot，VII), bilibiliHandler2
	Menu, KALUOPAI, Add, 【8】力量（Strength，VIII）, bilibiliHandler2
	Menu, KALUOPAI, Add, 【9】隐者（The Hermit，IX), bilibiliHandler2
	Menu, KALUOPAI, Add, 【10】命运之轮（The Wheel of Fortune，X), bilibiliHandler2
	Menu, KALUOPAI, Add, 【11】正义（Justice，XI）, bilibiliHandler2
	Menu, KALUOPAI, Add, 【12】倒吊人（The Hanged Man，XII), bilibiliHandler2
	Menu, KALUOPAI, Add, 【13】死神（Death，XIII), bilibiliHandler2
	Menu, KALUOPAI, Add, 【14】节制（Temperance，XIV), bilibiliHandler2
	Menu, KALUOPAI, Add, 【15】恶魔（The Devil ，XV), bilibiliHandler2
	Menu, KALUOPAI, Add, 【16】塔（The Tower，XVI), bilibiliHandler2
	Menu, KALUOPAI, Add, 【17】星星（The Star，XVII), bilibiliHandler2
	Menu, KALUOPAI, Add, 【18】月亮（The Moon，XVIII), bilibiliHandler2
	Menu, KALUOPAI, Add, 【19】太阳（The Sun，XIX), bilibiliHandler2
	Menu, KALUOPAI, Add, 【20】审判（Judgement，XX), bilibiliHandler2
	Menu, KALUOPAI, Add, 【21】世界（The World，XXI), bilibiliHandler2

	Menu, bilibiliMenu, Add, 卡罗牌, :KALUOPAI
	Menu, bilibiliMenu, Add, 🔴, bilibiliHandler2	
	Menu, bilibiliMenu, Add, ❄️, bilibiliHandler2	
	Menu, bilibiliMenu, Add, ❓, bilibiliHandler2
	Menu, bilibiliMenu, Add, ✈️, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🚀, bilibiliHandler2
	Menu, bilibiliMenu, Add, ✅, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🦄 , bilibiliHandler2
	Menu, bilibiliMenu, Add, 🐤 , bilibiliHandler2
	Menu, bilibiliMenu, Add, ☀️ , bilibiliHandler2
	Menu, bilibiliMenu, Add, 🐳, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🐉, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🌵 , bilibiliHandler2
	Menu, bilibiliMenu, Add, 🦋 , bilibiliHandler2
	Menu, bilibiliMenu, Add, 🔥, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🔆, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🏆, bilibiliHandler2
	Menu, bilibiliMenu, Add, ⚔️, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🎁, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🔔, bilibiliHandler2
	Menu, bilibiliMenu, Add, 📝, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🌈, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🚸, bilibiliHandler2
	
	Menu, bilibiliMenu, Add, ⚠️, bilibiliHandler2
	Menu, bilibiliMenu, Add, ❎, bilibiliHandler2
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
	Menu, bilibiliMenu, Add, ด้้้้้็้้้็็็็็้้้้้็็็็็้้้้้้็็็็็้้้้้็็็็็้้้้้้็็็็็้้้้้็็็็็้้้้้้็็็็็้้้้้็็็็็้้้้้้็็็็็, bilibiliHandler2
	Menu, bilibiliMenu, Add, 遍҈布互҈联网҈的҈神҈秘҈电波҈是҈如何҈制作҈出҈来的？, bilibiliHandler2
	
	
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