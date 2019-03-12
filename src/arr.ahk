


::forr::
::for10::
Var =
(
for (var i = 0; i < 10; i++) {
    
}
)
code(Var)
Send, {up}{tab}
return

::newarr::
Var =
(
// new Int8Array(100)
// [...Array(100)].map(_ => 0);
// [...Array(100)].map((v, index, array) => index);
[...Array(100)].map((v, index, array) => {
    return index
});
)
code(Var)
return

::.filter::
Var =
(
.filter((data) => {
  return data === name;
})
)
code(Var)
return

::arr::
::arra::
::arrr::
!a::
	Menu, arrayMenu, Add, 加强版map遍历:fuckmap, ForHandler
	Menu, arrayMenu, Add, 新建长度为N的数组[...Array(100)], ForHandler
    Menu, arrayMenu, Add, unique 数组去重复, ForHandler
    Menu, arrayMenu, Add, Math.max.apply 获取数组最大值, ForHandler
    Menu, arrayMenu, Add, 使用了es6的set生产1W条不重复8位的数字, ForHandler
	Menu, arrayMenu, Add, 从数组中随机不重复取出指定数量的人, ForHandler
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
	Menu, arrayMenu, Add,  for i++, ForHandler
	Menu, arrayMenu, Add,  for-- 循环中splice需要使用, ForHandler
	Menu, arrayMenu, Add,  for in, ForHandler
	Menu, arrayMenu, Add,  for of, ForHandler
	Menu, arrayMenu, Add,  for entries, ForHandler
	Menu, arrayMenu, Add,  Array#forEach, ForHandler
	Menu, arrayMenu, Add,  Array#map, ForHandler
	Menu, arrayMenu, Add,  Array#reduce, ForHandler
	Menu, arrayMenu, Add,  Array#reduceRight, ForHandler
	Menu, arrayMenu, Add,  Array#some（数组至少一个符合条件，返回true/false）, ForHandler
    Menu, arrayMenu, Add,  Array#every（数组必须全部符合条件，返回true/false）, ForHandler
	Menu, arrayMenu, Add,  Array#find, ForHandler
	Menu, arrayMenu, Add,  Array#filter, ForHandler
	Menu, arrayMenu, Add,  Array#of（创建数组的优雅函数）, ForHandler
	Menu, arrayMenu, Add,  Array#from（类数组转化成数组的方式）, ForHandler
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,  jQuery $.each, ForHandler
	Menu, arrayMenu, Add,  jQuery $('.img').each, ForHandler
	Menu, arrayMenu, Add,  ((________ = '________') => [...Array(________.length)].reduce((_`, __`, ___) => ++___))('________'), ForHandler

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

if (v == "从数组中随机不重复取出指定数量的人") {
Var = 
(
// 目标人数
const target = 10
// 组所有成员
const people = [...document.querySelectorAll('.members .nickname')].map(_ => _.innerText)
// 组成员人数
const len = people.length
// 被选中的孩子们
let beSelectPeoples = new Set()
// 直到满足目标人数
while(beSelectPeoples.size != target) {
  // 随机数
  const rand = ~~(0 + Math.random() * (len + 1))
  // 被选中的孩子
  const beSelectPeople = people[rand]
  // 加入队列
  beSelectPeoples.add(beSelectPeople)
}
)
}

if (v == "使用了es6的set生产1W条不重复8位的数字") {
Var = 
(
/**
 * @desc - 生产1W条8位的数字.使用了es6的set。
 *         set的特性是不允许重复的值存在。利用这个特性来剔除重复的值
 */
var _set = new Set();
while(_set.size != 10000) {
    _set.add(~~(Math.random() * (99999999 - 10000000 + 1) + 10000000));
}
)
}

if (v == "Math.max.apply 获取数组最大值") {
Var = 
(
Math.max.apply(null, arr)
)
}

if (v == "unique 数组去重复") {
SendLevel 1
Send, norepeatarr{tab}
return
}

if (v == "((________ = '________') => [...Array(________.length)].reduce((_, __, ___) => ++___))('________')") {
Var = 
(
((________ = '________') => [...Array(________.length)].reduce((_, __, ___) => ++___))('________')
)
}

if (v == "加强版map遍历:fuckmap") {
SendLevel 1
Send, fuckmap{tab}
return
}

if (v == "新建长度为N的数组[...Array(100)]") {
SendLevel 1
Send, newarr{tab}
return
}

