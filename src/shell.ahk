

::sh.curl::
::shell.curl::
::bash.curl::
Var =
(
# post 请求 application/json
curl -H "Content-type: application/json" -X POST -d '{"user": "admin", "passwd":"12345678"}' http://127.0.0.1/index.php

# post Form 请求 
# <?php 
# header("Access-Control-Allow-Origin:*"); 
# header('Access-Control-Allow-Headers:x-requested-with,content-type'); 
# $rws_post = $GLOBALS['HTTP_RAW_POST_DATA'];
# var_dump($rws_post);
curl -H "Content-type: application/x-www-form-urlencoded" -d "user=admin&passwd=12345678" http://127.0.0.1:8080/login

# get 请求
curl http://127.0.0.1:8080/login?admin&passwd=12345678
)
code(Var)
return

::sh.wc::
::shell.wc::
::bash.wc::
::wc::
Var =
(
find . -name "*.json" -prune -o -path "./assets/*" -o -iname "*.MD"  -prune -o -type f -print | xargs wc -l
find ./ -iregex '.*\.\(js\|vue\|scss\)$' | xargs wc -l
)
code(Var)
return

::sh.tree::
::shtree::
::bash.tree::
::bashtree::
::shell.tree::
::shelltree::
::tree::
Var =
(
find ./ -maxdepth 2 -name ".git" -prune -o -name ".gitignore" -prune -o -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g' > FUCK.MD
# 过滤了一些不需要打印的东西
find ./ -iregex './\.\(.*\)'  -prune -o -iregex '\./node_modules'  -prune -o -iregex '.*\.\(md\|png\|jpg\|gif\|otf\|TTF)' -prune -o -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g' > FUCK.MD
)
code(Var)
return

::readline::
::sh.read::
::bashread::
::bash.read::
	Send, read -p "Enter a number"
return

::shfor::
::bashfor::
::shellfor::
Var =
(
#!/bin/bash
count=1;
for img in `find ./ -iname '*.png' -o -iname '*.jpg' -type f -maxdepth 1`
do
	echo "$count"
	let count++
done

read -p "Enter a number"
)
code(Var)
return

