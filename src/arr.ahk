::arra::
::arrm::
::arrn::
::arraym::
::arrayn::
>!a::
	Menu, ShellMenu, Add,  for i++, ForHandler
    Menu, ShellMenu, Add,  forEach, ForHandler
	Menu, ShellMenu, Add,  for i--, ForHandler
	Menu, ShellMenu, Add,  for in, ForHandler
	Menu, ShellMenu, Add,  for of, ForHandler
	Menu, ShellMenu, Add,  for entries, ForHandler
	Menu, ShellMenu, Add,  map, ForHandler
	Menu, ShellMenu, Add,  reduce, ForHandler
	Menu, ShellMenu, Add,  some（数组至少一个符合条件，返回true/false）, ForHandler
    Menu, ShellMenu, Add,  every（数组必须全部符合条件，返回true/false）, ForHandler
	Menu, ShellMenu, Add,  find, ForHandler
	Menu, ShellMenu, Add,  filter, ForHandler
	Menu, ShellMenu, Add,  jQuery $.each, ForHandler
	Menu, ShellMenu, Add,  jQuery each, ForHandler

	Menu, ShellMenu, Show
	Menu, ShellMenu, DeleteAll
return


ForHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

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
for (var i = Things.length - 1; i >= 0; i--) {
	Things[i]
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

if (v == "forEach") {
Var = 
(
.forEach(function (e, i) {
     console.log(i, e);
});
)
}

if (v == "map") {
Var = 
(
.map(function (v, index, array) {
    return v
});
)
}

if (v == "reduce") {
Var = 
(
.reduce((previousValue, currentValue, index, array) => {
    return previousValue + currentValue
// 请注意使用末参来初始化 previousValue 的值
}, 0)
)
}

if (v == "some（数组至少一个符合条件，返回true/false）") {
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


if (v == "every（数组必须全部符合条件，返回true/false）") {
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

if (v == "find") {
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

if (v == "filter") {
Var = 
(
const characters = [
  { id: 1, name: 'ironman' },
  { id: 2, name: 'black_widow' },
  { id: 3, name: 'captain_america' },
  { id: 4, name: 'captain_america' },
];

function getCharacter(name) {
  return character => character.name === name;
}

// [
//   { id: 3, name: 'captain_america' },
//   { id: 4, name: 'captain_america' },
// ]
console.log(characters.filter(getCharacter('captain_america')));
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