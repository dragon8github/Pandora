^!b::
; 显示
	Gui, Book:Show,, Book
return

SwitchBook:

; 删除所有树
while(A := TV_GetNext(A)) {
	TV_Delete(top)
}

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

;获取节点信息
_top := TV_GetSelection()

; 展开所有节点
var_dump(expandallchild(_top))

return