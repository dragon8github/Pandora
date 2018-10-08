::pythonpachong::
::pypachonh::
::python.pachong::
::py.pachonh::
Var =
(
# python 3.x 开始自带了pip，如果没有请自信百度安装。
# pip install beautifulsoup4 requests
from bs4 import BeautifulSoup
import requests

res = requests.get('https://etherscan.io/token/tokenholderchart/0x86fa049857e0209aa7d9e616f7eb3b3b78ecfdb0?range=10')
res.encoding = 'gbk'
soup = BeautifulSoup(res.text, 'html.parser')
table = soup.select('#ContentPlaceHolder1_resultrows table tr')
myarr = []
for tr in table:
	td = tr.select('td')
	if len(td) > 0:
		Rank = td[0].text;
		Address = td[1].text;
		Quantity = td[2].text;
		Percentage = td[3].text;
		myarr.append({"Rank": Rank, "Address": Address, "Quantity": Quantity, "Percentage": Percentage})
print(myarr)
)
code(Var)
return

::pyfastsort::
::pykuaisipaixu::
::pyquicksort::
Var =
(
# 快速排序
def quicksort(array):
	# 这不是废话吗？如果数组中只有1个成员或没有成员，那还排个屁序！！
	if len(array) <= 1:
		return array
	else:
		# 随机选出一个作为排序对比时的【基准数】，这里就取第一个好了最简单了
		pivot = array[0]
		# 将比基准数小的放在一个数组中（记得除外基准数，也就是[1:]）
		less = [i for i in array[1:] if i <= pivot]
		# 把基准数大的放在另外一个数组中（记得除外基准数，也就是[1:]）
		greater = [i for i in array[1:] if i > pivot]
		# 这就是快速排序的精华所在:递归, 然后把三个数据合并
		return quicksort(less) + [pivot] + quicksort(greater)

print(quicksort([10, 5, 2, 3])) # [2, 3, 5, 10]
)
code(Var)
return

::pyerfenfa::
::pyerfen::
::pybinary::
Var =
(
def binary_search(list, target):
	low = 0
	high = len(list)

	while not (low > high):
		mid = int((low + high) / 2)
		guess = list[mid]

		if guess == target:
			return mid
		if guess > target:
			high = mid - 1
		else:
			low = mid + 1

	return None

print(binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5))
input()
)
code(Var)
return

AppsKey & p::
>^p::
;pxToRem
    t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
    SendInput, print(%t%, )`{left 1}
return

::pytry::
Var =
(
#!/usr/bin/python
# -*- coding: UTF-8 -*-

try:
    fh = open('testfile', 'w')
    fh.write('这是一个测试文件，用于测试异常!!')
except Exception as e:
   print('Exception 万能异常' + e.message)
else:
    print('没有发生异常的话执行这里：内容写入文件成功')
    fh.close()
finally:
	print('退出try时总会执行')
)
code(Var)
return

::pyfor::
::py.for::
Var =
(
for i in range(5):
	print('Jimmy Five Times (' + str(i) + ')')
)
code(Var)
return

::pyif::
::py.if::
Var =
(
if name == 'Alice':
	print('Hi, Alice')
elif age < 12
	print('you are not Alice, kiddo.')
else:
	print('you are neither Alice nor a little kid.')
`)
)
code(Var)
return

::pyclass::
::py.class::
Var =
(
class Me:
    def __init__(self, name):
        self.name = name

    def show(self):
        print(self.name)

    @staticmethod
    def version():
        print('1.0')


me = Me('Lee')
me.show() # Lee
Me.version() # 1.0
)
code(Var)
return

