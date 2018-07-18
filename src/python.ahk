!p::
	; def 函数
	Menu, def1, Add, 不定数参数 , PythonHandler
	Menu, def1, Add, 关键字参数 , PythonHandler
	Menu, def1, Add, 获取参数数据类型 , PythonHandler

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
	Menu, magic1, Add, 获取函数名/类名, PythonHandler

	; try 异常处理
	Menu, try1, Add, 捕获异常, PythonHandler

	; 杂项 / 语法特性
	Menu, other1, Add, with as, PythonHandler
	Menu, other1, Add, is, PythonHandler
	Menu, other1, Add, id(), PythonHandler

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
v := A_ThisMenuItem
Var := 
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

)
}

if (v == "定义List列表") {
Var = 
(

)
}

if (v == "count") {
Var = 
(

)
}

if (v == "index") {
Var = 
(

)
}

if (v == "reverse") {
Var = 
(

)
}

if (v == "append") {
Var = 
(

)
}

if (v == "sort") {
Var = 
(

)
}

if (v == "pop") {
Var = 
(

)
}

if (v == "字典定义json版") {
Var = 
(

)
}

if (v == "字典定义dict版") {
Var = 
(

)
}

if (v == "字典for循环") {
Var = 
(

)
}

if (v == "构造函数（__init__）+静态函数（@staticmethod）+实例函数") {
Var = 
(

)
}

if (v == "值类型/引用类型") {
Var = 
(

)
}

if (v == "类的生命周期") {
Var = 
(

)
}

if (v == "from<模块>import<方法>") {
Var = 
(

)
}

if (v == "importfunctions") {
Var = 
(

)
}

if (v == "使用all控制函数的导出") {
Var = 
(

)
}

if (v == "range+for") {
Var = 
(

)
}

if (v == "range+倒序for") {
Var = 
(

)
}

if (v == "range+list") {
Var = 
(

)
}

if (v == "range+for高阶操作") {
Var = 
(

)
}

if (v == "range+for+if高阶操作") {
Var = 
(

)
}

if (v == "range+for+if+函数高阶操作") {
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

if (v == "获取函数名/类名") {
Var = 
(

)
}

if (v == "捕获异常") {
Var = 
(

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



