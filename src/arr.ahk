!a::
	Menu, arrayMenu, Add, ObjectSearch:深度搜索对象/数组, utilsHandler
	Menu, arrayMenu, Add, findSameByProperty：对比两个数组找出相同特征的成员, utilsHandler
	Menu, arrayMenu, Add, 数组成员排列：以大带小 drive, utilsHandler
	Menu, arrayMenu, Add, deepfind 深度递归搜索, utilsHandler

	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler

    Menu, arrayMenu, Add, merge: 合并对象数组的好东西, utilsHandler
    Menu, arrayMenu, Add, 统计数组中每个元素出现的次数, utilsHandler
    Menu, arrayMenu, Add, 新的数组工具：filters, utilsHandler
    Menu, arrayMenu, Add, 求平均数：average, utilsHandler
    Menu, arrayMenu, Add, 新的数组工具：maps, utilsHandler
	Menu, arrayMenu, Add, 把数组像分页一样分割为N段, ForHandler
	Menu, arrayMenu, Add, chunk 数组分块函数:hit / miss, ForHandler
	Menu, arrayMenu, Add, 加强版map遍历:fuckmap, ForHandler
	Menu, arrayMenu, Add, pureMap：纯洁无害的map函数, ForHandler
	Menu, arrayMenu, Add, sliceByRules：（月榕）将数组根据3:2:3:2的规矩切割, ForHandler
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
	Menu, arrayMenu, Add, 新建长度为N的数组[...Array(100)]或者Array.from({ length: 100 }), ForHandler
	Menu, arrayMenu, Add, 使用了es6的set生产1W条不重复8位的数字, ForHandler
    Menu, arrayMenu, Add, 从数组中随机不重复取出指定数量的人, ForHandler
	Menu, arrayMenu, Add, unique 数组去重复, ForHandler
	Menu, arrayMenu, Add, 随机从数组中取N个数据, ForHandler
	Menu, arrayMenu, Add, 找出数组重复次数最多的元素，以Ip列表为例, ForHandler
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
    Menu, arrayMenu, Add, 数组移位：arrayMove, ForHandler
    Menu, arrayMenu, Add, Math.max.apply 获取数组最大值, ForHandler
	Menu, arrayMenu, Add, 类数组转数组：Array.prototype.slice.call(arguments), ForHandler
	Menu, arrayMenu, Add, 二维数组转一维数组：Array.prototype.flat(maxDeep), ForHandler
	Menu, arrayMenu, Add, ArrayAssgin: 数组模板替换合并, ForHandler
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
	Menu, arrayMenu, Add, 删除数组成员, ForHandler
	Menu, arrayMenu, Add, 判断两个数组是否互相包含, utilsHandler
	Menu, arrayMenu, Add, 数组的交集、并集、差集、补集, ForHandler
	Menu, arrayMenu, Add, 对象数组的交集、并集、差集、补集, ForHandler
	Menu, arrayMenu, Add, Array.difference: 找出两个数组中不同成员, ForHandler
	
	
		
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
	


	Menu, Arrayprototype, Add, unshift： 插入到第一位 , ForHandler
	Menu, Arrayprototype, Add, push: 插入到最后一位 , ForHandler
	Menu, Arrayprototype, Add, shift： 弹出并删除第一个 , ForHandler
	Menu, Arrayprototype, Add, pop： 弹出并删除最后一个 , ForHandler
	Menu, Arrayprototype, Add, slice： 无损截取数组 , ForHandler
	Menu, Arrayprototype, Add, splice： 删除成员 ary.splice(1`, 1), ForHandler
	Menu, Arrayprototype, Add, splice： 有损截取数组，可用于替换ary.splice(index`, 1`, 'fuck') , ForHandler
	Menu, Arrayprototype, Add, splice： 可用于插入：ary.splice(1`, 0`, 'fuckyou') , ForHandler
	Menu, Arrayprototype, Add,  for-- 循环中splice需要使用, ForHandler
	
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
	Menu, arrayMenu, Add, Array.prototype.remove, ForHandler
	Menu, arrayMenu, Add, Array.prototype, :Arrayprototype
	Menu, arrayMenu, Add, for 常用 API, :ForAPI
	
	
	Menu, arrayMenu, Add,, ForHandler
	Menu, arrayMenu, Add,, ForHandler
	
	Menu, arrayMenu, Add,  jQuery $.each, ForHandler
	Menu, arrayMenu, Add,  jQuery $('.img').each, ForHandler

	Menu, arrayMenu, Show
	Menu, arrayMenu, DeleteAll
	Menu, Arrayprototype, DeleteAll
	Menu, ForAPI, DeleteAll

	
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

if (v == "对象数组的交集、并集、差集、补集") {
Var =
(
var arr1 = [{ id: 1 }, { id: 2 }, { id: 3 }]
var arr2 = [{ id: 2 }, { id: 3 }, { id: 4 }]
// 交集（返回两个数组都拥有的元素）
const jiaoji = (a, b, p) => a.reduce((result, c) => {
	// 是否找到相同元素？
	const target = b.find(_ => _[p] === c[p])
	// 如果找到的话，插入数组
	return target ? [...result, target] : result
}, [])
// [ { id: 2 }, { id: 3 } ]
console.log(jiaoji(arr1, arr2, 'id'))
---
var arr1 = [{ id: 1 }, { id: 2 }, { id: 3 }]
var arr2 = [{ id: 2 }, { id: 3 }, { id: 4 }]
// 差集（两个元素互相没有的东西）
const chaji = (a, b, p) => {
	const ary1 = a.reduce((result, c) => {
		// 是否找到相同元素？
		const target = b.find(_ => _[p] === c[p])
		// 如果找到的话，插入数组
		return !target ? [...result, c] : result
	}, [])

	const ary2 = b.reduce((result, c) => {
		// 是否找到相同元素？
		const target = a.find(_ => _[p] === c[p])
		// 如果找到的话，插入数组
		return !target ? [...result, c] : result
	}, [])

	return [...ary1, ...ary2]
}
// [ { id: 1 }, { id: 4 } ]
console.log(chaji(arr1, arr2, 'id'))
---
var arr1 = [{ id: 1 }, { id: 2 }, { id: 3 }, { id: 4 }, { id: 5 }]
var arr2 = [{ id: 1 }, { id: 2 }, { id: 3 }]
// 补集（在一个大集合 a 中，除了子集合b以外所有的集合）
const complement = (a, b, p) => a.reduce((result, c) => {
	// 先找出共同拥有的集合（交集）
	const _jiaoji = jiaoji(a, b, p)

	// 从大集合中，单方面找出差集
	return a.reduce((result, c) => {
		// 是否找到相同元素？
		const target = b.find(_ => _[p] === c[p])
		// 如果找到的话，插入数组
		return !target ? [...result, c] : result
	}, [])
}, [])
// [ { id: 4 }, { id: 5 } ]
console.log(complement(arr1, arr2, 'id'))
)
txtit(Var)
}

if (v == "merge: 合并对象数组的好东西") {
Var =
(
const merge = (a, b, p) => a.filter( aa => ! b.find ( bb => aa[p] === bb[p]) ).concat(b)
)
}

if (v == "统计数组中每个元素出现的次数") {
Var =
(
// 统计数组中每一个元素出现的次数
const statisticsArray = ary => ary.reduce((p, c) => {
    if (!p[c]) p[c] = 1
    else p[c]++
    return p
}, {})
)
}

if (v == "新的数组工具：filters") {
_send("filters", true, true)
return
}

if (v == "求平均数：average") {
_send("ave", true, true)
return
}

if (v == "数组移位：arrayMove") {
Var =
(
function arrayMove(arr, previousIndex, newIndex) {
  const array = arr.slice(0);
  if (newIndex >= array.length) {
    let k = newIndex - array.length;
    while (k-- + 1) {
      array.push(undefined);
    }
  }
  array.splice(newIndex, 0, array.splice(previousIndex, 1)[0]);
  return array;
}
)
}

if (v == "ArrayAssgin: 数组模板替换合并") {
_send("arrassgin", true, true)
return
}

if (v == "sliceByRules：（月榕）将数组根据3:2:3:2的规矩切割") {
Var =
(
// 一维数组 [a,b,c,d,e,f,g,h,i,j] 修改成 [[a,b,c],[d,e],[f,g,h],[i,j]] 这种二维数组，怎么写？
// 二维数组当中的子数组个数的规律构成 3:2:3:2

const input = ['a','b','c','d','e','f','g','h','i','j']

const sliceByRules = (array, rule = [3, 2]) => {
	// 即将返回的数据
	let result = []
	// 防止修改引用
	let ary = array.slice()
	// 记录索引
	let index = 0
	// 规则数量
	const len = rule.length

	while(ary.length) {
		// 本次需要拦截的数量
		const cut = rule[index `% len]
		// 开始拦截
		const cut_ary = ary.splice(0, cut)
		// 插入新拦截的数据
		result.push(cut_ary)
		// 索引++
		index++
	}

	return result
}

