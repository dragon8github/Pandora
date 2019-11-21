!m::

					
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
	

	Menu, bilibiliMenu, Add,,
	Menu, bilibiliMenu, Add,,
	
	Menu, bilibiliMenu, Add, mongodb-config, bilibiliHandler
	Menu, bilibiliMenu, Add, show dbs, bilibiliHandler2
	Menu, bilibiliMenu, Add, show collections, bilibiliHandler2
	Menu, bilibiliMenu, Add, use test, bilibiliHandler2
	Menu, bilibiliMenu, Add, db.createCollection("user"), bilibiliHandler2
	Menu, bilibiliMenu, Add, db.user.insert({id: 1`, name: "LeeAo"}), bilibiliHandler2
	Menu, bilibiliMenu, Add, db.user.remove({id : 1}), bilibiliHandler2
	Menu, bilibiliMenu, Add, db.test.drop(), bilibiliHandler2

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

if (v == "mongodb-config") {
Var =
(
# 数据库路径
dbpath=C:\Users\Lee\Desktop\mongodb\test\data

# 日志输出文件路径
logpath=C:\Users\Lee\Desktop\mongodb\test\mongodb.log

# 启用日志文件，默认启用
journal=true 

# 错误日志采用追加模式，配置这个选项后mongodb的日志会追加到现有的日志文件，而不是从新创建一个新文件
logappend=true

# 这个选项可以过滤掉一些无用的日志信息，若需要调试使用请设置为false
quiet=true 

# 端口号 默认为27017
port=27017
)
}

code(Var)
return