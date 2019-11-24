!a::
	Menu, arrayMenu, Add, 把数组像分页一样分割为N段, ForHandler
	Menu, arrayMenu, Add, chunk 数组分块函数, ForHandler
	Menu, arrayMenu, Add, 加强版map遍历:fuckmap, ForHandler
	Menu, arrayMenu, Add, pureMap：纯洁无害的map函数, ForHandler
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
	Menu, arrayMenu, Add, 新建长度为N的数组[...Array(100)]或者Array.from({ length: 100 }), ForHandler
	Menu, arrayMenu, Add, 使用了es6的set生产1W条不重复8位的数字, ForHandler
    Menu, arrayMenu, Add, 从数组中随机不重复取出指定数量的人, ForHandler
	Menu, arrayMenu, Add, unique 数组去重复, ForHandler
	Menu, arrayMenu, Add, 随机从数组中取N个数据, ForHandler
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
    Menu, arrayMenu, Add, Math.max.apply 获取数组最大值, ForHandler
	Menu, arrayMenu, Add, 类数组转数组：Array.prototype.slice.call(arguments), ForHandler
	Menu, arrayMenu, Add, 二维数组转一维数组：Array.prototype.flat(maxDeep), ForHandler
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
	Menu, arrayMenu, Add, 删除数组成员, ForHandler
	Menu, arrayMenu, Add, Array.prototype.remove, ForHandler
	Menu, arrayMenu, Add, 判断两个数组是否互相包含, utilsHandler
	Menu, arrayMenu, Add, 数组的交集、并集、差集、补集, ForHandler
	Menu, arrayMenu, Add, Array.difference: 找出两个数组中不同成员, ForHandler
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
		
	Menu, ForAPI, Add,  for in, ForHandler
	Menu, ForAPI, Add,  for of, ForHandler
	Menu, ForAPI, Add,  for entries, ForHandler
	Menu, ForAPI, Add,  Array#forEach, ForHandler
	Menu, ForAPI, Add,  Array#map, ForHandler
	Menu, ForAPI, Add,  Array#reduce, ForHandler
	Menu, ForAPI, Add,  Array#reduceRight, ForHandler
	Menu, ForAPI, Add,  Array#some（数组至少一个符合条件，返回true/false）, ForHandler
	Menu, ForAPI, Add,  Array#every（数组必须全部符合条件，返回true/false）, ForHandler
	Menu, ForAPI, Add,  Array#find, ForHandler
	Menu, ForAPI, Add,  Array#filter, ForHandler
	Menu, ForAPI, Add,  Array#of（创建数组的优雅函数）, ForHandler
	Menu, ForAPI, Add,  Array#from（类数组转化成数组的方式）, ForHandler
	
	
	Menu, arrayMenu, Add,  for 常用 API, :ForAPI
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
	
	Menu, arrayMenu, Add, unshift： 插入到第一位 , ForHandler
	Menu, arrayMenu, Add, push: 插入到最后一位 , ForHandler
	Menu, arrayMenu, Add, shift： 弹出并删除第一个 , ForHandler
	Menu, arrayMenu, Add, pop： 弹出并删除最后一个 , ForHandler
	Menu, arrayMenu, Add, slice： 无损截取数组 , ForHandler
	Menu, arrayMenu, Add, splice： 有损截取数组，可用于替换 , ForHandler
	Menu, arrayMenu, Add, splice： 可用于插入：ary.splice(1`, 0`, 'fuckyou') , ForHandler
	Menu, arrayMenu, Add,  for-- 循环中splice需要使用, ForHandler
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
	Menu, arrayMenu, Add,  jQuery $.each, ForHandler
	Menu, arrayMenu, Add,  jQuery $('.img').each, ForHandler

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



if (v == "Array.difference: 找出两个数组中不同成员") {
Var = 
(
let arrays = [[1, 2, 3, 4, 5], [5, 2, 10]];
arrays.reduce((a, b) => a.filter(c => !b.includes(c))) // output: [1, 3, 4]
)
}


if (v == "chunk 数组分块函数") {
_send("chunk", true, true)
return
}

if (v == "pureMap：纯洁无害的map函数") {
_send("puremap", true, true)
return
}

if (v == "把数组像分页一样分割为N段") {
_send("fenye", true, true)
return
}

if (v == "数组的交集、并集、差集、补集") {
Var = 
(
const intersect = (a, b) => a.filter(i => b.includes(i)) // 交
const exclude = (a, b) => a.filter(i => !b.includes(i)) // 差
const union = (a, b) => exclude(a, b).concat(b) // 并
const unionAll = (a, b) => a.concat(b) // 重复并
const xor = (a, b) => exclude(a, b).concat(exclude(b, a)) // 补
)
}



if (v == "splice： 可用于插入：ary.splice(1, 0, 'fuckyou')") {
Var = 
(
ary.splice(1, 0, 'fuckyou')
)
}


if (v == "unshift： 插入到第一位") {
Var = 
(
unshift
)
}

if (v == "push: 插入到最后一位") {
Var = 
(
pus
)
}

if (v == "shift： 弹出并删除第一个") {
Var = 
(
shift
)
}