console.log(sliceByRules(input, [3, 2]))
)
}

if (v == "找出数组重复次数最多的元素，以Ip列表为例") {
Var =
(
const ips = ['192.168.1.1', '192.118.2.1', '192.168.1.1']

const highestFrequency = function(ipLines) {
  // 这是一种初始化技巧
  var [obj, max, name] = [{}, 1, ''];
  ipLines.forEach(value => {
    if (obj[value]) {
      // 已经有值了 就把值+1
      obj[value]++
      // 超出天花板
      if (obj[value] > max) { 
        // 当前天花板
        max = obj[value]; 
        // 当前冠军
        name = value; 
      }
    } else {
      // 没有值 就初始化一个值
      obj[value] = 1;
    }
  });
  return name;
};
)
}

if (v == "splice： 删除成员 ary.splice(1, 1)") {
Var =
(
var arr = [1,2,3]
arr.splice(1, 1)
console.log(20191229133351, arr) // => [1, 3]
)
}

if (v == "Array.difference: 找出两个数组中不同成员") {
Var = 
(
let arrays = [[1, 2, 3, 4, 5], [5, 2, 10]];
arrays.reduce((a, b) => a.filter(c => !b.includes(c))) // output: [1, 3, 4]
)
}


if (v == "chunk 数组分块函数:hit / miss") {
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

if (v == "splice： 有损截取数组，可用于替换ary.splice(index, 1, 'fuck')") {
Var = 
(
ary.splice(index, 1, 'fuck')
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

::while::
Var =
(
// while(true) {  }
while(args.length) {
	const _args = args.shift()

	console.log(20200205212156, _args)
}
)
code(Var)
return

::arrassgin::
::assginarr::
Var =
(
/**
 * 原理：参照物（模板） + 替换 + 补漏 ...
 *
 * 1. 先创建一个标准参照物（模板）
 * 2. 将改造者与参照物进行比对，替换 + 填空缺失的。
 * 3. 可以自定义缺失的内容、不一定要以参照物的为准。
 */
const arrayAssign = (a, b) => a.map(a_target => b.find(b_target => b_target.time === a_target.time) || { data: 0, time: a_target.time})

const ary_1 = [
	{ data: 1, time: '2020/03/30 19:51:17' }, 
	{ data: 2, time: '2020/03/30 19:51:29' }, 
	{ data: 3, time: '2020/03/30 19:51:44' }, 
	{ data: 4, time: '2020/03/30 19:51:56' }, 
	{ data: 5, time: '2020/03/30 19:51:59' },  
	{ data: 6, time: '2020/03/30 19:52:07' },
]

const ary_2 = [
	{ data: 110, time: '2020/03/30 19:51:44' }, 
	{ data: 120, time: '2020/03/30 19:52:07' },
]

const ary = arrayAssign(ary_1, ary_2, )

console.log(ary)
/**
 * 期待输出：
{ data: 0, time: '2020/03/30 19:51:17' }, 
{ data: 0, time: '2020/03/30 19:51:29' }, 
{ data: 110, time: '2020/03/30 19:51:44' }, 
{ data: 0, time: '2020/03/30 19:51:56' }, 
{ data: 0, time: '2020/03/30 19:51:59' },  
{ data: 120, time: '2020/03/30 19:52:07' },
 */
)
code(Var)
return

::ave::
Var =
(
function average(nums) {
    return nums.reduce((a, b) => a + b) / nums.length;
}
)
code(Var)
return

::filters::
Var =
(
Array.prototype.filters = function(...args) {
    // 初始化空数组，这是一个二维数组，长度与参数一致
    let ary = args.map(_ => [])

    // 开始遍历自身
    this.forEach((val, index, array) => {
        // 依次执行 fn
        for (let i = 0, len = args.length; i < len; i++) {
            // 获取当前函数
            const fn = args[i]

            if (fn(val, index, array)) {
               ary[i].push(val)
            }
        }
    })

    // 返回最终结果
    return ary
}
)
code(Var)
return

::merge::
Var =
(
const merge = (a, b, p) => a.filter( aa => ! b.find ( bb => aa[p] === bb[p]) ).concat(b)
)
code(Var)
return