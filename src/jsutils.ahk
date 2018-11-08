!u::
!i::
    Menu, utilsIs, Add, isString, utilsHandler
    Menu, utilsIs, Add, isNumber, utilsHandler
    Menu, utilsIs, Add, isBoolean, utilsHandler
    Menu, utilsIs, Add, isArray, utilsHandler
    Menu, utilsIs, Add, isObject, utilsHandler
    Menu, utilsIs, Add, isPureObject, utilsHandler
    Menu, utilsIs, Add, isFunction, utilsHandler
    Menu, utilsIs, Add, isDate, utilsHandler
    Menu, utilsIs, Add, isPromise, utilsHandler
    Menu, utilsIs, Add, isNaN, utilsHandler

    Menu, utilsIs, Add, , utilsHandler
    Menu, utilsIs, Add, , utilsHandler

    Menu, utilsIs, Add, isZH-Cn, utilsHandler
    Menu, utilsIs, Add, isIp, utilsHandler
    Menu, utilsIs, Add, isPhone, utilsHandler
    Menu, utilsIs, Add, isPwd, utilsHandler
    Menu, utilsIs, Add, isUser, utilsHandler
    Menu, utilsIs, Add, isId, utilsHandler
    Menu, utilsIs, Add, isEmail, utilsHandler
    Menu, utilsIs, Add, is-wx, utilsHandler
    
    Menu, utilsMenu , Add, is 判断, :utilsIs
	Menu, utilsMenu, Add, deepcopy, utilsHandler
	Menu, utilsMenu, Add, unique 数组去重复, utilsHandler
	Menu, utilsMenu, Add, getuuid, utilsHandler
    Menu, utilsMenu, Add, pad, utilsHandler

	Menu, utilsMenu, Add, , utilsHandler
	Menu, utilsMenu, Add, , utilsHandler

	Menu, utilsMenu, Add, addClass, utilsHandler
	Menu, utilsMenu, Add, removeclass , utilsHandler
	Menu, utilsMenu, Add, getclassname, utilsHandler
    Menu, utilsMenu, Add, getstyle, utilsHandler
	Menu, utilsMenu, Add, setStyle, utilsHandler
	Menu, utilsMenu, Add, hasClass, utilsHandler
    Menu, utilsMenu, Add, getElementPosition, utilsHandler
    Menu, utilsMenu, Add, gettop, utilsHandler
    Menu, utilsMenu, Add, scrollToTop, utilsHandler
    
    Menu, utilsMenu, Add, , utilsHandler
	Menu, utilsMenu, Add, , utilsHandler
    
    Menu, utilsMenu, Add, isBottom 是否滚动到底部, utilsHandler
    Menu, utilsMenu, Add, device 获取设备信息, utilsHandler
    Menu, utilsMenu, Add, preloadimg 图片预加载, utilsHandler
    Menu, utilsMenu, Add, escape 防止XSS, utilsHandler
    Menu, utilsMenu, Add, poll 递归, utilsHandler
    Menu, utilsMenu, Add, stopevent 阻止事件冒泡, utilsHandler
    Menu, utilsMenu, Add, addcss/link 样式加载器, utilsHandler
    Menu, utilsMenu, Add, ClickOutside 点击外部冒泡, utilsHandler
    Menu, utilsMenu, Add, maybe 神奇的预设函数, utilsHandler
    Menu, utilsMenu, Add, copyToClipboard 剪切板, utilsHandler
    Menu, utilsMenu, Add, lazyload 图片懒加载, utilsHandler
    
    

	Menu, utilsMenu, Show
	Menu, utilsMenu, DeleteAll
    Menu, utilsIs, DeleteAll
return


utilsHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=


if (v == "") {
Var = 
(
)
}

if (v == "lazyload 图片懒加载") {
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
}

