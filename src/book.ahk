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
A1 := TV_Add("类式继承模式#1 —— 克隆模式", A)
TV_Add("类式继承模式#2 —— 借用模式", A)
TV_Add("类式继承模式#3 —— 借用模式 + 克隆模式", A)
TV_Add("类式继承模式#4 —— 共享原型", A)
TV_Add("类式继承模式#5 —— 临时构造函数", A)
TV_Add("通过复制属性实现继承", A)
TV_Add("原型继承", A)

	
B := TV_Add("设计模式")
TV_Add("工厂模式", B)
TV_Add("策略模式", B)
TV_Add("装饰者模式", B)
TV_Add("代理模式", B)
TV_Add("中介者模式", B)
TV_Add("观察者模式", B)

C := TV_Add("原型知识")
TV_Add("__proto__ 和 prototype 的关系", C)
TV_Add("实现 Object.create 方法", C)
TV_Add("实现 new 运算符的过程", C)
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


if (v == "实现 new 运算符的过程") {
Var = 
(
var objectFactory = function () {
	// 从 Object.prototype 中实例化对象
	var obj = new Object()

	// 获取第一个参数
	var Constructor = [].shift.call( arguments )

	// 指向原型
	obj.__proto__ = Constructor.prototype

	// 借用外部传入的构造器，给 obj 设置属性，这是一个原型继承中常用的技巧
	var ret = Constructor.apply( obj, arguments )

	// 总会返回一个对象
	return typeof ret === 'object' ? ret : obj
}
)
}

if (v == "实现 Object.create 方法") {
Var = 
(
Object.create = Object.create || function (obj) {
	var F = function () {}
	F.prototype = obj
	return new F() 
}
)
}

if (v == "__proto__ 和 prototype 的关系") {
Var = 
(
function F() {

}

new F().__proto__ === F.prototype // => true
)
}

if (v == "代码复用模式") {
TV_Modify(A1, "Select")
}

if (v == "类式继承模式#1 —— 克隆模式") {
Var = 
(
//////////////////////////////////////////////

// 类式继承模式#1 —— 克隆模式
// 缺点 1：不支持将参数传递给父构造函数。所以 say() 打印出是undefined
// 缺点 2：并没有继承父亲的属性，所以儿子也并没有name的属性
function inherit(C, P) {
	// 重点
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

if (v == "类式继承模式#2 —— 借用模式") {
Var = 
(
function Article() {
	this.tags = ['js', 'css']
}

//////////////////////////////////////////////

// 类式继承模式#2 —— 借用构造函数
function Blog() {
	// 重点：借风使船
	// 但这也意味着，放弃了原型，断开了原型链的血缘联系
	Article.call(this)
}

//////////////////////////////////////////////

var blog = new Blog()

console.log(blog.hasOwnProperty('tags')) // => true

blog.tags.push('html')

console.log(blog.tags.join(',')) // => js,css,html





//////////////////////////////////////////////

// 使用 #2 重构 #1...
// 缺点：由于没有使用父构造函数，断开了原型联系，所以从未继承过 say() 方法。
// 认知：这里所谓的 『继承 name 属性』，其实也是借用 Article 的代码块进行初始化 Child 罢了。有点类似模板复用。
// 举一反三：这种方法可以实现 『多重继承』，也就是多借用几个构造函数就是了

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

if (v == "类式继承模式#3 —— 借用模式 + 克隆模式") {
Var = 
(
//////////////////////////////////////////////

// 类式继承模式#3 —— 借用和设置原型
// 其实就是 #1 + #2
// 缺点：由于结合了 『借用模式』 + 『克隆模式』，所以等于调用了两次父构造函数。效率低下而且风险很高

//////////////////////////////////////////////

function Parent(name) {
    this.name = name
}

Parent.prototype.say = function () {
    return this.name
}

function Child() {
	// 第一次调用父构造函数
    Parent.apply(this, arguments)
}

// 第二次调用父构造函数
Child.prototype = new Parent()

var c = new Child('Lee')
c.name  // => Lee
c.say() // => Lee
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
