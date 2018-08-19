::readline::
	Send, read -p "Enter a number"
return

!n::

	; 环境变量
	Menu, A, Add, 打印环境变量, ShellHandler
	Menu, A, Add, 打印$PATH路径, ShellHandler
	Menu, A, Add, 添加一条路径, ShellHandler
	
	; 时间
	Menu, B, Add, 当前时间, ShellHandler
	
	; find
	Menu, C, Add, 根据文件名或者正则来查找：name/iname, ShellHandler
	Menu, C, Add, 支持逻辑操作符：-a/-and 和 -o/-or, ShellHandler
	Menu, C, Add, 正则表达式：-regex/-iregex , ShellHandler
	Menu, C, Add, 否定参数（取反）, ShellHandler
	Menu, C, Add, 设置目录深度： -maxdepth和-mindepth, ShellHandler
	Menu, C, Add, 根据文件类型查找（d为文件夹，f为文件）：-type, ShellHandler
	Menu, C, Add, 根据文件时间进行搜索, ShellHandler
	Menu, C, Add, 根据文件大小基于搜索, ShellHandler
	Menu, C, Add, 根据文件权限进行搜索（找出Apache中没有设置权限的php文件）, ShellHandler
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
Var = 
(
env
)
}



if (v == "打印$PATH路径") {
Var = 
(
echo $PATH
)
}

if (v == "添加一条路径") {
Var = 
(
export PATH="$PATH:/home/user/bin"
echo $PATH
)
}

if (v == "当前时间") {
Var = 
(
date "+`%Y/`%m/`%d `%H:`%M:`%S"
)
}

if (v == "根据文件名或者正则来查找：name/iname") {
Var = 
(
find /home/users -iname '*.txt' -print
)
}

if (v == "支持逻辑操作符：-a/-and 和 -o/-or") {
Var = 
(
find /home/users \( -name '*.txt' -o -name '*.pdf' \) -print
)
}

if (v == "正则表达式：-regex/-iregex") {
Var = 
(
find /home/users -iregex '.*\.(py\|sh\)$'
)
}

if (v == "否定参数（取反）") {
Var = 
(
find /home/users ! -name '*.txt' -print
)
}

if (v == "设置目录深度： -maxdepth和-mindepth") {
Var = 
(
find /home/users -maxdepth 1 -name "*.MD" -print
)
}

if (v == "根据文件类型查找（d为文件夹，f为文件）：-type") {
Var = 
(
find /home/users -type d -print
)
}

if (v == "根据文件时间进行搜索") {
Var = 
(
# 打印出最近7天内访问过的所有文件。
find /home/users f -atime -7 -print
# 打印出恰好在7天前当天访问过的所有文件。
find /home/users f -atime 7 -print
# 打印出访问时间超过7天的所有文件。
find /home/users f -atime +7 -print
# 打印出7分钟之前访问过的所有文件
find /home/users f -amin +7 -print
# 找出比file.txt修改时间更近的所有文件（-newer选项可以用于比较修改时间）
find /home/users f -newer file.txt -print
)
}

if (v == "根据文件大小基于搜索") {
Var = 
(
# 大于2kb的文件
find /home/users -type f -size +2k
# 小于2kb的文件
find /home/users -type f -size -2k
# 大于等于2kb的文件
find /home/users -type f -size 2k
)
}

if (v == "根据文件权限进行搜索（找出Apache中没有设置权限的php文件）") {
Var = 
(
find /home/users -type f -name "*.php" | -perm 644 -print
)
}

if (v == "对搜索的文件进行操作：-exec") {
Var = 
(
find . -type f -user root -exec chown Lee {} \;
)
}

if (v == "对搜索的文件进行删除：-delete") {
Var = 
(
find /home/users -type f -name "*.txt" -delete
)
}

if (v == "让find跳过特定的目录") {
Var = 
(

)
}

if (v == "将多行转换为单行") {
Var = 
(

)
}

if (v == "将单行转化为多行") {
Var = 
(

)
}

if (v == "自定义分隔符") {
Var = 
(

)
}

if (v == "替换指定的字符串： -I") {
Var = 
(

)
}

if (v == "find和xargs结合") {
Var = 
(

)
}

if (v == "统计代码行数") {
Var = 
(

)
}

if (v == "将大写转化为小写") {
Var = 
(

)
}

if (v == "删除匹配模式的字符") {
Var = 
(

)
}

if (v == "根据【补集】对字符串进行操作") {
Var = 
(

)
}

if (v == "删除重复的字符") {
Var = 
(

)
}

if (v == "删掉多余的空格") {
Var = 
(

)
}

if (v == "删掉多余的换行符") {
Var = 
(

)
}

if (v == "对列表中的数字进行累加") {
Var = 
(

)
}

if (v == "在stdin中搜索匹配模式的文本行") {
Var = 
(

)
}

if (v == "只输出匹配的文本：-o") {
Var = 
(

)
}

if (v == "在文件中搜索匹配模式的文本行") {
Var = 
(

)
}

if (v == "在多个文件中搜索匹配模式的文本行：grep """) {
Var = 
(

)
}

if (v == "使用扩展正则表达式：-E") {
Var = 
(

)
}

if (v == "反选不匹配的行：-v") {
Var = 
(

)
}

if (v == "统计出匹配模式的行数：-c") {
Var = 
(

)
}

if (v == "打印出所在的行号：-n") {
Var = 
(

)
}

if (v == "选项-i会使得修改后的数据替换原始文件：-n") {
Var = 
(

)
}

if (v == "标记可以使执行全局匹配：-n") {
Var = 
(

)
}

if (v == "标记可以执行删除而不是替换（移除空行示例）：-n") {
Var = 
(

)
}

if (v == "替换文件中所有3位数的数字：-n") {
Var = 
(

)
}

if (v == "使用 -i.bak 选项方法调试sed：-n") {
Var = 
(

)
}

if (v == "已匹配字符串标记（&）：-n") {
Var = 
(

)
}

if (v == "子匹配标记（\1\2\3\n）：-n") {
Var = 
(

)
}

if (v == "组合多个sed表达式：-n") {
Var = 
(

)
}

if (v == "sed表达式中使用变量：-n") {
Var = 
(

)
}


Send, {text}%Var%
return