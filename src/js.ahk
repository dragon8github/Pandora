::class.toggle::
::classtoggle::
::class-toggle::
Var =
(
// 如果你曾经通过 if 条件语句为元素添加 class，那就应该赶紧改用这种做法。
// 正确的方式是为 toggle 方法传入第二个参数，如果该参数返回 true ，则指定的 class 就会添加至元素上。
el.classList.toggle('some-orange-class', theme === 'orange');
)
code(Var)
return

::/plain::
::plain/::
    Send, text/plain
return

::toup::
::todaxie::
::toda::
    Send, toUpperCase()
return

::tolo::
::tolow::
::toxiaoxie::
::toxiao::
    Send, toLocaleLowerCase()
return

::err::
::iferr::
    Send, if (err) throw new Error(err.message);
return

::ph::
::place::
    Send, placeholder
return

::pup::
    Send, puppeteer
return

::gzhs::
::gz::
::const::
Var = 
(
constructor(props) {
    super(props)
}
)
code(Var)
return

::try::
Var = 
(
try {
    
} catch (err) {
    
}
)
code(Var)
return

::udf::
::undefin::
    Send, undefined
return

::activehtml::
Var = 
(
var hiddenProperty = 'hidden' in document ? 'hidden' : 
					'webkitHidden' in document ? 'webkitHidden' :
					'mozHidden' in document ? 'mozHidden' : 
					null;
var visibilityChangeEvent = hiddenProperty.replace(/hidden/i, 'visibilitychange');
var onVisibilityChange = function() {
    if (document[hiddenProperty]) {
        window.alert('页面非激活');
    } else {
        window.alert('页面激活')
    }
}
document.addEventListener(visibilityChangeEvent, onVisibilityChange);
)
code(Var)
return

::orderby::
Var = 
(
const orderBy = (arr, props, orders) =>
    [...arr].sort((a, b) =>
    props.reduce((acc, prop, i) => {
      if (acc === 0) {
        const [p1, p2] = orders && orders[i] === 'desc' ? [b[prop], a[prop]] : [a[prop], b[prop]];
        acc = p1 > p2 ? 1 : p1 < p2 ? -1 : 0;
      }
      return acc;
    }, 0));
const users = [{ name: 'fred', age: 48 }, { name: 'barney', age: 36 }, { name: 'fred', age: 40 }];
orderBy(users, ['name', 'age'], ['asc', 'desc']); // [{name: 'barney', age: 36}, {name: 'fred', age: 48}, {name: 'fred', age: 40}]
orderBy(users, ['name', 'age']); // [{name: 'barney', age: 36}, {name: 'fred', age: 40}, {name: 'fred', age: 48}]
)
code(Var)
return

::is::
Var = 
(
// https://github.com/Chalarangelo/30-seconds-of-code/blob/master/snippets/curry.md
const is = (type, val) => ![, null].includes(val) && val.constructor === type;
is(Array, [1]); // true
is(ArrayBuffer, new ArrayBuffer()); // true
is(Map, new Map()); // true
is(RegExp, /./g); // true
is(Set, new Set()); // true
is(WeakMap, new WeakMap()); // true
is(WeakSet, new WeakSet()); // true
is(String, ''); // true
is(String, new String('')); // true
is(Number, 1); // true
is(Number, new Number(1)); // true
is(Boolean, true); // true
is(Boolean, new Boolean(true)); // true
)
code(Var)
return

::uuid::
Var = 
(
const UUIDGeneratorBrowser = () =>
  ([1e7] + -1e3 + -4e3 + -8e3 + -1e11).replace(/[018]/g, c =>
    (c ^ (crypto.getRandomValues(new Uint8Array(1))[0] & (15 >> (c / 4)))).toString(16));
  UUIDGeneratorBrowser(); // '7982fcfe-5721-4632-bede-6000885be57d'
)
code(Var)
return

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
    Send, body.match(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:\d{1,4}/g); // 推荐使用exec可以拿到多个数组
return

::exec::
::regexp::
::regex::
::reg::
Var = 
(
var a = `[ 'PHPSESSID=sglvjui97o18bg6qsqobj77p86; path=/; HttpOnly' ]`;
/PHPSESSID=(.*?);/g.exec(a)
)
code(Var)
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
::$ready::
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
::iqj::
Var = 
(
var o = document.createElement('script');
o.src = 'https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js';
document.documentElement.appendChild(o); // console.log(jQuery.fn.jquery);
)
code(Var)
return

