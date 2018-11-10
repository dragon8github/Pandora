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
    Menu, utilsIs, Add, is-ie, utilsHandler
    Menu, utilsIs, Add, isBottom 是否滚动到底部, utilsHandler
    
    
    Menu, utilsMenu , Add, is 判断, :utilsIs
    Menu, utilsMenu, Add, deepcopy, utilsHandler
    Menu, utilsMenu, Add, unique 数组去重复, utilsHandler
    Menu, utilsMenu, Add, getuuid, utilsHandler
    Menu, utilsMenu, Add, pad, utilsHandler
    

    Menu, utilsMenu, Add, , utilsHandler
    Menu, utilsMenu, Add, , utilsHandler
 
    Menu, utilsMenu, Add, addClass, utilsHandler
    Menu, utilsMenu, Add, hasClass, utilsHandler
    Menu, utilsMenu, Add, removeclass , utilsHandler
    Menu, utilsMenu, Add, getclassname, utilsHandler
    Menu, utilsMenu, Add, getstyle, utilsHandler
    Menu, utilsMenu, Add, setStyle, utilsHandler
    
    Menu, utilsMenu, Add, , utilsHandler
    Menu, utilsMenu, Add, , utilsHandler
    
    Menu, utilsMenu, Add, device 获取设备信息, utilsHandler
    Menu, utilsMenu, Add, lazyload 图片懒加载, utilsHandler
    Menu, utilsMenu, Add, preloadimg 图片预加载, utilsHandler
    Menu, utilsMenu, Add, escapeHTML 防止XSS, utilsHandler
    Menu, utilsMenu, Add, stopevent 阻止事件冒泡, utilsHandler
    Menu, utilsMenu, Add, addcss/link 样式加载器, utilsHandler
    Menu, utilsMenu, Add, ClickOutside 点击外部冒泡, utilsHandler
    Menu, utilsMenu, Add, getElementPosition 获取元素的定位, utilsHandler
    Menu, utilsMenu, Add, gettop 获取距离顶部的相对距离, utilsHandler
    Menu, utilsMenu, Add, scrollToTop 滚动到头部, utilsHandler
    Menu, utilsMenu, Add, scrollIntoView 滚动到元素可视区域, utilsHandler
    
    
    Menu, utilsMenu, Add, , utilsHandler
	Menu, utilsMenu, Add, , utilsHandler
    
    
    
    Menu, utilsMenu, Add, poll 递归, utilsHandler
    Menu, utilsMenu, Add, maybe 神奇的预设函数, utilsHandler
    Menu, utilsMenu, Add, copyToClipboard 剪切板, utilsHandler
    Menu, utilsMenu, Add, rem 解决方案, utilsHandler
    Menu, utilsMenu, Add, countDown 倒计时, utilsHandler
    Menu, utilsMenu, Add, cookie 库, utilsHandler
    Menu, utilsMenu, Add, debounce 函数去抖, utilsHandler
    Menu, utilsMenu, Add, throttle 函数节流, utilsHandler
    Menu, utilsMenu, Add, Model 类, utilsHandler
    

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