if (v == "copyToClipboard 剪切板") {
Var = 
(
// 剪切板
export const copyToClipboard = (text, cb) => {
    if(text.indexOf('-') !== -1) {
        let arr = text.split('-');
        text = arr[0] + arr[1];
    }
    var textArea = document.createElement("textarea");
      textArea.style.position = 'fixed';
      textArea.style.top = '0';
      textArea.style.left = '0';
      textArea.style.width = '2em';
      textArea.style.height = '2em';
      textArea.style.padding = '0';
      textArea.style.border = 'none';
      textArea.style.outline = 'none';
      textArea.style.boxShadow = 'none';
      textArea.style.background = 'transparent';
      textArea.value = text;
      document.body.appendChild(textArea);
      textArea.select();

      try {
        var successful = document.execCommand('copy');
        cb && cb()
      } catch (err) {
        console.log('该浏览器不支持点击复制到剪贴板');
      }
      document.body.removeChild(textArea);
}
)
}

if (v == "maybe 神奇的预设函数") {
Var = 
(
const maybe = (fn, n = '') => {
   try {
      const result = fn()
      return (result && result === result && result !== 'NaN' && result !== 'Invalid date') ? result : n
   } catch (err) {
      return n
   }
}

var obj = {
 a: 123
}
maybe(_=> obj.a, 0); // 123
maybe(_=> obj.b, 0); // 0
maybe(_=> obj.a.b.s.w.holy.shit.fuck.god, 0); // 0
)
}

if (v == "ClickOutside点 击外部冒泡") {
Var = 
(
handle = e => {
  const el = this.container
  // 核心: el.contains()，这里的el就是弹窗本身，换句话就是inSide
  if (el && !el.contains(e.target)) onClickOutside(e)
}
)
}