::myheight::
::fuckheight::
Var =
(
/*
- 可视高度 document.documentElement.clientHeight / widow.innerHeight
- 滚动高度 window.scrollY;
- 相对窗口的距离 el.getBoundingClientRect().top

height, innerheight, outerheight, outerheight 四大高度的区别：
1、height元素本身高度
2、innerheight包含padding的高度
3、outerheight包含padding、border的高度
4、outerheight（true）包含padding、border、margin的高度

offset 系列的意义：
offsetHeight/offsetWidth：获取对象的宽高，与style.widtht的区别是：若对象的宽度设定值为百分百宽度，无论页面变大或变小，style.width都返回此百分比；而offsetWidth则返回页面中对象的宽度值而不是百分比。
offsetLeft/offsetTop：表示当前元素对象相对于其定位元素的垂直/水平偏移量
*/
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
Var = 
(
var el = document.createElement("div");
el.id = "fuck";
var wraphtml = document.body.appendChild(el);
)
code(Var)
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

/*
::c::
Send, {Text}console.log('');
Send, {left 2}{click 2}

return

*/

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
::getparam::
::geturlparams::
::geturlparam::
Var = 
(
/**
 * @desc   从当前url中获取指定参数
 * @param  {String} name 参数
 * @return {String}
 */
var qy = function (name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return "";
};

/**
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

::req::
Var =
(
require('');
)
code(Var)
Send, {left 3}
return

AppsKey & d::
>^d::
Var =
(
debugger;
)
code(Var)
Return


AppsKey & c:: 
>^c:: 
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
console.log(%t%, )
)
code(Var)
Send, {left 1}
Return

::ret::
    Send, {text}return
Return 

::pro::
::prote::
Var =
(
prototype
)
code(Var)
return

::args::
Var =
(
arguments
)
code(Var)
Return

::getphone::
::getphonedata::
::getphoneinfo::
::guishudi::
Var =
(
/**
     * @func
     * @desc - 获取手机归属地信息
     * @param {string} phoneNo - 手机号码
     * @param {string} callback - 回调函数
     */
    var getPhoneData = function(phoneNo, callback) {
        $.ajax({
            url: 'http://tcc.taobao.com/cc/json/mobile_tel_segment.htm',
            type: 'get',
            data: {
                tel: phoneNo
            },
            success: function(result) {
                if (result) {
                    var _data = result.split('=')[1]
                    _data = _data.replace(/\s+/g, "").replace(/<\/?.+?>/g, "").replace(/[\r\n]/g, "").replace(/\'/g, '"').replace(/\:/g, '":').replace(/\,/g, ',"').replace('{', '{"')
                    var phoneData = JSON.parse(_data);
                    console.log(phoneData)
                    if (phoneData.catName === '中国移动') {
                        applyData.PhoneType = 1;
                    } else if (phoneData.catName === '中国联通') {
                        applyData.PhoneType = 2
                    } else if (phoneData.catName === '中国电信') {
                        applyData.PhoneType = 3
                    } else {
                        applyData.PhoneType = 0
                    }
                    applyData.PhoneAddress = phoneData.province
                }
            },
            error: function(result) {
                console.info('无法获取手机归属地信息');
            },
            complete: function() {
                typeof callback === 'function' && submitApply();
            }
        })
    }
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

jsonpp
)
code(Var)
return

::json.p::
Var =
(
JSON.parse()
)
code(Var)
Send, {left}
Return

::jsons::
::json.s::
Var =
(
JSON.stringify()
)
code(Var)
Send, {left}
Return

::json/::
::/json::
Var =
(
application/json;charset=utf-8
)
code(Var)
Return

::/form::
Var =
(
application/x-www-form-urlencoded;charset=utf-8
)
code(Var)
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
setTimeout(() => {
        
}, 1000);
)
code(Var)
SendInput, {up}{tab}
Return

::setti::
::seti::
Var = 
(
setInterval(() => {
    
}, 1000);
)
code(Var)
SendInput, {up}{tab}
Return

::ctimer::
Var = 
(
var timer = setTimeout(() => {
    clearTimeout(timer);
}, 1000);
)
code(Var)
Return

::ctimeri::
Var = 
(
var timer = setInterval(() => {
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
// Array.form
[...document.querySelectorAll('#content_left .result')].forEach(function (e, i) {
     console.log(i, e);
});
)
code(Var)
Return

!-::
Var = 
(
_ => {}
)
code(Var)
Send, {left 1}
return

!=::
!.::
Var = 
(
=> {}
)
code(Var)
Send, {left 1}
return

!9::
!0::
Var = 
(
() => {}
)
code(Var)
Send, {left 1}
return
::dg::
Var =
(
document.getElementById('')
)
code(Var)
Send, {left 2}
Return

::ds::
Var =
(
document.querySelectorAll('')
)
code(Var)
Send, {left 2}
Return

::dsa::
::dss::
Var =
(
document.querySelector('')
)
code(Var)
Send, {left 2}
return

::dgt::
Var =
(
document.getElementsByTagName('')
)
code(Var)
Send, {left 2} 
return

::dgc::
Var =
(
document.getElementsByClassName('')
)
code(Var)
Send, {left 2} 
return

::dgn::
Var =
(
document.getElementsByName('')
)
code(Var)
Send, {left 2} 
return

::.then::
Var =
(
.then(data => { }).catch(err => { throw new Error(err.message) });
)
code(Var)
Send, {left 50}{enter 2}{up}{tab}
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
::today::
Var = 
(
var date = new Date();
var year = date.getFullYear();
var month = date.getMonth() + 1;
var day = date.getDate();
var hours = date.getHours();
var minu = date.getMinutes();
var second = date.getSeconds(); 
var arr = [month, day, hours, minu, second];
arr.forEach((item, index) => { arr[index] = item < 10 ? "0" + item : item; }) // 判断是否满10 
console.log(year + '-' + arr[0] + '-' + arr[1] + ' ' + arr[2] + ':' + arr[3] + ':' + arr[4])
)
code(Var)
return

::cdate::
	SendInput, var mydate = new Date(time.replace(/\-/g, "/"))`;
Return

::date.year::
::date.y::
	SendInput, new Date().getFullYear()
Return

::date.month::
::date.m::
	SendInput, new Date().getMonth() {+} 1
Return

::date.day::
::date.d::
	SendInput, new Date().getDate()
Return

::date.hour::
::date.h::
	SendInput, new Date().getHours()
Return

::date.mm::
	SendInput, new Date().getMinutes()
Return

::date.ss::
::date.s::
	SendInput, new Date().getSeconds()
Return

::$create::
    SendInput, 
(
var wrap = document.createElement("div");
var first = document.body.firstChild;
var wraphtml = document.body.insertBefore(wrap,first);
)
Return

::randomcolor::
::randcolor::
::suijiyanse::
Var =
(
fillStyle: 'rgba(' + ~~(Math.random() * 255) + ', ' + ~~(Math.random() * 255) + ', ' + ~~(Math.random() * 255) + ', 0.8)',
)
code(Var)
return

::feifafuhao::
Var =
(
let n = s.toString().replace(/[\`~!@#$^&*()=\-\|{}':;'\\,\[\].<>\?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]/g, '')
)
code(Var)
return

::rand::
::random::
Var =
(
// ~~(0 + Math.random() * 51) // 0-50
// parseInt(Math.random() * 5) // 0-4 
parseInt(Math.random() * 10 + 1);  // 获取 1 - 10 到随机数
)
code(Var)
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

::is-ip::
    SendRaw, body.match(/\d\.\d\.\d\.\d:\d/g);
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
::scrollToTop::
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
// es6
const scrollToTop = () => {
  const c = document.documentElement.scrollTop || document.body.scrollTop;
  if (c > 0) {
    window.requestAnimationFrame(scrollToTop);
    window.scrollTo(0, c - c / 8);
  }
};
)
code(Var)
Return

::unique::
::norepeat::
Var = 
(
/**
 * 只能用于数组
 * 如果是 es6 推荐： return Array.from(new Set(arr));
 * 补充： return [...new Set(arr)]
 */
function unique(arr) {
    var retArray = [];
    for (var i = 0; i < arr.length; i++) {
       !~retArray.indexOf(arr[i]) && retArray.push(arr[i]);
    }
    return retArray;
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
::Arrsort::
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

::addjs::
::addscript::
::onscript::
::onscriptload::
::onscriptready::
::scriptread::
::scriptready::
::jsread::
::jsready::
::scriptok::
::jsok::
::jqok::
::jqready::
::jqueryready::
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
   console.log($('*').size())
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
::lazyload::
::lazyimg::
::lazyimage::
Var = 
(
/**
 * 图片懒加载
 * https://www.liaoxuefeng.com/article/00151045553343934ba3bb4ed684623b1bf00488231d88d000
 * <img src="https://loading.io/assets/img/ajax.gif" data-src="http://www.hongte.info/assets/images/banner2.jpg">
 * <div style="margin-top: 1000px;"></div>
 */
;(function(){
    // 获取包含data-src属性的img
    var lazyImgs = document.querySelectorAll('img[data-src]')
    // 将Node-List转化成数组类型
    lazyImgs = [].slice.apply(lazyImgs);
     // 定义事件函数
    var lazyload = function () {
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

    // 懒加载优化：滚动节流策略
    var __SCROLLTIMER__ = null
    // 绑定事件
    window.onscroll = function () {
        clearTimeout(__SCROLLTIMER__);
        __SCROLLTIMER__ = setTimeout(lazyload, 150);    
    }

    // 手动触发一次, 因为页面显示时，并未触发scroll事件。
    lazyload();
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

::looks_like_html::
::like_html::
::likehtml::
Var = 
(
 function looks_like_html(source) {
    // <foo> - looks like html
    // <!--\nalert('foo!');\n--> - doesn't look like html

    var trimmed = source.replace(/^[ \t\n\r]+/, '');
    var comment_mark = '<' + '!-' + '-';
    return (trimmed && (trimmed.substring(0, 1) === '<' && trimmed.substring(0, 4) !== comment_mark));
}
)
code(Var)
return

::getproxylist::
Var = 
(
function getProxyList() {
    // http://www.66ip.cn/nm.html
    var apiURL = 'http://www.66ip.cn/nmtq.php?getnum=100&isp=0&anonymoustype=0&start=&ports=&export=&ipaddress=&area=0&proxytype=0&api=66ip';
    return new Promise((resolve, reject) => {
        var options = {
            method: 'GET',
            url: apiURL,
            gzip: true,
            encoding: null,
            headers: {
                'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
                'Accept-Encoding': 'gzip, deflate',
                'Accept-Language': 'zh-CN,zh;q=0.8,en;q=0.6,zh-TW;q=0.4',
                'User-Agent': 'Mozilla/8.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',
                'referer': 'http://www.66ip.cn/'
            },
        };
        request(options, function (error, response, body) {
            try {
                if (error) throw error;
                if (/meta.*(charset=gb2312|charset=GBK)/.test(body)) {
                    body = iconv.decode(body, 'gbk');
                }
                var ret = body.match(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:\d{1,4}/g);
                resolve(ret);
            } catch (e) {
                return reject(e);
            }
        });
    })
}

getProxyList().then(function (proxyList) {
    proxyList.forEach(function (proxyurl) {
        request({
            method: 'GET',
            url: 'http://ip.chinaz.com/getip.aspx',
            timeout: 30000,
            encoding: null,
            proxy: 'http://' + proxyurl
        }, function (err, _res, body) {
            if (err) {
                console.error("fail", err.message) 
            } else {
                try {
                    // 将 buffer 转化为字符串
                    body = body.toString();
                    // 序列化
                    body = eval('(' + body + ')')
                    console.log("success", body.address, proxyurl);
                } catch(err) {
                    console.log('fail page');
                } 
            }
        })
    });
}).catch(e => {
    console.log(e);
})

)
code(Var)
return

::return promise::
::new promise::
::promise::
Var = 
(
return new Promise((resolve, reject) => {
   setTimeout(function () {
        resolve('success') // reject('fail')
   }, 1000);
})
)
code(Var)
return

::maopao::
::maopaopaixu::
Var = 
(
// 冒泡排序 O(N^2 )
// 待排序的数组
var arr = [8, 5,5,3,2]

// 最外部的循环其实没什么参与什么作为。
// 至于为什么要-1 其实很容易理解。因为最后一次的时候是不需要与自己比较的。所以绕过了
// 当然你减不减好像也没什么区别。只是减少次数来优化罢了
for (var i = 0;i < arr.length - 1; i++) {
    // 重点想清楚这里为什么要-i。其实也很简单，每一次轮回，都会把最大（小）数塞到最后。
    // 所以下次就不必去比较最后一位了。同理，你减不减都无所谓。只是优化而已。但这个优化的幅度比较大
    for (var j = 0; j < arr.length - i; j++) {
        // 这里的比大小判断决定排序是倒序还是正序
        if (arr[j] > arr[j+1]) {
            // 以下代码只是普通的交换变量逻辑。没什么好说的。
            // 如果真要说的话，只能说无论临时变量存储的是j的值还是j + 1的值都是可以的
            var temp = arr[j + 1]
            arr[j + 1] = arr[j]
            arr[j] = temp
　　　　　　　// [arr[j + 1], arr[j]] = [arr[j], arr[j + 1]] // ES6d的语法，可直接代替上面3行代码
        }
    }
}

console.log(arr)

/*
该排序法名为：冒泡排序法
思路而言几乎没有难点，人人都能理解。但真要动手写的时候，却总有写不出或者想不出的情况。
原因就在于没有多写，写完也要看看套路。
双重循环，以及那些可有可无的-1 和 -i
以及注意外层的循环没有参与计算的作为。只有内存的j循环进行了比较或交换而已
*/
)
code(Var)
return

::kuaisupaixu::
::fastpaixu::
Var = 
(
// 待排序的数组
var a = [8, 5,5,3,2, 11,35,23,9]

function quicksort (left_index, right_index) {
    // 异常情况
    if (left_index > right_index) return;

    // 基准数，其实就是把数组中最左边的数拿来判断没什么
    var temp = a[left_index];

    var i = left_index;
    var j = right_index;

    // 一直循环，直到它们碰面
    while (i != j) {
        // j哨兵由右往左前行，为了寻找比基准数小的值
        while (a[j] >= temp && i < j) j--;
        // i哨兵由左往右前行，为了寻找比基准数大的值
        while (a[i] <= temp && i < j) i++;

        // 这里重要的两点是：
        // 1、必须是右往左先走。
        // 2、i必须小于j。如果他们碰面的话（i===j）按照游戏规则必须停止前行。
        if (i < j) {
            var t = a[i];
            a[i] = a[j];
            a[j] = t;
        }
    }
    // 交换基准数和碰面的位置的数值
    a[left_index] = a[i]; // 其实这里a[i]或者a[j]都可以。 反正就是要和基准数交换位置。这也是本排序最关键的地方
    a[i] = temp;                

    // 递归继续同样的游戏规则,下面还是一样，用i和j都可以，反正他们碰面了位置是一样的
    quicksort(left_index, i - 1);
    quicksort(i+1, right_index);
}

quicksort(0, a.length - 1)

console.log(a)
)
code(Var)
return

::omit::
Var = 
(
// omit({ name: 'Benjy', age: 18 }, [ 'name' ]); // => { age: 18 }
function omit(obj, fields) {
  const shallowCopy = {
    ...obj,
  };
  for (let i = 0; i < fields.length; i++) {
    const key = fields[i];
    delete shallowCopy[key];
  }
  return shallowCopy;
}
)
code(Var)
return

::$cookie::
Var = 
(
/**
 * @desc  设置Cookie
 * @param {String} name
 * @param {String} value
 * @param {Number} expires
 */
function setCookie(name, value, expires) {
    var cookieString = name + "=" + escape(value);
    //判斷是否設置過期時間,0代表關閉瀏覽器時失效
    if (expires > 0) {
        var date = new Date();
        date.setTime(date.getTime() + expires * 1000);
        cookieString = cookieString + ";expires=" + date.toUTCString();
    }
    document.cookie=cookieString;
}

/**
 * @desc 根据name读取cookie
 * @param  {String} name
 * @return {String}
 */
function getCookie(name) {
    var arr = document.cookie.replace(/\s/g, "").split(';');
    for (var i = 0; i < arr.length; i++) {
        var tempArr = arr[i].split('=');
        if (tempArr[0] == name) {
            return decodeURIComponent(tempArr[1]);
        }
    }
    return '';
}

/**
 * @desc 根据name修改cookie
 * @param  {String} name
 * @param  {String} value
 * @param  {Number} expires 
 */
function editCookie(name, value, expires){
    var cookieString = name + "=" + escape(value);
    if (expires > 0) {
        var date = new Date();
        date.setTime(date.getTime() + expires * 1000);
        cookieString = cookieString + ";expires=" + date.toGMTString();
    }
    document.cookie = cookieString;
}

/**
 * @desc 根据name删除cookie
 * @param  {String} name
 */
function removeCookie(name) {
    // 设置已过期，系统会立刻删除cookie
    setCookie(name, '1', -1);
}
)
code(Var)
return

::daojishi::
::countdown::
Var = 
(
/**
 * 開始倒計時
 * http://candy.dragonvein.io/frontend/web/site/signup
 * @param {jQuery DOM} $dom
 * <input type='button' id='second' value = '獲取驗證碼 | Get SMS Code'/>
 */
$(function () {
	// 触发按钮
	$("#second").click(function () {
	    sendCode();
	});
	// 獲取cookie值
	v = getCookie("secondsremained_login") ? getCookie("secondsremained_login") : 0;
	if (v > 0) {
		 // 開始倒計時
	    countDown($("#second")); 
	}
})

function sendCode () {
	// 设置默认时间
	setCookie('secondsremained_login', '60', 60)
	// 開始倒計時
    countDown($("#second")); 
}

function countDown ($dom) {
	var countdown = getCookie('secondsremained_login') ? getCookie('secondsremained_login') : 0;
	(function settime () {
		if (countdown == 0) {
		    $dom.removeAttr('disabled');
		    $dom.val('獲取驗證碼 | Get SMS Code');
		    return;
		} else {
		    $dom.attr('disabled', true);
		    $dom.val(countdown + '秒後重發 | Waiting ' + countdown + 's');
		    countdown--;
		    editCookie('secondsremained_login', countdown, countdown + 1);
		}
		setTimeout(function() { settime($dom) },1000) //每1000毫秒執行壹次
	}());
}
)
code(Var)
return

::hanzi::
::maybe::
Var =
(
var MayBe = function (val) {
	this.value = val;
}

MayBe.of = function (val) {
	return new MayBe(val);
}

MayBe.prototype.isNothing = function () {
	return (this.value === null || this.value === undefined);
}

MayBe.prototype.map = function (fn) {
	return this.isNothing() ? MayBe.of(null) : MayBe.of(fn(this.value));
}

// demo1： MayBe?{value: "Mr. GOOGLE"}
MayBe.of('Google')
     .map(_ => _.toUpperCase())
     .map(_ => "Mr. " + _)

// demo2： MayBe?{value: null}
MayBe.of('Google')
     .map(_ => undefined)
     .map(_ => "Mr. " + _)
)
code(Var)
return

::gen::
::gen5::
::gensync::
::gen.sync::
Var =
(
let gen;

let getDataOne = () => {
	setTimeout(function () {
		gen.next('one')
	}, 1000);
}

let getDataTwo = () => {
	setTimeout(function () {
		gen.next('two')
	}, 1000);
}

function *main() {
	let dataone = yield getDataOne();
	let datatwo = yield getDataTwo();
	console.log(dataone, datatwo);
}

gen = main();
gen.next();  // {value: undefined, done: false}
// 1秒后输出： one two
)
code(Var)
return

::gen1::
Var =
(
function *gen() {
    return 'first generator';
}

// 有点类似类的实例化过程
let generatorResult = gen()

// 核心方法next
generatorResult.next() // {value: "first generator", done: true}

// Generator 如同一个序列：一旦序列中的值被消费，你就不能再次消费它。
generatorResult.next() // undefined
)
code(Var)
return

::gen2::
Var =
(
function *gen() {
    yield 'fitst';
    yield 'second';
    yield 'third';
}

let genResult = gen();
genResult.next().value // first
genResult.next().value // second
genResult.next().value // third
)
code(Var)
return

::gen3::
Var =
(
function *gen() {
    yield 'fitst';
    yield 'second';
    yield 'third';
}

for (const value of gen()) {
   console.log(value);
}

// fitst
// second
// third
)
code(Var)
return

::gen4::
Var =
(
function *gen() {
    var firstname = yield;
    var secondname = yield;
    console.log(firstname + secondname);
}

var genResult = gen()
genResult.next()
genResult.next('Mr. ')
genResult.next('Right') // Mr. Right

// 解释一下，由于yield可以理解为暂停器。
// 当第一次调用 next 时，代码将返回并且暂停于此：    var firstname = yield;
// 有趣的事情发生在第二次调用 next 时： genResult.next('Mr. ')。
// 此时我们向 next 调用传入了值！Generator将从上一次暂停中恢复，并且 yield将被 "Mr. " 替换。因此firstname的值变成'Mr. '
// 然后继续执行，而又遇到yield处再次暂停： genResult.next('Right')
// 第三次调用 next： genResult.next('Right') 
// 同前面一样，传入的 'Right' 将替换 yield，并在赋值完后继续执行。
// 由于没有yield了。所以正常执行了: genResult.next('Right') // Mr. Right
)
code(Var)
return

::curry::
Var =
(
// 科里化是把一个多参数函数转化为一个嵌套的一元函数的过程。
// 简单的说就是将函数的参数，变为多次入参。
const curry = (fn, ...args) => fn.length <= args.length ? fn(...args) : curry.bind(null, fn, ...args);
// 其实原理很容易看得懂，就是在参数未搜集完善之前，执行的都是 curry 函数本身，而curry函数核心目的就是在搜集原函数的参数的过程。这个过程就是靠bind来实现的搜集，结合...args的特性来迭代。rgs的特性来迭代。
// const multiply = (x, y, z) => x * y * z
// multiply.bind(null, 1, 2)(3) // 6
// 当搜集完成时，就可以执行原函数了。
  
const add = (x, y) => x + y;
const curryadd = curry(add);
curryadd(4)(4); // 8

const multiply = (x, y, z) => x * y * z
const currymultiply = curry(multiply);
currymultiply(1)(2)(3); // 6

)
code(Var)
return

::async::
::await::
Var =
(
class Person {
    async getVersion () {
        return new Promise((resolve, reject) => {
           setTimeout(function () {
                resolve('1.0'); // reject('fail')
           }, 1000);
        })
    }
}

const start = async () => {
   var p = new Person();
   const data = await p.getVersion();
   console.log(20180716090040, data); 
}

start(); // 20180716090040 "1.0"
)
code(Var)
return

::changan::
::longpress::
::longtap::
::longtouch::
::changtouch::
Var =
(
/**
 * 绑定长按事件，同时支持绑定点击事件
 * @param {dom} dom 需要绑定的dom元素
 * @param {fn} longPressCallBack 长按事件执行的方法
 * @param {fn} touchCallBack 点击事件执行的方法
 */
var longPress = function (dom, longPressCallBack, touchCallBack) {
	var timer = undefined;
	var isLongPress = false;

    var setEvent = function (e) {
          e.addEventListener('touchstart', function(event) {
              	timer = setTimeout(function () {
              	  isLongPress = true
	              longPressCallBack && longPressCallBack(e);
	            }, 500);
          }, false);

          e.addEventListener('touchmove', function(event) {
             	clearTimeout(timer);
          }, false);

          e.addEventListener('touchend', function(event) {
          		if (!isLongPress) touchCallBack && touchCallBack()
              	clearTimeout(timer); 
              	isLongPress = false;
          }, false);
    }

    if (dom.length) {
	    // 支持绑定多个元素
	  	for (var i = 0; i < dom.length; i++) {
	        setEvent(dom[i])
        }
    } else {
    	setEvent(dom)
    }
}

longPress(document.getElementById('longPress'), function () {
	console.log('longPress')
}, function () {
	console.log('touch');
});

[...document.querySelectorAll('.longPress')].forEach(function (e, i) {
    longPress(e, function () {
		console.log('longPress')
	}, function () {
		console.log('touch');
	});
});
)
code(Var)
return

::erfenfa::
::jserfenfa::
::jsbinary::
Var =
(
// var count = 4000000000
// var current = 2
// var time = 0
// while(!(current >= count)) {
// 	current = current * 2
// 	++time
// }
// console.log(`使用二分法计算${count}，最多只需要的： ${++time}次` )

// 使用二分法的前提是，必须是有序数组
var binary_search = function (list, target) {
	var low = 0
	var high = list.length

	while(!(low > high)) {
		var mid = parseInt((low + high) / 2)
		var guess = list[mid]
		if (guess === target) {
			return mid
		} else if (guess > target){
			high = mid - 1
		} else {
			low = mid + 1
		}
	}
	return null
}

console.log(binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5))
)
code(Var)
return

::jsstack::
::jszhan::
::jszhange::
::stack::
Var =
(
// 栈Sstack）：站着的书堆，后进先出
export default class Stack {
  constructor() {
    this.count = 0;
    this.items = {};
  }
  push(element) {
    this.items[this.count] = element;
    this.count++;
  }
  pop() {
    if (this.isEmpty()) {
      return undefined;
    }
    this.count--;
    const result = this.items[this.count];
    delete this.items[this.count];
    return result;
  }
  peek() {
    if (this.isEmpty()) {
      return undefined;
    }
    return this.items[this.count - 1];
  }
  isEmpty() {
    return this.count === 0;
  }
  size() {
    return this.count;
  }
  clear() {
    /* while (!this.isEmpty()) { this.pop();} */
    this.items = {};
    this.count = 0;
  }
  toString() {
    if (this.isEmpty()) {
      return '';
    }
    let objString = `${this.items[0]}`;
    for (let i = 1; i < this.count; i++) {
      objString = `${objString},${this.items[i]}`;
    }
    return objString;
  }
}
)
code(Var)
return

::jserjinzhi::
::erjinzhi::
Var =
(
function decimalToBinary(decNumber) {
  let remStack = [];
  let binaryString = '';

  while (decNumber > 0) {
    let rem = Math.floor(decNumber `% 2);
    remStack.push(rem);
    decNumber = Math.floor(decNumber / 2);
  }

  while (!(remStack.length === 0)) {
    binaryString += remStack.pop().toString();
  }

  return binaryString;
}
)
code(Var)
return

