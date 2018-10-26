!u::
    Menu, utilsMenu, Add, isString, utilsHandler
    Menu, utilsMenu, Add, isNumber, utilsHandler
    Menu, utilsMenu, Add, isBoolean, utilsHandler
    Menu, utilsMenu, Add, isArray, utilsHandler
    Menu, utilsMenu, Add, isObject, utilsHandler
	Menu, utilsMenu, Add, isPureObject, utilsHandler
    Menu, utilsMenu, Add, isFunction, utilsHandler
	Menu, utilsMenu, Add, isDate, utilsHandler
    Menu, utilsMenu, Add, isPromise, utilsHandler
	Menu, utilsMenu, Add, isNaN, utilsHandler

    Menu, utilsMenu, Add, , utilsHandler
    Menu, utilsMenu, Add, , utilsHandler
    
    Menu, utilsMenu, Add, isZH-Cn, utilsHandler
    Menu, utilsMenu, Add, isIp, utilsHandler
    Menu, utilsMenu, Add, isPhone, utilsHandler
    Menu, utilsMenu, Add, isPwd, utilsHandler
    Menu, utilsMenu, Add, isUser, utilsHandler
    Menu, utilsMenu, Add, isId, utilsHandler
    Menu, utilsMenu, Add, isEmail, utilsHandler

	Menu, utilsMenu, Add, , utilsHandler
	Menu, utilsMenu, Add, , utilsHandler

	Menu, utilsMenu, Add, deepcopy, utilsHandler
	Menu, utilsMenu, Add, getElementPosition, utilsHandler
	Menu, utilsMenu, Add, unique, utilsHandler
	Menu, utilsMenu, Add, getuuid, utilsHandler
    Menu, utilsMenu, Add, pad, utilsHandler

	Menu, utilsMenu, Add, , utilsHandler
	Menu, utilsMenu, Add, , utilsHandler

	Menu, utilsMenu, Add, addClass, utilsHandler
	Menu, utilsMenu, Add, removeclass , utilsHandler
	Menu, utilsMenu, Add, getclassname, utilsHandler
	Menu, utilsMenu, Add, setStyle, utilsHandler
	Menu, utilsMenu, Add, hasClass, utilsHandler
    Menu, utilsMenu, Add, gettop, utilsHandler
    Menu, utilsMenu, Add, scrollToTop, utilsHandler
    
    Menu, utilsMenu, Add, , utilsHandler
	Menu, utilsMenu, Add, , utilsHandler
    
    Menu, utilsMenu, Add, isBottom是否滚动到底部, utilsHandler

	Menu, utilsMenu, Show
	Menu, utilsMenu, DeleteAll
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


if (v == "isBottom是否滚动到底部") {
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

if (v == "unique") {
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