if (v == "addcss/link 样式加载器") {
Var = 
(
var link = function(href, fn, cssname){
	var that = this
	,link = doc.createElement('link')
	,head = doc.getElementsByTagName('head')[0];

	if(typeof fn === 'string') cssname = fn;

	var app = (cssname || href).replace(/\.|\//g, '')
	,id = link.id = 'layuicss-'+app
	,timeout = 0
	,time = 10;

	link.rel = 'stylesheet';
	link.href = href + (config.debug ? '?v='+new Date().getTime() : '');
	link.media = 'all';

	if(!doc.getElementById(id)){
	  head.appendChild(link);
	}

	if(typeof fn !== 'function') return that;

	//轮询css是否加载完毕
	(function poll() {
	  if(++timeout > time * 1000 / 100){
	    return error(href + ' timeout');
	  };
	  <这里写上你的条件> ? fn() : setTimeout(poll, 100);
	}());

	return that;
};

var addcss = function(firename, fn, cssname){
	return link(config.dir + 'css/' + firename, fn, cssname);
};
)
}

if (v == "getstyle") {
Var = 
(
getComputedStyle(el)[ruleName];
)
}

if (v == "stopevent 阻止事件冒泡") {
Var = 
(
var stope = function(thisEvent){
  thisEvent = thisEvent || window.event;
  try { thisEvent.stopPropagation() } catch(e){
    thisEvent.cancelBubble = true;
  }
};
)
}

if (v == "is-wx") {
Var = 
(
var is_weixn = function () {
    var ua = navigator.userAgent.toLowerCase();
    if(ua.match(/MicroMessenger/i)=="micromessenger") {
        return true;
    } else {
        return false;
    }
}
)
}

if (v == "poll 递归") {
Var = 
(
// layui的递归
var maxTimeout = 10
var timeout = 0
var wait = 4
var onCallback = () => { /* say somthing */ }
(function poll() {
  if(++timeout > maxTimeout * 1000 / wait){
    return error('条件不成立时，在这里写上你的错误提示');
  };
  <这里写上你的判断> ? onCallback() : setTimeout(poll, wait);
}());
)
}

if (v == "escape 防止XSS") {
Var = 
(
var escape = function(html){
  return String(html || '').replace(/&(?!#?[a-zA-Z0-9]+;)/g, '&amp;')
  .replace(/</g, '&lt;').replace(/>/g, '&gt;')
  .replace(/'/g, '&#39;').replace(/"/g, '&quot;');
}
)
}

if (v == "preloadimg 图片预加载") {
Var = 
(
var perloadimg = function(url, callback, error) {
    var img = new Image();
    img.src = url;
    if(img.complete){
      return callback(img);
    }
    img.onload = function(){
      img.onload = null;
      typeof callback === 'function' && callback(img);
    };
    img.onerror = function(e){
      img.onerror = null;
      typeof error === 'function' && error(e);
    };
};
)
}

if (v == "device 获取设备信息") {
Var = 
(
var device = function(key){
  var agent = navigator.userAgent.toLowerCase()

  //获取版本号
  ,getVersion = function(label){
    var exp = new RegExp(label + '/([^\\s\\_\\-]+)');
    label = (agent.match(exp)||[])[1];
    return label || false;
  }
  
  //返回结果集
  ,result = {
    os: function(){ //底层操作系统
      if(/windows/.test(agent)){
        return 'windows';
      } else if(/linux/.test(agent)){
        return 'linux';
      } else if(/iphone|ipod|ipad|ios/.test(agent)){
        return 'ios';
      } else if(/mac/.test(agent)){
        return 'mac';
      } 
    }()
    ,ie: function(){ //ie版本
      return (!!window.ActiveXObject || "ActiveXObject" in window) ? (
        (agent.match(/msie\s(\d+)/) || [])[1] || '11' //由于ie11并没有msie的标识
      `) : false;
    }()
    ,weixin: getVersion('micromessenger')  //是否微信
  };
  
  //任意的key
  if(key && !result[key]){
    result[key] = getVersion(key);
  }
  
  //移动设备
  result.android = /android/.test(agent);
  result.ios = result.os === 'ios';
  
  return result;
};
)
}

if (v == "isBottom 是否滚动到底部") {
Var = 
(
let scrollHandle = (el) => {
	// 如果已经滚到底部了
	if (el.scrollHeight - el.scrollTop === el.clientHeight) {
		console.log(123)
	}
}

// 懒加载优化：滚动节流策略
let __SCROLLTIMER__ = null
// 绑定滚动事件
$('.dgtable__warp').scroll(e => {
    clearTimeout(__SCROLLTIMER__);
    __SCROLLTIMER__ = setTimeout(_ => scrollHandle(e), 150);
})
)
}


if (v == "isString") {
Var = 
(
SendRaw, Object.prototype.toString.call(String) === '[object String]'
)
}
if (v == "isBoolean") {
Var = 
(
Object.prototype.toString.call(Boolean) === '[object Boolean]'
)
}
if (v == "isZH-Cn") {
Var = 
(
if (!/^[\u4e00-\u9fa5]+$/.test('李钊鸿')) {
      throw new Error('请输入中文汉字')
}
)
}
if (v == "isIp") {
Var = 
(
body.match(/\d\.\d\.\d\.\d:\d/g);
)
}
if (v == "isPhone") {
Var = 
(
/^([0-9]{3,4}-)?[0-9]{7,8}$/.test(s)
/^[1][3,4,5,7,8][0-9]{9}$/.test(s)
/^1\d{10}$/.test(s)
/^((1)3(\d){9}$)|(^(1)4[5-9](\d){8}$)|(^(1)5[^4]{9}$)|(^(1)66(\d){8}$)|(^(1)7[0-8](\d){8}$)|(^(1)8(\d){9}$)|(^(1)9[8-9](\d){8}$)/.test(16961121989)
)
}
if (v == "isPwd") {
Var = 
(
/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/.test('123456a@') // 必须同时包含数字和字母,支持非法符号
)
}
if (v == "isUser") {
Var = 
(
 /^[a-zA-Z0-9-_]*$/.test('') // 由6-16位数字、 字母、 '_'、 '-'组成，不含特殊字符
)
}
if (v == "isId") {
Var = 
(
if (!/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/.test('445222199307100337')){
    throw new Error('非法身份证')
}
)
}
if (v == "isEmail") {
Var = 
(
)
}

if (v == "isZH-Cn") {
Var = 
(
if (!/^[\u4e00-\u9fa5]+$/.test('李钊鸿')) {
      throw new Error('请输入中文汉字')
}
)
}



if (v == "gettop") {
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
}

if (v == "scrollToTop") {
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
}


if (v == "pad") {
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
}

if (v == "isArray") {
Var = 
(
export default function isArray(input) {
    return input instanceof Array || Object.prototype.toString.call(input) === '[object Array]';
}
)
}

if (v == "isDate") {
Var = 
(
export default function isDate(input) {
    return input instanceof Date || Object.prototype.toString.call(input) === '[object Date]';
}
)
}

if (v == "isFunction") {
Var = 
(
export default function isFunction(input) {
    return input instanceof Function || Object.prototype.toString.call(input) === '[object Function]';
}
)
}

if (v == "isNumber") {
Var = 
(
export default function isNumber(input) {
    return typeof input === 'number' || Object.prototype.toString.call(input) === '[object Number]';
}
)
}

if (v == "isPureObject") {
Var = 
(
export default function isEmptyObject(obj) {
    if (Object.getOwnPropertyNames) {
        return (Object.getOwnPropertyNames(obj).length === 0);
    } else {
        var k;
        for (k in obj) {
            if (obj.hasOwnProperty(k)) {
                return false;
            }
        }
        return true;
    }
}
)
}

if (v == "isObject") {
Var = 
(
export default function isObject(input) {
    // IE8 will treat undefined and null as object if it wasn't for
    // input != null
    return input != null && Object.prototype.toString.call(input) === '[object Object]';
}

)
}

if (v == "isPromise") {
Var = 
(
export function isPromise (val) {
  return val && typeof val.then === 'function'
}
)
}

if (v == "isNaN") {
Var = 
(
function isNaN(obj) {
    return obj !== obj
}
)
}

if (v == "deepcopy") {
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
}

if (v == "getElementPosition") {
Var = 
(
function getElementPosition (el: Element, offset: Object): Object {
  const docEl: any = document.documentElement
  const docRect = docEl.getBoundingClientRect()
  const elRect = el.getBoundingClientRect()
  return {
    x: elRect.left - docRect.left - offset.x,
    y: elRect.top - docRect.top - offset.y
  }
}
)
}

if (v == "unique 数组去重复") {
Var = 
(
var unique = function (arr) {
    var hash = {},
        i = arr.length,
        key, res = []
    while (i--) {
        key = arr[i]
        if (hash[key]) continue
        hash[key] = 1
        res.unshift(key)
    }
    return res
}

/**
 * es6： return Array.from(new Set(arr));
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
}

if (v == "getuuid") {
Var = 
(
function getUUID () {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
    return (c === 'x' ? (Math.random() * 16 | 0) : ('r&0x3' | '0x8')).toString(16)
  })
}
)
}

if (v == "addClass") {
Var = 
(
export const addClass = (el, cls) => {
        if (el.classList) {
            el.classList.add(cls)
        } else {
            var cur = ' ' + utils.getClassName(el) + ' '
            if (cur.indexOf(' ' + cls + ' ') < 0) {
                el.setAttribute('class', (cur + cls).trim())
            }
        }
    }
)
}

if (v == "removeclass") {
Var = 
(
export const removeClass = (el, cls) => {
        if (el.classList) {
            el.classList.remove(cls)
        } else {
            var cur = ' ' + utils.getClassName(el) + ' ',
                tar = ' ' + cls + ' '
            while (cur.indexOf(tar) >= 0) {
                cur = cur.replace(tar, ' ')
            }
            el.setAttribute('class', cur.trim())
        }
    }
)
}

if (v == "getclassname") {
Var = 
(
export const getClassName = (el) => {
        return (el.className instanceof SVGAnimatedString ? el.className.baseVal : el.className)
    }
)
}

if (v == "setStyle") {
Var = 
(
export const setStyle = (element, styleName, value) => {
    if (!element || !styleName) return;

    if (typeof styleName === 'object') {
        for (var prop in styleName) {
            if (styleName.hasOwnProperty(prop)) {
                setStyle(element, prop, styleName[prop]);
            }
        }
    } else {
        styleName = camelCase(styleName);
        if (styleName === 'opacity' && ieVersion < 9) {
            element.style.filter = isNaN(value) ? '' : 'alpha(opacity=' + value * 100 + ')';
        } else {
            element.style[styleName] = value;
        }
    }
};
)
}


code(Var)
return