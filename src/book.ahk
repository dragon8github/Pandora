^b::
+b::
; 显示
	Gui, Book:Show,, Book
return

SwitchBook:

; 删除所有树
while(A := TV_GetNext(A)) {
	TV_Delete(top)
}

; 获取当前Tab
GuiControlGet, currentBook,, BookTab 

; 去掉空格符
currentBook := Trim(currentBook)

; 模板
if (currentBook == "") {

}


if (currentBook == "《JavaScript 模式》") {
A := TV_Add("代码复用模式")
	A1 := TV_Add("类式继承模式#1 —— 默认模式", A)
	A2 := TV_Add("类式继承模式#2 —— 借用构造函数", A)
	A3 := TV_Add("类式继承模式#3 —— 借用和设置原型", A)
	A4 := TV_Add("类式继承模式#4 —— 共享原型", A)
	A5 := TV_Add("类式继承模式#5 —— 临时构造函数", A)
	A6 := TV_Add("通过复制属性实现继承", A)
	A6 := TV_Add("原型继承", A)
	
B := TV_Add("设计模式")
	B1 := TV_Add("工厂模式", B)
	B1 := TV_Add("策略模式", B)
	B2 := TV_Add("装饰者模式", B)
	B3 := TV_Add("代理模式", B)
	B4 := TV_Add("中介者模式", B)
	B5 := TV_Add("观察者模式", B)
}

if (currentBook == "《JavaScript 设计模式》") {

}

;获取节点信息
_top := TV_GetSelection()

; 展开所有节点
var_dump(expandallchild(_top))

return

BookTreeSelect:
; 获取当前选中的id，初始化的时候默认会选中第一个
ItemID := TV_GetSelection()

; 获取该id的text
TV_GetText(v, ItemID)

; 默认内容
Var := ""

if (v == "") {
Var = 
(

)
}

if (v == "代码复用模式") {
TV_Modify(A1, "Select")
}

if (v == "类式继承模式#1 —— 默认模式") {
Var = 
(
//////////////////////////////////////////////

// 类式继承模式#1 —— 默认模式
// 缺点 1：不支持将参数传递给父构造函数。所以 say() 打印出是undefined
// 缺点 2：并没有继承父亲的属性，所以儿子也并没有name的属性
function inherit(C, P) {
	// 重点：原型继承
	C.prototype = new P();
}

//////////////////////////////////////////////


// 父构造函数
function Parent(name) {
	this.name = name;
}

// 父方法
Parent.prototype.say = function() {
	return this.name;
};

// 空白的子构造函数
function Child(name) {}

// 继承
inherit(Child, Parent);

// 实例化
var c = new Child('Lee')

// 看看
c.name  // => undefined ？？？
c.say() // => undefined ？？？
)
}

if (v == "类式继承模式#2 —— 借用构造函数") {
Var = 
(
function Article() {
	this.tags = ['js', 'css']
}

//////////////////////////////////////////////

// 类式继承模式#2 —— 借用构造函数
function Blog() {
	// 重点：借风使船
	Article.call(this)
}

//////////////////////////////////////////////

var blog = new Blog()

console.log(blog.hasOwnProperty('tags')) // => true

blog.tags.push('html')

console.log(blog.tags.join(',')) // => js,css,html





//////////////////////////////////////////////

// 使用 #2 重构 #1...
// 缺点：由于没有使用 『#1 原型继承』，所以从未继承过 say() 方法。
// 认知：这里所谓的 『继承 name 属性』，其实也是借用 Article 的代码块进行初始化 Child 罢了。有点类似模板复用。

//////////////////////////////////////////////

function Parent(name) {
	this.name = name
}

Parent.prototype.say = function () {
	return this.name
}

function Child() {
	Parent.apply(this, arguments)
}

var c = new Child('Lee')
c.name // => Lee
c.say  // => undefined ？？？
)
}

if (v == "类式继承模式#3 —— 借用和设置原型") {
Var = 
(

)
}

if (v == "类式继承模式#4 —— 共享原型") {
Var = 
(

)
}

if (v == "类式继承模式#5 —— 临时构造函数") {
Var = 
(

)
}

if (v == "通过复制属性实现继承") {
Var = 
(

)
}

if (v == "原型继承") {
Var = 
(

)
}

if (v == "设计模式") {
Var = 
(

)
}

if (v == "工厂模式") {
Var = 
(

)
}

if (v == "策略模式") {
Var = 
(

)
}

if (v == "装饰者模式") {
Var = 
(

)
}

if (v == "代理模式") {
Var = 
(

)
}

if (v == "中介者模式") {
Var = 
(

)
}

if (v == "观察者模式") {
Var = 
(

)
}

_Var := StrReplace(Var, "`t", "    ")

GuiControl, Book:Text, BookContent, %_Var%
return
