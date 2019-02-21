::singeajax::
::singajax::
::singeajax::
Var =
(

// 获取纯Url，不包含?后面的参数
var getPureUrl = url => {
    const index = url.indexOf('?')
    return url.substr(0, ~index ? index : url.length)
}

//（核心）以url相同作为重复条件，你可以根据自己的情况编写自己的重复条件
var SingleAjax = function () {
    // 缓存的队列
    var pending = [];

    // 返回单例模式ajax
    return function (opts) {
        // 获取纯Url（不包含?后面的参数）
        const pureUrl = getPureUrl(opts.url)
        // 中止队列中所有相同请求地址的xhr
        pending.forEach(_ => _.url === pureUrl && _.xhr.abort());
        // 获取 success 回调函数
        const _success = opts.success
        // 装饰成功回调函数
        opts.success = function (...rest) {
            // 从队列过滤掉已经成功的请求
            pending = pending.filter(_ => _.url != pureUrl)
            // 继续执行它的成功
            _success && _success(...rest)
        }
        // 移除所有中止的请求，并且将新的请求推入缓存
        pending = [...pending.filter(_ => _.url != pureUrl), { url: pureUrl, xhr: $.ajax(opts) }]
    }
}

// 生成单例ajax
var singleAjax = new SingleAjax()

for (var i = 0; i < 10; i++) {
    singleAjax({
        url: "http://localhost",
        success: function (data) {
            // 其实在成功之后，可以考虑扩展把成功的xhr从队列中移除，但其实也不影响。已经成功的xhr就算再次被执行abort也不会怎么样，更不会从200变成cannel状态，更不会触发error。
            console.log('请求成功', data);
        },
        error: function(e, m){
           console.log('数据接口请求异常（请放心这是正常现象，由于请求被中止，所以会回调error。只需要判断一下m === "abort" 即可，你还可以在 abort() 时在 _.xhr 中加入任意属性来判断深入判断）', e, m, m === "abort");
        }
    })
}
)
code(Var)
return

>^t::
::console.time::
::console.t::
::ctime::
::consolet::
::logtime::
::logt::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
// 启动计时器
console.time('20190219153729')

// your code...


// 停止计时，输出时间
console.timeEnd('20190219153729')
)
code(Var)
Send, {UP 3}
return

::autof::
::atf::
::autofix::
::autofixer::
::autoperfixer::
::autoprefixer::
::autoper::
::autopre::
Var =
(
autoprefixer
)
code(Var)
return

