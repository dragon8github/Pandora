::$.load::
Var = 
(
$("#app").load('http://www.baidu.com', function (data, status) {
    console.log(arguments);
})
)
code(Var)
return

::ready::
Var = 
(
function ready(fn) {
  if (document.attachEvent ? document.readyState === "complete" : document.readyState !== "loading"){
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', fn);
  }
}
)
code(Var)
return

::setattr::
    send, el.setAttribute('tabindex', 3);
return

::getattr::
    send, el.getAttribute('tabindex');
return

::getstyle::
    Send, getComputedStyle(el)[ruleName];
return

::setstyle::
    Send, el.style.borderWidth = '20px';
return

::exchange::
Var = 
(
var a = [1,4,6,43,5,9,0,23,45];
var changeArr = function (arr, k, j) {
    var tmp = arr[k];
    arr[k] = arr[j];
    arr[j] = tmp;
    return arr;
}
a = change(a,3,7);
console.log(a);
)
code(Var)
return

::$remove::
    Send, el.parentNode.removeChild(el)
return

::eval::
    SendRaw, eval('(' + options + ')')
return

>^a::
Var = 
(
$.ajax({
    url: "http://localhost:3000",
    type: "post",
    data: JSON.stringify({
        test: 123
    }),
    headers: {
        token: '123'
    },
    dataType: 'json',
    contentType: 'application/json;charset=utf-8',
    success: function (data) {
        console.log(data);
    }
})
)
code(Var)
Return

::ajax::
Var = 
(
$.ajax({
    url: "http://localhost:8089/index.php",
    type: "post",
    data: {},
    headers: {
        token: '123'
    },
    dataType: 'json',
    contentType: 'application/json;charset=utf-8',
    success: function (data) {
        console.log(data);
    },
    error: function(e, m){
       console.log('数据接口请求异常', e, m);
    }
})
)
code(Var)
Return

::is-ios::
Var = 
(
;(function(){
      var u = navigator.userAgent, app = navigator.appVersion;
      var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1; //g
      var isIOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
      if (isAndroid) {
        
      } 
      if (isIOS) {
       
      }
}());
)
code(Var)
return

::wa::
::walert::
    Send, window.alert('123');{left 2}{shift down}{left 5}{shift up}
return

; 构造函数的拼音老是记不得，以后就用联想来拼写好了
::gz::
    Send, constructor
return

; insert jquery 的意思，也有爱jquery的意思，为没有jquery的网站添加jq插件
::ijq::
Var = 
(
var o = document.createElement('script');
o.src = 'https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js';
document.documentElement.appendChild(o);
console.log(jQuery.fn.jquery);
)
code(Var)
return

; 打印出jQuery的版本
::$.v::
    Send, console.log(jQuery.fn.jquery);
return

::class::
Var = 
(
class Person {
	constructor (name, age) {
		 // super(); // 继承
		 this._name = name;
		 this._age = age;
	}
	
	static classMethod () {
		return 'hello';
	}
	
	getVersion () {
        console.log("1.0");
    }
	
	get prop() {
		return 'getter';
	}
  
	set prop(value) {
		console.log('setter: '+value);
	}	
}
)
code(Var)
return

>^b::
	SendRaw, npm run build
return

>^r::
    SendRaw, npm run dev
return

!i::
Var = 
(
if (condition) {
    
}
)
code(Var)
return

>!i::
Var = 
(
if (condition) {

} else if (condition) {

} else {
    
}
)
code(Var)
return

::addevent::
Var = 
(
document.body.addEventListener('keydown', function (event) {
    if (event.ctrlKey && event.keyCode == 13) {
        console.log(123);
    }
})
)
code(Var)
return

::getparams::
Var = 
(
var qy = $.GetQueryString = function (name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return "";
};
)
code(Var)
return

::req::
    Send, require('');{left 3}
return

AppsKey & d::
>^d::
    SendInput, debugger{;}
Return

AppsKey & c::
>^c:: 
    SendInput, console.log(arguments)`;{left 2}
Return

::con:: 
    SendInput, console.log()`;{left 2}
Return

::ret::
	SendInput, return
Return 

::pro::
::prote::
    SendInput, prototype
return

::args::
	SendInput, arguments
Return

::jsonp::
::json.p::
    SendInput, JSON.parse(){left}
Return

::jsons::
::json.s::
    SendInput, JSON.stringify(){left}
Return

::json/::
::/json::
    SendRaw, application/json;charset=utf-8
Return

::/form::
    SendRaw, application/x-www-form-urlencoded;charset=utf-8
Return

::ff::
Var = 
(
_ => {
    
}
)
code(Var)
return

::f::
Var = 
(
function () {}
)
code(Var)
SendInput, {left}{enter}
Return

::()()::
Var = 
(
;(function(){
	
}());
)
code(Var)
SendInput, {up}{tab}
Return

::$click::
Var = 
(
$(".object").click(function () {
	
});
)
code(Var)
SendInput, {up}{tab}
Return