!b::
	; 环境变量
	Menu, A, Add, 打印环境变量, ShellHandler
	Menu, A, Add, 打印$PATH路径, ShellHandler
	Menu, A, Add, 添加一条路径, ShellHandler
	
	; 时间
	Menu, B, Add, 当前时间, ShellHandler
	
	; find
	Menu, C, Add, 根据文件名：name/iname, ShellHandler
	Menu, C, Add, 限制匹配的路径及名称：-path, ShellHandler
	Menu, C, Add, 支持逻辑操作符：-a/-and 和 -o/-or, ShellHandler
	Menu, C, Add, 正则表达式：-regex/-iregex , ShellHandler
	Menu, C, Add, 否定参数（取反）, ShellHandler
	Menu, C, Add, 设置目录深度： -maxdepth和-mindepth, ShellHandler
	Menu, C, Add, 根据文件类型查找（d为文件夹，f为文件）：-type, ShellHandler
	Menu, C1, Add, 打印出最近7天内访问过的所有文件, ShellHandler
	Menu, C1, Add, 打印出恰好在7天前当天访问过的所有文件, ShellHandler
	Menu, C1, Add, 打印出访问时间超过7天的所有文件, ShellHandler
	Menu, C1, Add, 打印出7分钟之前访问过的所有文件, ShellHandler
	Menu, C1, Add, 找出比file.txt修改时间更近的所有文件（newer选项可以用于比较修改时间）, ShellHandler
	Menu, C, Add, 根据文件时间进行搜索, :C1
	Menu, C2, Add, 大于2kb的文件, ShellHandler
	Menu, C2, Add, 小于2kb的文件, ShellHandler
	Menu, C2, Add, 大于等于2kb的文件, ShellHandler
	Menu, C, Add, 根据文件大小基于搜索, :C2
	Menu, C, Add, 根据文件权限进行搜索（找出Apache中没有设置权限的php文件）, ShellHandler
	Menu, C, Add, 对搜索的文件进行操作：-exec, ShellHandler
	Menu, C, Add, 所有C文件拼接起来写入单个文件, ShellHandler
	Menu, C, Add, 将十天前的.txt文件复制到OLD目录中, ShellHandler
	Menu, C, Add, 对搜索的文件进行删除：-delete, ShellHandler
	Menu, C, Add, 让find跳过特定的目录（排除指定目录）：-prune, ShellHandler
	
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
	Menu, E, Add, 根据【补集】对字符串进行操作: -c, ShellHandler
	Menu, E, Add, 删除重复的字符, ShellHandler
	Menu, E, Add, 删掉多余的空格, ShellHandler
	Menu, E, Add, 删掉多余的换行符, ShellHandler
	Menu, E, Add, 对列表中的数字进行累加, ShellHandler
	Menu, E, Add, 对列表中的数字进行累加（加强版，先删除字母）, ShellHandler
	
	; grep（搜索文本）
	Menu, F, Add, 在stdin中搜索匹配模式的文本行, ShellHandler
	Menu, F, Add, 只输出匹配的文本：-o, ShellHandler
	Menu, F, Add, 在文件中搜索匹配模式的文本行, ShellHandler
	Menu, F, Add, 使用扩展正则表达式：-E, ShellHandler
	Menu, F, Add, 反选不匹配的行：-v, ShellHandler
	Menu, F, Add, 统计出匹配模式的行数：-c, ShellHandler
	Menu, F, Add, 统计文件中匹配项的数量, ShellHandler
	Menu, F, Add, 打印出所在的行号：-n, ShellHandler
	Menu, F, Add, 选项-l可以列出匹配模式所在文件, ShellHandler
	Menu, F, Add, 递归搜索多个文件, ShellHandler
	Menu, F, Add, 忽略模式中的大小写, ShellHandler
	Menu, F, Add, 使用grep匹配多个模式, ShellHandler
	Menu, F, Add, 在grep搜索中指定文件, ShellHandler
	Menu, F, Add, 在grep搜索中排除文件, ShellHandler
	Menu, F, Add, 在grep搜索中排除目录, ShellHandler
	
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
	
	; 强大的#（从左到右）操作符和`%（从右到做）操作符
	Menu, H, Add, `% 获取文件名和后缀示例, ShellHandler
	Menu, H, Add, #（从左到右）操作符, ShellHandler
	Menu, H, Add, `%（从右到做）操作符, ShellHandler
	
	
	Menu, ShellMenu, Add, git, ShellHandler
	Menu, ShellMenu, Add, git add . && git commit -m "", ShellHandler
	Menu, ShellMenu, Add, git push -u origin master , ShellHandler
	Menu, ShellMenu, Add, git pull origin master , ShellHandler
	
	
	Menu, ShellMenu, Add, , ShellHandler
	Menu, ShellMenu, Add, , ShellHandler
	
	Menu, ShellMenu, Add, #!/bin/bash, ShellHandler
	Menu, ShellMenu, Add, for循环, ShellHandler
	Menu, ShellMenu, Add, 环境变量, :A
	Menu, ShellMenu, Add, 时间, :B
	Menu, ShellMenu, Add, find , :C
	Menu, ShellMenu, Add, xargs, :D
	Menu, ShellMenu, Add, tr（文本转换）, :E
	Menu, ShellMenu, Add, grep（搜索文本）, :F
	Menu, ShellMenu, Add, sed（替换文本）, :G
	Menu, ShellMenu, Add, 强大的 ## 操作符和 `%`% 操作符, :H
	
	Menu, ShellMenu, Show
	Menu, ShellMenu, DeleteAll
return  


ShellHandler:
; MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.
v := A_ThisMenuItem
Var := 


if (v == "") {
Var = 
(

)
}