::jsqueue::
::queue::
Var =
(
// 队列，排队的中国人，先进先出
// 高级版：https://github.com/loiane/javascript-datastructures-algorithms/issues/25 | https://github.com/trekhleb/javascript-algorithms/blob/master/src/data-structures/queue/Queue.js
export default class Queue {
  constructor() {
    this.items = []
  }
  // 向尾部添加书籍
  enqueue(element) {
    this.items.push(element)
  }
  // 移出队列第一位
  dequeue() {
    this.items.shift();
  }
  // 查看第一位
  front() {
    return this.items[0];
  }

  isEmpty() {
    return this.items.length === 0;
  }

  size() {
    return this.items.length
  }

  print() {
    console.log(this.item.toString())
  }
}
)
code(Var)
return

::jsjinzhi::
::jinzhizhuanhuan::
::jsjinzhizhuanhuan::
Var =
(
function baseConverter(decNumber, base) {
  const remStack = [];
  const digits = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  let baseString = '';

  if (!(base >= 2 && base <= 36)) {
    return '';
  }

  while (decNumber > 0) {
    let rem = Math.floor(decNumber `% base);
    remStack.push(rem);
    decNumber = Math.floor(decNumber / base);
  }

  while (!(remStack.length === 0)) {
    baseString += digits[remStack.pop()];
  }

  return baseString;
}
)
code(Var)
return

::jsquicksort::
::jsfastsort::
::jskuaisupaixu::
::kuaisupaixu::
::jssort::
Var =
(
// 快速排序
const quicksort = array => {
	// 这不是废话吗？如果数组中只有1个成员或没有成员，那还排个屁序！！
	if (array.length <= 1) 
		return array
	else {
		// 随机选出一个作为排序对比时的【基准数】，这里就取第一个好了最简单了
		const pivot = array.shift()
		// 将比基准数小的放在一个数组中
		const less = array.filter(_ => _ <= pivot)
		// 把基准数大的放在另外一个数组中
		const greater = array.filter(_ => _ > pivot)
		// 这就是快速排序的精华所在:递归, 然后把三个数据合并
		return [...quicksort(less), pivot, ...quicksort(greater)]
	}
}

console.log(quicksort([10, 5, 2, 3])) // [2, 3, 5, 10]
)
code(Var)
return

::hanshujieliu::
::throttle::
Var =
(
// 函数节流（throttle）：让函数在指定的时间段内周期性地间断执行
var throttle = function(func, wait, options) {
    var timeout, context, args, result;
    // 标记时间戳
    var previous = 0;
    // options可选属性 leading: true/false 表示第一次事件马上触发回调/等待wait时间后触发
    // options可选属性 trailing: true/false 表示最后一次回调触发/最后一次回调不触发
    if (!options) options = {};

    var later = function() {
      previous = options.leading === false ? 0 : +(new Date());
      timeout = null;
      result = func.apply(context, args);
      if (!timeout) context = args = null;
    };

    var throttled = function() {
      // 记录当前时间戳
      var now = +(new Date());
      // 如果是第一次触发且选项设置不立即执行回调
      if (!previous && options.leading === false)
      // 将记录的上次执行的时间戳置为当前
      previous = now;
      // 距离下次触发回调还需等待的时间
      var remaining = wait - (now - previous);
      context = this;
      args = arguments;

      // 等待时间 <= 0或者不科学地 > wait（异常情况）
      if (remaining <= 0 || remaining > wait) {
        if (timeout) {
            // 清除定时器
          clearTimeout(timeout);
          // 解除引用
          timeout = null;
        }
        // 将记录的上次执行的时间戳置为当前
        previous = now;

        // 触发回调
        result = func.apply(context, args);
        if (!timeout) context = args = null;
      }
      // 在定时器不存在且选项设置最后一次触发需要执行回调的情况下
      // 设置定时器，间隔remaining时间后执行later
      else if (!timeout && options.trailing !== false)    {
        timeout = setTimeout(later, remaining);
      }
     return result;
    };

    throttled.cancel = function() {
      clearTimeout(timeout);
      previous = 0;
      timeout = context = args = null;
    };

    return throttled;
};
)
code(Var)
return


::hanshuqudou::
::debounce::
Var =
(

// 函数去抖（debounce）：让函数只有在过完一段时间后再执行，并且该段时间内不被调用才会被执行
var debounce = function(func, wait, immediate) {
    var timeout, result;

     // 定时器设置的回调，清除定时器，执行回调函数func
    var later = function(context, args) {
      timeout = null;
      if (args) result = func.apply(context, args);
    };

    var restArgs = function(func, startIndex) {
      startIndex = startIndex == null ? func.length - 1 : +startIndex;
      return function() {
        var length = Math.max(arguments.length - startIndex, 0);
        var rest = Array(length);
        for (var index = 0; index < length; index++) {
          rest[index] = arguments[index + startIndex];
        }
        switch (startIndex) {
          case 0: return func.call(this, rest);
          case 1: return func.call(this, arguments[0], rest);
          case 2: return func.call(this, arguments[0], arguments[1], rest);
        }
        var args = Array(startIndex + 1);
        for (index = 0; index < startIndex; index++) {
          args[index] = arguments[index];
        }
        args[startIndex] = rest;
        return func.apply(this, args);
      };
    };

    var delay = restArgs(function(func, wait, args) {
      return setTimeout(function(){
        return func.apply(null, args);
      }, wait);
    });

     // restArgs函数将传入的func的参数改造成Rest Parameters —— 一个参数数组
    var debounced = restArgs(function(args) {
      if (timeout) clearTimeout(timeout);
      if (immediate) {
        // 立即触发的条件：immediate为true且timeout为空
        var callNow = !timeout;
        timeout = setTimeout(later, wait);
        if (callNow) result = func.apply(this, args);
      } else {
        // _.delay方法实际上是setTimeout()包裹了一层参数处理的逻辑
        timeout = delay(later, wait, this, args);
      }

      return result;
    });

    debounced.cancel = function() {
      clearTimeout(timeout);
      timeout = null;
    };

    return debounced;
};
)
code(Var)
return