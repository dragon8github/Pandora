::user-agents::
::user-agent::
::userAgents::
::userAgent::
Var = 
(
const userAgents = [
  'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.12) Gecko/20070731 Ubuntu/dapper-security Firefox/1.5.0.12',
  'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506)',
  'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11',
  'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.20 (KHTML, like Gecko) Chrome/19.0.1036.7 Safari/535.20',
  'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko Fedora/1.9.0.8-1.fc10 Kazehakase/0.5.6',
  'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.71 Safari/537.1 LBBROWSER',
  'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Win64; x64; Trident/5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET CLR 2.0.50727; Media Center PC 6.0) ,Lynx/2.8.5rel.1 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/1.2.9',
  'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)',
  'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; QQBrowser/7.0.3698.400)',
  'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; QQDownload 732; .NET4.0C; .NET4.0E)',
  'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:2.0b13pre) Gecko/20110307 Firefox/4.0b13pre',
  'Opera/9.80 (Macintosh; Intel Mac OS X 10.6.8; U; fr) Presto/2.9.168 Version/11.52',
  'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.12) Gecko/20070731 Ubuntu/dapper-security Firefox/1.5.0.12',
  'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; LBBROWSER)',
  'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko Fedora/1.9.0.8-1.fc10 Kazehakase/0.5.6',
  'Mozilla/5.0 (X11; U; Linux; en-US) AppleWebKit/527+ (KHTML, like Gecko, Safari/419.3) Arora/0.6',
  'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; QQBrowser/7.0.3698.400)',
  'Opera/9.25 (Windows NT 5.1; U; en), Lynx/2.8.5rel.1 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/1.2.9',
  'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'
]
)
code(Var)
return

::match::
    Send, body.match(/\d{4,}/)[0]
return

::lunxun::
Var = 
(
const getsms = (mobile) => {
    var count = 0
    var _getsms = function () {
        request({
            method: 'GET',
            uri: `http://api.fxhyd.cn/UserInterface.aspx?action=getsms&token=${token}&itemid=${itemid}&mobile=${mobile}&release=1`
        }, function (err, _res, body) {
            if (err) throw new Error(err)
            // 如果短信未收到
            if (body == '3001' && count <= 60) {
                // 官方推荐5秒之后再请求
                setTimeout(function () {
                    count += 5
                    console.log("短信未收到，正在重新获取...", count);
                    _getsms()
                }, 5000);
            } else {
                // 截取验证码
                var code = body.match(/\d{4,}/)[0]
                console.log("获取了验证码", code);
                register(mobile, code)
            }
        })
    }
    _getsms();
};
)
code(Var)
return

::$once::
Var = 
(
const once = fn => {
	let done = false;

	return function () {
		return done ? undefined : ((done = true), fn.apply(this, arguments))
	}
}
)
code(Var)
return

::$bind::
Var = 
(
Function.prototype.bind = function() {
    var self = this, // 保存原函数
        context = [].shift.call(arguments), // 需要绑定的 this 上下文
        args = [].slice.call(arguments); // 剩余的参数转成数组
    return function() { // 返回一个新的函数
        return self.apply(context, [].concat.call(args, [].slice.call(arguments)));
        // 执行新的函数的时候，会把之前传入的 context 当作新函数体内的 this
        // 并且组合两次分别传入的参数，作为新函数的参数
    }
};
)
code(Var)
return


::enum::
Var = 
(
var Color;
(function (Color) {
    Color[Color["Red"] = 1] = "Red";
    Color[Color["Green"] = 2] = "Green";
    Color[Color["Blue"] = 4] = "Blue";
})(Color || (Color = {}));
console.log(Color);
)
code(Var)
return

::$echo::
Var = 
(
var button = document.createElement('button');
button.textContent = "Say Hello";
button.onclick = function() {
    window.alert('Hello');
}
document.body.appendChild(button);
)
code(Var)
return

::echo::
    Send, document.body.innerHTML = "Hello World";
    Send, {left}{Shift Down}{left 13}{Shift Up}
return

::args2arr::
::2arr::
::args2::
    Send, [].slice.call(arguments)
return

::checkpwdlevel::
Var = 
(
var checkPwdLevel = function (str) {
    let nowLv = 0;
    if (str.length < 6) {
        return nowLv
    }
    //把规则整理成数组，再进行循环判断
    let rules=[/[0-9]/,/[a-z]/,/[A-Z]/,/[\.|-|_]/];
    for(let i=0;i<rules.length;i++){
        if(rules[i].test(str)){
            nowLv++;
        }
    }
    return nowLv;
}
)
code(Var)
return