::prr::
	t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
    SendInput, print(%t%, )`{left 1}
return

!p::
	; 爬虫基础
	
	Menu, pachong1, Add, bs4 + requests , PythonHandler
	
	; def 函数
	Menu, def1, Add, 不定数参数 , PythonHandler
	Menu, def1, Add, 关键字参数 , PythonHandler
	Menu, def1, Add, 获取参数数据类型 , PythonHandler
	
	; 内置函数
	Menu, mehods1, Add, input()等待并获取用户输入 , PythonHandler
	Menu, mehods1, Add, len() , PythonHandler
	Menu, mehods1, Add, str()、int()、float() , PythonHandler
	
	; 控制流
	Menu, control1, Add, True / False, PythonHandler
	Menu, control1, Add, and / or / not, PythonHandler
	Menu, control1, Add, 比较操作符, PythonHandler
	Menu, control1, Add, if / elif / else 条件语句, PythonHandler
	Menu, control1, Add, while / break / continue 循环语句, PythonHandler
	Menu, control1, Add, for + range() 循环语句, PythonHandler

	; List 列表
	Menu, List1, Add, 定义 List 列表, PythonHandler
	Menu, List1, Add, count, PythonHandler
	Menu, List1, Add, index, PythonHandler
	Menu, List1, Add, reverse, PythonHandler
	Menu, List1, Add, append, PythonHandler
	Menu, List1, Add, sort, PythonHandler
	Menu, List1, Add, pop, PythonHandler
	
	; dict 字典
	Menu, dict1, Add, 字典定义 json 版, PythonHandler
	Menu, dict1, Add, 字典定义 dict 版, PythonHandler
	Menu, dict1, Add, 字典 for 循环, PythonHandler

	; class 类
	Menu, class1, Add, 构造函数（__init__） + 静态函数（@staticmethod） + 实例函数, PythonHandler
	Menu, class1, Add, 值类型 / 引用类型, PythonHandler
	Menu, class1, Add, 类的生命周期, PythonHandler

	; package 模块
	Menu, package1, Add, from <模块> import <方法>, PythonHandler
	Menu, package1, Add, import functions, PythonHandler
	Menu, package1, Add, 使用 all 控制函数的导出, PythonHandler

	; range 方法
	Menu, range1, Add, range()的开始、停止和步长参数, PythonHandler
	Menu, range1, Add, range + for, PythonHandler
	Menu, range1, Add, range + 倒序for, PythonHandler
	Menu, range1, Add, range + list, PythonHandler
	Menu, range1, Add, range + for高阶操作, PythonHandler
	Menu, range1, Add, range + for + if 高阶操作, PythonHandler
	Menu, range1, Add, range + for + if + 函数高阶操作, PythonHandler

	; os 模块
	Menu, os1, Add, 文件读取, PythonHandler
	Menu, os1, Add, 获得系统环境变量, PythonHandler
	Menu, os1, Add, 当前python脚本工作路径, PythonHandler
	Menu, os1, Add, 当前进程ID, PythonHandler
	Menu, os1, Add, 父进程ID, PythonHandler

	; __魔力函数__
	Menu, magic1, Add, 全局注释, PythonHandler
	Menu, magic1, Add, 类注释, PythonHandler
	Menu, magic1, Add, 获取类的详情信息, PythonHandler
	Menu, magic1, Add, 获取函数名 / 类名, PythonHandler

	; try 异常处理
	Menu, try1, Add, try / except, PythonHandler

	; 杂项 / 语法特性
	Menu, other1, Add, with as, PythonHandler
	Menu, other1, Add, is, PythonHandler
	Menu, other1, Add, id(), PythonHandler

	Menu, PythonMenu, Add, 爬虫, :pachong1
	Menu, PythonMenu, Add, def 函数, :def1
	Menu, PythonMenu, Add, 内置函数, :mehods1
	Menu, PythonMenu, Add, 控制流, :control1
	Menu, PythonMenu, Add, List 列表, :List1
	Menu, PythonMenu, Add, dict 字典, :dict1
	Menu, PythonMenu, Add, class 类, :class1
	Menu, PythonMenu, Add, package 模块, :package1
	Menu, PythonMenu, Add, range 方法, :range1
	Menu, PythonMenu, Add, os 模块, :os1
	Menu, PythonMenu, Add, __魔力函数__, :magic1
	Menu, PythonMenu, Add, try 异常处理, :try1
	Menu, PythonMenu, Add, 杂项 / 语法特性, :other1
	
	Menu, PythonMenu, Show
	Menu, PythonMenu, DeleteAll
return

PythonHandler:
; MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.
v := A_ThisMenuItem
Var := 

if (v == "bs4 + requests") {
Var = 
(
# python 3.x 开始自带了pip，如果没有请自信百度安装。
# pip install beautifulsoup4 requests
from bs4 import BeautifulSoup
import requests

res = requests.get('https://etherscan.io/token/tokenholderchart/0x86fa049857e0209aa7d9e616f7eb3b3b78ecfdb0?range=10')
res.encoding = 'gbk'
soup = BeautifulSoup(res.text, 'html.parser')
table = soup.select('#ContentPlaceHolder1_resultrows table tr')
myarr = []
for tr in table:
	td = tr.select('td')
	if len(td) > 0:
		Rank = td[0].text;
		Address = td[1].text;
		Quantity = td[2].text;
		Percentage = td[3].text;
		myarr.append({"Rank": Rank, "Address": Address, "Quantity": Quantity, "Percentage": Percentage})
print(myarr)
)
}

if (v == "True / False") {
Var = 
(

)
}

if (v == "and / or / not") {
Var = 
(

)
}

if (v == "比较操作符") {
Var = 
(

)
}

if (v == "range()的开始、停止和步长参数") {
Var = 
(
for i in range(12, 16):
	print(i) # 12 13 14 15 16

for i in range(0, 10, 2):
	print(i) # 0 2 4 6 8 

for i in range(5, -1, -1):
	print(i) # 5 4 3 2 1 0
)
}

if (v == "if / elif / else 条件语句") {
Var = 
(
if name == 'Alice':
	print('Hi, Alice')
elif age < 12
	print('you are not Alice, kiddo.')
else:
	print('you are neither Alice nor a little kid.')
)
}

if (v == "while / break / continue 循环语句") {
Var = 
(
while True:
	print('Who are you?')
	name = input()
	if name != 'Joe':
		continue
	print('Hello, Joe. what is the password?')
	password = input()
	if password == 'swordfish':
		break
print('Acess granted.')
)
}

if (v == "for + range() 循环语句") {
Var = 
(
for i in range(5):
	print('Jimmy Five Times (' + str(i) + ')')
)
}

if (v == "input()等待并获取用户输入") {
Var = 
(
myname = input() # 输入一些内容吧
)
}

if (v == "len()") {
Var = 
(
len("hello") # 5
)
}

if (v == "str()、int()、float()") {
Var = 
(
str(29) # '29'
int(1.99) # 1
float(10), # 10.0
int('99.99') # ValueError: invalid literal for int() with base 10: '99.99'
int(float('99.99')) # 99
)
}

if (v == "不定数参数") {
Var = 
(
#-*- coding: utf-8 -*-
def showme(name, *info):
print(name)
for a in info:
print(a)
showme("Lee", 1,2,3,4)
)
}

if (v == "关键字参数") {
Var = 
(
#-*- coding: utf-8 -*-
def showme(name, *info, **info2):
print(name, info)
for b in info2:
print(b, info2[b])
showme("Lee", 1,2,3,4,age=12,sex='女')
)
}

if (v == "获取参数数据类型") {
Var = 
(
# -*- coding: utf-8 -*-
def showme(name, *info, **info2):
    print(type(name))
    print(type(info))
    print(type(info2))

showme("Lee", 1, 2, 3, 4, age=12, sex='女')
)
}

if (v == "定义List列表") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
)
}

if (v == "count") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.count('apple') # 2
)
}

if (v == "index") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.index('banana') # 3
)
}

if (v == "reverse") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.reverse() 
print(20180718210519, fruits) # ['banana', 'apple', 'kiwi', 'banana', 'pear', 'apple', 'orange']
)
}

if (v == "append") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.append('grape')
print(20180718210544, fruits) # ['banana', 'apple', 'kiwi', 'banana', 'pear', 'apple', 'orange', 'grape']
)
}

if (v == "sort") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.sort()
console.log(20180718210712, fruits) # ['apple', 'apple', 'banana', 'banana', 'grape', 'kiwi', 'orange', 'pear']
)
}

if (v == "pop") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.pop() # 'pear'
)
}

if (v == "字典定义 json 版") {
Var = 
(
me = {"name":"Lee"}
)
}

if (v == "字典定义 dict 版") {
Var = 
(
user = dict(age=19, sex='nan')
)
}

if (v == "字典 for 循环") {
Var = 
(
user = dict(age=19, sex='nan')
for key in user:
    print(key, user[key])
)
}

if (v == "构造函数（__init__） + 静态函数（@staticmethod） + 实例函数") {
Var = 
(
class Me:
    def __init__(self, name):
        self.name = name

    def show(self):
        print(self.name)

    @staticmethod
    def version():
        print('1.0')


me = Me('Lee')
me.show() # Lee
Me.version() # 1.0
)
}

if (v == "值类型 / 引用类型") {
Var = 
(

)
}

if (v == "类的生命周期") {
Var = 
(

)
}

if (v == "from <模块> import <方法>") {
Var = 
(

)
}

if (v == "import functions") {
Var = 
(

)
}

if (v == "使用 all 控制函数的导出") {
Var = 
(

)
}

if (v == "range + for") {
Var = 
(

)
}

if (v == "range + 倒序 for") {
Var = 
(

)
}

if (v == "range + list") {
Var = 
(

)
}

if (v == "range + for 高阶操作") {
Var = 
(

)
}

if (v == "range + for + if 高阶操作") {
Var = 
(

)
}

if (v == "range + for + if + 函数高阶操作") {
Var = 
(

)
}

if (v == "文件读取") {
Var = 
(

)
}

if (v == "获得系统环境变量") {
Var = 
(

)
}

if (v == "当前python脚本工作路径") {
Var = 
(

)
}

if (v == "当前进程ID") {
Var = 
(

)
}

if (v == "父进程ID") {
Var = 
(

)
}

if (v == "全局注释") {
Var = 
(

)
}

if (v == "类注释") {
Var = 
(

)
}

if (v == "获取类的详情信息") {
Var = 
(

)
}

if (v == "获取函数名 / 类名") {
Var = 
(

)
}

if (v == "try / except") {
Var = 
(
#!/usr/bin/python
# -*- coding: UTF-8 -*-

try:
    fh = open('testfile', 'w')
    fh.write('这是一个测试文件，用于测试异常!!')
except Exception as e:
   print('Exception 万能异常' + e.message)
else:
    print('没有发生异常的话执行这里：内容写入文件成功')
    fh.close()
finally:
	print('退出try时总会执行')
)
}

if (v == "withas") {
Var = 
(

)
}

if (v == "is") {
Var = 
(

)
}

if (v == "id()") {
Var = 
(

)
}

if (Var) {
	code(Var)
} else {
	MsgBox, 未找到定义代码块
}
return



