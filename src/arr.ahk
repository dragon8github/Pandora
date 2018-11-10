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
	Menu, arrayMenu, Add,  for i++, ForHandler
	Menu, arrayMenu, Add,  for i--, ForHandler
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
	Menu, arrayMenu, Add,  jQuery each, ForHandler

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

if (v == "for i--") {
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
Var = 
(
for (var property in source) {
    console.log(source[property]);
}
)
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

if (v == "jQuery each") {
Var = 
(
// [ "one", "two", "three", "four"] 也可以遍历普通数组哦
$("div").each(function (index, domEle) {
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