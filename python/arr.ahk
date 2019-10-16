!a::
	Menu, arrayMenu, Add, 定义元组： t = (1`,2`,3), ForHandler
	Menu, arrayMenu, Add, 元组累加： t1 + t2, ForHandler
	Menu, arrayMenu, Add, 元组遍历： for i in t, ForHandler

	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler

	Menu, arrayMenu, Add, 定义字典 json 版：me = {'name':'Lee'}, ForHandler
	Menu, arrayMenu, Add, 定义字典：user = dict(age=19`, sex='nan'), ForHandler
	Menu, arrayMenu, Add, 字典 for 循环： for key in user:, ForHandler


	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler


	Menu, arrayMenu, Add, while / break / continue 循环语句, ForHandler
	Menu, arrayMenu, Add,len(): 获取长度, ForHandler

	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler

	Menu, arrayMenu, Add, 定义 List 列表：fruits = ['orange'`, 'apple'], ForHandler
	Menu, arrayMenu, Add, List#map, ForHandler
	Menu, arrayMenu, Add, List#count, ForHandler
	Menu, arrayMenu, Add, List#index, ForHandler
	Menu, arrayMenu, Add, List#reverse, ForHandler
	Menu, arrayMenu, Add, List#append, ForHandler
	Menu, arrayMenu, Add, List#sort, ForHandler
	Menu, arrayMenu, Add, List#pop, ForHandler
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
	Menu, arrayMenu, Add,[x * 2 for x in range(10`, 0`, -1) if x > 8], ForHandler
	
	
	Menu, arrayMenu, Show
	Menu, arrayMenu, DeleteAll
return


ForHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=


if (v == "") {
Var = 
(
)
}

if (v == "定义元组： t = (1,2,3)") {
Var = 
(
t = (1,2,3)
)	
}

if (v == "元组累加： t1 + t2") {
Var = 
(
t1 = (1,2,3)
t2 = (4,5,6)
print(20191016141841, t1 + t2)
)	
}

if (v == "元组遍历： for i in t") {
Var = 
(
for i in t:
	print(20191016141827, i)
)	
}


if (v == "List#map") {
Var = 
(
ary = list(map(lambda x: x + 1, range(0, 10, 1)))
print(20191015223150, ary)
)
}

if (v == "[x * 2 for x in range(10`, 0`, -1) if x > 8]") {
Var = 
(
ary = [x * 2 for x in range(10, 0, -1) if x > 8]
print(20191015222720, ary)
)
}

if (v == "定义字典：user = dict(age=19`, sex='nan')") {
Var = 
(
user = dict(age=19, sex='nan')
)
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

if (v == "定义字典 json 版：me = {'name':'Lee'}") {
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

code(Var)
return

::foro::
::forobj::
::forin::
Var =
(
for key in user:
    print(key, user[key])
)
code(Var)
return

::[]::
Var =
(
[x * 2 for x in range(10, 0, -1) if x > 8]
)
code(Var)
return

::map::
Var =
(
list(map(lambda x: x + 1, range(0, 10, 1)))
)
code(Var)
return

!0::
!-::
!9::
!=::
Var =
(
lambda x: 
)
code(Var)
return