::$change::
Var = 
(
$(".object").change(function () {

});
)
code(Var)
SendInput, {up}{tab}
Return

::`:?::
	SendInput, foo === bar ? true `: false`;
Return

::sett::
Var = 
(
setTimeout(function () {
        
}, 1000);
)
code(Var)
SendInput, {up}{tab}
Return

::setti::
Var = 
(
setInterval(function () {
    
}, 1000);
)
code(Var)
SendInput, {up}{tab}
Return

::ctimer::
Var = 
(
var timer = setTimeout(function () {
    clearTimeout(timer);
}, 1000);
)
code(Var)
Return

::ctimeri::
Var = 
(
var timer = setInterval(function () {
    clearInterval(timer);
}, 1000);
)
code(Var)
Return

::$each::
Var = 
(
$.each($('.object'), function (i, e) {
    console.log(i, e);
});
)
code(Var)
Return

::.each::
Var = 
(
.each(function (i, e) {
    console.log(i, e);
});
)
code(Var)
Return

::.foreach::
Var = 
(
.forEach(function (e, i) {
     console.log(i, e);
});
)
code(Var)
Return

::foreach::
Var = 
(
array.forEach(function (e, i) {
     console.log(i, e);
});
)
code(Var)
Return

::dg::
    SendInput, document.getElementById('')`;{left 3}
Return

::ds::
    SendInput, document.querySelectorAll('')`;{left 3}
Return

::.then::
    SendInput, .then(_ => {{}{}}).catch(err => {{}{}})`;{left 3}{enter 2}{UP 2}{Home}{right 12}{enter 2}{up}{tab}
Return

::throw::
    SendInput, throw new Error(e.message){left}^+{left}^+{left}
Return

>!f::
Var = 
(
for (var i = Things.length - 1; i >= 0; i--) {
	Things[i]
}
)
code(Var)
Return

!f::
Var = 
(
for (var i = 0; i < Things.length; i++) {
    Things[i]
}
)
code(Var)
Return

::switch::
    SendInput,
