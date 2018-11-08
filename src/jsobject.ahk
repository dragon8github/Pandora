!j::
	Menu, jsobjectMenu, Add, delete person.age 删除对象的属性, jsobjectHandler
	Menu, jsobjectMenu, Add, Object.assign({}`, ), jsobjectHandler
	Menu, jsobjectMenu, Add, Object.is 比 === 更严格的比较, jsobjectHandler
	Menu, jsobjectMenu, Add, 'tail' in cat / cat.hasOwnProperty('tail') 判断对象是否包含某属性, jsobjectHandler
	
	Menu, jsobjectMenu, Add,, jsobjectHandler
	Menu, jsobjectMenu, Add,, jsobjectHandler

	Menu, jsobjectMenu, Add, Object.defineProperty 属性的权限设置 writable（可写） / configurable（可配置）/enumerable（可枚举）, jsobjectHandler
	Menu, jsobjectMenu, Add, Object.defineProperties 属性的批量权限设置, jsobjectHandler
	Menu, jsobjectMenu, Add, Object.getOwnPropertyDescriptor({a: 123}`, 'a') 获取属性的配置, jsobjectHandler
	Menu, jsobjectMenu, Add, getter / setter , jsobjectHandler

	Menu, jsobjectMenu, Add,, jsobjectHandler
	Menu, jsobjectMenu, Add,, jsobjectHandler

	Menu, jsobjectMenu, Add, for#Object.keys, jsobjectHandler
	Menu, jsobjectMenu, Add, for#o in obj, jsobjectHandler
	Menu, jsobjectMenu, Add, for#Object.entries(), jsobjectHandler
	Menu, jsobjectMenu, Add, for#Object.values(), jsobjectHandler
	Menu, jsobjectMenu, Add, for#Object.keys(), jsobjectHandler


	Menu, jsobjectMenu, Show
	Menu, jsobjectMenu, DeleteAll
return


jsobjectHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(

)
}

if (v == "Object.assign({}, )") {
Var =
(
Object.assign({}, )
)
}
if (v == "Object.is 比 === 更严格的比较") {
Var =
(
0 === -0 // true
NaN === NaN // false（这也是NaN的特性）

Object.is(0, -0) // false
Object.is(NaN, NaN) // true
)
}

if (v == "'tail' in cat / cat.hasOwnProperty('tail') 判断对象是否包含某属性") {
Var =
(
'tail' in cat
cat.hasOwnProperty('tail')
)
}
if (v == "Object.getOwnPropertyDescriptor({a: 123}, 'a') 获取属性的配置") {
Var =
(
// {value: 123, writable: true, enumerable: true, configurable: true}
Object.getOwnPropertyDescriptor({a: 123}, "a")
)
}
if (v == "Object.defineProperty 属性的权限设置 writable（可写） / configurable（可配置）/enumerable（可枚举）") {
Var =
(
var myObject = {};

Object.defineProperty(myObject, "a", {
	value: 2,
	writable: true,  // 可写
	configurable: true, // 可配置
	enumerable: true  // 可枚举
});

myObject.a // 2
)
}
if (v == "Object.defineProperties 属性的批量权限设置") {
Var =
(

)
}
if (v == "getter / setter") {
Var =
(

)
}
if (v == "delete person.age 删除对象的属性") {
Var =
(

)
}

code(Var)
return