::$.load::
Var = 
(
$("#app").load('http://www.baidu.com', function (data, status) {
    console.log(arguments);
})
)
code(Var)
return

::focusinput::
::inputfoucs::
Var = 
(
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

setTimeout(() => {
    window.scrollTo(0, getElementTop(e.target));
}, 150)
)
code(Var)
return

::$siblings::
Var = 
(
var list = Array.prototype.filter.call(el.parentNode.children, function(child){
  return child !== el;
});
console.log(list);
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

AppsKey & a::
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
::$.version::
    Send, console.log(jQuery.fn.jquery);
return

::$before::
    SendRaw, el.insertAdjacentHTML('beforebegin', htmlString);
return

::$After::
    SendRaw, el.insertAdjacentHTML('afterend', htmlString);
return

::$Append::
    SendRaw, document.body.appendChild(el);
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

AppsKey & b::
>^b::
	SendRaw, npm run build
return

AppsKey & r::
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
addEventListener('keydown', function (event) {
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
Var = 
(
var result = (a[property] < b[property]) ? -1 : 
             (a[property] > b[property]) ?  1 : 0;
)
code(Var)
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

::for::
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
var date = new Date();
var year = date.getFullYear();
var month = date.getMonth() + 1;
var day = date.getDate();
var hours = date.getHours();
var minu = date.getMinutes();
var second = date.getSeconds(); //判断是否满10 
var arr = [month, day, hours, minu, second];
arr.forEach(item => { item < 10 ? "0" + item : item; })
console.log(year + '-' + arr[0] + '-' + arr[1] + ' ' + arr[2] + ':' + arr[3] + ':' + arr[4])
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
    Send, ^/
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

::is-code::
    SendRaw, /^[0-9]{6}$/.test(100000)
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
/^((1)3(\d){9}$)|(^(1)4[5-9](\d){8}$)|(^(1)5[^4]{9}$)|(^(1)66(\d){8}$)|(^(1)7[0-8](\d){8}$)|(^(1)8(\d){9}$)|(^(1)9[8-9](\d){8}$)/.test(16961121989)
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

::$.extend::
::extend::
Var = 
(
var deepExtend = function(out) {
  out = out || {};

  for (var i = 1; i < arguments.length; i++) {
    var obj = arguments[i];

    if (!obj)
      continue;

    for (var key in obj) {
      if (obj.hasOwnProperty(key)) {
        if (typeof obj[key] === 'object')
          out[key] = deepExtend(out[key], obj[key]);
        else
          out[key] = obj[key];
      }
    }
  }

  return out;
};

deepExtend({}, objA, objB);
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

::randarr::
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

::sort::
::sortArr::
Var = 
(
// 将arr升序排列,如果是倒序return -(a-b)
var orderArr = function (arr) { 
    arr.sort((a, b) => { return a - b }) 
}
)
code(Var)
return

::sortobj::
Var = 
(
// 将arr升序排列,如果是倒序return -(value1 - value2)
const orderArr = (arr) => { 
    arr.sort((a, b) => { 
         let value1 = a[property]; 
         let value2 = b[property]; 
         return value1 - value2; 
    }) 
}
)
code(Var)
return

::jiecheng::
Var = 
(
var factorial = n => {
	if (n === 0) {
		return 1;
	}
	// 这是一个递归
	return n * factorial(n -1);
}
)
code(Var)
return

::sortby::
Var = 
(
const sortBy = (property) => {
	return (a, b) => {
		var result = (a[property] < b[property]) ? -1 : 
					 (a[property] > b[property]) ?  1 : 0;
		return result;
	}
}

people.sort(sortBy("lastname"))
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

::escapeHTML::
Var = 
(
var escapeHTML = function(target){  
    return target.replace(/&/g, "&amp;")
                 .replace(/</g, "&lt;")
                 .replace(/>/g, "&gt;")
                 .replace(/"/g, '&quot;')
                 .replace(/'/g, "&#39;")
};
)
code(Var)
return

::unescapeHTML::
Var = 
(
var escapeHTML = function(target){  
    return target.replace(/&lt;/g, "<")
                 .replace(/&gt;/g, ">")
                 .replace(/&amp;/g, "&")
                 .replace(/&quot;/g, '"')
                 .replace(/&#39;/g, "'")
};
)
code(Var)
return

::promise.finally::
Var = 
(
// 向 Promise.prototype 增加 finally()
Promise.prototype.finally = function(onFinally) {
    return this.then(
        /* onFulfilled */
        res => Promise.resolve(onFinally()).then(() => res),
        /* onRejected */
        err => Promise.resolve(onFinally()).then(() => {
            throw err;
        })
    `);
};
)
code(Var)
return

::getPath::
Var = 
(
var getPath = function(){
    var jsPath = doc.currentScript ? doc.currentScript.src : function(){
      var js = doc.scripts
      ,last = js.length - 1
      ,src;
      for(var i = last; i > 0; i--){
        if(js[i].readyState === 'interactive'){
          src = js[i].src;
          break;
        }
      }
      return src || js[last].src;
    }();
    return jsPath.substring(0, jsPath.lastIndexOf('/') + 1);
}()
)
code(Var)
return

::onscriptload::
Var = 
(
/**
 * 加载script并且执行回调
 * @param {String} url 资源地址
 * @param {Function} cb 回调方法
 * https://www.cnblogs.com/_franky/archive/2010/06/20/1761370.html
 */
var onscriptload = function (url, cb) {
  var node = document.createElement("script")
  var head = document.getElementsByTagName('head')[0]
  var timeID
  var supportLoad = "onload" in node
  var onEvent = supportLoad ? "onload" : "onreadystatechange"
  node[onEvent] = function onLoad() {
      if (!supportLoad && !timeID && /complete|loaded/.test(node.readyState)) {
          timeID = setTimeout(onLoad)
          return
      }
      if (supportLoad || timeID) {
          clearTimeout(timeID)
          cb && cb()
      }
  }
  head.insertBefore(node, head.firstChild)
  node.src = url
}

onscriptload('https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js', function () {
   console.log(jQuery.fn.jquery);
})

)
code(Var)
return

::is-ie::
Var = 
(
(function(){ //ie版本
    var agent = navigator.userAgent.toLowerCase();
    return (!!window.ActiveXObject || "ActiveXObject" in window) ? (
      (agent.match(/msie\s(\d+)/) || [])[1] || '11' //由于ie11并没有msie的标识
    `) : false;
}())
)
code(Var)
return

::settitle::
Var = 
(
// 解决微信、QQ、闪银等内置浏览器单页应用无法刷新title的问题
var setTitle = title => {
    var i = document.createElement('iframe');
    i.src = 'https://www.baidu.com/favicon.ico';
    i.style.display = 'none';
    i.onload = function() {
        setTimeout(function(){
            i.remove();
        }, 9)
    }
    document.title = title;
    document.body.appendChild(i);
}
)
code(Var)
return

::lazy::
::lazyimg::
::lazyimage::
Var = 
(
/**
 * 图片懒加载
 * https://www.liaoxuefeng.com/article/00151045553343934ba3bb4ed684623b1bf00488231d88d000
 * <img src="https://loading.io/assets/img/ajax.gif" data-src="http://www.hongte.info/assets/images/banner2.jpg">
 */
;(function(){
    // 获取包含data-src属性的img
    var lazyImgs = document.querySelectorAll('img[data-src]')
    // 将Node-List转化成数组类型
    lazyImgs = [].slice.apply(lazyImgs);
     // 定义事件函数
    var onScroll = function () {
        // 获取页面滚动的高度
        var wtop = window.scrollY;
        // 获取可视区域高度
        var wheight = document.documentElement.clientHeight;
        // 判断是否还有未加载的img
        if (lazyImgs.length > 0) {
            // 循环处理数组的每个img元素
            for (var i = lazyImgs.length - 1; i >= 0; i--) {
                // 获取图片信息
                var el = lazyImgs[i], rect = el.getBoundingClientRect(), src = el.getAttribute('data-src')
                // 判断是否在可视范围内:
                if (rect.top - wtop < wheight) {
                   // 设置src属性:
                   el.setAttribute('src', src);
                   // 删除对象
                   Array.prototype.splice.call(lazyImgs, i, 1);
                }
            }
        }
    };

    // 绑定事件
    window.onscroll = onScroll;

    // 手动触发一次, 因为页面显示时，并未触发scroll事件。
    onScroll();
}());
)
code(Var)
return

::clip::
Var = 
(
// https://codepen.io/SitePoint/pen/vNvEwE/
(function() {
  document.body.addEventListener('click', copy, true);
	function copy(e) {
	    var t = e.target, c = t.dataset.copytarget, inp = (c ? document.querySelector(c) : null); 
	    if (inp && inp.select) {
	      inp.select();
	      try {
	        document.execCommand('copy');
	        inp.blur();
	        t.classList.add('copied');
	        setTimeout(function() { t.classList.remove('copied'); }, 1500);
	      }
	      catch (err) {
	        alert('please press Ctrl/Cmd+C to copy');
	      }
	    }
	}
})();
)
code(Var)
return

::arrayeq::
::arrayequal::
Var = 
(
/**
 * 
 * @desc 判断两个数组是否相等
 * @param {Array} arr1 
 * @param {Array} arr2 
 * @return {Boolean}
 */
function arrayEqual(arr1, arr2) {
    if (arr1 === arr2) return true;
    if (arr1.length != arr2.length) return false;
    for (var i = 0; i < arr1.length; ++i) {
        if (arr1[i] !== arr2[i]) return false;
    }
    return true;
}
)
code(Var)
return

::getbrowser::
Var = 
(
/**
 * @desc 获取浏览器类型和版本
 * @return {String} 
 */
function getExplore() {
    var sys = {},
        ua = navigator.userAgent.toLowerCase(),
        s;
    (s = ua.match(/rv:([\d.]+)\) like gecko/)) ? sys.ie = s[1]: (s = ua.match(/msie ([\d\.]+)/)) ? sys.ie = s[1] : (s = ua.match(/edge\/([\d\.]+)/)) ? sys.edge = s[1] : (s = ua.match(/firefox\/([\d\.]+)/)) ? sys.firefox = s[1] : (s = ua.match(/(?:opera|opr).([\d\.]+)/)) ? sys.opera = s[1] : (s = ua.match(/chrome\/([\d\.]+)/)) ? sys.chrome = s[1] : (s = ua.match(/version\/([\d\.]+).*safari/)) ? sys.safari = s[1] : 0;
    // 根据关系进行判断
    if (sys.ie) return ('IE: ' + sys.ie)
    if (sys.edge) return ('EDGE: ' + sys.edge)
    if (sys.firefox) return ('Firefox: ' + sys.firefox)
    if (sys.chrome) return ('Chrome: ' + sys.chrome)
    if (sys.opera) return ('Opera: ' + sys.opera)
    if (sys.safari) return ('Safari: ' + sys.safari)
    return 'Unkonwn'
}
)
code(Var)
return

::getsys::
::getdev::
::getos::
Var = 
(
/**
 * @desc 获取操作系统类型
 * @return {String} 
 */
function getOS() {
    var userAgent = 'navigator' in window && 'userAgent' in navigator && navigator.userAgent.toLowerCase() || '';
    var vendor = 'navigator' in window && 'vendor' in navigator && navigator.vendor.toLowerCase() || '';
    var appVersion = 'navigator' in window && 'appVersion' in navigator && navigator.appVersion.toLowerCase() || '';
    if (/mac/i.test(appVersion)) return 'MacOSX'
    if (/win/i.test(appVersion)) return 'windows'
    if (/linux/i.test(appVersion)) return 'linux'
    if (/iphone/i.test(userAgent) || /ipad/i.test(userAgent) || /ipod/i.test(userAgent)) 'ios'
    if (/android/i.test(userAgent)) return 'android'
    if (/win/i.test(appVersion) && /phone/i.test(userAgent)) return 'windowsPhone'
}
)
code(Var)
return

::getkeyname::
Var = 
(
 keyCodeMap = {8: 'Backspace', 9: 'Tab', 13: 'Enter', 16: 'Shift', 17: 'Ctrl', 18: 'Alt', 19: 'Pause', 20: 'Caps Lock', 27: 'Escape', 32: 'Space', 33: 'Page Up', 34: 'Page Down', 35: 'End', 36: 'Home', 37: 'Left', 38: 'Up', 39: 'Right', 40: 'Down', 42: 'Print Screen', 45: 'Insert', 46: 'Delete', 48: '0', 49: '1', 50: '2', 51: '3', 52: '4', 53: '5', 54: '6', 55: '7', 56: '8', 57: '9', 65: 'A', 66: 'B', 67: 'C', 68: 'D', 69: 'E', 70: 'F', 71: 'G', 72: 'H', 73: 'I', 74: 'J', 75: 'K', 76: 'L', 77: 'M', 78: 'N', 79: 'O', 80: 'P', 81: 'Q', 82: 'R', 83: 'S', 84: 'T', 85: 'U', 86: 'V', 87: 'W', 88: 'X', 89: 'Y', 90: 'Z', 91: 'Windows', 93: 'Right Click', 96: 'Numpad 0', 97: 'Numpad 1', 98: 'Numpad 2', 99: 'Numpad 3', 100: 'Numpad 4', 101: 'Numpad 5', 102: 'Numpad 6', 103: 'Numpad 7', 104: 'Numpad 8', 105: 'Numpad 9', 106: 'Numpad *', 107: 'Numpad +', 109: 'Numpad -', 110: 'Numpad .', 111: 'Numpad /', 112: 'F1', 113: 'F2', 114: 'F3', 115: 'F4', 116: 'F5', 117: 'F6', 118: 'F7', 119: 'F8', 120: 'F9', 121: 'F10', 122: 'F11', 123: 'F12', 144: 'Num Lock', 145: 'Scroll Lock', 182: 'My Computer', 183: 'My Calculator', 186: ';', 187: '=', 188: ',', 189: '-', 190: '.', 191: '/', 192: '`', 219: '[', 220: '\\', 221: ']', 222: '\''};
 /**
 * @desc 根据keycode获得键名
 * @param  {Number} keycode 
 * @return {String}
 */
 function getKeyName(keycode) {
     if (keyCodeMap[keycode]) {
         return keyCodeMap[keycode];
     }
     else {
         console.log('Unknow Key(Key Code:' + keycode + ')');
         return '';
     }
 };
)
code(Var)
return

::moneybig::
::daxiemoney::
::moneydaxie::
Var = 
(
/**
 * 
 * @desc   现金额转大写
 * @param  {Number} n 
 * @return {String}
 */
function digitUppercase(n) {
    var fraction = ['角', '分'];
    var digit = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
    var unit = [['元', '万', '亿'], ['', '拾', '佰', '仟']];
    var head = n < 0 ? '欠' : '';
    n = Math.abs(n);
    var s = '';
    for (var i = 0; i < fraction.length; i++) {
        s += (digit[Math.floor(n * 10 * Math.pow(10, i)) `% 10] + fraction[i]).replace(/零./, '');
    }
    s = s || '整';
    n = Math.floor(n);
    for (var i = 0; i < unit[0].length && n > 0; i++) {
        var p = '';
        for (var j = 0; j < unit[1].length && n > 0; j++) {
            p = digit[n `% 10] + unit[1][j] + p;
            n = Math.floor(n / 10);
        }
        s = p.replace(/(零.)*零$/, '').replace(/^$/, '零') + unit[0][i] + s;
    }
    return head + s.replace(/(零.)*零元/, '元').replace(/(零.)+/g, '零').replace(/^整$/, '零元整');
};
)
code(Var)
return

::passtime::
Var = 
(
/**
 * @desc   格式化${startTime}距现在的已过时间
 * @param  {Date} startTime 
 * @return {String}
 */
function formatPassTime(startTime) {
    var currentTime = Date.parse(new Date()),
        time = currentTime - startTime,
        day = parseInt(time / (1000 * 60 * 60 * 24)),
        hour = parseInt(time / (1000 * 60 * 60)),
        min = parseInt(time / (1000 * 60)),
        month = parseInt(day / 30),
        year = parseInt(month / 12);
    if (year) return year + "年前"
    if (month) return month + "个月前"
    if (day) return day + "天前"
    if (hour) return hour + "小时前"
    if (min) return min + "分钟前"
    else return '刚刚'
}
)
code(Var)
return

::endtime::
Var = 
(
/**
 * 
 * @desc   格式化现在距${endTime}的剩余时间
 * @param  {Date} endTime  
 * @return {String}
 */
function formatRemainTime(endTime) {
    var startDate = new Date();
    //开始时间
    var endDate = new Date(endTime);
    //结束时间
    var t = endDate.getTime() - startDate.getTime();
    //时间差
    var d = 0,
        h = 0,
        m = 0,
        s = 0;
    if (t >= 0) {
        d = Math.floor(t / 1000 / 3600 / 24);
        h = Math.floor(t / 1000 / 60 / 60 `% 24);
        m = Math.floor(t / 1000 / 60 `% 60);
        s = Math.floor(t / 1000 `% 60);
    }
    return d + "天 " + h + "小时 " + m + "分钟 " + s + "秒";
}
)
code(Var)
return

::url2obj::
::geturlparamsobj::
Var = 
(
/**
 * 
 * @desc   url参数转对象
 * @param  {String} url  default: window.location.href
 * @return {Object} 
 */
function parseQueryString(url) {
    url = url == null ? window.location.href : url
    var search = url.substring(url.lastIndexOf('?') + 1)
    if (!search) {
        return {}
    }
    return JSON.parse('{"' + decodeURIComponent(search).replace(/"/ g, '\\"').replace(/&/ g, '","').replace(/=/ g, '":"') + '"}')
}
)
code(Var)
return


::geturlparams::
Var = 
(
 /**
 * @func
 * @desc - 从url地址中根据参数获取指定的值
 * @param {string} name - 参数
 * @param {string} url - url
 */
var getUrlParam = function (name, url) {
    if (!url) url = location.href;
    var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
    var returnValue;
    for (var i = 0; i < paraString.length; i++) {
        var tempParas = paraString[i].split('=')[0];
        var parasValue = paraString[i].split('=')[1];
        if (tempParas === name)
            returnValue = parasValue;
    }
    if (!returnValue) {
        return "";
    } else {
        if (returnValue.indexOf("#") != -1) {
            returnValue = returnValue.split("#")[0];
        }
        return returnValue;
    }
}
)
code(Var)
return

::obj2form::
Var = 
(
/**
 * 
 * @desc   对象序列化
 * @param  {Object} obj 
 * @return {String}
 */
function stringfyQueryString(obj) {
    if (!obj) return '';
    var pairs = [];
    for (var key in obj) {
        var value = obj[key];
        if (value instanceof Array) {
            for (var i = 0; i < value.length; ++i) {
                pairs.push(encodeURIComponent(key + '[' + i + ']') + '=' + encodeURIComponent(value[i]));
            }
            continue;
        }
        pairs.push(encodeURIComponent(key) + '=' + encodeURIComponent(obj[key]));
    }
    return pairs.join('&');
}
)
code(Var)
return

::date100::
Var = 
(
/**
 * 获取100天后的日子
 * 用来做计划是极好的
 */
var d = new Date() 
d.setDate(d.getDate() + 100)
console.log(d.getFullYear() + '-' + (d.getMonth() + 1) + '-' + d.getDate())
)
code(Var)
return

::jsonp::
Var = 
(
/**
 * @func
 * @desc jsonp的基本使用函数
 * @params {object} urlObj
 * @params {string} urlObj.url - jsonp的请求地址
 * @params {string} urlObj.jsonpCallback - jsonp的回调函数命名
 * @params {function} callback - 要执行的回调函数
 */
function jsonp(urlObj, callback) {
    let url = urlObj.url;
    let callbackName = urlObj.jsonpCallback;

    // 先定义一个全局函数，供jsonp调用
    window[callbackName] = function(data) {
        window[callbackName] = undefined;
        document.body.removeChild(script);
        callback(data);
    };

    // jsonp的原理，插入一个script标签，并且执行上面的全局函数
    let script = document.createElement('script');
    script.src = url;
    document.body.appendChild(script);
}
)
code(Var)
return

::cachemethod::
::cachefunc::
::cachefunction::
::memoized::
Var = 
(
const memoized = fn => {
	const lookupTable = {};
	// setInterval( () => console.log(lookupTable) , 1000); // 可以通过解释这个来观察缓存的变化
	return arg => lookupTable[arg] || (lookupTable[arg] = fn(arg));
}

// 阶乘的demo
let fastFactorial = memoized(n => {
	if (n === 0) {
		return 1;
	}
	// 这是一个递归，并且每一次递归都具有缓存过程
	return n * fastFactorial(n -1);
});

fastFactorial(5)
)
code(Var)
return

::$map::
Var = 
(
const map = (array, fn) => {
	let results = []
	for (const value of array) 
	    results.push(fn(value))
	return results;
}
)
code(Var)
return

::$filter::
Var = 
(
const filter = (array, fn) => {
	let results = []
 	for (const value of array) 
       (fn(value)) ? results.push(value) : undefined;   	   
	return results
}
)
code(Var)
return