::oujilide::
Var =
(
/**
 * 欧几里得算法
 * 目标使土地分配最大化，不断让宽与高求余，直到整数倍为止。
 * @param {N} w 宽
 * @param {N} h 高
 */
var euclid = function (w, h) {
	// 获取基准线
	var benchmark = Math.max(w, h) `% Math.min(w, h)
	// 数据非法
	if (isNaN(benchmark)) {
		return 0
	// 如果是整数倍，说明满足条件
	} else if (benchmark == 0) {
		// 返回小的那个数就是了
		return Math.min(w, h)
	// 否则递归
	} else {
		return euclid(benchmark, Math.min(w, h))
	}
}

euclid(1680, 640)
)
code(Var)
return

::scrolltop::
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

// 有一些需要直接用scrollTop = 0来设置
document.querySelector(".page-loadmore-wrapper").scrollTop = 0
)
code(Var)
return

::timechunk::
Var =
(
var timeChunk = function ( ary, fn, count, wait) {
	var start = function () {
		// 每次循环count次数，如果长度不够count时，就取剩余长度。这是个不错的判断思维。用Main.min
		for (var i = 0; i < Math.min( count || 1, ary.length ); i++) {
			// 不断从数组取出内容进行操作
			var obj = ary.shift()
			fn(obj)
		}
	}

	return function () {
		var timer = setInterval(function () {
			if (ary.length === 0) {
				return clearInterval(timer);
			}
			start()
		}, wait || 200);
	}
}

var ary = [...Array(1000)].map((v, index, array) => index)

var render = timeChunk( ary, function ( n ) {
	var div = document.createElement('div')
	div.innerHTML = n;
	document.body.appendChild( div );
}, 8)

render();
)
code(Var)
return

::[]::
Var =
(
Array.prototype.
)
code(Var)
return

::singaxios::
::singleaxios::
::pedingaxios::
Var =
(
// 请求队列
let pending = []

// 获取纯Url，不包含?后面的参数
var getPureUrl = url => {
	const index = url.indexOf('?')
	return url.substr(0, ~index ? index : url.length)
}

// 请求拦截器
axios.interceptors.request.use(config => {
    // 获取纯Url（不包含?后面的参数）
    const pureUrl = getPureUrl(config.url)
    // 中止队列中所有相同请求地址的xhr
    pending.forEach(_ => _.url === pureUrl && _.cancel('repeat abort'));
    // 配置取消令牌
    config.cancelToken = new axios.CancelToken(cancel => {
       // 移除所有中止的请求，并且将新的请求推入缓存
       pending = [...pending.filter(_ => _.url != pureUrl), { url: pureUrl, cancel }]
    })
    return config
}, error => {
    return Promise.reject(error)
})

// 响应拦截器
axios.interceptors.response.use(res => {
  // 成功响应之后清空队列中所有相同Url的请求
  pending = pending.filter(_ => _.url != getPureUrl(res.config.url))
  // 返回 response
  return res
}, error => {
   return Promise.reject(error)
});

for (var i = 0; i < 10; i++) {
    axios({url: 'http://localhost'}).then(console.log).catch(_ => {
        if (_.message === 'repeat abort') return console.info(_.message)
        // other error handler...
        // something code...
        throw new Error(_.message)
    })
}
)
code(Var)
return

::singajax::
::singleajax::
::pedingajax::
Var =
(

// 获取纯Url，不包含?后面的参数
var getPureUrl = url => {
	const index = url.indexOf('?')
	return url.substr(0, ~index ? index : url.length)
}

//（核心）以url相同作为重复条件，你可以根据自己的情况编写自己的重复条件
var SingleAjax = function () {
    // 缓存的队列
    var pending = [];

    // 返回单例模式ajax
    return function (opts) {
    	// 获取纯Url（不包含?后面的参数）
    	const pureUrl = getPureUrl(opts.url)
        // 中止队列中所有相同请求地址的xhr
        pending.forEach(_ => _.url === pureUrl && _.xhr.abort());
        // 获取 success 回调函数
        const _success = opts.success
        // 装饰成功回调函数
        opts.success = function (...rest) {
        	// 从队列过滤掉已经成功的请求
        	pending = pending.filter(_ => _.url != pureUrl)
        	// 继续执行它的成功
        	_success && _success(...rest)
        }
        // 移除所有中止的请求，并且将新的请求推入缓存
        pending = [...pending.filter(_ => _.url != pureUrl), { url: pureUrl, xhr: $.ajax(opts) }]
    }
}

// 生成单例ajax
var singleAjax = new SingleAjax()

for (var i = 0; i < 10; i++) {
    singleAjax({
        url: "http://localhost",
        success: function (data) {
            // 其实在成功之后，可以考虑扩展把成功的xhr从队列中移除，但其实也不影响。已经成功的xhr就算再次被执行abort也不会怎么样，更不会从200变成cannel状态，更不会触发error。
            console.log('请求成功', data);
        },
        error: function(e, m){
           console.log('数据接口请求异常（请放心这是正常现象，由于请求被中止，所以会回调error。只需要判断一下m === "abort" 即可，你还可以在 abort() 时在 _.xhr 中加入任意属性来判断深入判断）', e, m, m === "abort");
        }
    })
}
)
code(Var)
return



::imgonload::
::imgload::
::imageonload::
Var =
(
//js
var pic = new Image()
pic.src = 'http://caibaojian.com/a/a3.png'
pic.onload = pic.onreadystatechange = function(){
	if(!this.readyState||this.readyState=='loaded'||this.readyState=='complete'){
	// 加载完成 
	}
};

//jquery
$('<img/>').attr('src', 'http://caibaojian.com/a/a3.png').on('load', function() {
   $(this).remove(); // 防止内存泄露
   //图片加载完毕
});
)
code(Var)
return

::mask::
Var =
(
var Mask = function (cb) {
	var div = document.createElement('div')
	div.style = 'background-color: rgba(255, 255, 255, 0.7);position: fixed; top: 0; right: 0; bottom: 0; left: 0; z-index: 199307100337; display:none;'
	div.addEventListener('click', cb)
	document.body.append(div)

	var img = new Image()
	img.src = "https://github.com/dragon8github/Pandora/blob/master/static/loading.gif?raw=true"
	img.style = 'position: absolute; top: 50`%; left: 50`%;'
	div.append(img)

	var show = function (showcb) {
		div.style.display = 'block'
		showcb && showcb()
	}

	var close = function (showcb) {
		div.style.display = 'none'
		showcb && showcb()
	}

	return { show, close }
}
const mask = new Mask()
mask.show()
mask.close()
)
code(Var)
return

::create::
::creatediv::
Var =
(
var div = document.createElement('div')
div.style = 'position: fixed; top: 0; right: 0; bottom: 0; left: 0; z-index: 199307100337; background-color: rgba(0,0,0,.3);'
// document.body.append(div)
document.body.insertBefore(div, document.body.firstChild)
)
code(Var)
return

::createimg::
::createimage::
::createimages::
Var =
(
var img = new Image()
img.src = "https://github.com/dragon8github/Pandora/blob/master/static/loading.gif?raw=true"
img.style = 'position: absolute; top: 50`%; left: 50`%;'
)
code(Var)
return

::ps::
::promise.s::
Var =
(
Promise.resolve('hello')
)
code(Var)
return

::nothtml::
::nohtml::
::filterhtml::
Var =
(
const s = ``<span style="font-size:14px"><span style="background-color:#ffffff"><span style="color:#0099ff"><span style="font-size:16px"><strong>会议背景</strong></span></span></span></span></p ><p><span style="color:#525252"><span style="font-size:14px"><span style="background-color:#ffffff">``;

const stripHTML = _ => _.replace(/<(?:.|\s)*?>/g, '');

stripHTML(s); // "会议背景"
)
code(Var)
return

::onunload::
::window.onunload::
Var =
(
/**
 * php代码示例：
 * <?php 
    header('Access-Control-Allow-Origin:*');

    function WriteLog($msg,$module = null,$logLevel = "DEBUG") {
        $filepath = "./log/";
        if(!is_dir($filepath)) mkdir($filepath,'0777');
        $MyLogFile = @fopen($filepath.date("Y-m-d").".txt",'a+');

        $time = date("Y-m-d H:i:s");
        if(isset($module)){$module =  sprintf("\r\n归属模块：".$module."\r\n");}
        $logLine = "\r\n-------------------------------  $time -------------------------------\r\n";
        $logLine .= $module;
        $logLine .= "\r\n异常信息：$msg\r\n";
        $logLine .= "\r\n错误等级：$logLevel\r\n";
        fwrite($MyLogFile,$logLine);
    }

    WriteLog("test");
 */
window.onunload = e => {
     var request = new XMLHttpRequest();
     request.open('GET', 'http://localhost/index.php?', false);
     request.send();
};
)
code(Var)
return

::stringtopath::
::string2path::
::strtopath::
::str2path::
Var =
(
//https://github.com/lodash/lodash/blob/master/.internal/stringToPath.js
// https://github.com/lodash/lodash/blob/master/.internal/baseGet.js
// https://github.com/lodash/lodash/blob/master/get.js
const charCodeOfDot = '.'.charCodeAt(0)
const reEscapeChar = /\\(\\)?/g
const rePropName = RegExp(
  // Match anything that isn't a dot or bracket.
  '[^.[\\]]+' + '|' +
  // Or match property names within brackets.
  '\\[(?:' +
    // Match a non-string expression.
    '([^"\'].*)' + '|' +
    // Or match strings (supports escaping characters).
    '(["\'])((?:(?!\\2)[^\\\\]|\\\\.)*?)\\2' +
  ')\\]'+ '|' +
  // Or match "" as the space between consecutive dots or empty brackets.
  '(?=(?:\\.|\\[\\])(?:\\.|\\[\\]|$))'
, 'g')

/**
 * Converts `string` to a property path array.
 *
 * @private
 * @param {string} string The string to convert.
 * @returns {Array} Returns the property path array.
 */
const stringToPath = (string) => {
  const result = []
  if (string.charCodeAt(0) === charCodeOfDot) {
    result.push('')
  }
  string.replace(rePropName, (match, expression, quote, subString) => {
    let key = match
    if (quote) {
      key = subString.replace(reEscapeChar, '$1')
    }
    else if (expression) {
      key = expression.trim()
    }
    result.push(key)
  })
  return result
}
)
code(Var)
return

/**
::root::
Var =
(
var root = typeof self == 'object' && self.self === self && self ||
            typeof global == 'object' && global.global === global && global ||
            this ||
            {};
)
code(Var)
return
*/

::yyyy::
Var =
(
yyyy-MM-dd HH:mm:ss
)
code(Var)
return

::chrome::
Var =
(
--args --disable-web-security --user-data-dir
)
code(Var)
return

::addstyles::
::addstyle::
::addcss::
::injectcss::
Var =
(
var styles = document.createElement('style')
styles.type = 'text/css'
document.getElementsByTagName('head')[0].appendChild(styles)
// 必须先插入再执行
styles.sheet.addRule('#app', 'background: red; width: 1000px;')

//////////////////////////////////////////////
//////////////////////////////////////////////

// 更推荐这种比较舒服的书写方式
var injectCss = function (css) {
    var style = document.createElement('style')
    style.type = 'text/css'
    if (style.styleSheet) {
        style.styleSheet.cssText = css
    } else {
        style.appendChild(document.createTextNode(css))
    }
    document.getElementsByTagName('head')[0].appendChild(style)
}
injectCss(``
#app {
  background: blue;
}
``)

)
code(Var)
return

::celue::
::js.celue::
::celuemoshi::
::celuemodel::
Var =
(
// JavaScript版 策略模式 解决计算薪资问题
var strategies = {
	'S': function ( salary ) {
		return salary * 4
	},
	'A': function ( salary ) {
		return salary * 3
	},
	'B': function ( salary ) {
		return salary * 2
	}
};

var calculateBonus = function ( level, salary ) {
	return strategies[ level ]( salary )
}

calculateBonus('S', 10000) // 40000
calculateBonus('B', 10000) // 20000
)
code(Var)
return

::fuckfor::
::bettermap::
::fuckm::
::objmap::
::anymap::
::fuckmap::
::mymap::
Var =
(
// 字符串判断
export const isString = (v) => Object.prototype.toString.call(v) === '[object String]'

// 数组判断
export const isArray = (input) => input instanceof Array || Object.prototype.toString.call(input) === '[object Array]'

// 对象判断
export const isObject = (input) => input != null && Object.prototype.toString.call(input) === '[object Object]'

// 仿 Array.prototype.map 函数。兼容数组、对象的遍历
export const betterMap = (v, cb) => {
    let result = []
    if (isArray(v) || isString(v)) {
        for (var i = 0; i < v.length; i++) {
            result.push(cb && cb(v[i], i, v, result))
        }
    }
    if (isObject(v)) {
        for (var k in v) {
            result.push(cb && cb(v[k], k, v, result))
        }
    }
    return result
}
)
code(Var)
return

::getscriptpath::
Var =
(
function getScriptPath() {
    var scripts = _doc.currentScript || (function () { var s = _doc.getElementsByTagName('script'); return (s.length) ? s[s.length - 1] : false; })();
    var path = scripts ? scripts.src.split('?')[0] : '';
    return (path.split('/').length > 0) ? path.split('/').slice(0, -1).join('/') + '/' : '';
  }
)
code(Var)
return

::dragscroll::
Var =
(
const dragScroll = el => {
    var _window = window,
        _document = document,
        mousemove = 'mousemove',
        mouseup = 'mouseup',
        mousedown = 'mousedown',
        EventListener = 'EventListener',
        addEventListener = 'add' + EventListener,
        removeEventListener = 'remove' + EventListener,
        newScrollX, newScrollY;

    (function(el, lastClientX, lastClientY, pushed, scroller, cont) {
        (cont = el.container || el)[addEventListener](
            mousedown,
            cont.md = function(e) {
                if (!el.hasAttribute('nochilddrag') ||
                    _document.elementFromPoint(
                        e.pageX, e.pageY
                    `) == cont
                `) {
                    pushed = 1;
                    lastClientX = e.clientX;
                    lastClientY = e.clientY;

                    e.preventDefault();
                }
            }, 0
        `);

        _window[addEventListener](
            mouseup, cont.mu = function() { pushed = 0; }, 0
        `);

        _window[addEventListener](
            mousemove,
            cont.mm = function(e) {
                if (pushed) {
                    (scroller = el.scroller || el).scrollLeft -=
                        newScrollX = (-lastClientX + (lastClientX = e.clientX));
                    scroller.scrollTop -=
                        newScrollY = (-lastClientY + (lastClientY = e.clientY));
                    if (el == _document.body) {
                        (scroller = _document.documentElement).scrollLeft -= newScrollX;
                        scroller.scrollTop -= newScrollY;
                    }
                }
            }, 0
        `);
    })(el);
}
)
code(Var)
return