if (v == "Model 类") {
Var = 
(
import { getUUID } from '@/utils/utils.js'

export default class Model {
	constructor (name, age) {
		// 核心数据
		this.data = null
		// token
		this.token = ''
		// 是否加载中
		this.loading = false
		// 是否数据为空
		this.empty = false
		// 是否正在加载更多
		this.loadingmore = false
		// 是否没有更多了
		this.nomore = false
		// 总数
		this.total = 0
		// 页码
		this.page = 0
		// 数量
		this.size = 20
		// 是否报错了
		this.error = ''
	}

	// 重置
  resetWhere () {
	  this.token = ''
	  this.loading = false
	  this.empty = false
	  this.loadingmore = false
	  this.nomore = false
	  this.total = 0
	  this.page = 0
	  this.size = 20
	  this.error = ''
  }

  // 显示loading并且返回token
  showLoading () {
    this.loading = true
  }

  // 显示loadingmore并且返回token
  showLoadingmore () {
    this.loadingmore = true
  }

  // 隐藏loading
  hideLoading () {
    this.loading = false
  }

  // 隐藏Loadingmore
  hideLoadingmore () {
    this.loadingmore = false
  }

  // 页码++
  pagePlus () {
	  this.page++
  }

  // 是否是第一次加载
  isFirstPage () {
    return this.page === 0
  }

  // 刷新token并且返回token
  refreshToken () {
    return this.token = getUUID()
  }

  // 设置data以及一系列逻辑
  setData ({ data = [], total = 0, token = '' } = {}) {
    // 如果token不一致，说明请求被覆盖了。应该中止逻辑演变
    if (token && this.token != token) return

    this.total = total
    this.loading = false
    this.loadingmore = false
    
    const isEmptyData = data.length === 0

    // empty 表示没有数据
    if (this.isFirstPage() && isEmptyData) 
      this.empty = true
    
    // nomore 表示没有更多数据
    if (data.length < this.size || (!this.isFirstPage() && isEmptyData)) 
      this.nomore = true
    
    if (!isEmptyData) {
      this.empty = false
      this.nomore = false
    }


    if (this.isFirstPage())
      this.data = data
    else
      this.data = Array.prototype.concat.call(this.data || [], data)
  }
}
)
}

if (v == "scrollIntoView 滚动到元素可视区域") {
Var = 
(
document.querySelector(".loadingmore").scrollIntoView();
)
}

if (v == "throttle 函数节流") {
Var = 
(

// 函数节流（throttle）
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

// demo
var fn = (data) => console.log(20180926160742, data);
// leading 为 true时，第一次执行立即触发，这比setTimeout好多了
// trailing 为 fasle时，不会触发最后一次。这样比较符合直觉。
const fn2 = throttle(fn, 3000, { leading: true, trailing: false });
fn2(123) // 请手动不停的执行这个函数
)
}

if (v == "debounce 函数去抖") {
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
}

if (v == "is-ie") {
Var = 
(
(function(){ //ie版本
    var agent = navigator.userAgent.toLowerCase();
    return (!!window.ActiveXObject || "ActiveXObject" in window) ? (
      (agent.match(/msie\s(\d+)/) || [])[1] || '11' //由于ie11并没有msie的标识
    `) : false;
}())
)
}

if (v == "cookie 库") {
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
}

if (v == "countDown 倒计时") {
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
}

if (v == "rem 解决方案") {
Var = 
(
/*
 (function flexible (window, document) {
   var docEl = document.documentElement
   // set 1rem = viewWidth / 10
   function setRemUnit () {
     var rem = docEl.clientWidth / 10
     docEl.style.fontSize = rem + 'px'
   }
   setRemUnit()
   // reset rem unit on page resize
   window.addEventListener('resize', setRemUnit)
   window.addEventListener('pageshow', function (e) {
     if (e.persisted) {
       setRemUnit()
     }
   })
 }(window, document))
*/

// rem 单位换算：定为 75px 只是方便运算，750px-75px、640-64px、1080px-108px，1920-192如此类推
$vw_fontsize: 75; // iPhone 6尺寸的根元素大小基准值
@function rem($px) {
    @return ($px / $vw_fontsize ) * 1rem;
}

// 根元素大小使用 vw 单位
$vw_design: 750;
html {
    font-size: ($vw_fontsize / ($vw_design / 2)) * 100vw;
    // 同时，通过Media Queries 限制根元素最大最小值
    @media screen and (max-width: 320px) {
        font-size: 64px;
    }
    @media screen and (min-width: 540px) {
        font-size: 108px;
    }
}
// body 也增加最大最小宽度限制，避免默认100`%宽度的 block 元素跟随 body 而过大过小
body {
    max-width: 540px;
    min-width: 320px;
}
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

if (v == "escapeHTML 防止XSS") {
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

const preLoadImages = (imgs) => {
  var imgWrap = [];
  imgs.forEach(function (path) {
       new Image().src = path;
  });
}
preLoadImages(['./bg.png', './bg2.png'])
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
Object.prototype.toString.call(String) === '[object String]'
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



if (v == "gettop 获取距离顶部的相对距离") {
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

if (v == "scrollToTop 滚动到头部") {
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

if (v == "getElementPosition 获取元素的定位") {
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