if (v == "git add . && git commit -m """"") {
Var = 
(
git add . && git commit -m "迭代"
)
SendInput, % Var
SendInput, {left}
return
}

if (v == "git pull origin master") {
Var = 
(
git pull origin master
)
SendInput, % Var
return
}

if (v == "git push -u origin master") {
Var = 
(
git push -u origin master
)
SendInput, % Var
return
}

if (v == "git") {
Var = 
(
git add . && git commit -m '迭代' --no-verify && git push -u origin master
)
SendInput, % Var
SendInput, {left 42}
return
}


if (v == "#!/bin/bash") {
Var = 
(
#!/bin/bash
)
}

if (v == "% 获取文件名和后缀示例") {
Var = 
(
file_name="sample.jpg"
name=${file_name`%.*}
echo $name  # sample

file_name="sample.jpg"
ext=${file_name#*.}
echo $ext   # jpg

read -p "Enter a number"
)
}

if (v == "#（从左到右）操作符") {
Var = 
(
VAR=hack.fun.book.txt
echo ${VAR#*.} # fun.book.txt

VAR=hack.fun.book.txt
echo ${VAR##*.} # txt

read -p "Enter a number"
)
}

if (v == "%（从右到做）操作符") {
Var = 
(
VAR=hack.fun.book.txt
echo ${VAR`%.*} # hack.fun.book

VAR=hack.fun.book.txt
echo ${VAR`%`%.*} # hack

read -p "Enter a number"
)
}

if (v == "打印环境变量") {
Var = 
(
env
)
}

if (v == "for循环") {
Var = 
(
#!/bin/bash
count=1;
for img in ``find ./ -iname '*.png' -o -iname '*.jpg' -type f -maxdepth 1``
do
	echo "$count"
	let count++
done
read -p "Enter a number"
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

if (v == "根据文件名：name/iname") {
Var = 
(
find /home/users -iname '*.txt' -print
)
}


if (v == "限制匹配的路径及名称：-path") {
Var = 
(
find . -path "./assets/*" -name '*.png' # 使用 -path 时，不需要 -o 或 -a 就可以直接使用 -name，据我所知也就-path可以这样用
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
find ./ -iregex '.*\.\(png\|svg\)$'
# 请注意点：
# 1、 一定要输入路径符号 "." 或者 "./"
# 2、 一些正则符号如 () 或 | 都需要反斜杠转义
# 3、以下demo查询条件分别是： （1）所有.开头的文件，(2) ./node_modules文件夹 （3） md和图片文件
find ./ -maxdepth 1 -iregex './\.\(.*\)' -o -iregex '\./node_modules' -o -iregex '.*\.\(md\|png\|jpg\|gif\|otf\|TTF)'
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

if (v == "打印出最近7天内访问过的所有文件") {
Var = 
(
find /home/users f -atime -7 -print
)
}

if (v == "打印出恰好在7天前当天访问过的所有文件") {
Var = 
(
find /home/users f -atime 7 -print
)
}

if (v == "打印出访问时间超过7天的所有文件") {
Var = 
(
find /home/users f -atime +7 -print
)
}

if (v == "打印出7分钟之前访问过的所有文件") {
Var = 
(
find /home/users f -amin +7 -print
)
}

if (v == "找出比file.txt修改时间更近的所有文件（newer选项可以用于比较修改时间）") {
Var = 
(
find /home/users f -newer file.txt -print
)
}

if (v == "大于2kb的文件") {
Var = 
(
find /home/users -type f -size +2k
)
}

if (v == "小于2kb的文件") {
Var = 
(
find /home/users -type f -size -2k
)
}

if (v == "大于等于2kb的文件") {
Var = 
(
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
find /home/users -type f -user root -exec chown Lee {} \;
)
}

if (v == "所有C文件拼接起来写入单个文件") {
Var = 
(
find /home/users -type f -name "*.c" -exec cat {} > all_c_file.txt \;
)
}

if (v == "将十天前的.txt文件复制到OLD目录中") {
Var = 
(
find /home/users -type f -mtime +10 -name "*.txt" -exec cp {} OLD \;
)
}


if (v == "对搜索的文件进行删除：-delete") {
Var = 
(
find /home/users -type f -name "*.txt" -delete
)
}

if (v == "让find跳过特定的目录（排除指定目录）：-prune") {
Var = 
(
find ./ -name ".git" -prune -o -name ".gitignore" -prune -o -print
)
}

if (v == "将多行转换为单行") {
Var = 
(
cat example.txt | xargs
)
}

if (v == "将单行转化为多行") {
Var = 
(
cat example.txt | xargs -n 3
)
}

if (v == "自定义分隔符") {
Var = 
(
echo "splitXsplit2Xsplit3Xsplit4" | xargs -d X
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
find . -type f -name "*.txt" -print0 | xargs -0 rm -f
)
}

if (v == "统计代码行数") {
Var = 
(
find source_code_dir_path -type f -name "*.c" -print0 | xargs -0 wc -l
)
}

if (v == "将大写转化为小写") {
Var = 
(
echo "Hello 123 world 456" | tr -d '0-9'
)
}

if (v == "删除匹配模式的字符") {
Var = 
(

)
}

if (v == "根据【补集】对字符串进行操作: -c") {
Var = 
(
echo hello 1 char 2 next 4 | tr -d -c '0-9 \n'
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
echo "GUN is      not    UNIX. Recursive    right  ?" | tr -s ' '
)
}

if (v == "删掉多余的换行符") {
Var = 
(
cat test.txt | tr -s '\n'
)
}

if (v == "对列表中的数字进行累加") {
Var = 
(
cat sum.txt | echo $[ $(tr '\n' '+' ) 0 ]
)
}

if (v == "对列表中的数字进行累加（加强版，先删除字母）") {
Var = 
(
cat test.txt | tr -d [a-z] | echo "total: $[$(tr ' ' '+')]"
)
}


if (v == "在stdin中搜索匹配模式的文本行") {
Var = 
(
echo -e "this is a word \n next line" | grep word
)
}

if (v == "只输出匹配的文本：-o") {
Var = 
(
echo this is a line. | egrep -o "[a-z]+\."
)
}

if (v == "在文件中搜索匹配模式的文本行") {
Var = 
(
grep "match_text" file1 file2 file3 ...
)
}


if (v == "使用扩展正则表达式：-E") {
Var = 
(
grep -E "[a-z]+" filename
)
}

if (v == "反选不匹配的行：-v") {
Var = 
(
grep -v match_pattern filename
)
}

if (v == "统计出匹配模式的行数：-c") {
Var = 
(
echo -e "1 2 3 4 \n hello \n 5 6" | egrep -c "[0-9]"
)
}

if (v == "统计文件中匹配项的数量") {
Var = 
(
echo -e "1 2 3 4 \n hello \n 5 6" | egrep -o "[0-9]" | wc -l
)
}

if (v == "打印出所在的行号：-n") {
Var = 
(
grep linux -n exmple1.txt
)
}

if (v == "选项-l可以列出匹配模式所在文件") {
Var = 
(
grep -l linux sample1.txt sample2.txt
)	
}

if (v == "递归搜索多个文件") {
Var = 
(
grep "text_function()" ./ -R -n
)	
}

if (v == "忽略模式中的大小写") {
Var = 
(
echo hello world | grep -i "HELLO"
)	
}

if (v == "使用grep匹配多个模式") {
Var = 
(
grep -e "pattern1" -e "pattern2"
)	
}

if (v == "在grep搜索中指定文件") {
Var = 
(
grep "main()" ./ -r --include *.(c,cpp)
)	
}

if (v == "在grep搜索中排除文件") {
Var = 
(
grep "main()" . -r --exclude "README"
)
}

if (v == "在grep搜索中排除目录") {
Var = 
(
grep main . -r --exclude-dir CVS
)	
}

if (v == "选项-i会使得修改后的数据替换原始文件：-n") {
Var = 
(
sed -i 's/text/replace' file
)
}

if (v == "标记可以使执行全局匹配：-n") {
Var = 
(
sed 's/pattern/replace_string/g' file
)
}

if (v == "标记可以执行删除而不是替换（移除空行示例）：-n") {
Var = 
(
sed '/^$/d file'
)
}

if (v == "替换文件中所有3位数的数字：-n") {
Var = 
(
sed -i 's/\b[0-9]\{3\}\b/NUMBER/g' sed_data.txt
)
}

if (v == "使用 -i.bak 选项方法调试sed：-n") {
Var = 
(
sed -i.bak 's/abc/def' file
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

if (Var) {
	code(Var)
}else {
	MsgBox, 未找到定义代码块
}
return