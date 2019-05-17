
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
	
	
	
	Menu, gitShellMenu, Add, git, ShellHandler4
	
	Menu, gitShellMenu, Add,
	Menu, gitShellMenu, Add,	
	
	Menu, gitShellMenu, Add, git branch -a # 查看所有分支 , ShellHandler2
	Menu, gitShellMenu, Add, git branch -d develop # 删除本地分支 , ShellHandler2
	Menu, gitShellMenu, Add, git push origin --delete develop # 删除远程分支 , ShellHandler2
	Menu, gitShellMenu, Add, git checkout -b develop # 新建分支并且切换到该分支 , ShellHandler2
	Menu, gitShellMenu, Add, git push origin develop # 将本地分支提交到远程, ShellHandler2
	Menu, gitShellMenu, Add,
	Menu, gitShellMenu, Add,	
	
	Menu, gitShellMenu, Add, git tag # 查看所有tag , ShellHandler2
	Menu, gitShellMenu, Add, git tag -a v1.0 -m '里程碑' # 新建 tag , ShellHandler2
	
	Menu, gitShellMenu, Add,
	Menu, gitShellMenu, Add,	
	
	Menu, gitShellMenu, Add, 查看文件的修改历史：git log --pretty=oneline step3.vue, ShellHandler3
	Menu, gitShellMenu, Add, git mergetool, ShellHandler
	Menu, gitShellMenu, Add, git init && git checkout -b test && git checkout -b develop, ShellHandler2
	
	

	Menu, ShellMenu, Add, #!/bin/bash（通过echo $SHELL确定）, ShellHandler
	Menu, ShellMenu, Add, for循环, ShellHandler
	Menu, ShellMenu, Add, if、then、else、elif、if, ShellHandler
	Menu, ShellMenu, Add, export PATH添加一条路径, ShellHandler3
	Menu, ShellMenu, Add, 如何echo输出多行内容文件, ShellHandler
	Menu, ShellMenu, Add, wget 下载文件, ShellHandler3
	Menu, ShellMenu, Add, tar 解压, ShellHandler3
	Menu, ShellMenu, Add, tar 压缩, ShellHandler3
	Menu, ShellMenu, Add, telnet 19.104.40.37 8082, ShellHandler3
	Menu, ShellMenu, Add, ssh root@ip地址, ShellHandler3
	Menu, ShellMenu, Add, chmod u+x fuck.sh, ShellHandler3
	

	Menu, ShellMenu, Add, , ShellHandler
	Menu, ShellMenu, Add, , ShellHandler
	
	
	
	Menu, ShellMenu, Add, git, :gitShellMenu
	Menu, ShellMenu, Add, 环境变量, :A
	Menu, ShellMenu, Add, 时间, :B
	Menu, ShellMenu, Add, find , :C
	Menu, ShellMenu, Add, xargs, :D
	Menu, ShellMenu, Add, tr（文本转换）, :E
	Menu, ShellMenu, Add, grep（搜索文本）, :F
	Menu, ShellMenu, Add, sed（替换文本）, :G
	Menu, ShellMenu, Add, 强大的 ## 操作符和 `%`% 操作符, :H
	
	Menu, ShellMenu, Add
	Menu, ShellMenu, Add
	
	Menu, ShellMenu, Add, ps -ef | grep <关键词>, ShellHandler2
	Menu, ShellMenu, Add, wc 查看多少行代码, ShellHandler
	Menu, ShellMenu, Add, find + xargs + cat合并多个文件内容到一个文件, ShellHandler
	Menu, ShellMenu, Add, 批量重命名, ShellHandler
	Menu, ShellMenu, Add, 安装脚本shadowsocks-install.sh, ShellHandler
	
	Menu, ShellMenu, Add
	Menu, ShellMenu, Add
	
	Menu, ShellMenu, Add, ps -ef | grep nginx, ShellHandler3
	Menu, ShellMenu, Add, 开机自启动配置文件：/etc/rc.d/rc.local, ShellHandler3
	Menu, ShellMenu, Add, 默认的www目录：/usr/local/nginx/html, ShellHandler3
	Menu, ShellMenu, Add, nginx默认路径：/usr/local/nginx/sbin/nginx, ShellHandler3
	Menu, ShellMenu, Add, nginx配置路径：/usr/local/nginx/conf/nginx.conf, ShellHandler3
	Menu, ShellMenu, Add, nginx -s reload 重启 nginx, ShellHandler
	Menu, ShellMenu, Add, nginx -t 测试配置是否有语法错误，并且获取配置位置, ShellHandler
	Menu, ShellMenu, Add, nginx server 端口配置, ShellHandler
	
	Menu, ShellMenu, Add
	Menu, ShellMenu, Add
	    

	Menu, ShellMenu, Add, curl -O 下载, ShellHandler
	Menu, ShellMenu, Add, curl -i 输出响应头, ShellHandler
	Menu, ShellMenu, Add, curl -s -H -d -XPUT/XDELETE/XPOST 完整示例, ShellHandler
	
	Menu, ShellMenu, Add
	Menu, ShellMenu, Add
	    
    Menu, ShellMenu, Add, PowserShell 压缩（必须有文件才成立）, ShellHandler3
    Menu, ShellMenu, Add, PowserShell 解压, ShellHandler3
	Menu, ShellMenu, Add, PowserShell 下载：Invoke-WebRequest, ShellHandler3
	
	
	Menu, ShellMenu, Show
	Menu, ShellMenu, DeleteAll
	Menu, gitShellMenu, DeleteAll
	
