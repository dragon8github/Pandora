!p::
	; def 函数
	Menu, def1, Add, 不定数参数 , PythonHandler
	Menu, def1, Add, 关键字参数 , PythonHandler
	Menu, def1, Add, 获取参数数据类型 , PythonHandler

	; List 列表
	Menu, List1, Add, Item1, PythonHandler
	Menu, List1, Add, Item2, PythonHandler

	; dict 字典
	Menu, dict1, Add, Item1, PythonHandler
	Menu, dict1, Add, Item2, PythonHandler

	; class 类
	Menu, class1, Add, Item1, PythonHandler
	Menu, class1, Add, Item2, PythonHandler

	; package 模块
	Menu, package1, Add, Item1, PythonHandler
	Menu, package1, Add, Item2, PythonHandler

	; range 方法
	Menu, range1, Add, Item1, PythonHandler
	Menu, range1, Add, Item2, PythonHandler

	; os 模块
	Menu, os1, Add, Item1, PythonHandler
	Menu, os1, Add, Item2, PythonHandler

	; __魔力函数__
	Menu, magic1, Add, Item1, PythonHandler
	Menu, magic1, Add, Item2, PythonHandler

	; try 异常处理
	Menu, try1, Add, Item1, PythonHandler
	Menu, try1, Add, Item2, PythonHandler

	; 杂项 / 语法特性
	Menu, other1, Add, Item1, PythonHandler
	Menu, other1, Add, Item2, PythonHandler

	Menu, PythonMenu, Add, def 函数, :def1
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
	%A_ThisMenuItem%()
return

不定数参数(){
Var =
(
#-*- coding: utf-8 -*-
def showme(name, *info):
print(name)

for a in info:
print(a)

showme("Lee", 1,2,3,4)
)
code(Var)
}