if (v == "Array#reduceRight") {
Var = 
(
[4, 12, 44, 65].reduceRight((total, num) => {
    return total - num;
})
)
}

if (v == "of（创建数组的优雅函数）") {
Var = 
(
new Array(3) // (3) [empty × 3]
Array.of(3)  // [3] 
)
}

if (v == "from（类数组转化成数组的方式）") {
Var = 
(
var arrlike = {
	length: 3,
	0: 'foo',
	1: 'bar'
}

// ES5
var ES5arr = Array.prototype.slice.call( arrlike );  // (3) ["foo", "bar", empty]

// ES6
var ES6arr = Array.from( arrlike ); // (3) ["foo", "bar", undefined]
)
}

if (v == "for i++") {
Var = 
(
for (var i = 0; i < Things.length; i++) {
    Things[i]
}
)
}

if (v == "for-- 循环中splice需要使用") {
Var = 
(
var Things = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var arr = []
for (var i = Things.length - 1; i >= 0; i--) {
	if (Things[i] `% 2 === 0) {
		arr.push(...Things.splice(i, 1))
		console.log(Things, arr)
	}
}
)
}

if (v == "for in") {
cs("forin")
return
}

if (v == "for of") {
Var = 
(
for (const a of gen) {
    console.log(a);
}
)
}

if (v == "for entries") {
Var = 
(
// 对象遍历
for (let [key, ele] of Object.entries(aa)) {
    console.log(key, ele)
}

// 数组遍历
for (let [index, value] of [1, 2, 3].entries()) {
    console.log(index, value)
}
)
}

if (v == "Array#forEach") {
Var = 
(
.forEach(function (e, i) {
     console.log(i, e);
});
)
}

if (v == "Array#map") {
Var = 
(
.map(function (v, index, array) {
    return v
});
)
}

if (v == "Array#reduce") {
Var = 
(
.reduce((previousValue, currentValue, index, array) => {
    return previousValue + currentValue
}, 0)

// 初始化为数组的示例
children.reduce((previousValue, currentValue) => {
	if (currentValue.hlPid === v.hlItemId)
	   previousValue.push({ name: currentValue.hlItemName, id: currentValue.hlItemId })
	// 默认总是要返回一个数组的
	return previousValue
}, [])
)
}

if (v == "Array#some（数组至少一个符合条件，返回true/false）") {
Var = 
(
const fruits = [
    { name: 'apple', color: 'red' },
    { name: 'banana', color: 'yellow' },
    { name: 'grape', color: 'purple' }
];

// 条件：至少一个水果是红色的
const isAnyRed = fruits.some(f => f.color == 'red'); // true
)
}


if (v == "Array#every（数组必须全部符合条件，返回true/false）") {
Var = 
(
const fruits = [
    { name: 'apple', color: 'red' },
    { name: 'banana', color: 'yellow' },
    { name: 'grape', color: 'purple' }
];

// 条件：至少一个水果是红色的
const isAnyRed = fruits.every(f => f.color == 'red'); // false
)
}

if (v == "Array#find") {
Var = 
(
const characters = [
  { id: 1, name: 'ironman', env: 'marvel' },
  { id: 2, name: 'black_widow', env: 'marvel' },
  { id: 3, name: 'wonder_woman', env: 'dc_comics' },
];

function hasCharacterFrom(env) {
  return character => character.env === env;
}

console.log(characters.find(hasCharacterFrom('marvel'))); // { id: 1, name: 'ironman', env: 'marvel' }
)
}

if (v == "Array#filter") {
Var = 
(
.filter((data) => {
  return data === name;
})
)
}

if (v == "jQuery $.each") {
Var = 
(
$.each( [0,1,2], function(i, n){
  alert( "Item #" + i + ": " + n );
});

$.each( { name: "John", lang: "JS" }, function(i, n){
  alert( "Name: " + i + ", Value: " + n );
});
)
}

if (v == "jQuery $('.img').each") {
Var = 
(
// [ "one", "two", "three", "four"] 也可以遍历普通数组哦
$('.img').each(function (index, domEle) {
  	// domEle == this
 	console.log(index, $(this), domEle)
});
)
}

code(Var)
return

::.map::
Var =
(
.map(function (v, index, array) {
    return v
});
)
code(Var)
return

::forin::
::for in::
Var =
(
for (var property in source) {
	if (source.hasOwnProperty(property)) {
		console.log(source[property]);
	}
}
)
code(Var)
return