::autoscroll::
::$.autoscroll::
Var =
(
$.fn.extend({
    'autoScroll': function (options) {
	    // 配置参数
	    var opt = $.extend({}, {speed: 1500, size: 4, height: 40, time: 10000}, options)
	    // jQuery对象
	    var $el = this;
	    // 时间器
	    var timer = null;
	    // 核心函数
	    var _autoScroll = function () {
	        // 自动滚动
	        timer =  setInterval(function () {
	            // 滚动的速度
	            const speed = opt.speed
	            // 每次滚动多少条
	            const size = opt.size;
	            // 每条的高度是多少
	            const height = opt.height;
	            // 每次滚动的距离
	            const distance = size * height;
	            // 当前滚动的高度
	            const currentScrollTop = $el.scrollTop()
	            // 底部位置
	            const bottom = $el.prop('scrollHeight') - $el.height()
	            // 如果已经滚到底了
	            if (Math.floor(currentScrollTop) === Math.floor(bottom)) {
	                // 滚回头部
                    // $el.animate({ scrollTop: 0 }, 0).animate({ scrollTop: distance + 'px' }, speed);
                    // 滚回头部
                    $el.animate({ scrollTop: 0 }, speed);
	            } else {
	                // 余数
	                const remainder = currentScrollTop `% height
	                // 下一次滚动的位置 = 当前位置 + 每次滚动的位置 - 余数
	                const nextScrollTop = currentScrollTop + distance - remainder
	                // 开始滚动
	                $el.animate({ scrollTop: nextScrollTop + 'px' }, speed);
	            }
	        // 滚动间隔
	        }, opt.time + opt.speed);
	        // 鼠标移入的时候，删除自动滚动, 鼠标移出的时候，自动滚动
	        $el.one('mouseover', function () { clearInterval(timer)}).one('mouseleave', _autoScroll)
	        // 将timer放入jQuery对象的缓存中，方便后续操作
	        $el.data('timer', timer)
	    }
	    // 开始滚动
	    _autoScroll()
	    // 返回时间器，方便后续操作
	    return timer
	},
	'stopScroll': function () {
	     // jQuery对象
	    var $el = this;
	    // 时间器
	    var timer = $el.data('timer')
	    // 消除它就是停止它（其实这里还需要结束动画，但就不做那么麻烦了）
	    clearInterval(timer);
	}
});

$('.trajectoryTable').autoScroll()
)
code(Var)
return

::window.animate::
::window.requestanimate::
::requestanimate::
::requestanimateframe::
::window.requestanimateframe::
Var =
(
window.requestAnimFrame = (function(){
    return  window.requestAnimationFrame       ||
            window.webkitRequestAnimationFrame ||
            window.mozRequestAnimationFrame    ||
            window.oRequestAnimationFrame      ||
            window.msRequestAnimationFrame     ||
            function(/* function */ callback, /* DOMElement */ element){
                window.setTimeout(callback, 1000 / 60);
            };
})();

window.cancelAnimationFrame=window.cancelAnimationFrame ||
	Window.webkitCancelAnimationFrame ||
	window.mozCancelAnimationFrame ||
	window.msCancelAnimationFrame ||
	window.oCancelAnimationFrame ||
	function( id ){
		//为了使setTimteout的尽可能的接近每秒60帧的效果
		window.clearTimeout( id );
	}
)
code(Var)
return


::jsuniqid::
::js.uniqid::
::uniqid::
Var =
(
function getUniqueID() {
    let id = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
        let r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
        return v.toString(16);
    });
    return id;
  }
)
code(Var)
return

::deepfine::
::deepfind::
Var =
(
const fuck = [{"label": "占用道路问题", "value": 31, "children": [{"label": "经营占道", "value": 35, "children": [{"label": "店外经营占道", "value": 40, "children": null }, {"label": "流动摊贩占道", "value": 41, "children": null } ] }, {"label": "垃圾占道", "value": 36, "children": [{"label": "生活垃圾", "value": 42, "children": null }, {"label": "建筑垃圾", "value": 43, "children": null }, {"label": "工业垃圾", "value": 44, "children": null } ] }, {"label": "车辆占道", "value": 37, "children": [{"label": "机动车占道", "value": 45, "children": null }, {"label": "非机动车占道", "value": 46, "children": null } ] }, {"label": "霸占车位", "value": 38, "children": [] }, {"label": "其他占道", "value": 39, "children": [] } ]}, {"label": "“两违”问题", "value": 32, "children": [{"label": "违法建筑", "value": 58, "children": [{"label": "房屋违建", "value": 61, "children": null }, {"label": "小区违建", "value": 62, "children": null }, {"label": "违建棚架", "value": 63, "children": null } ] }, {"label": "违法用地", "value": 59, "children": [] }, {"label": "其他违建", "value": 60, "children": [] } ] }, {"label": "市容设施管理问题", "value": 33, "children": [{"label": "道路损坏", "value": 47, "children": [] }, {"label": "垃圾桶损坏", "value": 48, "children": [] }, {"label": "下水道堵塞", "value": 49, "children": [] }, {"label": "井盖损坏", "value": 50, "children": [] }, {"label": "路灯损坏", "value": 51, "children": [] }, {"label": "树木修剪", "value": 52, "children": [] }, {"label": "水电气", "value": 53, "children": [] }, {"label": "户外广告牌", "value": 54, "children": [] }, {"label": "隔音屏损坏", "value": 55, "children": [] }, {"label": "洒水车问题", "value": 56, "children": [] }, {"label": "其他", "value": 57, "children": [] } ] }, {"label": "其他问题", "value": 34, "children": [] } ]

/**
 * 深度递归搜索
 * @param {Array} arr 你要搜索的数组
 * @param {Function} condition 回调函数，必须返回谓词，判断是否找到了。会传入(item, index, level)三个参数
 * @param {String} children 子数组的key
 */
const deepFind = (arr, condition, children) => {
    // 即将返回的数组
    let main = []

    // 用try方案方便直接中止所有递归的程序
    try {
        // 开始轮询
        (function poll(arr, level, cb) {
            // 如果传入非数组
            if (!Array.isArray(arr)) return

            // 遍历数组
            for (let i = 0; i < arr.length; i++) {
                // 获取当前项
                const item = arr[i]

                // 先占位预设值
                main[level] = item

                // 检验是否已经找到了
                const isFind = condition && condition(item, i, level) || false

                // 自杀函数
                const kill = () => {
	            	// 删除占位预设值
	                main.length = main.length - 1
	                // 触发回调
	                cb && cb()
                }

                // 如果已经找到了
                if (isFind) {
                    // 直接抛出错误中断所有轮询
                    throw Error
                // 如果存在children，那么深入递归
                } else if (children && item[children] && item[children].length) {
                    poll(item[children], level + 1, 
                    	// 如果本函数被触发，说明children还是找不到。
                    	() => {
                    	// 那么如果我是最后一条，那么我也自杀吧
                    	if (i === arr.length - 1) {
                    		kill()
                    	}
                    })
                // 如果是最后一个且没有找到值，那么通过修改数组长度来删除当前项
                } else if (i === arr.length - 1) {
	                // 找不到，羞愧自杀
	                kill()
                }
            }
        })(arr, 0)
    // 使用try/catch是为了中止所有轮询中的任务
    } catch (err) {}

    // 返回最终数组
    return main
}

let myarr = deepFind(fuck, (item, index, level) => item.value === 63, 'children')
console.log(20181115092957, myarr)  // [{…}, {…}, {…}]
console.log(20181115092957, myarr.map(_ => _.value)) // [32, 58, 63]
)
code(Var)
return

::compose::
::jszuhe::
::zuhe::
Var =
(
function compose () {
	let args = arguments
	let start = args.length - 1

	return function () {
		let i = start
		let result = args[start].apply(this, arguments)
		while (i--) 
			result = args[i].call(this, result)
		return result
	}
}

const explode = _ => _.split(/\s+/)
const count = _ => _.length
const countWords = compose(count, explode);
countWords(``a
			b
			c
			d``); // => 4
)
code(Var)
return

::cache.request::
::cache.axios::
::cacherequest::
::cacheaxios::
::js.request::
::jsrequest::
::es6.request::
Var =
(
// 检查状态码
const checkStatus = (response) => {
	// 判断请求状态
    if (response.status >= 200 && response.status < 300) {
        // 返回Promise 
        return response.data
    } else {
      // 服务器响应异常
      throw new Error(response.statusText)
    }
}

// 缓存到sessionStorage
const cachedSave = (hashcode, content) => {
  // 设置缓存
  sessionStorage.setItem(hashcode, JSON.stringify(content))
  // 设置缓存时间
  sessionStorage.setItem(`${hashcode}:timestamp`, Date.now())
  // 返回Promise
  return content
}

// 公共请求
export const request = (url, options) => {
    // 指纹
    const fingerprint = url + (options ? JSON.stringify(options) : '')
    // 加密指纹
    const hashcode = hash.sha256().update(fingerprint).digest('hex')
    // 预设值指纹
    const _cachedSave = cachedSave.bind(null, hashcode)
    // 过期设置
    const expirys = options && options.expirys || 60
    // 本请求是否禁止缓存？
    if (expirys !== false) {
        // 获取缓存
        const cached = sessionStorage.getItem(hashcode)
        // 获取该缓存的时间
        const whenCached = sessionStorage.getItem(`${hashcode}:timestamp`)
        // 如果缓存都存在
        if (cached !== null && whenCached !== null) {
          // 判断缓存是否过期
          const age = (Date.now() - whenCached) / 1000
          // 如果不过期的话直接返回该内容
          if (age < expirys) {
              // 新建一个response
              const response = new Response(new Blob([cached]))
              // 返回promise式的缓存
              return new Promise((resolve, reject) => resolve(response.json()))
          }
          // 删除缓存内容
          sessionStorage.removeItem(hashcode)
          // 删除缓存时间
          sessionStorage.removeItem(`${hashcode}:timestamp`)
        }
    }
    return axios(url, options).then(checkStatus).then(_cachedSave)
}
)
code(Var)
return


::removeattr::
Var =
(
document.querySelector('.fuck').removeAttribute('disabled');
)
code(Var)
return

::nodetree::
::treenode::
Var =
(
class Node {
	constructor(val) {
	    this._val = val
	    this._parent = null
	    this._children = []
	}

	isRoot () {
		return isValid(this._parent)
	}

	get children () {
		return this._children
	}

	hasChildren () {
		return this._children.length > 0
	}

	get value () {
		return this._val
	}

	set value (val) {
		this._val = val
	}

	append(child) {
		child._parent = this
		this._children.push(child)
		return this
	}

	toString() {
		return `Node (val: ${this._val}, children: ${this.children.length})`
	}
}

class Tree {
	constructor(root) {
	    this._root = root
	}

	static map(node, fn, tree = null) {
		node.value = fn(node.value)

		if (tree === null) 
			tree = new Tree(node)

		if (node.hasChildren()) {
			// 遍历子树
			node.children.map(child => {
				// 递归
				Tree.map(child, fn, tree)
			})
		}

		return tree
	}

	get root() {
		return this._root
	}
}

//////////////////////////////////////////////
const church = new Node('church')
const neleson = new Node('neleson')
const rosser = new Node('rosser')
const turing = new Node('turing')
const kleene = new Node('kleene')
const nelson = new Node('nelson')
const constable = new Node('constable')
const mendelson = new Node('mendelson')
const sacks = new Node('sacks')
const gandy = new Node('gandy')
//////////////////////////////////////////////

church.append(rosser).append(turing).append(kleene);
kleene.append(neleson).append(constable);
rosser.append(mendelson).append(sacks);
turing.append(gandy);
//////////////////////////////////////////////
church.toString()
Tree.map(church, p => p)
)
code(Var)
return


::createmodel::
::class.model::
::model.class::
::classmodel::
::modelclass::
::js.model::
::jsmodel::
::es.model::
::es6.model::
::class.model::
::model::
Var =
(
import { getUUID } from '@/utils/utils.js'

export default class Model {
	constructor ({ size = 20 } = {}) {
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
		this.size = this._size = size
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
	  this.size = this._size 
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
  setData ({ data = [], total = 0, token = ''} = {}, cb = null) {
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
    
    // 如果有数据，应该重置标识
    if (!isEmptyData) {
      this.empty = false
      // 就算有数据，如果不够长度，也是数据nomore
      if (data.length === this.size)
        this.nomore = false
    }

    if (this.isFirstPage())
      this.data = data
    else
      this.data = Array.prototype.concat.call(this.data || [], data)

    // 执行回调
    cb && cb(this)
  }
}
)
code(Var)
return

::link::
::addcss::
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
	;(function poll() {
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
code(Var)
return

::eventstop::
::stopevent::
::stope::
::e.stop::
Var =
(
event.preventDefault(); event.stopPropagation();

var stope = function(thisEvent){
  thisEvent = thisEvent || window.event;
  try { thisEvent.stopPropagation() } catch(e){
    thisEvent.cancelBubble = true;
  }
};
)
code(Var)

return

::device::
::shebeixinxi::
::shebei::
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
code(Var)
return

::preloadimg::
::loadimg::
::preload::
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
code(Var)
return

::escape::
::xss::
Var =
(
var escape = function(html){
  return String(html || '').replace(/&(?!#?[a-zA-Z0-9]+;)/g, '&amp;')
  .replace(/</g, '&lt;').replace(/>/g, '&gt;')
  .replace(/'/g, '&#39;').replace(/"/g, '&quot;');
}
)
code(Var)
return

::$.resize::
::jquery.resize::
::resize::
Var =
(
//监听 DOM 尺寸变化，该创意来自：http://benalman.com/projects/jquery-resize-plugin/
  !function(a,b,c){"$:nomunge";function l(){f=b[g](function(){d.each(function(){var b=a(this),c=b.width(),d=b.height(),e=a.data(this,i);(c!==e.w||d!==e.h)&&b.trigger(h,[e.w=c,e.h=d])}),l()},e[j])}var f,d=a([]),e=a.resize=a.extend(a.resize,{}),g="setTimeout",h="resize",i=h+"-special-event",j="delay",k="throttleWindow";e[j]=250,e[k]=!0,a.event.special[h]={setup:function(){if(!e[k]&&this[g])return!1;var b=a(this);d=d.add(b),a.data(this,i,{w:b.width(),h:b.height()}),1===d.length&&l()},teardown:function(){if(!e[k]&&this[g])return!1;var b=a(this);d=d.not(b),b.removeData(i),d.length||clearTimeout(f)},add:function(b){function f(b,e,f){var g=a(this),h=a.data(this,i)||{};h.w=e!==c?e:g.width(),h.h=f!==c?f:g.height(),d.apply(this,arguments)}if(!e[k]&&this[g])return!1;var d;return a.isFunction(b)?(d=b,f):(d=b.handler,b.handler=f,void 0)}}}($,window);
$(window).resize(function(e){
      console.log(123)
});
)
code(Var)
return

::poll::
Var =
(
// 递归
var maxTimeout = 10,
    timeout = 0,
    wait = 4, 
    callback = function() {
       // ... 这样写上条件成功时执行的内容
    };
(function poll() {
    if (++timeout > maxTimeout * 1000 / wait) {
        return window.alert('超时');
    };
    <这里写上你的判断> ? callback() : setTimeout(poll, wait);
}());


const poll = (conditionFn, callback, wait = 4, maxTimeout = 10, timeout = 0) => {
  // 请求是否超出阈值
  if (++timeout > maxTimeout * 1000 / wait) throw new Error('overtime')
  // 如果条件满足，那么执行，否则轮询
  conditionFn() ? callback() : setTimeout(() => {poll(conditionFn, callback, wait, maxTimeout, timeout) }, wait)
}

var i = 0;
poll(() => i === 1, () => {window.alert([20190209130827, 'ok'].join('  '));}) 
// i = 1
)
code(Var)
return

::clickoutsize::
::clickoutside::
Var =
(
import React, { Component } from 'react'
import PropTypes from 'prop-types'

export default class ClickOutside extends Component {
  static propTypes = {
    onClickOutside: PropTypes.func.isRequired
  }

  constructor(props) {
    super(props)
    this.getContainer = this.getContainer.bind(this)
    this.isTouch = false
  }

  getContainer(ref) {
    this.container = ref
  }

  render() {
    const { children, onClickOutside, ...props } = this.props
    return <div {...props} ref={this.getContainer}>{children}</div>
  }

  componentDidMount() {
    document.addEventListener('touchend', this.handle, true)
    document.addEventListener('click', this.handle, true)
  }

  componentWillUnmount() {
    document.removeEventListener('touchend', this.handle, true)
    document.removeEventListener('click', this.handle, true)
  }

  handle = e => {
    if (e.type === 'touchend') this.isTouch = true
    if (e.type === 'click' && this.isTouch) return
    const { onClickOutside } = this.props
    const el = this.container
    // 这一句代码就是核心: el.contains，这种思路是通用的
    if (el && !el.contains(e.target)) onClickOutside(e)
  }
}

)
code(Var)
return


::taobaojiejuefangan::
::flexiable::
::flexible::
::flexable::
::taobao::
Var =
(
//////////////////////////////////////////////
JavaScript
//////////////////////////////////////////////
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
//////////////////////////////////////////////
scss
//////////////////////////////////////////////
$root_fontsize: 192; // 因为效果图是1920 / 10
// $base-font-size: 75px; //design iphone6: 375px * 2 / 10 = 75px; --design
// $base-font-size: 32px; //design iphone3gs: 320px / 10 = 32px
// $base-font-size: 64px; //design iphone4/5: 320px * 2 / 10 = 64px
// $base-font-size: 124.2px; //design iphone6: 414px * 3 / 10 = 124.2px;
@function rem($px) {
    @return ($px / $root_fontsize ) * 1rem;
}
)
code(Var)
return

::setline::
::strline::
::getline::
::foreachstr::
::foreachline::
::forstr::
::forline::
Var =
(
var str = ''
temp1.forEach(function (e, i) {
   str += ${i+1} —— ${e} \r\n
});
console.log(str)
)
code(Var)
return

::js.private::
::js.priv::
::js.siyoubianl::
::js.siyoubianliang::
::js.mokuaimoshi::
Var =
(
//////////////////////////////////////////////
// 模块模式
//////////////////////////////////////////////
var person = (function(){
	var age = 25

	return {
		name: 'Lee',

		getAge: function () {
			return age
		},

		setAge: function () {
			age++
		}
	}
}());

console.log(person.name) // Lee
console.log(person.getAge()) // 25

person.age = 100 // hack try...
console.log(person.getAge()) // 25

//////////////////////////////////////////////
// 构造函数的私有变量
//////////////////////////////////////////////
function Person(name) {
	this.name = name
	var age = 18

	this.getAge = function () {
		return age
	}

	this.setAge = function () {
		age++
	}
}

var person = new Person('Lee')
console.log(person.name) // Lee
console.log(person.getAge()) // 18

person.age = 100 // hack try...
Person.age = 100 // hack try...
console.log(person.getAge()) // 18
)
code(Var)
return

::.attr::
Var =
(
.getAttribute('tabindex');
)
code(Var)
return

::es5.jicheng::
::js.jicheng::
Var =
(
// 矩形（构造器/父类）
function Rectangle (height, width) {
	this.height = height;
	this.width = width;
}

// 获取面积
Rectangle.prototype.getArea = function () {
	return this.height * this.width;
}

// 正方形（将继承矩形）
function Square (size) {
	this.height = size
	this.width = size
}

// 继承的重中之重语法，其实也可以用：Square.prototype = Object.create(Rectangle.prototype)
Square.prototype = Object.create(Rectangle.prototype);
// 构造函数
Square.prototype.constructor = Square;

var square = new Square(6);
// 调用继承的矩形类的获取面积函数
console.log(square.getArea()) // 36
)
code(Var)
return

::is-Bottom::
::is.bottom::
::isbottom::
::scrollbottom::
::scroll.bottom::
Var =
(
let scrollHandle = (el) => {
	// 如果已经滚到底部了
    // if ((el.scrollHeight - el.scrollTop) - el.clientHeight < 1 ) { }
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
code(Var)
return

::es5.class::
::es5class::
::class5::
Var =
(
function Person(name) {
    this.name = name
}

Person.prototype = {
    constructor: Person

    sayName: function () {}
        console.log(this.name)
    },
    
    toString: function () {
        return this.name
    }
}
)
code(Var)
return

::imp::
Var =
(
import moment from 'moment'
)
code(Var)
return

::is-wx::
::iswx::
::is-weixin::
::isweixin::
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
code(Var)
return

::axios::
Var =
(
// ajax（默认是application/json;charset=utf-8）
axios({
  method: 'post',
  url: 'http://192.168.31.97/index.php',
  data: {
    firstName: 'Fred',
    lastName: 'Flintstone'
  },
  // headers: {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'},
  // data: Qs.stringify({userAccount: 'dgeduc-b', userPwd: '123456', type: 'account', }),
}).then(response => {
	console.log(20181021225057, response)
})
)
code(Var)
return

::axios.get::
Var =
(
/**
 * get 请求
 */
axios.get('http://192.168.31.97/index.php?a=123').then(response => {
    console.log(20181021221522, response)
})
)
code(Var)
return

::axios.post::
::axios.json::
Var =
(
// ajax（默认是application/json;charset=utf-8）
axios({
  method: 'post',
  url: 'http://192.168.31.97/index.php',
  data: {
    firstName: 'Fred',
    lastName: 'Flintstone'
  }
}).then(response => {
	console.log(20181021225057, response)
})

/**
 * post application/json;charset=utf-8
 */
axios.post('http://192.168.31.97/index.php', {a: 123}).then(response => {
    console.log(20181021221338, response)
})
)
code(Var)
return

::axios.form::
Var =
(
/**
 * post application/x-www-form-urlencoded;charset=utf-8
 * https://github.com/axios/axios#browser
 * 推荐使用 qs： 
 * $ cnpm install qs
 * const params = qs.stringify({ 'a': 123 })
 */
const params = new URLSearchParams();
params.append('a', '123');
axios.post('http://192.168.31.97/index.php', params, {
    headers: {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'}
}).then(response => {
    console.log(20181021221338, response)
})

//////////////////////////////////////////////

const params2 = new URLSearchParams();
params2.append('firstName', 'Fred');
params2.append('lastName', 'Flintstone');
axios({
  method: 'post',
  url: 'http://192.168.31.97/index.php',
  data: params2,
  headers: {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'},
}).then(response => {
	console.log(20181021225057, response)
})
)
code(Var)
return

::momentt::
::moment::
::moment.now::
t := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
Var =
(
// http://momentjs.cn/docs/#/get-set/second/
// moment(new Date()).format('YYYY/MM/DD HH:mm:ss')
// moment.isMoment(obj);
// moment('fuckyou').isValid()
moment('%t%').format('YYYY/MM/DD HH:mm:ss')
)
code(Var)
return

::arr2str::
::array2str::
Var =
(
var array2str = (arr) => {
	var str = ""
	arr.forEach(function (e, i) {
    	 str += e.join()
	});
	return str
}
)
code(Var)
return

::xiaoshudian::
::douhao::
Var =
(
function toThousands(num) {
    var result = [],
        counter = 0;
    num = (num || 0).toString().split('');
    for (var i = num.length - 1; i >= 0; i--) {
        counter++;
        result.unshift(num[i]);
        if (!(counter `% 3) && i != 0) { result.unshift(','); }
    }
    return result.join('');
}

// 保留小數點后2位
Number((这里是你的值).toString().match(/^\d+(?:\.\d{0,2})?/))
)
code(Var)
return

::.a::
::.add::
::.addevent::
::.addclick::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
.addEventListener('click', (e) => {
    console.log(%t%, e.target)
})
)
code(Var)
return

::nicescroll::
::jquery.scroll::
::js.nice::
::jq.nice::
::nice::
Var =
(
setTimeout(() => { $('.drapdown__ul').niceScroll({ cursorcolor: 'rgba(0,0,0,0.2)', autohidemode: true, horizrailenabled: false, emulatetouch: true, zindex: 199307100337 })}, 350);
setTimeout(() => $('.drapdown__ul').getNiceScroll().resize(), 0);
)
code(Var)
return


::umd::
Var =
(
// 方式一： 
(function (name, context, definition) {
  if (typeof module != 'undefined' && module.exports) module.exports = definition()
  else if (typeof define == 'function' && define.amd) define(definition)
  else context[name] = definition()
})('你挂在到全局的模块名，譬如jQuery', this, function () {

	// ... 这里写上比的代码

	return {
		...
	}
}, this);

// 方式二
(function (factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as anonymous module.
    define(['jquery'], factory);
  } else if (typeof exports === 'object') {
    // Node/CommonJS.
    module.exports = factory(require('jquery'));
  } else {
    // Browser globals.
    factory(jQuery);
  }
}(function (jQuery) {

  "use strict";

  // your code...
}));

// 方法三：underscore提取的
 if (typeof exports !== 'undefined') {
  if (typeof module !== 'undefined' && module.exports) {
    exports = module.exports = _;
  }
  exports._ = _;
} else {
  root._ = _;
}
)
code(Var)
return


::.reduce::
::reduce::
::reduces::
Var =
(
.reduce((previousValue, currentValue, index, array) => {
    return previousValue + currentValue
// 请注意使用末参来初始化 previousValue 的值
}, 0)

// 初始化为数组的示例
children.reduce((previousValue, currentValue, index, array) => {
	if (currentValue.hlPid === v.hlItemId)
	   previousValue.push({ name: currentValue.hlItemName, id: currentValue.hlItemId })
	// 默认总是要返回一个数组的
	return previousValue
}, [])
)
code(Var)
return

::date2::
::date.week::
::date.all::
Var =
(
var date = new Date()
var year = date.getFullYear()
var month = date.getMonth() + 1
var day = date.getDate()
var hours = date.getHours()
var minu = date.getMinutes()
var second = date.getSeconds()
var week = ['星期天','星期一','星期二','星期三','星期四','星期五','星期六'][date.getDay()]
var arr = [hours, minu, second].map(item => item < 10 ? "0" + item : item)
console.log(``${year}年${month}月${day}日 ${week} ${arr[0]}:${arr[1]}:${arr[2]}``)
)
code(Var)
return

::udf::
Var =
(
undefined
)
code(Var)
return

::object.a::
::object.as::
::obj.a::
::obj.as::
::objas::
Var =
(
Object.assign({}, )
)
code(Var)
SendInput, {left 1}
return



::fn.before::
::before::
Var =
(
Function.prototype.before = function(beforefn) {
    var __self = this;

    return function() { 
        beforefn.apply(this, arguments); 
        return __self.apply(this, arguments);
    }
};
)
code(Var)
return


::fn.after::
::after::
Var =
(
Function.prototype.after = function(afterfn) {
    var __self = this;

    return function() {
        var ret = __self.apply(this, arguments);
        afterfn.apply(this, arguments);
        return ret;
    }
};
)
code(Var)
return

::aop::
::__AOP__::
Var =
(
// （A）定义原始函数
var func = function() {
    console.log(2);
};

Function.prototype.before = function(beforefn) {
    // 保存原始函数（A）的引用
    var __self = this;

    // （B）
    return function() { 
        // 执行 before 函数
        beforefn.apply(this, arguments); 

        // 执行原始函数（A）
        return __self.apply(this, arguments);
    }
};

Function.prototype.after = function(afterfn) {
    // 保存函数（B）的引用
    var __self = this;

    // （C）
    return function() {
        // 执行函数（B）并获取执行结果，而实际上函数（B）的返回的是原始函数（A）的执行结果
        var ret = __self.apply(this, arguments);

        // 执行 after 函数
        afterfn.apply(this, arguments);

        // 返回原函数（A）的执行结果
        return ret;
    }
};

func = func.before(function() {
    console.log(1);
}).after(function() {
    console.log(3);
});

// 执行函数（C）
func();
)
code(Var)
return

::eventtarget::
::js.eventtarget::
::event.target::
Var =
(
function EventTarget() {

}

EventTarget.prototype = {
	constructor: EventTarget,
	addListener: function (type, listener) {
		if (!this.hasOwnProperty("_listeners")) {
			this._listeners = [];
		}

		if (typeof this._listeners[type] == 'undefined') {
			this._listeners[type] = []
		}

		this._listeners[type].push(listener);
	},
	trigger: function (event) {
		if (!event.target) {
			event.target = this;
		}

		if (!event.type) {
			throw new Error("Event object miss 'type' property.");
		}

		if (this._listeners && this._listeners[event.type] instanceof Array) {
			var listeners = this._listeners[event.type];
			for (var i = 0; i < listeners.length; i++) {
			    listeners[i].call(this, event);
			}
		}
	},
	removeListener: function (type, listener) {
		if (this._listeners && this._listeners[type] instanceof Array) {
			var listeners = this._listeners[type];
			for (var i = 0; i < listeners.length; i++) {
			    if (listeners[i] === listener) {
			    	listeners.splice(i, 1);
			    	break;
			    }
			}
		}
	},
}

var event = new EventTarget();
event.addListener('message', function (event) {
	console.log('message is ' + event.data);
})
event.trigger({
	type: 'message',
	data: 'Hello world!'
})
)
code(Var)
return

::__event::
::__event__::
::js.event::
Var =
(
window.__EVENT__ = {
     // 缓存列表
     clientList: [],
     listen: function(key, fn) {
         if (!this.clientList[key]) {
             this.clientList[key] = [];
         }
         // 订阅的消息添加进缓存列表
         this.clientList[key].push(fn);
     },
     trigger: function() {
         var key = Array.prototype.shift.call(arguments),
             fns = this.clientList[key];
         // 如果没有绑定对应的消息
         if (!fns || fns.length === 0) {
             return false;
         }
         for (var i = 0, fn; fn = fns[i++];) {
             // arguments 是 trigger 时带上的参数
             fn.apply(this, arguments);
         }
     },
     remove: function(key, fn) {
         var fns = this.clientList[key];
         if (!fns) { // 如果 key 对应的消息没有被人订阅，则直接返回
             return false;
         }
         if (!fn) { // 如果没有传入具体的回调函数，表示需要取消 key 对应消息的所有订阅
             fns && (fns.length = 0);
         } else {
             for (var l = fns.length - 1; l >= 0; l--) { // 反向遍历订阅的回调函数列表
                 var _fn = fns[l];
                 if (_fn === fn) {
                     fns.splice(l, 1); // 删除订阅者的回调函数
                 }
             }
         }
    }
};

)
code(Var)
return

::delay::
Var =
(
var upload = function (id) {
	console.log('开始同步文件, id为'： id)
}

var proxySync = ;(function(){
	var cache = [], // 一定时间内需要同步的id
			 timer;	// 定时器

	return function (id) {
		// 塞入缓存，等待上传
		cache.push(id)

		// 保证不会覆盖已经启动的定时器
		if ( timer ) {
			return;
		}

		timer = setTimeout(() => {
			// 上传
			upload( cache.join(',') )
			// 清空
			clearTimeout(timer); timer = null; cache.length = 0;
		}, 2000);
	}
}());
)
code(Var)
return

::unique::
::norepeatarr::
::norepeat::
::no-repeat::
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
code(Var)
return

::wl::
::wls::
Var =
(
window.localStorage.setItem('key', 'value')
)
code(Var)
return

::wlg::
Var =
(
window.localStorage.getItem('key')
)
code(Var)
return


::time2time::
::date2date::
Var =
(
// 转化为年月日
const time2time = (time) => {
    var date = new Date(time.replace(/-/g, '/'));
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    return year + '/' + month + '/' + day
}
)
code(Var)
return

::$.scroll::
::$.onscroll::
Var =
(
$('.trajectoryTable').scroll(function (e) {
    console.log(20180825190354, e.currentTarget.scrollTop)
})
)
code(Var)
return

::aotuscroll::
::$.autoscroll::
Var =
(
 ;$.fn.extend({  
    autoScroll (opt = {speed: 1500, size: 4, height: 40, time: 1000}) {  
        // jQuery对象
        var $el = this;
        // 核心函数
        var _autoScroll = function () {
            // 自动滚动
            var timer =  setInterval(() => {
                // 滚动的速度
                const speed = opt.speed
                // 每次滚动多少条
                const size = opt.size;
                // 每条的高度是多少
                const height = opt.height;
                // 每次滚动的距离
                const distance = size * height;
                // 当前滚动的高度
                const currentScrollTop = $el.scrollTop()
                // 底部位置
                const bottom = $el.prop('scrollHeight') - $el.height()
                // 如果已经滚到底了
                if (currentScrollTop === bottom) {
                    // 滚回头部
                    $el.animate({ scrollTop: 0 }, 0);
                } else {
                    // 余数
                    const remainder = currentScrollTop `% height
                    // 下一次滚动的位置 = 当前位置 + 每次滚动的位置 - 余数
                    const nextScrollTop = currentScrollTop + distance - remainder
                    // 开始滚动
                    $el.animate({ scrollTop: nextScrollTop + 'px' }, speed);
                }
            // 滚动间隔
            }, opt.time + opt.speed);
            // 鼠标移入的时候，删除自动滚动, 鼠标移出的时候，自动滚动
            $el.one('mouseover', _ => clearInterval(timer)).one('mouseleave', _autoScroll)
        }
        // 开始滚动
        _autoScroll()
    }
});

$('.trajectoryTable').autoScroll()
)
code(Var)
return

::morencanshu::
::defaultopt::
::defaultoptions::
::defaultoption::
::es6.morencanshu::
::js.morencanshu::
::es.morencanshu::
Var =
(
var a = function (opt = {a: 1, c: 2}) {
	console.log(20180825191248, opt)
}
)
code(Var)
return

::deepextend::
::deepextends::
::shenkaobei::
::deepcopy::
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
return


::extend::
::qiankaobei::
::copy::
Var =
(
 function extend(Child, Parent){
    var F = function(){ };
    F.prototype = Parent.prototype;
    Child.prototype = new F();
    Child.prototype.constructor = Child;
    Child.parent = Parent.prototype
 }
)
code(Var)
return

::$.fn::
::$.plugin::
::$.fn.extend::
Var =
(
$.fn.extend({  
    autoScroll: function(value) {  
        console.log(20180825204054, this, value)
    }  
});  

$('.trajectoryTable').autoScroll('fuckyou')
)
code(Var)
return

::animate::
::animated::
::$.animate::
::$.animated::
Var =
(
$('#trajectoryUl').animate({ scrollTop: '40px' }, 1500);
)
code(Var)
return

::isanimate::
::jq.animate::
::is.animate::
::is-animate::
Var =
(
// 判断元素是否正处于动画状态
if (!$(element).is(":animated")) {
	// 如果当前没有进行动画，那么添加动画
	$(element).animate({ scrollTop: `${scroll}px` }, 1500);
}
)
code(Var)
return


::wheel::
::onscroll::
::scroll::
Var =
(
windowAddMouseWheel();
function windowAddMouseWheel() {
    var scrollFunc = function (e) {
        e = e || window.event;
        if (e.wheelDelta) {  //判断浏览器IE，谷歌滑轮事件
            if (e.wheelDelta > 0) { //当滑轮向上滚动时
                console.log("滑轮向上滚动");
            }
            if (e.wheelDelta < 0) { //当滑轮向下滚动时
                console.log("滑轮向下滚动");
            }
        } else if (e.detail) {  //Firefox滑轮事件
            if (e.detail> 0) { //当滑轮向上滚动时
                console.log("滑轮向上滚动");
            }
            if (e.detail< 0) { //当滑轮向下滚动时
                console.log("滑轮向下滚动");
            }
        }
    };
    //给页面绑定滑轮滚动事件
    if (document.addEventListener) {
        document.addEventListener('DOMMouseScroll', scrollFunc, false);
    }
//滚动滑轮触发scrollFunc方法
    window.onmousewheel = document.onmousewheel = scrollFunc;
}

)
code(Var)
return

::outerhtml::
Var =
(
$(".test").prop("outerHTML");
)
code(Var)
return

::formdata::
::obj2formdata::
::json2formdata::
::obj2form::
Var =
(
// https://github.com/github/fetch#file-upload
// fetch('/avatars', { method: 'POST', body: data })
export const obj2formdata = (json) => {
  var data = new FormData()
  if (json) {
    Object.keys(json).forEach(function (key) {
        data.append(key, json[key])
    });
  } 
  return data
}

// 将对象转化为formdata格式
// 也就是application/x-www-form-urlencoded;charset=utf-8提交格式
// 如何使用formData提交参考：https://www.cnblogs.com/CyLee/p/9441535.html
export const obj2formdatastr = (body) => {
  if (body) {
      let formparams = '';
      Object.keys(body).forEach(key => {
         if (formparams.length > 0) {
           formparams += '&';
         }
         formparams = formparams + key + '=' + body[key];
      });
      return formparams
  }
  return ''
}
)
code(Var)
return


::prototype.jicheng::
::yuanxingjicheng::
::js.jicheng::
::es5.jicheng::
::es5jicheng::
Var =
(
// es5最好的继承实现方式：寄生组合继承
// JS中的继承(上)：https://segmentfault.com/a/1190000014476341
// js中的继承（下）：https://mp.weixin.qq.com/s/91nRBa_mDUu-w77FptvmoQ
function inheritPrototype(childType, superType) {
	// 使用es5的Object.create浅复制创建了父类原型的
	// 如果不支持es5的 Object.create ，可以使用这个方法代替
	// function object (o) {function F() {}; F.prototype = o; return new F(); }
    var prototype = Object.create(superType.prototype); 
    // 修正原型的构造函数
    prototype.constructor = childType; 
    // 将子类的原型替换为这个原型
    childType.prototype = prototype; 
}

function SuperType(name) { 
	this.name = name;
    this.colors = ["red", "blue", "green"]; 
}

SuperType.prototype.sayName = function() {
	alert(this.name ); 
};

function childType(name, age) { 
	SuperType.call(this, name);
    this.age = age; 
}

// 核心：因为是对父类原型的复制，所以不包含父类的构造函数，也就不会调用两次父类的构造函数造成浪费
inheritPrototype(childType , SuperType); 
childType.prototype.sayAge = function(){
	alert(this.age); 
}

var s = new childType('lee', 18)
// 调用父类的方法
s.sayName()
)
code(Var)
return

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
    SendInput, text/plain
return

::toup::
::todaxie::
::toda::
    SendInput, toUpperCase()
return

::tolo::
::tolow::
::toxiaoxie::
::toxiao::
    SendInput, toLocaleLowerCase()
return

::err::
::iferr::
    SendInput, if (err) throw new Error(err.message);
return

::ph::
::place::
    SendInput, placeholder
return

::pup::
    SendInput, puppeteer
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
    SendInput, undefined
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
// 9位 简易版
const MdUuid = () => Math.random().toString(36).slice(4)
MdUuid() // "r1mca5d4z"

// 32位 正式版
const UUIDGeneratorBrowser = () => ([1e7] + -1e3 + -4e3 + -8e3 + -1e11).replace(/[018]/g, c => (c ^ (crypto.getRandomValues(new Uint8Array(1))[0] & (15 >> (c / 4)))).toString(16));
UUIDGeneratorBrowser(); // '7982fcfe-5721-4632-bede-6000885be57d'

// 36位
function getUUID () {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
    return (c === 'x' ? (Math.random() * 16 | 0) : ('r&0x3' | '0x8')).toString(16)
  })
}
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
    SendInput, body.match(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:\d{1,4}/g); // 推荐使用exec可以拿到多个数组
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

 // 适合轮询条件查找执行
;(function fuck(i){
    const name = router.history.current.name
    // 先把需要轮询的条件写出来：如果找不到元素，并且次数小于
    if (document.querySelectorAll(`.${name} [data-title]`).length <= 0) {
        // 再把最多循环的次数写出来：最多5次，间隔也可以动态，我这里是100/200/300/400/500，也就是一共才1500秒。
        i < 5 && window.setTimeout(_ => fuck(++i), i * 100 + 100);
    } else {
        // 条件成立的放在这里执行
        document.querySelectorAll(`.${name} [data-title]`).forEach(function (e, i) {
            const rootname = e.getAttribute('class')
            const classname = e.querySelector('div').getAttribute('class')
            const vuename = `${classname}.vue`
            const title = `【${rootname.substring(0, rootname.indexOf('__'))}】 ${e.getAttribute('data-title')} 【${vuename}】`
            e.setAttribute('title', title)
            const _copyToClipboard = () => {copyToClipboard(vuename); Message('复制成功：' + vuename); }
            e.removeEventListener('click', _copyToClipboard)
            e.addEventListener('click', _copyToClipboard) 
        }); 
        document.querySelector('.header__title').addEventListener('click', (e) => {
            const indexvuename = `${name}/index.vue`
            copyToClipboard(indexvuename); 
            Message('复制成功：' + indexvuename);
        })
    }
}(0));
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
::js.enum::
::meiju::
::js.meiju::
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
button.id = "fuck";
button.onclick = function() {
    window.alert('Hello');
}
document.body.appendChild(button);
)
code(Var)
return

::echo::
    SendInput, document.body.innerHTML = "Hello World";
    SendInput, {left}{Shift Down}{left 13}{Shift Up}
return

::args2arr::
::2arr::
::args2::
    SendInput, [].slice.call(arguments)
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
::onready::
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
::attr::
    sendInput, el.setAttribute('tabindex', 3);
return

::el.getattr::
::getattr::
    sendInput, el.getAttribute('tabindex');
return

::el.setattr::
::setattr::
    sendInput, el.setAttribute('tabindex', '1');
return

::getstyle::
    SendInput, getComputedStyle(el)[ruleName];
return

::setstyle::
    SendInput, el.style.borderWidth = '20px';
return


::dianjikongbaichu::
::kongbaichu::
::shijianmaopao::
::mouseup::
::eventmaopao::
Var =
(
// jQuery版本
$('.keySupervision__layer').css({ left, top }).show(300, function () {
      window.addEventListener('mouseup', function cancelFade(e) {
         if (!e.target.className.includes('keySupervision__layer')) {
             $('.keySupervision__layer').hide();
             window.removeEventListener('mouseup', cancelFade);
         }
      })
})

// vue版本
<div class="msgbox" v-show="value">
data () {
    return {
        value: false
    }
},
methods: {
  hideListener (e) {
    // 只要你的弹窗所有元素都准许BEM规范即可。也就是说都带msgbox前缀，就可以轻松区分。
    if (!e.target.className.includes('msgbox')) {
        this.value = false
    }
  },
  // 可以给关闭按钮绑定，如<a class="msgbox__header--close" @click='value = !value'>×</a>
  show () {
    if (!this.value) this.value = true
  }
},
watch: {
    value (newV) {
      newV === true && window.addEventListener('mouseup', this.hideListener)
      newV === false && window.removeEventListener('mouseup', this.hideListener);
    }
},
)
code(Var)
return

::exchange::
Var = 
(
var arr = [1,4,6,43,5,9,0,23,45];
var exchange = function (arr, index1, index2) {
    var tmp = arr[index1];
    arr[index1] = arr[index2];
    arr[index2] = tmp;
    return arr;
}
arr = exchange(arr,3,7);
console.log(arr);
)
code(Var)
return

::$remove::
    SendInput, el.parentNode.removeChild(el)
return

::eval::
    SendRaw, eval('(' + options + ')')
return


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
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
window.alert([%t%, ].join('  '));
)
code(Var)
SendInput, {left 14}
return

; 构造函数的拼音老是记不得，以后就用联想来拼写好了
::gz::
    SendInput, constructor
return

; insert jquery 的意思，也有爱jquery的意思，为没有jquery的网站添加jq插件
::ijq::
::iqj::
Var = 
(
var o = document.createElement('script');
o.src = 'https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js';
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
    SendInput, console.log(jQuery.fn.jquery);
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


::es6class::
::esclass::
::es.class::
::js.class::
::es6.class::
::class::
Var = 
(
class Person {
	constructor (name, age) {
		// super();
		// 建议内置的变量加个_区分，而要访问的变量用get关键词来识别返回
		this._name = name;
		this._age = age;
	}

	get name() {
		return this.name
	}

	set name(value) {
		this._name = value
	}

	get age() {
		return this._age
	}

	set age(value) {
		this._age = value
	}

	static version () {
		return 'v0.1.0';
	}

	toString () {
        return ``name： ${this._name}，age：${this._age}``
    }
}
)
code(Var)
return

/*
::c::
SendInput, {Text}console.log('');
SendInput, {left 2}{click 2}

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


::removee::
::removeevent::
Var =
(
e.removeEventListener('click', _copyToClipboard);
)
code(Var)
return

::addevent::
::adde::
Var = 
(
addEventListener('keydown', (event) => {
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
::urlparams::
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
    return JSON.parse('{"' + decodeURIComponent(search).replace(/"/g, '\\"').replace(/&/g, '","').replace(/=/g, '":"') + '"}')
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

// 获取纯Url，不包含?后面的参数
const getPureUrl = url => url.substr(0, url.indexOf('?'))
)
code(Var)
return

::req::
Var =
(
require('');
)
code(Var)
SendInput, {left 3}
return

AppsKey & d::
>^d::
Var =
(
debugger;
)
code(Var)
Return



>!c::
WinGetTitle, title, A
code(title)
return


AppsKey & c:: 
>^c:: 
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
console.log(%t%, )
)
code(Var)
SendInput, {left 1}
Return

::ret::
::re::
    SendRaw, return
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

::jsonpp::
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
::jsonp::
Var =
(
JSON.parse()
)
code(Var)
SendInput, {left}
Return

::jsons::
::json.s::
Var =
(
JSON.stringify()
)
code(Var)
SendInput, {left}
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
::form/::
Var =
(
application/x-www-form-urlencoded;charset=utf-8
)
code(Var)
Return


::$()::
::$()()::
Var =
(
$(function () {})

)
code(Var)
return

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
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
$('#app').click(function (e) {
	console.log(%t%, e.target);
});
)
code(Var)
Return

::.click::
::.c::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
.click(function (e) {
	console.log(%t%, e.target);
});
)
code(Var)
Return

::.change::
Var = 
(
.change(function (e) {

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
::ct::
::cleartimer::
::settc::
::cleart::
Var = 
(
clearTimeout(timer);
)
code(Var)
Return

::ctimeri::
::cti::
::cleartimeri::
::settic::
::clearti::
::cleari::
Var = 
(
clearInterval(timer);
)
code(Var)
Return

::js.mixin::
::mixin::
Var =
(
function mixin (receiver, supplier) {
	Object.keys(supplier).forEach(function (property) {
	     var descriptor = Object.getOwnPropertyDescriptor(supplier, property);
	     Object.defineProperties(receiver, property, descriptor);
	});
	return receiver;
}
)
code(Var)
return

::$each::
Var = 
(
$.each($('.object'), function (i, e) {
    console.log(i, e);
});
)
code(Var)
Return

::token::
Var =
(
// 刷新token
window.token = Math.random().toString(36).slice(4)

// 闭包token
;(function(_token){
  return request('/sg/street/sgTownStreet/queryLocationInfo').then(data => {
    // 如果依然如故，说明没有覆盖可以渲染
    if (window.token === _token) {
      
    }
  })
}(token));
)
code(Var)
return

::.f::
::.foreach::
::.for::
Var =
(
.forEach((val, key) => {})
)
code(Var)
Send, {left 2}
return

::.e::
::.each::
Var = 
(
.each(/* 如果是遍历元素就不需要，如果是遍历数组，首参应该是一个数组[ary]或者对象{obj}, */ function (i, e) {
    console.log(i, e, $(e));
});
)
code(Var)
Return


>!f::
::.fore::
::.for::
::.f::
Var = 
(
.forEach(function (e, i) {
     console.log(i, e);
});
)
code(Var)
Return

::f::
::func::
::fun::
Var = 
(
function () {}
)
code(Var)
SendInput, {left}
Return

!-::
Var = 
(
_ => {}
)
code(Var)
SendInput, {left 1}
return

!=::
!.::
Var = 
(
=> {}
)
code(Var)
SendInput, {left 1}
return

!9::
!0::
Var = 
(
() => {}
)
code(Var)
SendInput, {left 1}
return
::dg::
Var =
(
document.getElementById('')
)
code(Var)
SendInput, {left 2}
Return

::ds::
Var =
(
document.querySelectorAll('')
)
code(Var)
SendInput, {left 2}
Return

::dsa::
::dss::
Var =
(
document.querySelector('')
)
code(Var)
SendInput, {left 2}
return

::dgt::
Var =
(
document.getElementsByTagName('')
)
code(Var)
SendInput, {left 2} 
return

::dgc::
Var =
(
document.getElementsByClassName('')
)
code(Var)
SendInput, {left 2} 
return

::dgn::
Var =
(
document.getElementsByName('')
)
code(Var)
SendInput, {left 2} 
return

::fetch::
Var =
(
fetch('https://api.github.com/users/gaearon/gists')
    .then(response => response.json())
    .then(data => console.log(20180916201855, data))
    .catch(err => { throw new Error(err.message) });
)
code(Var)
return

::.then::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
.then(response => {
	// console.log(%t%, response.json())
    return response.json()
})
)
code(Var)
Return

::.catch::
Var =
(
.catch(err => { throw new Error(err.message) });
)
code(Var)
return

::throw::
    SendInput, throw new Error(e.message){left}^+{left}^+{left}
Return

::for-::
::for--::
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
code(Var)
Return


::for::
::for+::
::for++::
Var = 
(
for (var i = 0; i < Things.length; i++) {
    Things[i]
}
)
code(Var)
Return

>!m::
::.map::
::.m::
Var =
(
.map((v, index, array) => {
    return v
});
)
code(Var)
return

::switch::
Var =
(
switch (data) {
	case 0:
	  	break;
  	case 1:
    	break;
    default:
    	return 0
}
)
code(Var)
return

::date::
::today::
Var = 
(
// dateYYYYMMDDHHmmss('2019/1/22 12:11:11')
const dateYYYYMMDDHHmmss =  t => {
	const date = new Date(t)
	const year = date.getFullYear()
	const month = date.getMonth() + 1
	const day = date.getDate()
	const hours = date.getHours()
	const minu = date.getMinutes()
	const second = date.getSeconds()
	const arr = [month, day, hours, minu, second].map((item, index) => item < 10 ? '0' + item : item)
	return year + '-' + arr[0] + '-' + arr[1] + ' ' + arr[2] + ':' + arr[3] + ':' + arr[4]
}
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
::rendcolor::
::rendercolor::
Var =
(
fillStyle: 'rgba(' + ~~(Math.random() * 255) + ', ' + ~~(Math.random() * 255) + ', ' + ~~(Math.random() * 255) + ', 0.8)',

// 比较浅色的rgb，适合白色字体
randcolor () {
    const r = 100 + ~~(Math.random() * 100);
    const g = 135 + ~~(Math.random() * 100);
    const b = 100 + ~~(Math.random() * 100);
    return `rgb(${r}, ${g}, ${b})`
}
)
code(Var)
return

::singerand::
::singrand::
::singlerand::
::singlerange::
::singlerang::
::singlerandom::
::singleradom::
Var =
(
'use strict';
// 我的随机函数
var random = function(min, max) {
    if (max == null) {
      max = min;
      min = 0;
    }
    return min + Math.floor(Math.random() * (max - min + 1));
};

// 缓存函数
var singeFn = function (fn, maxPollTime = 20) {
	// 缓存
	var cache = []
	// 轮询次数
	var pollTime = 0
	// 返回随机数生成器
	return function _ () {
		// 获取随机数
		var data = fn.apply(this, arguments)
		// 如果存在则递归
		if (~cache.indexOf(data)) {		
			// 递归调用（如果递归次数大于阈值，那么直接返回False）
			return ++pollTime > maxPollTime ? false : _.apply(this, arguments)
		} else {
			// 重置轮询次数
			pollTime = 0
			// 添加缓存并且返回data
			return cache.push(data), data
		}
	}
}

// 从-7，7取随机数
var rangeRadom = random.bind(null, -7, 7)

// 返回一个新的函数
var singeRangeRadom = singeFn(rangeRadom);

// 获取返回值
singeRangeRadom()
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
::range::
::rang::
Var =
(
/*
// 范围选择如 -100 ~ 100 强烈推荐这个函数
var random = function(min, max) {
    if (max == null) {
      max = min;
      min = 0;
    }
    return min + Math.floor(Math.random() * (max - min + 1));
};
*/
// ~~(0 + Math.random() * 51)      // 0-50
// parseInt(Math.random() * 5)     // 0-4
parseInt(Math.random() * 10 + 1);  // 获取 1 - 10 到随机数
)
code(Var)
Return

::repeat::
    SendRaw, Array.prototype.join.call({length: i + 1}, '你确定？')
Return

!/::
Var =
(
//////////////////////////////////////////////

//////////////////////////////////////////////
)
code(Var)
SendInput, {Up}
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
::is-ch::
::is-zhongwen::
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
::deep::
::deepcopy::
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
::sortobj::
::objsort::
Var = 
(
// 正序（从小到大）是a - b ，(倒序)从大到小 -(a-b)
arr.sort((a, b) => { return a - b })
)
code(Var)
return


::jiecheng::
::!n::
::^n::
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
::for.en::
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
::loadscript::
::loadjs::
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

onscriptload('https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js', function () {
   console.log(jQuery.fn.jquery);
   console.log($('*').size())
})

onscriptload('https://cdn.bootcss.com/lodash.js/4.17.11/lodash.min.js', function () {
   console.log(_)
})

)
code(Var)
return

::is-ie::
::isie::
::is.ie::
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



::js.cache::
::cache::
Var =
(
/**
 * @func
 * @desc - 灵活使用闭包的概念。
           以下简单的实验说明他们是不同的实例。所以他们各自闭包内的_cache是不相干也不相同的
           其实是简单的类与实例的概念。但还是说明一下比较好
           毕竟大部分的插件也是这样制作的
 */
var Cache = (function () {
    var _cache = {};

    return {
      getCache: function (key) {
        return _cache[key]
      },
      setCache: function (key, value) {
        _cache[key] = value;
      },
      showAllCache: function () {
        console.log(_cache);
      }
    }
});


var a = new Cache();
a.setCache('foo', 'bar');
a.showAllCache();

var b = new Cache();
b.setCache('foo', 'bar2');
b.showAllCache();

/* 从输出的结果得知两者的闭包互不相干 */
)
code(Var)
return

::cachemethod::
::cachefunc::
::cachefunction::
::paramscache::
::paramcache::
::hanshuhuancun::
::hanshucache::
::funcache::
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

::es6.event::
::es6.__event__::
::es6evemt::
::eventes6::
::event6::
::new event::
Var =
(
class Event {
	constructor(props) {
	    this.map = {}
	}

	add (name, fn) {
		if (this.map[name])
			this.map[name].push(fn)
		else
			this.map[name] = [fn]
		return this
	}

	emit (name, ...args) {
		// 遍历数组中的所有函数并且执行，注入args
		this.map[name].forEach(_ => _(...args))
		// 返回prototype可以形成链式
		return this
	}
}

let e = new Event()
// 我们约定第一个参数是err信息，如果没有错误则注入null
e.add("hello", (err, name) => {
	if (err) return console.error(err)
	console.log(name)
})
.emit('hello', '发送错误')
.emit('hello', null, 'success')
)
code(Var)
return

::return promise::
::new promise::
::new p::
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
var arr = [8, 5,5,3,2]
// 为什么要-1，因为最后一次的时候是不需要与自己比较，所以绕过了。当然你不-1也无所谓，只是优化而已
for (var i = 0;i < arr.length - 1; i++) {
    // 同理，你减不减i都无所谓。只是优化而已。但这个优化的幅度比较大推荐加上。
    for (var j = 0; j < arr.length - i; j++) {
        // a > b(从小到大正序) / a < b(从大到小倒序)
        if (arr[j] > arr[j+1]) {
            // [arr[j + 1], arr[j]] = [arr[j], arr[j + 1]]
            var temp = arr[j + 1]
            arr[j + 1] = arr[j]
            arr[j] = temp
        }
    }
}
console.log(arr)
)
code(Var)
return

::qsort::
::quicksort::
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

::rem.js::
::js.rem::
Var =
(
(function (doc, win) {
	var docEl = doc.documentElement,
		resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
		recalc = function () {
			var clientWidth = docEl.clientWidth;
			if (!clientWidth) return;
			if (clientWidth >= 750) {
				docEl.style.fontSize = '100px';
			} else {
				docEl.style.fontSize = 100 * (clientWidth / 750) + 'px';
			}
		};

	if (!doc.addEventListener) return;
	win.addEventListener(resizeEvt, recalc, false);
	doc.addEventListener('DOMContentLoaded', recalc, false);
})(document, window);
)
code(Var)
return

::cookie::
::cookies::
::$cookie::
::$.cookie::
::$cookies::
::$.cookies::
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

::maybe_::
::_maybe::
Var =
(
maybe(_ => , [])
)
code(Var)
SendInput, {left 5}
return

::maybe::
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
code(Var)
return

::hanzi::
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
::kelihua::
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
::jieliu::
::throttle::
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
code(Var)
return


::hanshuqudou::
::hanshufangdou::
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

::jsdefaultparams::
::defaultparams::
::defaultparam::
Var =
(
// 必须加上 = {}
function foo({x, y = 5} = {}) {
  console.log(x, y);
}

foo() // undefined 5
)
code(Var)
return

::__lock__::
::lockfn::
::lockanimate::
::lock::
::js.lock::
::jslock::
Var =
(
// （超简易拿来无封装版）使用函数加锁器
// var lockAnimate = (function(){
// 	var __LOCK__ = false
// 	return function (scrollTop) {
// 		if (!__LOCK__) {
// 			__LOCK__ = true
// 			$('#trajectoryUl').animate({ scrollTop: scrollTop + 'px' }, 1500, function () {
// 				// 解锁
// 				__LOCK__ = false
// 			});
// 		}
// 	}
// }());
// lockAnimate(40 * 1)
// lockAnimate(40 * 2)
// lockAnimate(40 * 3)


// 函数加锁器
const lockFn = function (fn) {
	// 锁
	let __LOCK__ = false

	// 加锁器
	let lock = function () {
		__LOCK__ = true
	}

	// 解锁器
	let unlock = function () {
		__LOCK__ = false
	}

	// 检锁器
	let islock = function () {
		return __LOCK__ === true
	}

	return function (...args) {
		// 如果没锁的话则执行
		if (!islock()) {
			// 加锁
			lock()
			// 执行并且把锁交给它
			return fn && fn.call(this, unlock, args)
		}
	}
};

// 自定义函数
const myanimate = (unlock, scrollTop) => {
	$('#trajectoryUl').animate({ scrollTop: scrollTop + 'px' }, 1500, function () {
		// 解锁
		unlock()
	});
}

// 使用函数加锁器
const lockAnimate = lockFn(myanimate);
lockAnimate(40 * 1)
lockAnimate(40 * 2)
lockAnimate(40 * 3)

)
code(Var)
return

::proload::
::proloadimg::
Var =
(
const preLoadImages = (imgs) => {
  var imgWrap = [];
  imgs.forEach(function (path) {
       new Image().src = path;
  });
}
preLoadImages(['./bg.png', './bg2.png', './bigBtn_1.svg', './bigBtn_2.svg', './bigBtn_3.svg', './bigBtn_4.svg', './blue_dashed.png', './border.png', './business.svg', './circleBg.png', './companyBg.svg', './dian.png', './dingwei.png', './dingwei2.png', './favicon.png', './green_dashed.png', './k.png', './k.svg', './kuang_leftbottom.png', './kuang_rightbottom.png', './kuang_righttop.png', './layer.png', './logo.svg', './longHeader.svg', './missionCompletionRate.svg', './moshitu_03.png', './numberOfCompletedTasks.svg', './people.png', './regulatoryModel.svg', './search.png', './shortHeader.svg', './totalAnnualTasks.svg', './up.svg',])
)
code(Var)
return