(
switch (data) {{}{}}{left}{enter 2}{up}{tab}case 0`:
  break`;
case 1`:
  break`;
default`:
  
)
return

::date::
Var = 
(
var date = new date();
var year = date.getFullYear();
var month = date.getMonth() + 1;
var day = date.getate();
var hour = date.getHours();
var minutes = date.getMinutes();
var seconds= date.getSeconds();
console.log(year + "/" + month + "/" + day + "/ " + hour + ":" + minutes + ":" + seconds);
console.log(year + "年" + month + "月" + day + "日 " + hour + "时" + minutes + "分" + seconds + "秒");
)
code(Var)
return

::cdate::
	SendInput, var mydate = new Date(time.replace(/\-/g, "/"))`;
Return

::date.y::
	SendInput, new Date().getFullYear()`;
Return

::date.year::
	SendInput, new Date().getFullYear()`;
Return

::date.m::
	SendInput, new Date().getMonth() {+} 1`;
Return

::date.month::
	SendInput, new Date().getMonth() {+} 1`;
Return

::date.d::
	SendInput, new Date().getDate()`;
Return

::date.day::
	SendInput, new Date().getDate()`;
Return

::date.h::
	SendInput, new Date().getHours()`;
Return


::date.hour::
	SendInput, new Date().getHours()`;
Return

::date.mm::
	SendInput, new Date().getMinutes()`;
Return

::date.s::
	SendInput, new Date().getSeconds()`;
Return

::date.ss::
    SendInput, new Date().getSeconds()`;
Return

::$create::
    SendInput, 
(
var wrap = document.createElement("div");
var first = document.body.firstChild;
var wraphtml = document.body.insertBefore(wrap,first);
)
Return

::random::
    SendInput, parseInt(Math.random() * 10 {+} 1); // 获取 1 - 10 到随机数
Return

::rand::
    SendInput, parseInt(Math.random() * 10 {+} 1); // 获取 1 - 10 到随机数
Return

::repeat::
    SendRaw, Array.prototype.join.call({length: i + 1}, '你确定？')
Return

!/::
Var = 
(
/**
 * say something ...
 */
)
code(Var)
Return

+!/::
Var = 
(
/**
 * say something ...
 * @param {*} 参数 说明
 */
)
code(Var)
return


::is-cn::
Var = 
(
if (!/^[\u4e00-\u9fa5]+$/.test('李钊鸿')) {
      throw new Error('请输入中文汉字')
}
)
code(Var)
return

::is-phone::
Var = 
(
/^([0-9]{3,4}-)?[0-9]{7,8}$/.test(s)
/^[1][3,4,5,7,8][0-9]{9}$/.test(s)
/^1\d{10}$/.test(s)
)
code(Var)
return
    
::is-pwd:: 
    SendRaw, /[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/.test('123456a@') // 必须同时包含数字和字母,支持非法符号
return

::is-user:: 
    SendRaw, /^[a-zA-Z0-9-_]*$/.test('') // 由6-16位数字、 字母、 '_'、 '-'组成，不含特殊字符
Return 

::is-id::
Var = 
(
if (!/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/.test('445222199307100337')){
    throw new Error('非法身份证')
}
)
code(Var)
return

::is-email::
    SendRaw, /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(s)
Return

::is-array::
    SendRaw, Object.prototype.toString.call(foo) === '[object Array]' /* Array.isArray([]) */
return

::is-object::
    SendRaw, Object.prototype.toString.call(foo) === '[object Object]'
return

::is-Null::
    SendRaw, Object.prototype.toString.call(Null) === '[object Null]'
return

::is-Undefined::
    SendRaw, Object.prototype.toString.call(Undefined) === '[object Undefined]'
return

::is-string::
    SendRaw, Object.prototype.toString.call(String) === '[object String]'
return

::is-number::
    SendRaw, Object.prototype.toString.call(Number) === '[object Number]'
return

::is-bool::
    SendRaw, Object.prototype.toString.call(Boolean) === '[object Boolean]'
return

::is-date::
    SendRaw, Object.prototype.toString.call(Date) === '[object Date]'
return

::is-NaN::
Var = 
(
function isNaN(obj) {
    return obj !== obj
}
)
code(Var)
return


::getuuid::
Var = 
(
function getUUID () {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
    return (c === 'x' ? (Math.random() * 16 | 0) : ('r&0x3' | '0x8')).toString(16)
  })
}
)
code(Var)
return

::extend::
Var = 
(
// 拷贝集成
var extend = function (destination, source) {
    for (var property in source)
    destination[prototype] = source[prototype]
    return destination
}
)
code(Var)
Return
    
::gettop::
Var = 
(
// 获取距离顶部的相对距离
function getElementTop(element){
    try {
　  　　　var actualTop = element.offsetTop;
　  　　　var current = element.offsetParent;
　  　　　while (current !== null){
　  　　　　　actualTop += current.offsetTop;
　  　　　　　current = current.offsetParent;
　  　　　}
　  　　　return actualTop;
    } catch (e) {}
}
)
code(Var)
Return

::pad::
Var = 
(
// 补全
function pad (target, n) {
    var zero = new Array(n).join('0');
    var str = zero + target;
    var result = str.substr(-n);
    return result;
}
)
code(Var)
Return

::goTop::
Var = 
(
var timer = null;
var goTop = function() {
    cancelAnimationFrame(timer);
    timer = requestAnimationFrame(function fn() {
        var oTop = document.body.scrollTop || document.documentElement.scrollTop;
        if (oTop > 0) {
            document.body.scrollTop = document.documentElement.scrollTop = oTop - 500;
            timer = requestAnimationFrame(fn);
        } else {
            cancelAnimationFrame(timer);
        }
    });
}
)
code(Var)
Return

::unique::
Var = 
(
/**
 * 只能用于数组
 * 如果是 es6 推荐： return Array.from(new Set(arr));
 */
function unique(arr) {
    var retArray = [];
    for (var i = 0; i < arr.length; i) {
        retArray.push(arr[i]);
    }
    Return retArray;
}
)
code(Var)
return

::shuffle::
Var = 
(
// 费雪耶兹（Fisher–Yates） 也被称作高纳德（ Knuth）随机置乱算法
function shuffle(target) {
    var j, x, i = target.length;
    for (; i > 0; j = parseInt(Math.random() * i), x = target[--i], target[i] = target[j], target[j] = x) {}
    return target
}

const arr = [0, 1, 2, 3, 4];
arr.sort(() => Math.random() > .5);
)
code(Var)
return


::randgetone::
Var = 
(
function array_random(target) {
    return target[Math.floor(Math.random() * target.length)];
}
)
code(Var)
return

::removeindex::
::removeAt::
Var = 
(
function removeAt(target, index) {
    return !!target.splice(index, 1).length
}
)
code(Var)
return

::remove::
Var = 
(
function remove(target, item) {
    var index = target.indexOf(item);
    return ~index ? removeAt(target, index) : false
}
)
code(Var)
return

::filterarr::
Var = 
(
function compact(target) {
    return target.filter(function(el) {
        return el != null
    })
}
)
code(Var)
return

::jiaoji::
Var = 
(
function intersect(target, array) {
    return target.filter(function (n) {
        return ~array.indexOf(n);
    });
}
)
code(Var)
return

::min::
Var = 
(
function min(target) {
    return Math.min.apply(null, target);
}
)
code(Var)
return

::max::
Var = 
(
function max(target) {
    return Math.max.apply(null, target);
}
)
code(Var)
return

::foren::
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
code(Var)
return


::forof::
Var = 
(
for (const a of gen) {
    console.log(a);
}
)
code(Var)
return

::forin::
Var = 
(
for (var property in source) {
    console.log(source[property]);
}
)
code(Var)
Return