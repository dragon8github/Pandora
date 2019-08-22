!p::
	Menu, PythonMenu, Add, #-*- coding: utf-8 -*- , PythonHandler

	Menu, PythonMenu, Add,, PythonHandler
	Menu, PythonMenu, Add,🍁🍁🍁🍁🍁🍁🍁🍁  命令行  🍁🍁🍁🍁🍁🍁🍁🍁, PythonHandler
	Menu, PythonMenu, Add,, PythonHandler

	Menu, PythonMenu, Add, python manage.py runserver, PythonHandler2
	Menu, PythonMenu, Add, python manage.py makemigrations, PythonHandler2
	Menu, PythonMenu, Add, python manage.py migrate, PythonHandler2
	Menu, PythonMenu, Add, python manage.py createsuperuser, PythonHandler2
	Menu, PythonMenu, Add,
	Menu, PythonMenu, Add, mkvirtualenv student-env, PythonHandler2
	Menu, PythonMenu, Add, workon student-env, PythonHandler2
	Menu, PythonMenu, Add,
	Menu, PythonMenu, Add, django-admin startproject mysite, PythonHandler2
	Menu, PythonMenu, Add, python manage.py startapp appname, PythonHandler2
	Menu, PythonMenu, Add, python manage.py createsuperuser, PythonHandler2
	Menu, PythonMenu, Add,
	Menu, PythonMenu, Add, python -m pip install --upgrade pip, PythonHandler2
	Menu, PythonMenu, Add, pip install virtualenv, PythonHandler2
	Menu, PythonMenu, Add, pip install virtualenvwrapper-win, PythonHandler2

	Menu, PythonMenu, Add,, PythonHandler
	Menu, PythonMenu, Add,🍁🍁🍁🍁🍁🍁🍁🍁  常用函数  🍁🍁🍁🍁🍁🍁🍁🍁, PythonHandler
	Menu, PythonMenu, Add,, PythonHandler

	Menu, PythonMenu, Add,type(): 获取数据类型, PythonHandler
	Menu, PythonMenu, Add,len(): 获取长度, PythonHandler
	Menu, PythonMenu, Add,float()， int()， str() 数据类型转化, PythonHandler

	Menu, PythonMenu, Add,, PythonHandler
	Menu, PythonMenu, Add,🍁🍁🍁🍁🍁🍁🍁🍁  字典（既对象）  🍁🍁🍁🍁🍁🍁🍁🍁, PythonHandler
	Menu, PythonMenu, Add,, PythonHandler

	Menu, PythonMenu, Add, 字典定义 json 版：me = {'name':'Lee'}, PythonHandler
	Menu, PythonMenu, Add, user = dict(age=19`, sex='nan'), PythonHandler
	Menu, PythonMenu, Add, 字典 for 循环： for key in user:, PythonHandler


	Menu, PythonMenu, Add,, PythonHandler
	Menu, PythonMenu, Add, 🍁🍁🍁🍁🍁🍁🍁🍁  List 列表（既数组）  🍁🍁🍁🍁🍁🍁🍁🍁, PythonHandler
	Menu, PythonMenu, Add,, PythonHandler

	; List 列表
	Menu, PythonMenu, Add, 定义 List 列表：fruits = ['orange'`, 'apple'], PythonHandler
	Menu, PythonMenu, Add, List#count, PythonHandler
	Menu, PythonMenu, Add, List#index, PythonHandler
	Menu, PythonMenu, Add, List#reverse, PythonHandler
	Menu, PythonMenu, Add, List#append, PythonHandler
	Menu, PythonMenu, Add, List#sort, PythonHandler
	Menu, PythonMenu, Add, List#pop, PythonHandler

	Menu, PythonMenu, Add,, PythonHandler
	Menu, PythonMenu, Add, 🍁🍁🍁🍁🍁🍁🍁🍁  函数  🍁🍁🍁🍁🍁🍁🍁🍁, PythonHandler
	Menu, PythonMenu, Add,, PythonHandler

	; 函数
	Menu, PythonMenu, Add, 不定数参数 def showme(name`, *info): , PythonHandler
	Menu, PythonMenu, Add, 关键字参数：showme(name='tanggu'`, sex=1) , PythonHandler


	Menu, PythonMenu, Add,, PythonHandler
	Menu, PythonMenu, Add, 🍁🍁🍁🍁🍁🍁🍁🍁  类与面向对象  🍁🍁🍁🍁🍁🍁🍁🍁 , PythonHandler
	Menu, PythonMenu, Add,, PythonHandler

	Menu, PythonMenu, Add, class.init, PythonHandler
	Menu, PythonMenu, Add, 值类型 / 引用类型, PythonHandler

	; Menu, PythonMenu, Add, python 基本功与认知 ╮(￣▽￣)╭, :pabase

	Menu, PythonMenu, Add,, PythonHandler
	Menu, PythonMenu, Add, 🍁🍁🍁🍁🍁🍁🍁🍁  其他  🍁🍁🍁🍁🍁🍁🍁🍁 , PythonHandler
	Menu, PythonMenu, Add,, PythonHandler
	
	Menu, PythonMenu, Add, socket 网络编程基本示例, PythonHandler
	Menu, PythonMenu, Add, bs4 + requests , PythonHandler
	Menu, PythonMenu, Show

	Menu, PythonMenu, DeleteAll
	; Menu, pabase, DeleteAll