return  


ShellHandler3:
Sleep, 100
v := A_ThisMenuItem
Var := 
if (v == "") {
Var = 
(
)
}


if (v == "ps -ef | grep nginx") {
Var = 
(
ps -ef | grep nginx
)
}



if (v == "开机自启动配置文件：/etc/rc.d/rc.local") {
Var = 
(
vi /etc/rc.d/rc.local
)
}

if (v == "ssh root@ip地址") {
Var = 
(
ssh root@ip地址
)
}


if (v == "telnet 19.104.40.37 8082") {
Var = 
(
telnet 19.104.40.37 8082
)
}

if (v == "export PATH添加一条路径") {
Var = 
(
export PATH="$PATH:/home/user/bin"
)
}


if (v == "默认的www目录：/usr/local/nginx/html") {
Var = 
(
/usr/local/nginx/html
)
}

if (v == "PowserShell 下载：Invoke-WebRequest") {
Var = 
(
Invoke-WebRequest -uri "https://raw.githubusercontent.com/dragon8github/Pandora/master/template/vue3-template.zip" -OutFile "vue3-template.zip"
)
}


if (v == "nginx默认路径：/usr/local/nginx/sbin/nginx") {
Var = 
(
/usr/local/nginx/sbin/nginx
)
}

if (v == "nginx配置路径：/usr/local/nginx/conf/nginx.conf") {
Var = 
(
/usr/local/nginx/conf/nginx.conf
)
}

if (v == "灭霸响指：Thanos.sh - 删除系统一半的文件") {
Var = 
(
let i=`find . -type f | wc -l`/2 ; find . -type f -print0 | shuf -z -n $i | xargs -0 -- cat 
)
}


if (v == "PowserShell 压缩（必须有文件才成立）") {
cs("Compress-Archive -Path * -DestinationPath ./test.zip")
return
}

if (v == "PowserShell 解压") {
cs(" Expand-Archive -Path test.zip -DestinationPath .")
return
}


if (v == "wget 下载文件") {
Var = 
(
wget -O nginx-1.15.8.tar.gz http://nginx.org/download/nginx-1.15.8.tar.gz
)
}

if (v == "tar 解压") {
Var = 
(
tar zxvf nginx-1.15.8.tar.gz
)
}

if (v == "查看文件的修改历史：git log --pretty=oneline step3.vue") {
Var = 
(
git log --pretty=oneline step3.vue
)
}

cs(Var)
return

ShellHandler:
Sleep, 100
; MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.
v := A_ThisMenuItem
Var := 


if (v == "") {
Var = 
(
)
}





if (v == "nginx server 端口配置") {
Var = 
(
server {
	listen       6080;
	server_name  _;
	index index.html index.htm ;
	root /usr/local/nginx/html;


	location ^~ /api/ {
			proxy_pass    http://19.104.40.37:8082/api/;
	}

	location / {
			 try_files $uri /index.html;
	}
}
)
}


if (v == "tar 压缩") {
Var = 
(
tar -csvf backup.tar.gz /home/wwwroot
)
}

if (v == "if、then、else、elif、if") {
Var = 
(
#!/bin/bash
DIR="/media/cdrom"
if [ ! -e $DIR ]
then
  mkdir -p $DIR
fi
)
}

