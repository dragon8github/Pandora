::readline::
	Send, read -p "Enter a number"
return

!n::

	; 环境变量
	Menu, A, Add, 打印环境变量, ShellHandler
	Menu, A, Add, 添加一条路径, ShellHandler
	
	; 时间
	Menu, B, Add, 当前时间, ShellHandler
	
	; find
	Menu, C, Add, 根据文件名或者正则来查找：name/iname, ShellHandler
	Menu, C, Add, 支持逻辑操作符：-a/-and 和 -o/-or, ShellHandler
	Menu, C, Add, 正则表达式：-regex/-iregex , ShellHandler
	Menu, C, Add, 否定参数（取反）：, ShellHandler
	Menu, C, Add, 设置目录深度： -maxdepth和-mindepth, ShellHandler
	Menu, C, Add, 根据文件类型查找：-type, ShellHandler
	Menu, C, Add, 根据文件时间进行搜索, ShellHandler
	Menu, C, Add, 根据文件大小基于搜索, ShellHandler
	Menu, C, Add, 根据文件权限进行搜索, ShellHandler
	Menu, C, Add, 对搜索的文件进行操作：-exec, ShellHandler
	Menu, C, Add, 对搜索的文件进行删除：-delete, ShellHandler
	Menu, C, Add, 让find跳过特定的目录, ShellHandler
	
	; xargs
	Menu, D, Add, 将多行转换为单行, ShellHandler
	Menu, D, Add, 将单行转化为多行, ShellHandler
	Menu, D, Add, 自定义分隔符, ShellHandler
	Menu, D, Add, 替换指定的字符串： -I, ShellHandler
	Menu, D, Add, find和xargs结合, ShellHandler
	Menu, D, Add, 统计代码行数, ShellHandler
	
	; tr（文本转换）
	Menu, E, Add, 将大写转化为小写, ShellHandler
	Menu, E, Add, 删除匹配模式的字符, ShellHandler
	Menu, E, Add, 根据【补集】对字符串进行操作, ShellHandler
	Menu, E, Add, 删除重复的字符, ShellHandler
	Menu, E, Add, 删掉多余的空格, ShellHandler
	Menu, E, Add, 删掉多余的换行符, ShellHandler
	Menu, E, Add, 对列表中的数字进行累加, ShellHandler
	
	; grep（搜索文本）
	Menu, F, Add, 在stdin中搜索匹配模式的文本行, ShellHandler
	Menu, F, Add, 只输出匹配的文本：-o, ShellHandler
	Menu, F, Add, 在文件中搜索匹配模式的文本行, ShellHandler
	Menu, F, Add, 在多个文件中搜索匹配模式的文本行：grep "", ShellHandler
	Menu, F, Add, 使用扩展正则表达式：-E, ShellHandler
	Menu, F, Add, 反选不匹配的行：-v, ShellHandler
	Menu, F, Add, 统计出匹配模式的行数：-c, ShellHandler
	Menu, F, Add, 打印出所在的行号：-n, ShellHandler
	
	; sed（替换文本）
	Menu, G, Add, 选项-i会使得修改后的数据替换原始文件, ShellHandler
	Menu, G, Add, 标记可以使执行全局匹配, ShellHandler
	Menu, G, Add, 标记可以执行删除而不是替换（移除空行示例）, ShellHandler
	Menu, G, Add, 替换文件中所有3位数的数字, ShellHandler
	Menu, G, Add, 使用 -i.bak 选项方法调试sed, ShellHandler
	Menu, G, Add, 已匹配字符串标记, ShellHandler
	Menu, G, Add, 子匹配标记（\1\2\3\n）, ShellHandler
	Menu, G, Add, 组合多个sed表达式, ShellHandler
	Menu, G, Add, sed表达式中使用变量, ShellHandler

	Menu, ShellMenu, Add, 环境变量, :A
	Menu, ShellMenu, Add, 时间, :B
	Menu, ShellMenu, Add, find , :C
	Menu, ShellMenu, Add, xargs, :D
	Menu, ShellMenu, Add, tr（文本转换）, :E
	Menu, ShellMenu, Add, grep（搜索文本）, :F
	Menu, ShellMenu, Add, sed（替换文本）, :G
	
	Menu, ShellMenu, Show
	Menu, ShellMenu, DeleteAll
return  


ShellHandler:
; MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.
v := A_ThisMenuItem
Var := 

if (v == "打印环境变量") {

}

if (v == "添加一条路径") {

}

if (v == "当前时间") {

}

if (v == "根据文件名或者正则来查找：name/iname") {

}

if (v == "支持逻辑操作符：-a/-and 和 -o/-or") {

}

if (v == "正则表达式：-regex/-iregex ,") {

}

if (v == "否定参数（取反）：") {

}

if (v == "设置目录深度： -maxdepth和-mindepth") {

}

if (v == "根据文件类型查找：-type") {

}

if (v == "根据文件时间进行搜索") {

}

if (v == "根据文件大小基于搜索") {

}

if (v == "根据文件权限进行搜索") {

}

if (v == "对搜索的文件进行操作：-exec") {

}

if (v == "对搜索的文件进行删除：-delete") {

}

if (v == "让find跳过特定的目录") {

}

if (v == "将多行转换为单行") {

}

if (v == "将单行转化为多行") {

}

if (v == "自定义分隔符") {

}

if (v == "替换指定的字符串： -I") {

}

if (v == "find和xargs结合") {

}

if (v == "统计代码行数") {

}

if (v == "将大写转化为小写") {

}

if (v == "删除匹配模式的字符") {

}

if (v == "根据【补集】对字符串进行操作") {

}

if (v == "删除重复的字符") {

}

if (v == "删掉多余的空格") {

}

if (v == "删掉多余的换行符") {

}

if (v == "对列表中的数字进行累加") {

}

if (v == "在stdin中搜索匹配模式的文本行") {

}

if (v == "只输出匹配的文本：-o") {

}

if (v == "在文件中搜索匹配模式的文本行") {

}

if (v == "在多个文件中搜索匹配模式的文本行：grep """) {

}

if (v == "使用扩展正则表达式：-E") {

}

if (v == "反选不匹配的行：-v") {

}

if (v == "统计出匹配模式的行数：-c") {

}

if (v == "打印出所在的行号：-n") {

}

if (v == "选项-i会使得修改后的数据替换原始文件：-n") {

}

if (v == "标记可以使执行全局匹配：-n") {

}

if (v == "标记可以执行删除而不是替换（移除空行示例）：-n") {

}

if (v == "替换文件中所有3位数的数字：-n") {

}

if (v == "使用 -i.bak 选项方法调试sed：-n") {

}

if (v == "已匹配字符串标记（&）：-n") {

}

if (v == "子匹配标记（\1\2\3\n）：-n") {

}

if (v == "组合多个sed表达式：-n") {

}

if (v == "sed表达式中使用变量：-n") {

}


code(Var)
return