return

PythonHandler2:
v := A_ThisMenuItem
Sleep, 100
SendInput, % v
Return

PythonHandler:
v := A_ThisMenuItem
Var := 

if (v == "") {
Var = 
(

)
}

if (v == "#-*- coding: utf-8 -*-") {
Var = 
(
#-*- coding: utf-8 -*-
)
}

if (v == "socket 网络编程基本示例") {
_send("py.socket", true, true)
return
}

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


if (v == "不定数参数 def showme(name, *info):") {
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

if (v == "关键字参数：showme(name='tanggu', sex=1)") {
Var = 
(
def showme(**info):
	for b in info:
		print(b, info[b])

showme(name='tanggu', sex=1)
}


if (v == "定义 List 列表：fruits = ['orange', 'apple']") {
Var = 
(
fruits = ['orange', 'apple']
)
}

if (v == "List#count") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.count('apple') # 2
)
}

if (v == "List#index") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.index('banana') # 3
)
}

if (v == "List#reverse") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.reverse() 
print(20180718210519, fruits) # ['banana', 'apple', 'kiwi', 'banana', 'pear', 'apple', 'orange']
)
}

if (v == "List#append") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.append('grape')
print(20180718210544, fruits) # ['banana', 'apple', 'kiwi', 'banana', 'pear', 'apple', 'orange', 'grape']
)
}

if (v == "List#sort") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.sort()
console.log(20180718210712, fruits) # ['apple', 'apple', 'banana', 'banana', 'grape', 'kiwi', 'orange', 'pear']
)
}

if (v == "List#pop") {
Var = 
(
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.pop() # 'pear'
)
}

if (v == "字典定义 json 版：me = {'name':'Lee'}") {
Var = 
(
me = {'name':'Lee'}
)
}

if (v == "字典定义 dict 版：user = dict(age=19, sex='nan')") {
Var = 
(
user = dict(age=19, sex='nan')
)
}

if (v == "字典 for 循环： for key in user:") {
Var = 
(
user = dict(age=19, sex='nan')
for key in user:
    print(key, user[key])
)
}

if (v == "class.init") {
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



if (Var) {
	code(Var)
} else {
	MsgBox, 未找到定义代码块
}
return



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

::pr::
	t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
    SendInput, print(%t%, ){left}
return


::py.socket::
Var =
(
import socket

EOL1= b'\n\n'
EOL2= b'\n\r\n'
body = ''' 
	<h1>hello,world!</h1>
'''

response_params = [
	'HTTP/1.0 200 OK',
	'Date: Sun, 27 may 2018 01:01:01 GMT',
	'Content-Type: text/html;charset=utf-8',
	'Content-Length: {}\r\n'.format(len(body.encode())),
	body,
]

response = '\r\n'.join(response_params)

def handle_connection(conn, addr):
	request = b""
	while EOL1 not in request and EOL2 not in request:
		request += conn.recv(1024)
	print(request)
	# response 转为 bytes 后传输
	conn.send(response.encode()) 
	conn.close()

def main():
	# socket.AF_INET 用于服务器与服务器之间的网络通信
	# socket.SCOK_STREAM 用于基于TCP的流式 socket 通信
	serversocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	# # 设置端口可复用，保证我们每次都按 ctrl + c 组合键之后，快速重启
	serversocket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
	serversocket.bind(('127.0.0.1', 8000))
	# # 设置 backlog socket 连接最大排队数量
	serversocket.listen(5)
	print('http://127.0.0.1:8000')

	try:
		while True:
			conn, address = serversocket.accept()
			handle_connection(conn, address)
	finally:
		serversocket.close()

if __name__ == '__main__':
	main()
)
code(Var)
return

::py.sleep::
::py.delay::
Var =
(
import time
time.sleep(100)
)
code(Var)
return

::ptry::
::pytry::
:?:py.try::
Var =
(
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
Return


:?:py.class::
::pcass::
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
Return

:*:ipp::
_sendInput("python --pylab")
return