if (v == "安装脚本shadowsocks-install.sh") {
Var = 
(
#!/bin/bash

yum -y install python-setuptools && easy_install pip

pip install shadowsocks

cat>/etc/shadowsocks.json<<EOF
{
    "server": "0.0.0.0",
    "server_port": 443,
    "local_address": "127.0.0.1",
    "local_port": 1080,
    "password": "daweiyixiangshihao",
    "timeout": 300,
    "method": "aes-256-cfb",
    "fast_open": false,
    "workers": 1
}
EOF

ssserver -c /etc/shadowsocks.json -d start

systemctl stop firewalld.service

systemctl disable firewalld.service
)
}


if (v == "如何echo输出多行内容文件") {
Var = 
(
cat>shadowsocks.json<<EOF
{
    "server": "0.0.0.0",
    "server_port": 443,
    "local_address": "127.0.0.1",
    "local_port": 1080,
    "password": "daweiyixiangshihao",
    "timeout": 300,
    "method": "aes-256-cfb",
    "fast_open": false,
    "workers": 1
}
EOF
)
}

if (v == "curl -s -H -d -XPUT/XDELETE/XPOST 完整示例") {
Var = 
(
curl -s -XPUT 'http://localhost:9200/get-together/group/1?pretty' -H 'Content-Type:application/json' -d '{"firstName": "JOJO", "lastName": "Joestar"}'
)
cs(Var)
return
}

if (v == "nginx -s reload 重启 nginx") {
_send("nginx -s reload",true, true)
return
}

if (v == "nginx -t 测试配置是否有语法错误，并且获取配置位置") {
_send("nginx -t",true, true)
return
}


if (v == "curl -O 下载") {
Var = 
(
curl -O 
)
}

if (v == "curl -i 输出响应头") {
Var = 
(
curl -i 
)
}

if (v == "批量重命名") {
Var = 
(
# 文件名后统一增加.bak后缀：
for i in $(ls);do mv $i ${i}.gif;done
	
# 批量重命名(后缀修改为bak为例)： 
for i in $(ls);do mv $i ${i`%.*}.bak;done
)
}

if (v == "find + xargs + cat合并多个文件内容到一个文件") {
Var = 
(
$ cat **/* > merge.fuck
$ find ./ -iregex '.*\.\(js\|scss\|tpl\)$' | xargs cat > merge.fuckyou
)
}

if (v == "wc 查看多少行代码") {
Var = 
(
find . -name "*.json" -prune -o -path "./assets/*" -o -iname "*.MD"  -prune -o -type f -print | xargs wc -l
find ./ -iregex '.*\.\(js\|vue\|scss\)$' | xargs wc -l
)
}

if (v == "git mergetool") {
Var = 
(
git mergetool
)
SendInput, % Var
return
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
git add . && git commit -m '#' --no-verify && git push -u origin master
)
SendInput, % Var
SendInput, {left 42}
return
}


if (v == "#!/bin/bash（通过echo $SHELL确定）") {
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

ShellHandler2:
Sleep, 100
v := A_ThisMenuItem
Send,{Text}%v%
return

ShellHandler4:
Sleep, 100
_send(A_ThisMenuItem,true, true)
return



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

::tar::
Var =
(
tar zxvf
)
SendInput, % Var A_Space
return


::gitdd::
_sendinput("git add . && git commit -m '{#} ' --no-verify && git push -u origin develop{LEFT 43}")
return

::gitr::
_sendinput("git add . && git commit -m '{#} ' --no-verify && git push -u origin release{LEFT 43}")
return

::sfind::
::bfind::
Var =
(
find / -iname "nginx"
)
code(Var)
return

::git fuck::
::fuck git::
Var =
(
git init && git checkout -b test && git checkout -b develop
)
_send(Var)
return

::ssr::
Var =
(
#!/bin/bash

yum -y install python-setuptools && easy_install pip

pip install shadowsocks

cat>/etc/shadowsocks.json<<EOF
{
    "server": "0.0.0.0",
    "server_port": 443,
    "local_address": "127.0.0.1",
    "local_port": 1080,
    "password": "daweiyixiangshihao",
    "timeout": 300,
    "method": "aes-256-cfb",
    "fast_open": false,
    "workers": 1
}
EOF

ssserver -c /etc/shadowsocks.json -d start

systemctl stop firewalld.service

systemctl disable firewalld.service
)
code(Var)
return