if (v == "pop： 弹出并删除最后一个") {
Var = 
(
pop
)
}

if (v == "slice： 无损截取数组") {
Var = 
(
slice
)
}

if (v == "splice： 有损截取数组，可用于替换") {
Var = 
(
splice
)
}


if (v == "随机从数组中取N个数据") {
Var = 
(
function getRandomArrayElements(arr, count) {
    var shuffled = arr.slice(0), i = arr.length, min = i - count, temp, index;
    while (i-- > min) {
        index = Math.floor((i + 1) * Math.random());
        temp = shuffled[index];
        shuffled[index] = shuffled[i];
        shuffled[i] = temp;
    }
    return shuffled.slice(min);
}
)
}

if (v == "删除数组成员") {
_send("remove", true, true)
return
}


if (v == "二维数组转一维数组：Array.prototype.flat(maxDeep)") {
Var = 
(
// es5 Array.prototype.reduce()
[[1,2], [3, 4, [7,8]], [5, 6]].reduce((previousValue, currentValue) => {
	return previousValue.concat(currentValue)
}, []) // [1, 2, 3, 4, Array(2), 5, 6]

// （推荐）es6 Array.prototype.flat()
[[1,2], [3, 4, [7,8]], [5, 6]].flat() // [1, 2, 3, 4, Array(2), 5, 6]

// 无限级解压
var arr1 = [[0, 1], [2, 3], [4, 5, [6, 7, 8]]]
const flatten = arr => [].concat( ...arr.map(x => Array.isArray(x) ? flatten(x) : x) )
flatten(arr1) 

// 其实没那么复杂，默认就支持无限级解压
const ary = [1,2,[1,2, [3, 4, [5,6]]]];
temp.flat(ary) // => [1, 2, 1, 2, 3, 4, 5, 6]
)
}

if (v == "Array#from（类数组转化成数组的方式）") {
Var = 
(
Array.from(document.querySelectorAll('.t'))
)
}

if (v == "类数组转数组：Array.prototype.slice.call(arguments)") {
Var = 
(
Array.prototype.slice.call(arguments)
)
}

if (v == "Array.prototype.remove") {
Var = 
(
// Array Remove - By John Resig (MIT Licensed)
/**
 * // 移除数组中的第二项
 * array.remove(1);
 * // 移除数组中的倒数第二项
 * array.remove(-2);
 * // 移除数组中的第二项和第三项（从第二项开始，删除2个元素）
 * array.remove(1,2);
 * // 移除数组中的最后一项和倒数第二项（数组中的最后两项）
 * array.remove(-2,-1);
 *
 */
Array.prototype.remove = function(from, to) {
  var rest = this.slice((to || from) + 1 || this.length);
  this.length = from < 0 ? this.length + from : from;
  return this.push.apply(this, rest);
};

const removeAt = (target, index) => !!target.splice(index, 1).length
export const remove = (target, item) => {
    var index = target.indexOf(item);
    return ~index ? removeAt(target, index) : false
}
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

if (v == "新建长度为N的数组[...Array(100)]或者Array.from({ length: 100 })") {
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
_send("reduce", true, true)
return
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

:?:.map::
Var =
(
.map((v, index, array) => {
    return v
})
)
code(Var)
return


:?:.mo::
:?:.ma::
:?:.mobject::
:?:.mobj::
Var =
(
.map(_ => Object.assign({}, _, {  }))
)
code(Var)
Send, {left 4}
return

::forin::
::for in::
Var =
(
for (var key in obj) {
	if (obj.hasOwnProperty(obj)) {
		console.log(obj[key])
	}
}
)
code(Var)
return


:?:.f::
:?:.foreach::
:?:.for::
Var =
(
.forEach((val, key) => {})
)
code(Var)
Send, {left 2}
return

::last::
Var =
(
ary.slice(-1)
)
code(Var)
return




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
::arr100::
::arr10::
Var =
(
// new Int8Array(100)
// [...Array(100)].map(_ => 0);
// [...Array(100)].map((v, index, array) => index);
// （新）Array.from({ length: 100 }).map((v, index, array) => index);
[...Array(100)].map((v, index, array) => {
    return index
});
)
code(Var)
return

:?:.filter::
Var =
(
.filter((data) => {
  return data === name;
})
)
code(Var)
return


::flat::
Var =
(
// es5 Array.prototype.reduce()
[[1,2], [3, 4, [7,8]], [5, 6]].reduce((previousValue, currentValue) => {
	return previousValue.concat(currentValue)
}, []) // [1, 2, 3, 4, Array(2), 5, 6]
---
// （推荐）es6 Array.prototype.flat()
[[1,2], [3, 4, [7,8]], [5, 6]].flat() // [1, 2, 3, 4, Array(2), 5, 6]
---
// 无限级解压
var arr1 = [[0, 1], [2, 3], [4, 5, [6, 7, 8]]]
const flatten = arr => [].concat( ...arr.map(x => Array.isArray(x) ? flatten(x) : x) )
flatten(arr1) 
)
txtit(Var)
return

::arr.insert::
::insert::
Var =
(
ary.splice(1, 0, 'fuckyou')
)
code(Var)
return