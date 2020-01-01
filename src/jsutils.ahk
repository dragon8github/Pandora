!u::
    Menu, utilsTime, Add, 获取当前时间的秒数, utilsHandler
    Menu, utilsTime, Add, 获取12345的时间选择器, utilsHandler

    Menu, utilsIs, Add, is, utilsHandler
    Menu, utilsIs, Add, isString, utilsHandler
    Menu, utilsIs, Add, isURL, utilsHandler
    Menu, utilsIs, Add, isNumber, utilsHandler
    Menu, utilsIs, Add, isBoolean, utilsHandler
    Menu, utilsIs, Add, isArray, utilsHandler
    Menu, utilsIs, Add, isObject, utilsHandler
    Menu, utilsIs, Add, isPureObject, utilsHandler
    Menu, utilsIs, Add, isFunction, utilsHandler
    Menu, utilsIs, Add, isDate, utilsHandler
    Menu, utilsIs, Add, isPromise, utilsHandler
    Menu, utilsIs, Add, isNaN, utilsHandler
    Menu, utilsIs, Add, isNodeList, utilsHandler
    Menu, utilsIs, Add, isHtml：div instanceof HTMLElement, utilsHandler
    Menu, utilsIs, Add, 判断是否为数字：!isNaN(+params.id), utilsHandler

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
    Menu, utilsIs, Add, is-mobile, utilsHandler
    Menu, utilsIs, Add, isBottom 是否滚动到底部, utilsHandler
    
    
    Menu, utilsDOM, Add, dom.js, utilsHandler
    
    Menu, utilsDOM, Add
    Menu, utilsDOM, Add
    Menu, utilsDOM, Add, parents, utilsHandler
    Menu, utilsDOM, Add, addClass, utilsHandler
    Menu, utilsDOM, Add, hasClass, utilsHandler
    Menu, utilsDOM, Add, removeclass , utilsHandler
    Menu, utilsDOM, Add, getclassname, utilsHandler
    Menu, utilsDOM, Add, getstyle, utilsHandler
    Menu, utilsDOM, Add, setStyle, utilsHandler
    Menu, utilsDOM, Add, setattr, utilsHandler
    Menu, utilsDOM, Add, removeattr, utilsHandler
    Menu, utilsDOM, Add, getComputedStyle(el)['height'], utilsHandler
    
    Menu, utilsDOM, Add
    Menu, utilsDOM, Add
    
    Menu, utilsDOM, Add, create 创建元素, utilsHandler
    Menu, utilsDOM, Add, create 创建img, utilsHandler
    Menu, utilsDOM, Add, 插入body前面, utilsHandler
    Menu, utilsDOM, Add, 插入body后面, utilsHandler
    Menu, utilsDOM, Add, img判断加载完成, utilsHandler
    Menu, utilsDOM, Add, 克隆dom的认知：深浅克隆 document.querySelector('.layer').cloneNode(true), utilsHandler
    
    Menu, utilsDOM, Add
    Menu, utilsDOM, Add
    
    Menu, utilsDOM, Add, getElementPosition 获取元素的定位, utilsHandler
    Menu, utilsDOM, Add, gettop 获取距离顶部的相对距离, utilsHandler
    Menu, utilsDOM, Add, scrollToTop 滚动到头部, utilsHandler
    Menu, utilsDOM, Add, scrollIntoView 滚动到元素可视区域, utilsHandler
    Menu, utilsDOM, Add, scrollIntoView 滚动到元素可视区域（代码实现）, utilsHandler
    Menu, utilsDOM, Add, isBottom 是否滚动到底部, utilsHandler
    
    Menu, utilsDOM, Add
    Menu, utilsDOM, Add
    
    Menu, utilsDOM, Add, injectCss 往页面插入style, utilsHandler
    Menu, utilsDOM, Add, getScriptPath, utilsHandler
    Menu, utilsDOM, Add, onscript/loadscript 加载脚本并等待加载完成, utilsHandler
    Menu, utilsDOM, Add, addcss/link 样式加载器, utilsHandler
    Menu, utilsDOM, Add, 是否隐藏：$('#div').is(':hidden'), utilsHandler
    Menu, utilsDOM, Add, 是否显示：$('#div').is(':visible'), utilsHandler
    
    Menu, utilsDOM, Add
    Menu, utilsDOM, Add
    
    
    Menu, utilsDOM, Add, mask蒙版, utilsHandler
    Menu, utilsDOM, Add, clickOutSide：!el.contains(event.target), utilsHandler
    Menu, utilsDOM, Add, HTML缓存数据：e.dataset 与 data-fuck-you, utilsHandler
    Menu, utilsDOM, Add, 获取当前所在的<script>：document.currentScript, utilsHandler
    Menu, utilsDOM, Add, 获取当前所在的<iframe>：window.frameElement, utilsHandler
    Menu, utilsDOM, Add, mvDOM：移动dom元素到指定目标位置, utilsHandler
    Menu, utilsDOM, Add, document.activeElement.blur(), utilsHandler
    Menu, utilsDOM, Add, 滚动条到底了：el.scrollHeight - el.clientHeight === el.scrollTop, utilsHandler
    
    Menu, utilsPosition, Add, isVisualRange：是否处于可视视图中, utilsHandler


    Menu, utilsPosition, Add, 🍁🍁🍁🍁🍁🍁🍁🍁 element 的定位要素 🍁🍁🍁🍁🍁🍁🍁🍁, utilsHandler
    Menu, utilsPosition, Add, - el.clientHeight：可视高度 , utilsHandler
    Menu, utilsPosition, Add, - el.scrollHeight：真实高度（含滚动条） , utilsHandler
    Menu, utilsPosition, Add, - el.getBoundingClientRect().top：相对窗口的距离 , utilsHandler
    Menu, utilsPosition, Add, - el.scrollTop: 视口可见的顶部，到绝对顶部的距离, utilsHandler 
    
    Menu, utilsPosition, Add, 🍁🍁🍁🍁🍁🍁🍁🍁 event 的定位要素 🍁🍁🍁🍁🍁🍁🍁🍁, utilsHandler
    Menu, utilsPosition, Add, - e.clientY：客户端浏览器视口所在的位置, utilsHandler
    Menu, utilsPosition, Add, - e.pageY：页面所在的位置, utilsHandler
    Menu, utilsPosition, Add, - e.screenY：屏幕所在的位置, utilsHandler
    
    Menu, utilsPosition, Add, 🍁🍁🍁🍁🍁🍁🍁🍁 offset 系列 🍁🍁🍁🍁🍁🍁🍁🍁, utilsHandler
    Menu, utilsPosition, Add, - offsetWidth：getComputedStyle(el).width 返回的可能是百分比，offsetWidth总是返回数值, utilsHandler
    Menu, utilsPosition, Add, - offsetTop：元素相对于定位元素（position默认是body）的偏移量（含scroll）, utilsHandler

    Menu, utilsPosition, Add, 🍁🍁🍁🍁🍁🍁🍁🍁 综合实战 🍁🍁🍁🍁🍁🍁🍁🍁, utilsHandler
    Menu, utilsPosition, Add, 滚动条到底了：el.scrollHeight - el.clientHeight === el.scrollTop, utilsHandler
    

    Menu, utilsObject, Add, 双向数据绑定原理：Object.defineProperty, utilsHandler
    Menu, utilsObject, Add, 对象交集 , utilsHandler
    Menu, utilsObject, Add, flattenObject 以键的路径扁平化对象, utilsHandler
    Menu, utilsObject, Add, dataSet, utilsHandler
    

    Menu, utilsObject, Add,, utilsHandler
    Menu, utilsObject, Add,, utilsHandler

    Menu, utilsObject, Add, for#Object.keys, utilsHandler
    Menu, utilsObject, Add, for#o in obj, utilsHandler
    Menu, utilsObject, Add, for#Object.entries(), utilsHandler
    Menu, utilsObject, Add, for#Object.values(), utilsHandler
    Menu, utilsObject, Add, for#Object.keys(), utilsHandler

    Menu, utilsObject, Add,, utilsHandler
    Menu, utilsObject, Add,, utilsHandler

    Menu, utilsObject, Add, (〜￣△￣)〜认知～(￣▽￣～)：({a = 123`, b = 321`, c = 456} = {}) 对象解构 与 参数默认值, utilsHandler
    Menu, utilsObject, Add, delete person.age 删除对象的属性, utilsHandler
    Menu, utilsObject, Add, Object.assign({}`, ), utilsHandler
    Menu, utilsObject, Add, Object.is 比 === 更严格的比较, utilsHandler
    Menu, utilsObject, Add, 'tail' in cat / cat.hasOwnProperty('tail') 判断对象是否包含某属性, utilsHandler
    
    Menu, utilsObject, Add,, utilsHandler
    Menu, utilsObject, Add,, utilsHandler

    Menu, utilsObject, Add, Object.defineProperty 属性的权限设置 writable（可写） / configurable（可配置）/enumerable（可枚举）, utilsHandler
    Menu, utilsObject, Add, Object.defineProperties 属性的批量权限设置, utilsHandler
    Menu, utilsObject, Add, Object.getOwnPropertyDescriptor({a: 123}`, 'a') 获取属性的配置, utilsHandler
    Menu, utilsObject, Add, getter / setter , utilsHandler

    Menu, utilsSolution, Add, setTitle: 解决微信、QQ、闪银等内置浏览器单页应用无法刷新title的问题, utilsHandler
    Menu, utilsSolution, Add, cookie 库, utilsHandler
    Menu, utilsSolution, Add, Model 类, utilsHandler
    Menu, utilsSolution, Add, rem 解决方案 / 淘宝解决方案, utilsHandler

    Menu, utilsSolution, Add
    Menu, utilsSolution, Add

    Menu, utilsSolution, Add, AMD/CommonJS/factory/module, utilsHandler
    Menu, utilsSolution, Add, UMD、AMD, utilsHandler
    Menu, utilsSolution, Add, cache request axios 缓存请求, utilsHandler

    Menu, utilsSolution, Add
    Menu, utilsSolution, Add

    Menu, utilsSolution, Add, $.autoscroll 自动滚动, utilsHandler
    Menu, utilsSolution, Add, $.scrollforevery 无缝滚动, utilsHandler
    Menu, utilsSolution, Add, dragscroll 拖拽滚动, utilsHandler

    Menu, utilsSolution, Add
    Menu, utilsSolution, Add

    Menu, utilsSolution, Add, lazyload 图片懒加载, utilsHandler
    Menu, utilsSolution, Add, preloadimg 图片预加载, utilsHandler

    Menu, utilsSolution, Add
    Menu, utilsSolution, Add

    Menu, utilsSolution, Add, countDown 倒计时, utilsHandler
    Menu, utilsSolution, Add, copyToClipboard 剪切板, utilsHandler
    Menu, utilsSolution, Add, 全屏F11最新解决方案, utilsHandler
    Menu, utilsSolution, Add, 滚动条到底了：el.scrollHeight - el.clientHeight === el.scrollTop, utilsHandler

    ; @认知 @renzhi
    Menu, utilspractice, Add, 『交换数组赋值法』！大幅度优化, utilsHandler
    Menu, utilspractice, Add, 快速取整的新思路：1553 / 10 | 0, utilsHandler
    Menu, utilspractice, Add, window.onunload 刷新/关闭页面之前发送请求, utilsHandler
    Menu, utilspractice, Add, ...args参数和fn(...args) 入参的技巧和认知, utilsHandler
    Menu, utilspractice, Add, ...args参数和fn.apply(null`, args) 的数组套路, utilsHandler
    Menu, utilspractice, Add, 函数参数对象深度结构与重命名： var a = ({ state: { nums:list`, numGroup`, map } }) => {}, utilsHandler
    Menu, utilspractice, Add, !function(){}()：被遗忘的另一个IIFE, utilsHandler
    
    Menu, utilspractice, Add,
    Menu, utilspractice, Add,
    
    Menu, utilspractice, Add, FormData（multipart/form-data）与URLSearchParams（application/x-www-form-urlencoded）的区别, utilsHandler
    Menu, utilspractice, Add, 多个异步操作时，请毫不犹豫用Promise.all, utilsHandler
    Menu, utilspractice, Add, Promise.allSettled：Promise.all的升级版，忽视reject报错也执行, utilsHandler
    Menu, utilspractice, Add, Promise.race只返回最快的一个, utilsHandler
    
    Menu, utilspractice, Add,
    Menu, utilspractice, Add,
    
    Menu, utilspractice, Add, promise.catch 全局处理与局部传播：在第一次catch的时候throw错误即可, utilsHandler
    Menu, utilspractice, Add, Promise.prototype.finally已经存在了, utilsHandler
    Menu, utilspractice, Add, async/await与箭头函数：async (to`, from`, next) => {}, utilsHandler
    Menu, utilspractice, Add, async/await与传统函数：async function bootstrap() {}, utilsHandler
    Menu, utilspractice, Add, 对象字面量如何使用async/await标记, utilsHandler
    
    
    Menu, utilspractice, Add,
    Menu, utilspractice, Add,
    
    
    Menu, utilspractice, Add, 对象字面量的变量键：this.setState({ [fuckyou]: 'true' }), utilsHandler
    Menu, utilspractice, Add, 解构与split结合：const [language`, country] = locale.split('-'), utilsHandler
    Menu, utilspractice, Add, 强制转化为Boolean类型：!!(a && b), utilsHandler
    Menu, utilspractice, Add, parseInt/parseFloat可以直接移除字符串：parseFloat(layero.css('left')) // '162px' => 162, utilsHandler
    
    Menu, utilspractice, Add,
    Menu, utilspractice, Add,
    
    
    Menu, utilspractice, Add, 拖拽位置公式, utilsHandler
    Menu, utilspractice, Add, koajs 核心函数compose的超简单源码实现, utilsHandler
    Menu, utilspractice, Add, curry2 二元参数的手动柯里化, utilsHandler
    ; renzhi
    
    
    ; @my

    Menu, utilsmy, Add, 图片转base64:img2base64, utilsHandler
    Menu, utilsmy, Add, 新的数组工具：maps, utilsHandler
    Menu, utilsmy, Add, 反转函数参数：我的函数我做主, utilsHandler
    Menu, utilsmy, Add, 经典 token 解决方案：cookie-token-http, utilsHandler
    Menu, utilsmy, Add, Promise.allSettled：Promise.all的升级版，忽视reject报错也执行, utilsHandler
    Menu, utilsmy, Add, loadingdec, utilsHandler
    Menu, utilsmy, Add, IntersectionObserver  template 懒注入、懒加载, utilsHandler
    Menu, utilsmy, Add, IntersectionObserver 无限滚动, utilsHandler
    Menu, utilsmy, Add, exclude: 从对象中排除某个属性, utilsHandler
    Menu, utilsmy, Add, deepset：超强！深度set（deepfind的兄弟方法）, utilsHandler
    Menu, arrayMenu, Add, chunk 数组分块函数:hit / miss, ForHandler
    
    
    Menu, utilsmy, Add
    Menu, utilsmy, Add
    
    Menu, utilsmy, Add, 判断两个数组是否互相包含, utilsHandler
    Menu, utilsmy, Add, ObjectSearch:深度搜索对象/数组, utilsHandler
    Menu, utilsmy, Add, findSameByProperty：对比两个数组找出相同特征的成员, utilsHandler
    Menu, utilsmy, Add, 求同存异：金强的对象特殊合并, utilsHandler
    Menu, utilsmy, Add, 数组成员排列：以大带小 drive, utilsHandler
    Menu, utilsmy, Add, deepfind 深度递归搜索, utilsHandler
    Menu, utilsmy, Add, 加强版map遍历:bettermap, utilsHandler
    
    
    Menu, utilsmy, Add
    Menu, utilsmy, Add
    
    Menu, utilsmy, Add, wait等待工具，必须配合 async/await使用, utilsHandler
    Menu, utilsmy, Add, delay延迟工具，必须配合 async/await使用, utilsHandler
    Menu, utilsmy, Add, 用 IIFE 解决 setInterval 首次不执行的尴尬, utilsHandler
    Menu, utilsmy, Add, setInterval 强大的解决方案, utilsHandler
    Menu, utilsmy, Add, setInterval Switch超简单开关, utilsHandler
    
    
    Menu, utilsmy, Add
    Menu, utilsmy, Add
    
    Menu, utilsmy, Add, loadExec：又是一个比较骚的工具函数 , utilsHandler
    Menu, utilsmy, Add, 堡垒模式：请求条件不满足则排队处理, utilsHandler
    Menu, utilsmy, Add, 轮询监听URL变化：onUrlChange, utilsHandler
    Menu, utilsmy, Add, 为函数注册全局事件: regEvent, utilsHandler
    Menu, utilsmy, Add, 前端日志上传新姿势 navigator.sendBeacon（信标）, utilsHandler
    Menu, utilsmy, Add, 随机在配色网站上获取颜色, utilsHandler
    Menu, utilsmy, Add, StorageEvent：监听 localStorage 数据变化的解决方案, utilsHandler
    Menu, utilsmy, Add, input动态宽度, utilsHandler
    
    
    Menu, utilsmy, Add
    Menu, utilsmy, Add
    
    
    Menu, utilsmy, Add, maybe 神奇的预设函数, utilsHandler
    Menu, utilsmy, Add, (=・ω・=)我的单例版ajax, utilsHandler
    Menu, utilsmy, Add, 获取前6个月/前15天数据, utilsHandler
    Menu, utilsmy, Add, 通过URL判断是否本地开发环境, utilsHandler
    Menu, utilsmy, Add, 微信群组随机取人头, utilsHandler
    Menu, utilsmy, Add, 微信获取头像和人员名册, utilsHandler
    Menu, utilsmy, Add, 钉钉获取组织架构（不成熟）, utilsHandler
    Menu, utilsmy, Add, utils.js, utilsHandler
    

    Menu, utilsjuran, Add, document.designMode = 'on', utilsHandler
    Menu, utilsjuran, Add, 光标移动到最后，对于div contenteditable 特别有效果, utilsHandler
    Menu, utilsjuran, Add, 社会主义点击事件, utilsHandler
    Menu, utilsjuran, Add, anime.js 点击烟花绽放效果, utilsHandler
    Menu, utilsjuran, Add, holder占位图, utilsHandler
    Menu, utilsjuran, Add, HTML打印出一只怪兽, utilsHandler
    
    Menu, utilsmaybe, Add, 数字格式化函数：numberFormatter(11923.4521`, 2) => 12.02k, utilsHandler
    Menu, utilsmaybe, Add, 处理iOS 微信客户端6.7.4 键盘收起页面未下移bug, utilsHandler
    Menu, utilsmaybe, Add, Android 输入法键盘 和 input 问题:scrollIntoViewIfNeeded, utilsHandler
    Menu, utilsmaybe, Add, 获取手机归属地信息：中国移动/中国联通/中国电信, utilsHandler
    Menu, utilsmaybe, Add, js获取root（window）对象, utilsHandler
    Menu, utilsmaybe, Add, stackoverflow愚人节彩蛋效果, utilsHandler
    ;@maybe
    
    
    
    Menu, utilses5, Add, partial：偏应用ES5实现（局部函数工厂）, utilsHandler
    Menu, utilses5, Add, 将参数arguments转化为一个数组Array.prototype.slice.call(arguments), utilsHandler
    Menu, utilses5, Add, (...arr)数组解构的前辈：Array.prototype.push.apply(arr`, newArr), utilsHandler
    Menu, utilses5, Add, 函数调用注入args：successFn.apply(this`, arguments), utilsHandler
    Menu, utilses5, Add, 简写Array.prototype.push.apply的方法：[].push.apply, utilsHandler
    Menu, utilses5, Add, Function.prototype.call：除了参数为数组/类数组以外的都应该使用call，如map/reduce/filter（因为他们的参数都是函数）等, utilsHandler

    Menu, utilsJstest, Add, match 捕获匹配, utilsHandler
    Menu, utilsJstest, Add, 认知：用数组来保存const [`, city`, zipCode] = address.match(cityZipCodeRegex) || [];, utilsHandler

    Menu, utilsJstest, Add, 要匹配多个果然还是要用 match, utilsHandler
    Menu, utilsJstest, Add, //g.exec, utilsHandler
    
    Menu, utilswebpack, Add, require.context, utilsHandler
    Menu, utilswebpack, Add, 异步引入：await import(/* webpackChunkName: 'lodash' */ 'lodash'), utilsHandler
    
    
    Menu, utils2, Add, pm: 回调地狱转promise解决方案, utilsHandler    
    Menu, utils2, Add, uuid 超简易版, utilsHandler
    Menu, utils2, Add, urlparams 获取路由参数, utilsHandler
    Menu, utils2, Add, device 获取设备信息, utilsHandler
    Menu, utils2, Add, merge（既$.extend，这个概念更好，不会与面向对象的继承混淆）, utilsHandler
    Menu, utils2, Add, 获取localStorage剩余容量和最大容量, utilsHandler

    Menu, utils2, Add, , utilsHandler
    Menu, utils2, Add, , utilsHandler



    Menu, utils2, Add, debounce 函数去抖, utilsHandler
    Menu, utils2, Add, throttle 函数节流, utilsHandler
    Menu, utils2, Add, memoized 函数缓存, utilsHandler
    Menu, utils2, Add, timeChunk 分时分批处理函数 , utilsHandler
    Menu, utils2, Add, compose 函数组合, utilsHandler
    Menu, utils2, Add, memoized：函数缓存器, utilsHandler

    Menu, utils2, Add, , utilsHandler
    Menu, utils2, Add, , utilsHandler

    Menu, utils2, Add, JSON.parse(JSON.stringify(...)) 超简易拷贝, utilsHandler
    Menu, utils2, Add, window.requestAnimFrame, utilsHandler
    Menu, utils2, Add, poll 递归, utilsHandler
    Menu, utils2, Add, pad 自动补全, utilsHandler
    Menu, utils2, Add, 首字母大写 _.charAt(0) 的使用, utilsHandler

    Menu, utils2, Add, , utilsHandler
    Menu, utils2, Add, , utilsHandler

    Menu, utils2, Add, filterhtml: 移除html标签，只提取文本text(), utilsHandler
    Menu, utils2, Add, encodeURI URI过滤, utilsHandler
    Menu, utils2, Add, escapeHTML 防止XSS, utilsHandler

    Menu, utils2, Add, , utilsHandler
    Menu, utils2, Add, , utilsHandler

    Menu, utils2, Add, parsePath: 对象路径解析器, utilsHandler
    Menu, utils2, Add, diff: 对比两个json对象是否一致, utilsHandler
    Menu, utils2, Add, fixPos: 根据父层界限调整宽高和位置, utilsHandler
    Menu, utils2, Add, e.dataset 给元素设置数据, utilsHandler
    Menu, utils2, Add, 颜色逻辑转换：hex2rgba, utilsHandler
    Menu, utils2, Add, 获取一个颜色的反色：#000 = #fff, utilsHandler
    Menu, utils2, Add, 路径获取文件名和后缀, utilsHandler
    Menu, utils2, Add, 前端加解密：btoa 和 atob, utilsHandler
    Menu, utils2, Add, 求两个时间之间的有效日期, utilsHandler
    Menu, utils2, Add, 用 settimeout 模拟 setInterval, utilsHandler
    Menu, utils2, Add, dialog 对话框类，支持拖拽, utilsHandler
    Menu, utils2, Add, 求两个数的最大公约数与比例, utilsHandler
    Menu, utils2, Add, 统计 String 每个单词出现的次数, utilsHandler


    
    ; @A @main @fuck @util @utils
    Menu, utilsMenu , Add, 第二页, :utils2
    Menu, utilsMenu, Add, (〜￣△￣)〜认知～(￣▽￣～), :utilspractice    
    Menu, utilsMenu, Add, (=・ω・=) 我的 (｀・ω・´), :utilsmy
    Menu, utilsMenu , Add, es5时代的技巧, :utilses5
    Menu, utilsMenu , Add, is 判断, :utilsIs
    Menu, utilsMenu , Add, DOM 操作, :utilsDOM
    Menu, utilsMenu , Add, Position 操作, :utilsPosition
    Menu, utilsMenu , Add, Object 操作, :utilsObject
    Menu, utilsMenu , Add, 正则表达式, :utilsJstest
    Menu, utilsMenu , Add, webpack与动态引入, :utilswebpack
    Menu, utilsMenu , Add, 时间相关工具, :utilsTime
    
    
    Menu, utilsMenu, Add, , utilsHandler
    Menu, utilsMenu, Add, , utilsHandler
    
    
    Menu, utilssf, Add, 栈（后入先出）: 客栈->酒店->洗盘子->开房->后入->鲜出->压入（push）->弹出（pop）->双p, utilsHandler
    Menu, utilssf, Add, 堆（先入先出）: 一堆人排队->奈何桥早死早投胎->排队, utilsHandler
    
    Menu, utilssf, Add, 
    Menu, utilssf, Add, 
    
    Menu, utilssf, Add, 欧几里得算法（分而治之）：目标使土地分配最大化，不断让宽与高求余，直到整数倍为止, utilsHandler
    
    Menu, utilsMenu , Add, (#-_-)┯━┯  解决方案, :utilsSolution
    Menu, utilsMenu , Add, _(:3」∠)_算法与数据结构, :utilssf

    ; @jiqiao
    Menu, utilsjiqiao, Add, JOJO - 砸瓦鲁多：浏览器暂停术 —— 直接在控制台输入debugger;, utilsHandler
    Menu, utilsjiqiao, Add, console.save 在控制台保存json变量到本地, utilsHandler

    
    Menu, utilsMenu, Add, , utilsHandler
    Menu, utilsMenu, Add, , utilsHandler
    
    Menu, utilsMenu, Add, !!Σ(゜Д゜) 居然还有这种操作？ Σ(ﾟдﾟ;), :utilsjuran
    Menu, utilsMenu, Add, ╮(￣▽￣)╭ 先收起来再说，没准将来会有用呢？ ╮(￣▽￣)╭, :utilsmaybe
    Menu, utilsMenu, Add, ←_←前端小技巧→_→, :utilsjiqiao
    
    Menu, utilsMenu, Show
	Menu, utilsMenu, DeleteAll
    Menu, utils2, DeleteAll
    Menu, utilsIs, DeleteAll
    Menu, utilsDOM, DeleteAll
    Menu, utilsObject, DeleteAll
    Menu, utilssf, DeleteAll
    Menu, utilspractice, DeleteAll
    Menu, utilses5, DeleteAll
    Menu, utilsSolution, DeleteAll
    Menu, utilsmy, DeleteAll
    
return


utilsHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

; @1
if (v == "") {
Var = 
(
)
}

if (v == "钉钉获取组织架构（不成熟）") {
Var =
(
const preview = async () => {
    // 面包屑导航栏
    const breadcrumb = [...document.querySelectorAll('.breadcrumb')]

    // 找到上一级
    const prevIndex = breadcrumb.findIndex(e => e.querySelector('[ng-if="$last"]')) - 1

    if (prevIndex >= 0) {
        // 返回上一级
        breadcrumb[prevIndex].querySelector('a').click()

        // 延迟 click 这个动作的时间
        await wait(_ => {}, 1000)

        // 等待渲染完成
        await waitWhen(_ => document.querySelectorAll('.info').length)
    }
}

class ChainWork {
    constructor(list = [], work = () => {}, master_next = null) {
        this.list = list
        this.work = work
        this.master_next = master_next
        this.current = 0
    }

    async next(next) {
        this.current = this.current + 1
        // 超出长度了
        if (this.current > this.list.length - 1) {
            await preview()
            // 继续上游分支的任务
            this.master_next && this.master_next()
        } else {
            this.exec()
        }
    }

    exec() {
        const cursor = this.list[this.current]
        this.work(cursor, this.next.bind(this))
    }
}

var hasClass = (el, className) => {
  if (el.classList)
    return el.classList.contains(className);
  else
    return new RegExp('(^| )' + className + '( |$)', 'gi').test(el.className);
}

var wait = async (fn = () => {}, t = 0) => {
    // 计时器（开始）
    const startTime = +new Date
    // 执行并等待该函数
    const result = await fn()
    // 计时器停止
    const endTime = +new Date
    // 获取请求消耗的时间
    const intervalTime = t - (endTime - startTime)
    // 返回
    return new Promise((resolve, reject) => setTimeout(() => resolve(result), intervalTime))
}

/**
 ;(async function(){
    var a = await waitWhen(_ => document.getElementById('1234'))
    console.log(20191212102924, a)
 }())
 */
var waitWhen = (conditionFn = () => false, wait = 4000, interval = 10, startTime = Date.now()) => new Promise((resolve, reject) => {
    (function poll() {
        // 获取回调结果
        var result = conditionFn()

        // 获取是否超时
        var isTimeout = Date.now() - startTime > wait

        // 如果条件成立，那么立刻 resolve
        if (result) return resolve(result)

        // 如果时间超时，立刻 reject
        if (isTimeout) return reject(result)

        // 否则继续轮询
        setTimeout(poll, interval)
    }())
})



var poll = async (target, next) => {
    let { index } = target

    // 点击进入子级
    // fixbug：每次都不一样。
    document.querySelectorAll('.team-item .name')[index].click()

    // 延迟 click 这个动作的时间
    await wait(_ => {}, 1000)

    // 等待渲染完成
    await waitWhen(_ => document.querySelectorAll('.info').length, 60 * 1000)

    // 当前列表
    var cur_list = [...document.querySelectorAll('.member-item')]

    // 遍历第一轮
    target.children = cur_list.map((_el, _index) => Object.assign({}, { 
        // 记录当前的索引
        index: _index,
        // 记录名字（可能是用户名或者部门名）
        name: _el.querySelector('.info').innerText.trim(), 
        // 是否具备 children 
        children:  hasClass(_el, 'team-item') ? [] : null,
    }))

    // 找到所有具备子列表的元素
    const childrenList = target.children.filter(_ => _.children)

    // 如果存在则继续深入
    if (childrenList.length) {
        // 开启子分支
        const chain = new ChainWork(childrenList, poll, next)

        // 子分支开始执行
        chain.exec()
    
    // 否则，回到首页
    } else {
        // 返回上一页
        await preview()

        // 开始下一波
        next()
    }
}


var list = [...document.querySelectorAll('.team-item .name')].map((el, index) => ({ index, name: el.innerText,  children: [] }))
const chain = new ChainWork(list, poll)
chain.exec()
)
}

if (v == "图片转base64:img2base64") {
_send("img2base64", true, true)
return
}

if (v == "反转函数参数：我的函数我做主") {
_send("fanzhuan", true, true)
return
}

if (v == "『交换数组赋值法』！大幅度优化") {
Var =
(
// 数组，如果是定义则需要加入 const ，但不能用上下文 this 之类的。
[this.a, this.b] = list.maps(_ => _.a, _ => _.b)

// 如果是对象，请直接使用 assign 即可
Object.assign(newV, oldV)
)
}

if (v == "新的数组工具：maps") {
_send("maps", true, true)
return
}

if (v == "Promise.allSettled：Promise.all的升级版，忽视reject报错也执行") {
_send("Promise.all2", true, true)
return
}

if (v == "经典 token 解决方案：cookie-token-http") {
Var =
(
/**
 请求的时候：

 1、 要获取 refreshToken ，并且判断是否超时？

 2、 如果没有超时，重置过期时间（25分钟）, 如果已经超时，那么跳转到登陆页面重新登陆

 3、 获取 token 如果超时了，那么重新获取。

 5、 如果没有超时，继续请求。加入该 token

 6、 如果后端返回 token失效，则跳转登陆
 */

import axios from 'axios'
import VueCookies from 'vue-cookies'

const warn = msg => {
    // 提示错误
    Message.error(msg)

    // 取消请求
    throw new Error(msg)
}


const kill = msg => {
    // 清空cookie
    clearToken()

    // 跳转到登录页
    router.push('/login')

    // 提示错误
    Message.error(msg)

    // 取消请求
    throw new Error(msg)
}

/**
 * 清空 cookie
 */
const clearToken = () => {
    VueCookies.remove('HTCMP_token')
    VueCookies.remove('HTCMP_refreshToken')
}


/**
 * axios 全局配置
 */
const http = axios.create({
    baseURL: Constant.BASEURL,
    headers: { 'app': 'HTCMP', 'X-Requested-With': 'XMLHttpRequest', 'Content-Type': 'application/json; charset=utf-8' },
    timeout: 1000 * 10,
})

/**
 * 请求拦截
 */
http.interceptors.request.use(async request => {
    // ✖️ 如果是登录是不需要 『Authorization』 或者 『token』 的
    if ('/uaa/auth/login' === request.url) {
        return request

    // 📝 如果是 『重新获取token』，则 『Authorization』 需要设置为 『refreshToken』
    } else if ('/uaa/auth/token' === request.url) {
        const refreshToken = getRefreshToken()
        request.headers['Authorization'] = 'Bearer ' + refreshToken
        return request

    // 🚀 其余 API 的 Authorization 全部都必须用 token
    } else {
        const refreshToken = getRefreshToken()
        const token = await getToken()
        request.headers['Authorization'] = 'Bearer ' + token
        return request
    }
})

/**
 * 响应拦截
 */
http.interceptors.response.use(response => {
    // 获取后端的状态码和数据
    const { code, data } = response

    // 根据后端约定，如果状态码 code 为 9926 的话，就是登陆 token 失效
    if (code === '9926') {
        return kill('登录过期，请重新登录！')
    }

    // 正常返回数据
    return data
})


/**
 * 获取 refreshToken
 */
const getRefreshToken = () => {
    // 从 cookie 中获取 refreshToken
    const refreshToken = VueCookies.get('HTCMP_refreshToken')    

    // 如果 refreshToken 正常则重置一下过期时间
    if (refreshToken) {
        // 重置为120分钟
        VueCookies.set('HTCMP_refreshToken', refreshToken, { expires: '120m' })

        // 返回 refreshToken
        return refreshToken

    // 否则跳转登录
    } else {
        kill('登录超时，请重新登录。')
    }
}


/**
 * 获取 token
 */
const getToken = () => {
    // 从cookie中获取token
    const __TOKEN__ = VueCookies.get('HTCMP_token')

    // 如果 token 失效，则重新获取
    if (!__TOKEN__) {
        // 请求最新的 token
        return http.get('/uaa/auth/token').then(data => {
            // 获取新token
            const token = data.token

            // 重置 token
            VueCookies.set('HTCMP_token', token, { expires: '118m' })

            // 返回token
            return token

        }).catch(err => {
            kill('重新获取 token 失败，请重新登录！')
        })
    }

    // 一切正常，返回 token
    return __TOKEN__
}
)
}

if (v == "认知：用数组来保存const [, city, zipCode] = address.match(cityZipCodeRegex) || [];") {
Var =
(
const address = "One Infinite Loop, Cupertino 95014";
const cityZipCodeRegex = /^[^,\\]+[,\\\s]+(.+?)\s*(\d{5})?$/;
const [, city, zipCode] = address.match(cityZipCodeRegex) || [];
saveCityZipCode(city, zipCode);
)
}

if (v == "isVisualRange：是否处于可视视图中") {
_send("isVR", true, true)
return
}

if (v == "document.designMode = 'on'") {
Var =
(
document.designMode = 'on'
)
}

if (v == "IntersectionObserver 无限滚动") {
Var =
(
<!DOCTYPE html>
<html lang='en'>

<head>
    <meta charset='UTF-8'>
    <!-- mockjs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Mock.js/1.0.0/mock-min.js"></script>
    <!-- axios -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js"></script>

    <style>
        li { display: block; height: 100px; }
        footer { height: 100px; background-color: #000; }
    </style>
</head>

<body>
    <ul id='app'>
        <li>英国发生捅人事件新</li>
        <li>周琦首次回应指责新</li>
        <li>北京地铁临时封闭</li>
        <li>高晓松闹笑话</li>
        <li>郑州彩虹桥拆除新</li>
        <li>复盘最强医保谈判</li>
        <li>北京初雪</li>
        <li>网曝张亮假离婚</li>
        <li>滴滴美团严重失信</li>
        <li>网易又一员工被逼</li>
        <li>呼伦贝尔五彩光柱</li>
        <li>悍匪冯学华判死刑</li>
        <li>曹阳退役</li>
        <li>网银回应罚2943万</li>
        <li>苹果设计师离职</li>
    </ul>
    <footer></footer>
</body>

<script>
Mock.mock("/news/list", "get", {
    "newslist|10": [
        { "news_id|+1": 101, "news_name": "@ctitle", "news_price|50-100.1-2": 0, "news_time": "@date('yyyy-mm-dd')" }
    ]
}).setup({
    timeout: '1000-3000'
})

// loading 装饰器
var loadingDec = (fn, loading = false) => [_ => loading, async (...args) => {
    // 开启Loading
    loading = true
    // 等待函数执行结果
    const result = await fn(...args)
    // 关闭loading
    loading = false
    // 返回结果
    return result
}]

// 模拟请求后端
const loadData = () => axios.get("/news/list")

// 装饰函数
const [isLoading, _loadData] = loadingDec(loadData)

// 渲染列表
const render = items => items.forEach(item => {
    let node = document.createElement('li')
    node.innerText = item.news_name
    document.getElementById('app').appendChild(node)
})

const io = new IntersectionObserver(async elements => {
    // 当前演示只有一个监听对象 footer
    const footer = elements[0]

    // 如果可见，就插入新的内容
    if (footer.isIntersecting && !isLoading()) {
        // 加载十条数据
        const { data } = await _loadData(10)
        // 渲染
        render(data.newslist)
    }
}, {
    /* opts */
})

// 只监听 footer 是否显示即可
io.observe(document.querySelector('footer'))
</script>
</html>
)
}

if (v == "IntersectionObserver  template 懒注入、懒加载") {
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <style>

    img {
        width: 100`%;
        height: 100`%;
    }

    p {
        height: 500px;
    }
    </style>
</head>

<body>
    <div id="app">
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
    </div>
</body>

<script>
const io = new IntersectionObserver(elements => {
    // 所有的监听对象
    console.log(elements)

    // 打印对象的所处情况
    elements.forEach(e => {
        // 如果显示了
        if (e.isIntersecting) {
            // 获取显示的dom
            const target = e.target;
            // 获取 dom 下面 <template> 的内容
            const content = target.querySelector('template').content;
            // 插入到真实内容
            target.appendChild(content);
            // 取消监听
            io.unobserve(target)
        }
    })
}, {
    // 属性决定了什么时候触发回调函数
    threshold: [0, 0.25, 0.5, 0.75, 1],
})

document.querySelectorAll('.lazy-load').forEach((el, key) => {
    io.observe(el)
})

</script>
</html>
)
}



if (v == "loadingdec") {
_send("loadingdec", true, true)
return
}

if (v == "dataSet") {
_send("dataSet", true, true)
return
}

if (v == "pm: 回调地狱转promise解决方案") {
_send("pm", true, true)
return
}

if (v == "统计 String 每个单词出现的次数") {
Var =
(
const map = {}
const str = 'hello world'

str.split('').forEach(key => {
  map[key] = -~map[key]
})

console.log(map)
)
}

if (v == "要匹配多个果然还是要用 match") {
Var =
(
var str = "linear-gradient(to bottom left, cyan 50`%, palegoldenrod 50`%)"
var str2 = "linear-gradient(to bottom,rgba(228, 24, 24, 1), rgba(72, 213, 12, 1))"

var getColor = str => {
	var test_index = /\((.+?),/g

	// 执行结果
	var result = test_index.exec(str)

	// 匹配角度
	var angle = result[1].split(' ').slice(1)

	// 获取颜色字符串
	var color_str = str.substring(result.index + result[0].length, str.length - 1).trim()

	var colors = []

	// 如果出现百分号，说明是类型1
	if (color_str.includes('`%')) {
		// 匹配 `% 百分号
		colors = color_str.match(/(\w+.+?)`%/g)
	// 如果没有，则假设是 rgba/rgb 的情况
	} else if (color_str.includes('rgb')) {
		// 直接按照 rgb/rgba来匹配即可。
		colors = color_str.match(/rgb(a)?\((.+?)\)/g)
	}

	return { angle, colors }
}

console.log(20191118171701, getColor(str))
console.log(20191118171701, getColor(str2))
)
return
}

if (v == "//g.exec") {
Var =
(
// 是否具备规则？ fuckyou-${abc}
const rule = /\$\{(.+?)\}/g.exec(tag)

// 确实有自定义规则：
if (rule) {
  // 获取匹配的 key
  const key = rule[1]

  // 从插槽的实例中获取值
  const data = this.$parent[key]

  // 替换内容
  tag = tag.replace(rule[0], data)
}
)
return
}


if (v == "...args参数和fn.apply(null, args) 的数组套路") {
Var =
(
const arrayPrototype = Array.prototype

// 使用的其实是这个数组原型
export const arrayMethods = Object.create(arrayPrototype)

['push', 'pop', 'shift', 'unshift', 'splice', 'sort', 'reverse'].forEach(method => {
    // 保存原始方法
    const originalMethod = arrayPrototype[method]

    // 监听数组方法
    Object.defineProperty(arrayMethods, method, {
        enumerable: true,
        writable: true,
        configurable: true,
        value: function (...args) {
            return originalMethod.apply(this, args)
        }
    })
})
)
}

if (v == "flattenObject 以键的路径扁平化对象") {
_send("flatobj", true, true)
return
}

if (v == "collapse折叠面板") {
_send("zhedie", true, true)
return
}

if (v == "求两个数的最大公约数与比例") {
Var = 
(
// 求最大公约数
const greatestCommonDivisor = function(m, n) {
	var u = +m,
	    v = +n,
	    t = v;

	while (v != 0) {
	    t = u `% v;
	    u = v;
	    v = t;
	}

	return u
}

const proportion = function (m, n) {
	const v = greatestCommonDivisor(m, n)
	return ``${m/v}:${n/v}``
}

/*
proportion(1920, 1080)
"16:9"

proportion(17280, 4320)
"4:1" 

proportion(12288, 3456)
"32:9"
*/
)
}


if (v == "document.activeElement.blur()") {
_send("da", true, true)
return
}

if (v == "获取当前时间的秒数") {
Var = 
(
// 每一秒等于行走这样的百分比
const unit = 100 / 24 / 60 / 60

// 获取当前时间的秒数
const getDistance = (t = new Date) => t.getHours() * 60 * 60 + t.getMinutes() * 60 + t.getSeconds()

// 单位距离（初始化）
unit * getDistance()
)
}

if (v == "获取12345的时间选择器") {
Var = 
(
export const shortcuts = (function(){
    let ary = [{
        text: '第一季度',
        onClick(picker) {
            const year = moment(picker.date).year()
            const start = new Date(`${year}/01/01`);
            const end = new Date(`${year}/03/31`);
            picker.$emit('pick', [start, end]);
        }
    }, {
        text: '第二季度',
        onClick(picker) {
            const year = moment(picker.date).year()
            const quarter = moment(`${year}0401`).format()
            const now = moment().format()
            if (now > quarter) {
                const start = new Date(`${year}/04/01`);
                const end = new Date(`${year}/06/30`);
                picker.$emit('pick', [start, end]);
            } else {
                return Message(`未找到 ${year}年第2季度的数据`)
            }
        }
    }, {
        text: '第三季度',
        onClick(picker) {
            const year = moment(picker.date).year()
            const quarter = moment(`${year}0701`).format()
            const now = moment().format()
            if (now > quarter) {
                const start = new Date(`${year}/07/01`);
                const end = new Date(`${year}/09/30`);
                picker.$emit('pick', [start, end]);
            } else {
                return Message(`未找到 ${year}年第3季度的数据`)
            }
        }
    }, {
        text: '第四季度',
        onClick(picker) {
            const year = moment(picker.date).year()
            const quarter = moment(`${year}1001`).format()
            const now = moment().format()
            if (now > quarter) {
                const start = new Date(`${year}/10/01`);
                const end = new Date(`${year}/12/31`);
                picker.$emit('pick', [start, end]);
            } else {
                return Message(`未找到 ${year}年第4季度的数据`)
            }
        }
    }, {
        text: '近三个月',
        onClick(picker) {
            // 三个月前的月初
            const threeMonthsAgo = moment().subtract(2, 'month').format('YYYY/MM/01')
            // 转换为date类型
            const start = new Date(threeMonthsAgo)
            // 当天
            const end = moment()._d
            picker.$emit('pick', [start, end])
        }
    },{
        text: '上半年',
        onClick(picker) {
            const year = moment(picker.date).year()
            const start = new Date(`${year}/01/01`);
            const end = new Date(`${year}/06/30`);
            picker.$emit('pick', [start, end]);
        }
    }, {
        text: '下半年',
        onClick(picker) {
            const year = moment(picker.date).year()
            const secondHalf = moment(`${secondHalf}0615`).format()
            const now = moment().format()
            if (now < secondHalf) {
                const start = new Date(`${year}/7/1`);
                const end = new Date(`${year}/12/31`);
                picker.$emit('pick', [start, end]);
            } else {
                return Message(`未找到 ${year}下半年的数据`)
            }
        }
    }, {
        text: '一年',
        onClick(picker) {
            const year = moment(picker.date).year()
            const month = moment().month() + 1
            const day = moment().endOf('month').format('DD')
            const start = new Date(`${year}/01/01`)
            // 如果选择的年小于当前年，那么就是全年，否则就是直到这个月
            const end = year < moment().year() ? new Date(`${year}/12/31`) : new Date(`${year}/${month}/${day}`);
            picker.$emit('pick', [start, end]);
        }
    }]

    return ary
}());

)
}

if (v == "findSameByProperty：对比两个数组找出相同特征的成员") {
Var = 
(
var ary1 = [{qid: 1, serviceitem: 1, bb: []}, {qid: 2, serviceitem: 2, bb: []}, {qid: 3, serviceitem: 3, bb: []},]
var ary2 = [{qid: 2, serviceitem: 2}, {qid: 3, serviceitem: 3},]

var findSameByProperty = (master, slave, property) => {
    // 获取特征
    var propertys = master.map(_ => _[property])
    // 只保留满足特征的元素
    return slave.filter(_ => propertys.includes(_[property]))
}

// 对号入座，小蝌蚪找妈妈的环节
findSameByProperty(ary1, ary2, 'qid').forEach((val, key) => {
    // 找到匹配项目
    var target = ary1.find(_ => _.qid === val.qid)
    // 新组合
    const v = { value: val.qid, label: val.serviceitem }
    // 设置属性
    target['bb'] = Array.isArray(target['bb']) ? [...target['bb'], v] : [v]
})

console.log(ary1)
)
}

if (v == "dialog 对话框类，支持拖拽") {
_send("dialog", true, true)
return
}

if (v == "用 settimeout 模拟 setInterval") {
Var = 
(
const _setInterval = (fn, interval) => {
	_setInterval.timer = setTimeout(() => {
		fn()
		_setInterval(fn, interval)
	}, interval)
}

_setInterval.clear = () => clearTimeout(_setInterval.timer)

// demo 
_setInterval(() => console.log(1), 1000)

// 5秒后清除
setTimeout(() => _setInterval.clear(), 5000);
)
}

if (v == "求两个时间之间的有效日期") {
_send("rangeDate", true, true)
return
}



if (v == "is-mobile") {
_send("is-mobile", true, true)
return
}


if (v == "parents") {
_send("parents", true, true)
}

if (v == "HTML打印出一只怪兽") {
Var = 
(
<!---

                                            ████████
                                            ████████
                                        ████████
                                        ████████
            ████████████    ████    ████████
            ████████████    ████    ████████
        ████████████████████████████████
        ████████████████████████████████
    ████████████████████████████████████
    ████████████████████████████████████
████████████████████████░░░░░░░░████████████
████████████████████████░░░░░░░░████████████
████████████████████████░░░░░░░░████████
████████████████████████░░░░░░░░████████
████████████████████████████████████████
████████████████████████████████████████
████████████████████████████████████████████
████████████████████████████████████████████
████████████████████████████████████████████
████████████████████████████████████████████
████████████████████████████████████████████
████████████████████████████    ████████████
████████████████████████████    ████████████
████████████████████████████████
████████████████████████████████
████████████████████████████████████
████████████████████████████████████

   – @lzh
   – 928532756@qq.com

        very semver 2.0.606-->
)
}

if (v == "loadExec：又是一个比较骚的工具函数") {
_send("loadexec", true, true)
return
}


if (v == "求同存异：金强的对象特殊合并") {
Var = 
(
var a = {a: 1, b: 2}
var b = {a: 3, c: 5}

// 是否是一个对象？
const isObject = input => input != null && Object.prototype.toString.call(input) === '[object Object]'

// 判断两个对象的属性是否重合？
const isKeysRepeat = (a, b) => Object.keys(a).filter(_ => Object.keys(b).includes(_)).length

/**
 * 求同存异 ...
 */
const f = (...args) => args.reduce((prev, curr) => {
    // 如果不是对象，直接返回进入下一次
    if (!isObject(curr)) {
        return prev
    }

    // 判断属性是否重复，如果不重复的话，直接合并即可。
    if (!isKeysRepeat(prev, curr)) {
        return Object.assign({}, prev, curr)
    }

    // 对象遍历，如果是相同的属性，则相加（前提是需要是Number类型），但这里就不判断了。
    for (let [key, val] of Object.entries(curr)) {
        // 如果包含key，那么这两个属性相加
        if (key in prev) {
            // ⚠️ 相加. 这里没有判断是否为Number类型
            prev[key] += val
        // 否则直接迭代
        } else {
            prev[key] = val
        }
    }

    // 返回修改后的 prev
    return prev
}, {})

f(a, b) // => {a: 4, b: 2, c: 5}
)
}

if (v == "判断两个数组是否互相包含") {
_send("arrbaohan", true, true)
return
}

if (v == "为函数注册全局事件: regEvent") {
_send("regEvent", true, true)
return
}


if (v == "前端日志上传新姿势 navigator.sendBeacon（信标）") {
_send("xinbiao", true, true)
return
}


if (v == "前端加解密：btoa 和 atob") {
_send("atob", true, true)
return
}


if (v == "ObjectSearch:深度搜索对象/数组") {
Var = 
(
// 是否为对象
const isObject = input => input != null && Object.prototype.toString.call(input) === '[object Object]'

// 是否为数组
const isArray = input => input instanceof Array || Object.prototype.toString.call(input) === '[object Array]'

/**
 * 深度搜索对象/数组的key ...
 * @target           {Object}   要搜索的对象/数组
 * @searchExpression {Function} 搜索表达式
 * @targetHande      {Function} 命中后的回调函数
 * @maxDeep          {Number}   深入的层级
 *
 */
const ObjectSearch = (target, searchExpression, targetHande, maxDeep = 10) => {
    // 是否为一个对象或者数组
    if (isObject(target) || isArray(target)) {
        // 目标是否满足表达式，如果满足直接操作
        searchExpression(target) && targetHande(target)
        // 遍历
        for (let k in target) {
            // 递归
            ObjectSearch(target[k], searchExpression, targetHande, maxDeep)
        }
    }
}

const demo1 = { a: {b: {c: {fuckyou: 'demo1'}}} }
const demo2 = [ { a: {b: {c: {fuckyou: 'demo2'}}} } ]
const demo3 = { a: { b: { c: [ { a: {b: {c: {fuckyou: 'demo3'}}} } ] } } }

ObjectSearch(demo1, target => 'fuckyou' in target, v => { console.log(20190716140318, v) })
ObjectSearch(demo2, target => 'fuckyou' in target, v => { console.log(20190716140319, v) })
ObjectSearch(demo3, target => 'fuckyou' in target, v => { console.log(20190716140319, v) })

// update demo
ObjectSearch(demo1, target => 'fuckyou' in target, v => { 
    v.fuckyou = 'thinkyou'
    console.log(20190716140939, JSON.stringify(demo1))
})
)
}

if (v == "随机在配色网站上获取颜色") {
Var = 
(
// 从数组中随机获取指定数量的成员
var getRandomArrayElements = (arr, count) => {
    var shuffled = arr.slice(0), i = arr.length, min = i - count, temp, index;
    while (i-- > min) {
        index = Math.floor((i + 1) * Math.random());
        temp = shuffled[index];
        shuffled[index] = shuffled[i];
        shuffled[i] = temp;
    }
    return shuffled.slice(min);
}

// 反色
var colorReverse = oldColor => {
    var oldColor = '0x' + oldColor.replace(/#/g, '');
    var str = '000000' + (0xFFFFFF - oldColor).toString(16);
   return str.substring(str.length - 6, str.length);
}

// 随机在 https://colorhunt.co/palettes/random 中获取
var randColorHunt = num => getRandomArrayElements([...document.querySelectorAll('span[onclick]')].map(_ => _.innerText), num)

// 获取10个
var randColors = randColorHunt(10)

// 打印出颜色的结果
randColors.forEach((val, key) => console.log('`%c' + val, ``background: ${val}; color: #${colorReverse(val.substr(1))}; font-size: 20px``))

// 打印出所有颜色
console.log(randColors)
)
}


if (v == "获取一个颜色的反色：#000 = #fff") {
Var = 
(
function colorReverse(oldColor){
    var oldColor = '0x' + oldColor.replace(/#/g, '');
    var str = '000000' + (0xFFFFFF - oldColor).toString(16);
   return str.substring(str.length - 6, str.length);
}
)
}


if (v == "!function(){}()：被遗忘的另一个IIFE") {
_send("iife", true, true)
return
}


if (v == "光标移动到最后，对于div contenteditable 特别有效果") {
Var = 
(
// https://blog.csdn.net/arthurwanggang/article/details/62416283
// https://segmentfault.com/a/1190000005869372
setTimeout(() => {
	// 先聚焦
    e.target.focus()
	// 获取当前的光标
    var range = window.getSelection()
	// 获取所有内容
    range.selectAllChildren(e.target)
	// 跳转到最后光标
    range.collapseToEnd()
}, 10)
)
}


if (v == "异步引入：await import(/* webpackChunkName: 'lodash' */ 'lodash')") {
Var =
(
const _ = await import(/* webpackChunkName: "lodash" */ 'lodash')
---
button.onclick = e => import(/* webpackChunkName: "print" */ './print').then(module => {
  var print = module.default
  print()
})
)
txtit(Var)
return
}


if (v == "require.context") {
Var = 
(
/**
 * 1. directory {String} -读取文件的路径 
 * 2. useSubdirectories {Boolean} -是否遍历文件的子目录
 * 3. regExp {RegExp} -匹配文件的正则  
 */
const charts = require.context('.', true, /\.js$/)

// 准备导出的模块
let __CHARTS__ = {}

// 1. 必须使用 key() 获取所有路径
// 2. 我获取了除了 ./Chart.js 和 ./index.js 以外所有模块js内容
// 3. 使用 charts(path).default 获取真实模块内容
charts.keys().filter(path => path.lastIndexOf('/') != 1).forEach(path => {
	// 获取 『文件名』 和 『后缀名』
	const [name, ext] = path.substring(path.lastIndexOf('/') + 1).split('.')
	// 以 『文件名』 为 key，模块内容为 value
	__CHARTS__[name] = charts(path).default
})

export default __CHARTS__
)
}

if (v == "路径获取文件名和后缀") {
Var = 
(
const path = './BarChart/HorizontalBarChart.js'
const [name, ext] = path.substring(path.lastIndexOf('/') + 1).split('.')
console.log(20190711100013, name)
)
}

if (v == "match 捕获匹配") {
Var = 
(
match (value) {
    const type = Object.prototype.toString.call(value)
    return type.match(/\[object (.+?)\]/)[1]
},
)
}

if (v == "hex2rgba") {
_send("color2Rgb", true, true)
return
}

if (v == "双向数据绑定原理：Object.defineProperty") {
_send("odf", true, true)
return
}

if (v == "对象交集") {
_send("objectjiaoji", true, true)
return
}

if (v == "setTitle: 解决微信、QQ、闪银等内置浏览器单页应用无法刷新title的问题") {
_send("setTitle", true, true)
return
}





if (v == "wait等待工具，必须配合 async/await使用") {
_send("wait", true, true)
return
}

if (v == "delay延迟工具，必须配合 async/await使用") {
_send("delay", true, true)
return
}


if (v == "console.save 在控制台保存json变量到本地") {
_send("console.save", true, true)
return
}


if (v == "微信获取头像和人员名册") {
Var = 
(
// data:image/png;base64,
const getBase64Image = img => {
    const { width, height } = img
    const canvas = document.createElement('canvas')
    canvas.width = width
    canvas.height = height
    const ctx = canvas.getContext('2d')
    ctx.drawImage(img, 0, 0, width, height)
    const ext = img.src.substring(img.src.lastIndexOf('.') + 1).toLowerCase()
    const dataURL = canvas.toDataURL('image/' + ext)
    return dataURL
}

const img2Base64 = url => new Promise((resolve, reject) => {
   const img = new Image()
   img.setAttribute('crossOrigin', 'anonymous')
   img.src = url
   img.onload = () => resolve(getBase64Image(img))
   img.onerror = () => reject('err')
})

;(async function(){
    const users = [...document.querySelectorAll('.member.ng-scope')]
    const info = users.map(_ => {
        const name = _.querySelector('.nickname').innerText
        const icon = _.querySelector('.avatar').getAttribute('src')
        return { name, icon: ``https://wx.qq.com${icon}``}
    })

    var promise_data = info.map(async (_, index) => {
        var avatar = await img2Base64(_.icon)
        console.log(``已收录${_.name}的头像：${index}``)
        return Object.assign({}, _, { avatar })
    })

    var _data = await Promise.all(promise_data)

    // cosole.save
    console.log('所有数据', _data)
}())

//////////////////////////////////////////////
// 将 base64 转换为头像
//////////////////////////////////////////////
const fs = require('fs').promises
const json = require('./wx.js')

json.forEach(val => {
    const { name, avatar } = val
    const base64Data = avatar.replace(/^data:image\/\w+;base64,/, '')
    const dataBuffer = new Buffer.alloc(base64Data.length, base64Data, 'base64')
    fs.writeFile(`${name}.jpg`, dataBuffer) 
})
)
}


if (v == "FormData（multipart/form-data）与URLSearchParams（application/x-www-form-urlencoded）的区别") {
Var = 
(
import ky from 'ky';
(async () => {
	// `multipart/form-data`
	const formData = new FormData();
	formData.append('food', 'fries');
	formData.append('drink', 'icetea');

	await ky.post(url, {
		body: formData
	});
})();


import ky from 'ky';
(async () => {
	// `application/x-www-form-urlencoded`
	const searchParams = new URLSearchParams();
	searchParams.set('food', 'fries');
	searchParams.set('drink', 'icetea');

	await ky.post(url, {
		body: searchParams
	});
})();
)
}

if (v == "数组成员排列：以大带小 drive") {
Var = 
(
/**
 * 以大带小
 *
 *  const data = drive(newV.data, (a, b) => +a.amount - +b.amount)
 *  this.render(data)
 */
var drive = (ary, fn) => {
    // 数组长度
    const len = ary.length
    // 偶数长度
    const isEven = len `% 2 === 0
    // 从大到小排序
    const _ary = ary.sort(fn)
    // 循环的次数
    const time = isEven ? len / 2 : Math.floor(len / 2) + 1
    // 返回新的数组
    return [...Array(time)].reduce((previousValue, currentValue, index) => {
        // 是否循环的最后一次
        const isLastTime = index === time - 1
        // 如果是奇数的，且最后一次的情况下
        if (!isEven && isLastTime) {
            // 没人可带，带我自己就够了
            return [...previousValue, _ary[index]]
        // 默认都带一个小弟
        } else {
            // 带上小弟
            return [...previousValue, _ary[index], _ary[len - 1 - index]]
        }
    }, [])
}
)
}

if (v == "StorageEvent：监听 localStorage 数据变化的解决方案") {
Var = 
(
// Storage 类
var Storage = {
    setItem(key, newVal) {
        // 获取旧值
        const oldVal = this.getItem(key)
        // 设置新值
        localStorage.setItem(key, newVal)
        // 推送
        this.fire(key, newVal, oldVal)
    },
    removeItem(key) {
        // 获取旧值
        const oldVal = this.getItem(key)
        // 删除
        localStorage.removeItem(key)
        // 推送
        this.fire(key, null, oldVal)
    },
    getItem(k) {
      return localStorage.getItem(k)
    },
    fire(...args) {
        var se = document.createEvent('StorageEvent')
        se.initStorageEvent('storage', false, false, ...args)
        window.dispatchEvent(se)
    }
}

// 监听 storage 事件
window.addEventListener('storage', ({ key, newValue, oldValue } = {}) => {
     console.log(key, newValue, oldValue)
}, false)

// 触发条件
Storage.setItem('a', 123)
)
}

if (v == "克隆dom的认知：深浅克隆 document.querySelector('.layer').cloneNode(true)") {
Var = 
(
document.querySelector('.layer').cloneNode(true)
)
}

if (v == "mvDOM：移动dom元素到指定目标位置") {
_send("mvDOM", true, true)
return
}

if (v == "partial：偏应用ES5实现（局部函数工厂）") {
Var = 
(
function partial(fn, /* args... */) {
	var args = [].slice.call( arguments, 1 );

	return function () {
		return fn.apply( this, args.concat( [].slice.call( arguments ) ) );
	}
}

/* demo：实际上作用很类似 fn.prototype.bind */

function add(a, b) {
	return a + b;
}

var add100 = partial(add, 100);
console.log(add100(14)) // 114
)
}


if (v == "拖拽位置公式") {
Var = 
(
https://github.com/vuegg/vuegg/blob/master/client/src/components/editor/main/Stage.vue#L123

拖拽位置公式 = pageY  - <容器到顶部的距离> + 容器scrollTop - 元素高度/2

容器到顶部的距离 = 容器offsetTop + 其他障碍高度
)
}

if (v == "堡垒模式：请求条件不满足则排队处理") {
_send("baoleimodel", true, true)
return
}

if (v == "滚动条到底了：el.scrollHeight - el.clientHeight === el.scrollTop") {
Var = 
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    .box {
        height: 500px;
        overflow-y: scroll;
    }
    </style>
</head>

<body>
    <div id="app">
        
        <div class="box">
            <p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
            <p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
            <p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
            <p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
            <p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
        </div>
        
        <button onclick='cf()'>test</button>
    </div>
</body>
<script>

const el = document.querySelector('.box')

el.addEventListener('scroll', (event) => {
   if (el.scrollHeight - el.clientHeight === el.scrollTop) {
    console.log(20190517110428, 123)
   }
})

function cf() {
    console.log(20190517105848, el.scrollHeight)
    console.log(20190517105848, el.clientHeight)
    console.log(20190517105848, el.scrollTop)
}

</script>
</html>
)
}

if (v == "把数组像分页一样分割为N段") {
_send("fenye", true, true)
return
}

if (v == "once函数装饰器") {
_send("once", true, true)
return
}

if (v == "获取当前所在的<iframe>：window.frameElement") {
Var = 
(
console.log(window.frameElement);
)
}


if (v == "e.dataset 给元素设置数据") {
Var = 
(
// 方法一：通过js设置（设置完之后，html会出现data-fuck-you="true"的字样。）
$0.dataset['fuckYou'] = 'true'

// 方法二：通过HTML属性设置：
data-fuck-you="true"

// 注意点：
// 1、可以设置多个Dataset
// 2、js设置值必须是驼峰，但HTML设置必须是小写和-相连

// 获取值：
$0.dataset.fuckYou
)
}

if (v == "获取当前所在的<script>：document.currentScript") {
Var = 
(
https://github.com/lukeed/dimport/blob/master/src/module.js#L70
document.currentScript
)
}

if (v == "const { log， warn， info， error， assert  } = console") {
_send("log", true, true)
return
}

if (v == "HTML缓存数据：e.dataset 与 data-fuck-you") {
Var = 
(
<div id="app" data-fuck-you="true"></div>
document.getElementById('app').dataset.fuckYou    
)
}

if (v == "fixPos: 根据父层界限调整宽高和位置") {
_send("fixpos", true, true)
return
}


if (v == "- el.scrollHeight：真实高度（含滚动条）") {
Var = 
(
el.scrollHeight
)
}


if (v == "- el.scrollTop: 视口可见的顶部，到绝对顶部的距离") {
Var = 
(
/**
 * scrollTop 新认知：https://developer.mozilla.org/zh-CN/docs/Web/API/Element/scrollTop
 *
 * 1、他不是固定不变的，这个数据是根据滚动条的位置而定的（float）。
 * 2、如果没有滚动条，那么值为0.
 * 3、scrollTop 值是视口可见的顶部，到绝对顶部的距离。
 * 4、但当我们向上滚的时候，实质是视口向上相对平移运动，由于该运动导致与容器顶部的距离拉近了。所以说：视口越接近顶部，数值越小（趋于0）。
 */
el.scrollTop
)
}

if (v == "getComputedStyle(el)['height']") {
Var = 
(
getComputedStyle(el)['height']
)
}

if (v == "将 if/else 转化为三元表达式示例") {
Var = 
(
return (
  (!parent)
    ? parseInt(window.getComputedStyle(document.getElementById(element.id))[prop])
    : (typeof element[prop] !== 'string')
      ? element[prop]
      : (typeof parent[prop] !== 'string')
        ? parent[prop] * parseInt(element[prop]) / 100
        : parseInt(window.getComputedStyle(document.getElementById(parent.id))[prop]) * parseInt(element[prop]) / 100
`)
)
}

if (v == "- el.clientHeight：可视高度") {
Var = 
(
el.clientHeight
)
}

if (v == "- el.getBoundingClientRect().top：相对窗口的距离") {
Var = 
(
el.getBoundingClientRect().top
)
}
if (v == "- e.clientY：客户端浏览器视口所在的位置") {
Var = 
(
e.clientY
)
}
if (v == "- e.pageY：页面所在的位置") {
Var = 
(
e.pageY
)
}
if (v == "- e.screenY：屏幕所在的位置") {
Var = 
(
e.screenY
)
}
if (v == "- offsetWidth：getComputedStyle(el).width 返回的可能是百分比，offsetWidth总是返回数值") {
Var = 
(
offsetWidth
)
}
if (v == "- offsetTop：元素相对于定位元素（position默认是body）的偏移量（含scroll）") {
Var = 
(
offsetTop
)
}

if (v == "任意值的__proto__拦截器：数组为例") {
Var = 
(
const arrayProto = Array.prototype

// export 
const arrayMethods = Object.create(arrayProto)

;['push', 'pop', 'shift', 'unshift', 'splice', 'sort', 'reverse'].forEach((key) => {
	// raw
	const original = arrayProto[key]
	Object.defineProperty(arrayMethods, key, {
		// 不可枚举
	    enumerable: false,
	    configurable: true,
	    writable: true,
	    value: function mutator (...args) {
	    	console.log('mutator')
	    	return original.apply(this, args)
	    }
	})
})

var a = []
a.__proto__ = arrayMethods
a.push(1) // mutator
)
}


if (v == "diff: 对比两个json对象是否一致") {
_send("diff", true, true)
}

if (v == "parsePath: 对象路径解析器") {
Var = 
(
function parsePath(obj, path) {
    const segments = path.split('.')
    for (let i = 0, len = segments.length; i < len; i++) {
        obj = obj[segments[i]]
    }
    return obj
}

var obj = {
    "a": {
        "b": {
            "c": {
                "d": 123
            }
        }
    }
}
parsePath(obj, 'a.b.c.d') // 123
)
}
if (v == "全屏F11最新解决方案") {
_send("fullpage", true, true)
return
}

if (v == "async/await与传统函数：async function bootstrap() {}") {
Var = 
(
async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  await app.listen(3000);
}
)
}


if (v == "promise.catch 全局处理与局部传播：在第一次catch的时候throw错误即可") {
Var = 
(
new Promise((resolve, reject) => {
   setTimeout(function () {
        reject('fail')
   }, 1000);
}).catch(err => {
    alert("全局错误处理");
    // 继续传播错误，让下一个catch可以捕获
    throw new Error(err)
}).catch(err => {
    alert("局部处误处理");
})
)
}


if (v == "JOJO - 砸瓦鲁多：浏览器暂停术 —— 直接在控制台输入debugger;") {
Var = 
(
debugger;
)
}

if (v == "Promise.prototype.before") {
Var = 
(
Promise.prototype.before = function (fn) {
	(fn instanceof Function || Object.prototype.toString.call(fn) === '[object Function]') && fn()
	return this
}

// 注意，你必须resolve或reject才可以执行.then()
new Promise((resolve, reject) => {
   setTimeout(function () {
        reject('fail')
   }, 1000);
}).before(() => {
	console.log(20190422151455, 'before?')
}).finally(() => {
	console.log(20190422145923, 123)
})
)
}


if (v == "Promise.prototype.finally已经存在了") {
Var = 
(
new Promise((resolve, reject) => {
   setTimeout(function () {
        reject('fail')
   }, 1000);
}).finally(() => {
	console.log(20190422145923, 123)
})
)
}

if (v == "memoized：函数缓存器") {
_send("fncache", true, true)
return
}

if (v == "input动态宽度") {
Var = 
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    #test {
        min-width: 160px;
    }
    </style>
</head>

<body>
    <input type="text" id='test'>
    <div id='test2'></div>
</body>
<script>

const autoWidth = input => {
    // valiteda the input type
    if (input instanceof HTMLInputElement === false) 
        // target must be a input element
        return console.warn('target must be a input element')

    // function
    const setWidth = e => {
        // self or target
        const { style, value } = e.target || e
        // set the width style
        style.width = value.length + 'em'
    }

    // init
    setWidth(input)

    // event
    input.addEventListener('input', setWidth)
}

// 获取input
const target = document.querySelector('#test')

// 设置自动根据文本提高宽度
autoWidth(target)

</script>

</html>
)
}

if (v == "isdom：div instanceof HTMLElement") {
Var = 
(
return div instanceof HTMLElement
)
}


if (v == "数字格式化函数：numberFormatter(11923.4521, 2) => 12.02k") {
Var = 
(
/* 数字 格式化*/
export function numberFormatter(num, digits) {
  const si = [
    { value: 1E18, symbol: 'E' },
    { value: 1E15, symbol: 'P' },
    { value: 1E12, symbol: 'T' },
    { value: 1E9, symbol: 'G' },
    { value: 1E6, symbol: 'M' },
    { value: 1E3, symbol: 'k' }
  ]
  for (let i = 0; i < si.length; i++) {
    if (num >= si[i].value) {
      return (num / si[i].value + 0.1).toFixed(digits).replace(/\.0+$|(\.[0-9]*[1-9])0+$/, '$1') + si[i].symbol
    }
  }
  return num.toString()
}
)
}

if (v == "exclude: 从对象中排除某个属性") {
Var = 
(
export const exclude = (obj, ...attribute) =>  {
  // copy
  let _ = JSON.parse(JSON.stringify(obj))
    // 删除属性
  for (let i = 0, len = attribute.length; i < len; i++) {
    const attr = attribute[i]
      delete _[attr]
  }
  // pure obj
  return _
}
)
}

if (v == "快速取整的新思路：1553 / 10 | 0") {
Var = 
(
1553 / 10 | 0
)
}


if (v == "deepset：超强！深度set（deepfind的兄弟方法）") {
_send("deepset", true, true)
return
}

if (v == "async/await与箭头函数：async (to, from, next) => {}") {
Var = 
(
router.beforeEach(async (to, from, next) => {
  // 这里获取 permissionList
  await store.dispatch('getPermissionList')
})
)
}

if (v == "dom.js") {
_send("dom.js", true, true)
return
}

if (v == "scrollIntoView 滚动到元素可视区域（代码实现）") {
_send("scrollIntoView", true, true)
return
}

if (v == "merge（既$.extend，这个概念更好，不会与面向对象的继承混淆）") {
_send("merge", true, true)
return
}

if (v == "判断是否为数字：!isNaN(+params.id)") {
Var = 
(
// 如果不是数字的话，那么清空
if (!isNaN(+v) === false) {
  e.target.value = ''
  return
}
)
}

if (v == "stackoverflow愚人节彩蛋效果") {
Var = 
(
	/*!
 * Fairy Dust Cursor.js
 * - 90's cursors collection
 * -- https://github.com/tholman/90s-cursor-effects
 * -- https://codepen.io/tholman/full/jWmZxZ/
 */

(function fairyDustCursor() {
  
  var possibleColors = ["#D61C59", "#E7D84B", "#1B8798"]
  var width = window.innerWidth;
  var height = window.innerHeight;
  var cursor = {x: width/2, y: width/2};
  var particles = [];
  
  function init() {
    bindEvents();
    loop();
  }
  
  // Bind events that are needed
  function bindEvents() {
    document.addEventListener('mousemove', onMouseMove);
    document.addEventListener('touchmove', onTouchMove);
    document.addEventListener('touchstart', onTouchMove);
    
    window.addEventListener('resize', onWindowResize);
  }
  
  function onWindowResize(e) {
    width = window.innerWidth;
    height = window.innerHeight;
  }
  
  function onTouchMove(e) {
    if( e.touches.length > 0 ) {
      for( var i = 0; i < e.touches.length; i++ ) {
        addParticle( e.touches[i].clientX, e.touches[i].clientY, possibleColors[Math.floor(Math.random()*possibleColors.length)]);
      }
    }
  }
  
  function onMouseMove(e) {    
    cursor.x = e.clientX;
    cursor.y = e.clientY;
    
    addParticle( cursor.x, cursor.y, possibleColors[Math.floor(Math.random()*possibleColors.length)]);
  }
  
  function addParticle(x, y, color) {
    var particle = new Particle();
    particle.init(x, y, color);
    particles.push(particle);
  }
  
  function updateParticles() {
    
    // Updated
    for( var i = 0; i < particles.length; i++ ) {
      particles[i].update();
    }
    
    // Remove dead particles
    for( var i = particles.length -1; i >= 0; i-- ) {
      if( particles[i].lifeSpan < 0 ) {
        particles[i].die();
        particles.splice(i, 1);
      }
    }
    
  }
  
  function loop() {
    requestAnimationFrame(loop);
    updateParticles();
  }
  
  /**
   * Particles
   */
  
  function Particle() {

    this.character = "*";
    this.lifeSpan = 120; //ms
    this.initialStyles ={
      "position": "absolute",
      "display": "block",
      "pointerEvents": "none",
      "z-index": "10000000",
      "fontSize": "16px",
      "will-change": "transform"
    };

    // Init, and set properties
    this.init = function(x, y, color) {

      this.velocity = {
        x:  (Math.random() < 0.5 ? -1 : 1) * (Math.random() / 2),
        y: 1
      };
      
      this.position = {x: x - 10, y: y - 20};
      this.initialStyles.color = color;

      this.element = document.createElement('span');
      this.element.innerHTML = this.character;
      applyProperties(this.element, this.initialStyles);
      this.update();
      
      document.querySelector('body').appendChild(this.element);
    };
    
    this.update = function() {
      this.position.x += this.velocity.x;
      this.position.y += this.velocity.y;
      this.lifeSpan--;
      
      this.element.style.transform = "translate3d(" + this.position.x + "px," + this.position.y + "px, 0) scale(" + (this.lifeSpan / 120) + ")";
    }
    
    this.die = function() {
      this.element.parentNode.removeChild(this.element);
    }
    
  }
  
  /**
   * Utils
   */
  
  // Applies css `properties` to an element.
  function applyProperties( target, properties ) {
    for( var key in properties ) {
      target.style[ key ] = properties[ key ];
    }
  }
  
  init();
})();
)
}

if (v == "utils.js") {
_send("utils.js", true, true)
return
}

if (v == "UMD、AMD") {
_send("UMD", true, true)
return
}

if (v == "对象字面量的变量键：this.setState({ [fuckyou]: 'true' })") {
Var = 
(
var visible = 'fuckyou'
console.log({[visible]: 'true'}) // { fuckyou: 'true' }
)
}

if (v == "微信群组随机取人头") {
Var = 
(
/**
 * 1、打开微信网页版
 * 2、打开一个群，点击下拉菜单。
 * 3、打开控制台输入该脚本：[...document.querySelectorAll('.members .nickname')].map(_ => _.innerText)
 * 
 */
// 费雪耶兹（Fisher–Yates） 也被称作高纳德（ Knuth）随机置乱算法
function shuffle(target) {
    var j, x, i = target.length;
    for (; i > 0; j = parseInt(Math.random() * i), x = target[--i], target[i] = target[j], target[j] = x) {}
    return target
}
var peoples = shuffle([...document.querySelectorAll('.members .nickname')].map(_ => _.innerText))
peoples.slice(0, 6)

//////////////////////////////////////////////
// 或者用这种更快一点
//////////////////////////////////////////////
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

if (v == "setInterval Switch超简单开关") {
Var = 
(
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
</head>
<body>
    <div id="app" style="width: 600px; height:400px;"></div>
</body>

<script>
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('app'))

// mock data
var data = [
    { value: 10, name: '就业保障类' },
    { value: 15, name: '城市建设类' },
    { value: 25, name: '民政救济类' },
    { value: 20, name: '市场监管类' },
    { value: 35, name: '市容城管类' },
    { value: 30, name: '公共安全类' },
    { value: 40, name: '公安消防类' },
]

// 核心配置
var option = {
    legend: {
        x: 'center',
        y: 'bottom',
        data: data.map(_ => _.name)
    },
    series: [{
        type: 'pie',
        radius: [25, 95],
        center: ['50`%', 140],
        roseType: 'area',
        clockWise: false,
        itemStyle: {
            normal: {
                label: {
                    formatter: ['{b}', '占比{d}`%'].join('\n'),
                    textStyle: { color: '#000', fontSize: 12 }
                },
            },
            emphasis: {
                label: {
                    textStyle: { color: '#000', fontSize: 24 }
                }
            }
        },
        data: data
    }]
}

myChart.setOption(option)

function Switch () {
    // 当前索引
    let current = 0;
    // 节点数量
    let len = myChart.getOption().series[0].data.length
    // 开始轮播
    let timer = null

    // 返回一个开始按钮
    const start = function () {
        // 如果已经存在，则不重复执行
        if (timer)
            return timer

        return timer = setInterval(() => {
               // 先取消上一次高亮
               myChart.dispatchAction({ type: 'downplay', seriesIndex: 0, dataIndex: current `% len })
               // 高亮当前节点
               myChart.dispatchAction({ type: 'highlight', seriesIndex: 0, dataIndex: ++current `% len })
        }, 1500)
    }

    // 返回一个关闭按钮
    const stop = function () {
        // 消除定时器
        timer = clearInterval(timer)
        // 关闭高亮
        myChart.dispatchAction({ type: 'downplay', seriesIndex: 0, dataIndex: current `% len })
    }

    return { start, stop }
}

// 获取开关
let _switch = Switch()

// 开启
_switch.start()

/**
 * 虽然 Echarts 有提供 mycharts.on('mouseover') 和 mycharts.on('mouseout')。
 * 但建议还是直接用 DOM 来主导 mouseover/mouseout，否则有一些麻烦的问题。
 * 请自行斟酌选择使用。
 */

// 移动过去就暂停
document.getElementById('app').addEventListener('mouseover', () => {
    _switch.stop()
})

// 移动过去就开启
document.getElementById('app').addEventListener('mouseout', () => {
    _switch.start()
})
</script>
</html>
)
}

if (v == "setInterval 强大的解决方案") {
Var = 
(
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
</head>
<body>
    <div id="app" style="width: 600px; height:400px;"></div>
</body>

<script>
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('app'))

// mock data
var data = [
    { value: 10, name: '就业保障类' },
    { value: 15, name: '城市建设类' },
    { value: 25, name: '民政救济类' },
    { value: 20, name: '市场监管类' },
    { value: 35, name: '市容城管类' },
    { value: 30, name: '公共安全类' },
    { value: 40, name: '公安消防类' },
]

// 核心配置
var option = {
    legend: {
        x: 'center',
        y: 'bottom',
        data: data.map(_ => _.name)
    },
    series: [{
        type: 'pie',
        radius: [25, 95],
        center: ['50`%', 140],
        roseType: 'area',
        clockWise: false,
        itemStyle: {
            normal: {
                label: {
                    formatter: ['{b}', '占比{d}`%'].join('\n'),
                    textStyle: { color: '#000', fontSize: 12 }
                },
            },
            emphasis: {
                label: {
                    textStyle: { color: '#000', fontSize: 24 }
                }
            }
        },
        data: data
    }]
}

myChart.setOption(option)

/**
 * MerryGoRound
 *
 * @param  {Function} 需要轮询的函数
 * @param  {Number}   轮询间隔
 * @param  {Number}   索引开始位置
 */
function MerryGoRound (fn, interval = 1500, current = 0) {
    // 时间器
    let timer = null

    // 开始
    const start = function (reset = false, IIFE = false) {
        // 是否重置？
        if (reset) {
            timer = null
            current = 0
        }

        // 如果旋转木马已经启动，那么不重复开启
        if (timer) {
            return timer
        }

        // 如果不是函数那么返回错误
        if (fn instanceof Function === false) {
            return console.warn('First arguments must be a function.')
        }

        // 是否使用 IIFE 解决 setInterval 首次不执行的尴尬
        IIFE && fn(current++)

        // 设置计时器timer
        timer = setInterval(() => fn(current++), interval)

        // 还是要返回timer好一点
        return timer
    }

    // 停止
    const stop = function (reset = false, stopfn) {
        // 停止回调函数
        stopfn && stopfn(current)

        // 是否重置索引为0
        if (reset) {
            current = 0
        }

        // 清空轮播器
        timer = clearInterval(timer)
    }

    // 返回开关
    return { start, stop }
}

// 我的echarts的轮播器核心函数
var wheelPlanting = (len, current) => {
    // 先取消上一次高亮
    myChart.dispatchAction({ type: 'downplay', seriesIndex: 0, dataIndex: current `% len })
    // 高亮当前节点
    myChart.dispatchAction({ type: 'highlight', seriesIndex: 0, dataIndex: ++current `% len })
}

// 获取节点的数量
const len = myChart.getOption().series[0].data.length

// 预设值（参考【偏应用】和【科里化】的简易做法）
var _wheelPlanting = wheelPlanting.bind(null, len)

// 返回一个开关
var _switch = new MerryGoRound(_wheelPlanting)

// 按下 “开”
_switch.start()

/**
 * 虽然 Echarts 有提供 mycharts.on('mouseover') 和 mycharts.on('mouseout')。
 * 但建议还是直接用 DOM 来主导 mouseover/mouseout，否则有一些麻烦的问题。
 * 请自行斟酌选择使用。
 */

// 移动过去就暂停
document.getElementById('app').addEventListener('mouseover', () => {
    // 停止，实际上这个stopfn回调，最好也是用一下预设值，但为了简单还是直接使用了位于全局的len。特殊情况再特殊处理吧。
    _switch.stop(false, current => {
        // 先取消上一次高亮
        myChart.dispatchAction({ type: 'downplay', seriesIndex: 0, dataIndex: current `% len })
    })
})

// 移动过去就开启
document.getElementById('app').addEventListener('mouseout', () => {
    _switch.start()
})
</script>
</html>
)
}


if (v == "参数缓存器") {
_send("paramscache", true, true)
return
}


if (v == "用 IIFE 解决 setInterval 首次不执行的尴尬") {

Var = 
(
(function(fn, t) {
	// 立即执行一次，这也是这个IIFE的目的：为了解决 setInterval 首次不执行的尴尬
	fn && fn()
	// 返回计时器timer
	return setInterval(fn, t)
})(f, 6000)
)
}

if (v == "通过URL判断是否本地开发环境") {
Var = 
(
const baseUrl = (function(){
	if (window.location.origin === 'file://' || ~window.location.host.indexOf("localhost") || ~window.location.host.indexOf("192.168")) {
		return 'http://12345v1.dgdatav.com:6080'
	} else {
		return '/api'
	}
}());
)
}

if (v == "将参数arguments转化为一个数组Array.prototype.slice.call(arguments)") {
Var = 
(
Array.prototype.slice.call(arguments)
)
}

if (v == "首字母大写 _.charAt(0) 的使用") {
Var = 
(
['lee', 'mp'].map(_ => _.charAt(0).toUpperCase() + _.substr(1)) //  ["Lee", "Mp"]
)
}


if (v == "欧几里得算法（分而治之）：目标使土地分配最大化，不断让宽与高求余，直到整数倍为止") {
_send("oujilide", true, true)
return
}

if (v == "timeChunk 分时分批处理函数") {
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
}

if (v == "超简单的currying与理财花销实例") {
Var = 
(
var currying = function (fn) {
	var args = [];
	return function () {
		// 新设计：如果不传参数则立刻返回当前计算结果
		if ( arguments.length === 0 ) {
			// 返回执行结果
			return fn.apply(this, args);
		} else {
			// 将参数加入缓存
			Array.prototype.push.apply( args, arguments );
			// 返回本函数
			return arguments.callee;
		}
	}
}

// 测试：理财函数
var cost = function(){
	return Array.prototype.reduce.call(arguments, function (previousValue, currentValue, index, array) {
		return previousValue + currentValue
	}, 0)
};

// cost(100, 200, 300, 400)

var curring_cost = currying(cost)

curring_cost( 1000 )
curring_cost( 1000 )
curring_cost( 1000 )
curring_cost( 1000 )

curring_cost(  )
)
}

if (v == "Function.prototype.call：除了参数为数组/类数组以外的都应该使用call，如map/reduce/filter（因为他们的参数都是函数）等") {
Var = 
(
var cost = (function(){
	var money = 0;
	return function () {
		return Array.prototype.reduce.call(arguments, function (previousValue, currentValue, index, array) {
		    return previousValue + currentValue
		}, 0)
	}
}());

cost(100, 200, 300, 400)
)
}

if (v == "简写Array.prototype.push.apply的方法：[].push.apply") {
Var = 
(
[].push.apply
)
}

if (v == "(...arr)数组解构的前辈：Array.prototype.push.apply(arr, newArr)") {
Var = 
(
Array.prototype.push.apply(arr, newArr)
)
}


if (v == "函数调用注入args：successFn.apply(this, arguments)") {
Var = 
(
successFn.apply(this, arguments)
)
}


if (v == "去重复版本的axios") {
_send(singaxios)
return
}

if (v == "(=・ω・=)我的单例版ajax") {
_send(singeajax)
return
}
if (v == "强制转化为Boolean类型：!!(a && b)") {
Var = 
(
var a = 1, b = 0
console.log(!!(a && b))
)
}

if (v == "img判断加载完成") {
_send(imgonload)
return
}


if (v == "create 创建img") {
_send(createimg)
return
}


if (v == "mask蒙版") {
_send(mask)
return
}

if (v == "create 创建元素") {
Var = 
(
var div = document.createElement('div')
div.style = 'position: fixed; top: 0; right: 0; bottom: 0; left: 0; z-index: 199307100337; background-color: rgba(0,0,0,.3);'
document.body.append(div)
// document.body.insertBefore(div, document.body.firstChild)
)
}

if (v == "插入body前面") {
Var = 
(
var div = document.createElement('div')
div.style = 'position: fixed; top: 0; right: 0; bottom: 0; left: 0; z-index: 199307100337; background-color: rgba(0,0,0,.3);'
div.innerHTML = '123'
// document.body.append(div)
document.body.insertBefore(div, document.body.firstChild)
)
}

if (v == "插入body后面") {
Var = 
(
var div = document.createElement('div')
div.style = 'position: fixed; top: 0; right: 0; bottom: 0; left: 0; z-index: 199307100337; background-color: rgba(0,0,0,.3);'
div.innerHTML = '123'
document.body.append(div)
// document.body.insertBefore(div, document.body.firstChild)
)
}


if (v == "函数参数对象深度结构与重命名： var a = ({ state: { nums:list, numGroup, map } }) => {}") {
Var = 
(
var a = ({ state: { nums: list, numGroup, map } }) => {
	console.log('num重命名为list了', list, numGroup, map)
}

a({state: {nums: 1, numGroup: 2, map: 3 } })
)
}

if (v == "模拟真实点击click，专门对付clickoutside") {
_send("mockclick", true, true)
return
}

if (v == "koajs 核心函数compose的超简单源码实现") {
Var = 
(
// https://github.com/koajs/compose/blob/master/index.js
function compose (middleware) {
  if (!Array.isArray(middleware)) throw new TypeError('Middleware stack must be an array!')
  for (const fn of middleware) {
    if (typeof fn !== 'function') throw new TypeError('Middleware must be composed of functions!')
  }
  return function (context, next) {
    let index = -1
    return dispatch(0)
    function dispatch (i) {
      if (i <= index) return Promise.reject(new Error('next() called multiple times'))
      index = i
      let fn = middleware[i]
      if (i === middleware.length) fn = next
      if (!fn) return Promise.resolve()
      try {
        return Promise.resolve(fn(context, dispatch.bind(null, i + 1)));
      } catch (err) {
        return Promise.reject(err)
      }
    }
  }
}

const a = async (ctx, next) => {
  console.log(1)
  const hello = await Promise.resolve('hello')
  console.log(hello)

  await next()
  console.log('a end')
}

const b = async (ctx, next) => {
  console.log(2)
  const hello = await Promise.resolve('hello')
  console.log(hello)

  await next()
  console.log('b end')
}

compose([a, b])({});
// 1
// hello
// 2
// hello
// b end
// a end
)
}


if (v == "Promise.race只返回最快的一个") {
Var = 
(
const getName = new Promise((resolve, reject) => {
   setTimeout(function () {
        resolve('success') // reject('fail')
   }, 50);
})

const getNumber = Promise.resolve(1)

Promise.race([getName, getNumber])
	.then(console.log) // 输出 1 只输出最快返回的一个
	.catch(console.log)
)
}

if (v == "anime.js 点击烟花绽放效果") {
Var = 
(
<script src="https://cdn.bootcss.com/animejs/2.2.0/anime.min.js"></script>
<canvas class="fireworks" style="position: fixed; left: 0px; top: 0px; z-index: 1; pointer-events: none;" width="2880" height="832"></canvas>

// fireworks.js

"use strict";
function updateCoords(e) {
    pointerX = (e.clientX || e.touches[0].clientX) - canvasEl.getBoundingClientRect().left,
    pointerY = e.clientY || e.touches[0].clientY - canvasEl.getBoundingClientRect().top
}
function setParticuleDirection(e) {
    var t = anime.random(0, 360) * Math.PI / 180
      , a = anime.random(50, 180)
      , n = [-1, 1][anime.random(0, 1)] * a;
    return {
        x: e.x + n * Math.cos(t),
        y: e.y + n * Math.sin(t)
    }
}
function createParticule(e, t) {
    var a = {};
    return a.x = e,
    a.y = t,
    a.color = colors[anime.random(0, colors.length - 1)],
    a.radius = anime.random(16, 32),
    a.endPos = setParticuleDirection(a),
    a.draw = function() {
        ctx.beginPath(),
        ctx.arc(a.x, a.y, a.radius, 0, 2 * Math.PI, !0),
        ctx.fillStyle = a.color,
        ctx.fill()
    }
    ,
    a
}
function createCircle(e, t) {
    var a = {};
    return a.x = e,
    a.y = t,
    a.color = "#F00",
    a.radius = .1,
    a.alpha = .5,
    a.lineWidth = 6,
    a.draw = function() {
        ctx.globalAlpha = a.alpha,
        ctx.beginPath(),
        ctx.arc(a.x, a.y, a.radius, 0, 2 * Math.PI, !0),
        ctx.lineWidth = a.lineWidth,
        ctx.strokeStyle = a.color,
        ctx.stroke(),
        ctx.globalAlpha = 1
    }
    ,
    a
}
function renderParticule(e) {
    for (var t = 0; t < e.animatables.length; t++)
        e.animatables[t].target.draw()
}
function animateParticules(e, t) {
    for (var a = createCircle(e, t), n = [], i = 0; i < numberOfParticules; i++)
        n.push(createParticule(e, t));
    anime.timeline().add({
        targets: n,
        x: function(e) {
            return e.endPos.x
        },
        y: function(e) {
            return e.endPos.y
        },
        radius: .1,
        duration: anime.random(1200, 1800),
        easing: "easeOutExpo",
        update: renderParticule
    }).add({
        targets: a,
        radius: anime.random(80, 160),
        lineWidth: 0,
        alpha: {
            value: 0,
            easing: "linear",
            duration: anime.random(600, 800)
        },
        duration: anime.random(1200, 1800),
        easing: "easeOutExpo",
        update: renderParticule,
        offset: 0
    })
}
function debounce(e, t) {
    var a;
    return function() {
        var n = this
          , i = arguments;
        clearTimeout(a),
        a = setTimeout(function() {
            e.apply(n, i)
        }, t)
    }
}
var canvasEl = document.querySelector(".fireworks");
if (canvasEl) {
    var ctx = canvasEl.getContext("2d")
      , numberOfParticules = 30
      , pointerX = 0
      , pointerY = 0
      , tap = "mousedown"
      , colors = ["#FF1461", "#18FF92", "#5A87FF", "#FBF38C"]
      , setCanvasSize = debounce(function() {
        canvasEl.width = 2 * window.innerWidth,
        canvasEl.height = 2 * window.innerHeight,
        canvasEl.style.width = window.innerWidth + "px",
        canvasEl.style.height = window.innerHeight + "px",
        canvasEl.getContext("2d").scale(2, 2)
    }, 500)
      , render = anime({
        duration: 1 / 0,
        update: function() {
            ctx.clearRect(0, 0, canvasEl.width, canvasEl.height)
        }
    });
    document.addEventListener(tap, function(e) {
        "sidebar" !== e.target.id && "toggle-sidebar" !== e.target.id && "A" !== e.target.nodeName && "IMG" !== e.target.nodeName && (render.play(),
        updateCoords(e),
        animateParticules(pointerX, pointerY))
    }, !1),
    setCanvasSize(),
    window.addEventListener("resize", setCanvasSize, !1)
}
)
}

if (v == "...args参数和fn(...args) 入参的技巧和认知") {
Var = 
(
emit (name, ...args) {
    // 遍历数组中的所有函数并且执行，注入args
    this.map[name].forEach(_ => _(...args))
    // 能形成链式
    return this
}
)
}

if (v == "多个异步操作时，请毫不犹豫用Pormise.all") {
Var = 
(
const getName = new Promise((resolve, reject) => {
   setTimeout(function () {
        resolve('success') // reject('fail')
   }, 50);
})
Promise.all([getName, getName])
	.then(console.log)
	.catch(console.log)
)
}

if (v == "对象字面量如何使用async/await标记") {
Var = 
(
// 其实很简单，最最前面加入即可。
async init ({ commit, state, dispatch, rootState })  {
    // 获取部门id列表（包含重映射部门id）
    await dispatch('getAllDepartmentItems')
    // 获取事项id列表（包含重映射事项id）
    await dispatch('getAllMatterItems')
},

// 如果是传统的也可以这样
init: async function  ({ commit, state, dispatch, rootState }) {
    // 获取部门id列表（包含重映射部门id）
    await dispatch('getAllDepartmentItems')
    // 获取事项id列表（包含重映射事项id）
    await dispatch('getAllMatterItems')
}
)
}


if (v == "获取localStorage剩余容量和最大容量") {
Var = 
(
// 获取localStorage最大容量
(function(sum = '') {
    // 1kb 
    const unit = (function poll(num) {
        return num.length == 10240 ? num : poll(num += num)
    }('0123456789'))
    // 轮询
    const timer = setInterval(function() {
        const prev = sum
        // 叠加字符串
        sum += unit
        // 开始
        try {
            // 先删除旧的缓存，这样会加快测试速度
            window.localStorage.removeItem('test')
            // 设置新缓存
            window.localStorage.setItem('test', sum)
            // 打印当前进度
            console.log(sum.length / 1024 + 'KB')
        } catch (e) {
            // （可选）保存最后一次可行的缓存
            window.localStorage.setItem('test', prev)
            // 打印出总缓存大小
            console.log(sum.length / 1024 + 'KB超出最大限制')
            // 清除定时器
            clearInterval(timer)
        }
    }, 1)
}())


// 获取sessionStorage的剩余容量
(function(){
    if(!window.sessionStorage) {
        console.log('浏览器不支持sessionStorage');
    }
    var size = 0;
    for(item in window.sessionStorage) {
        if(window.sessionStorage.hasOwnProperty(item)) {
            size += window.sessionStorage.getItem(item).length;
        }
    }
    console.log('当前sessionStorage剩余容量为' + (size / 1024).toFixed(2) + 'KB');
})()
)
}

if (v == "memoized 函数缓存") {
_send(funcache)
return
}

if (v == "是否隐藏：$('#div').is(':hidden')") {
Var = 
(
$('#div').is(':hidden')
)
}

if (v == "是否显示：$('#div').is(':visible')") {
Var = 
(
$('#div').is(':visible')
)
}

if (v == "clickOutSide：!el.contains(event.target)") {
Var = 
(
handle = e => {
  const el = this.container
  // 核心: el.contains()，这里的el就是弹窗本身，换句话就是inSide
  if (el && !el.contains(e.target)) onClickOutside(e)
}

// 点击事件函数
const func = e => {
  // 如果点击的不是弹窗本身，那么关闭它
  if (!this.$refs.tabbar.contains(e.target)) {
    // 取消显示
    this.isShow = false
    // 取消点击事件
    document.removeEventListener('mouseup', func)
  }
}
// clickoutside
document.addEventListener('mouseup', func)
)
}


if (v == "parseInt/parseFloat可以直接移除字符串：parseFloat(layero.css('left')) // '162px' => 162") {
Var = 
(
dict.offset = [
    e.clientX - parseFloat(layero.css('left')),
    e.clientY - parseFloat(layero.css('top'))
;
)
}


if (v == "filterhtml: 移除html标签，只提取文本text()") {
_send(filterhtml)
return
}

if (v == "window.onunload 刷新/关闭页面之前发送请求") {
_send(window.onunload)
return
}

if (v == "js获取root（window）对象") {
Var = 
(
var root = typeof self == 'object' && self.self === self && self ||
            typeof global == 'object' && global.global === global && global ||
            this ||
            {};
)
}


if (v == "高度从0到auto的伸缩特效魔法") {
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    .el {
        transition: max-height 0.5s;
        overflow: hidden;
        max-height: 0;
    }

    .trigger:hover>.el {
        max-height: var(--max-height);
    }
    </style>
</head>

<body>
    <div class="trigger">
        Hover me to see a height transition.
        <div class="el">content</div>
    </div>
</body>
<script>
var el = document.querySelector('.el')
var height = el.scrollHeight
el.style.setProperty('--max-height', height + 'px')
</script>

</html>
)
}

if (v == "获取前6个月/前15天数据") {
Var = 
(
/**
 * 生成日报模式下的 xAxisDate 数据，
 * 业务需求:  如果是日报（day）则是取前半个月的数据，即15条数据
 * @param {String} str 当前用户选择的日报时间
 * @param {Number} len 往前获取多少天？
 * @return {Array} 如：["20181211","20181210","20181209","20181208","20181207", "20181206","20181205","20181204","20181203","20181202", "20181201","20181130","20181129","20181128","20181127"] 
 */
getDayxAxisDate(str, len) {
    // 转化为date对象
    const _date = new Date(str.substring(0, 4), str.substring(4, 6) - 1, str.substring(6, 8))

    // 往前取半个月15天
    return [...Array(len)].map((v, index, array) => {
        // 不断地回退day
        _date.setDate(_date.getDate() - 1)
        // YYYYMMDD
        return _date.getFullYear() + PrefixInteger(_date.getMonth() + 1, 2) + PrefixInteger(_date.getDate(), 2)
        // 翻转一下顺序，让数组符合desc顺序的直觉
    }).reverse()
},

/**
 * 生成月报模式下的 xAxisDate 数据，
 * 业务需求:  如果是月报（month）则是取前半年的数据，即6条数据
 * @param {String} str 当前用户选择的月报时间
 * @param {Number} len 往前获取几个月？
 * @return {Array} 如： ["20181207","20181208","201809","201810","201811","201812"]
 */
getMonthxAxisDate(str, len) {
    // 转化为date对象
    const _date = new Date(str.substring(0, 4), str.substring(4, 6) - 1)
    // 往前取半年6个月
    return [...Array(len)].map((v, index, array) => {
        // 不断地回退month
        _date.setMonth(_date.getMonth() - 1)
        // MM
        return PrefixInteger(_date.getMonth() + 1) + '月'
        // 翻转一下顺序，让数组符合desc顺序的直觉
    }).reverse()
},
)
}




if (v == "获取手机归属地信息：中国移动/中国联通/中国电信") {
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
}


if (v == "Android 输入法键盘 和 input 问题:scrollIntoViewIfNeeded") {
Var = 
(
/**
 * Android 输入法键盘 和 input 问题
 */
if(getSys() === 'Android') {
    window.addEventListener("resize", function() {
        if(document.activeElement.tagName=="INPUT" || document.activeElement.tagName=="TEXTAREA") {
           window.setTimeout(function() {
                document.activeElement.scrollIntoViewIfNeeded();
           }, 0);
       }
    })
}
)
}




if (v == "解构与split结合：const [language, country] = locale.split('-')") {
Var = 
(
const [language, country] = locale.split('-')
)
}

if (v == "模块模式：现代模块实现的基石") {
Var = 
(
var Module = (function($){
    var _$body = $("body");     // we can use jQuery now!
    var foo = function(){
        console.log(_$body);    // 特权方法
    }

    // Revelation Pattern
    return {
        foo: foo
    }
})(jQuery)

Module.foo();
)
}

if (v == "社会主义点击事件") {
Var = 
(
(function() {
    var coreSocialistValues = ["富强", "民主", "文明", "和谐", "自由", "平等", "公正", "法治", "爱国", "敬业", "诚信", "友善"]
      , index = Math.floor(Math.random() * coreSocialistValues.length);
    document.body.addEventListener('click', function(e) {
        if (e.target.tagName == 'A') {
            return;
        }
        var x = e.pageX
          , y = e.pageY
          , span = document.createElement('span');
        span.textContent = coreSocialistValues[index];
        index = (index + 1) `% coreSocialistValues.length;
        span.style.cssText = ['z-index: 9999999; position: absolute; font-weight: bold; color: #ff6651; top: ', y - 20, 'px; left: ', x, 'px;'].join('');
        document.body.appendChild(span);
        animate(span);
    });
    function animate(el) {
        var i = 0
          , top = parseInt(el.style.top)
          , id = setInterval(frame, 16.7);
        function frame() {
            if (i > 180) {
                clearInterval(id);
                el.parentNode.removeChild(el);
            } else {
                i += 2;
                el.style.top = top - i + 'px';
                el.style.opacity = (180 - i) / 180;
            }
        }
    }
}());
)
}

if (v == "urlparams 获取路由参数") {
_send(urlparams)
return
}





if (v == "基于原型模式的继承") {
Var = 
(
var A = function(){};
var B = function(){};
A.prototype = { name: 'sven' };

// 核心
B.prototype = new A();
var b = new B();
console.log( b.name ); // 输出：sven
)
}


if (v == "call 和 apply") {
Var = 
(
)
}


if (v == "AOP - 面向切面编程") {
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
}



if (v == "加强版map遍历:bettermap") {
_send(fuckmap)
return
}

if (v == "injectCss 往页面插入style") {
_send(addstyle)
return
}


if (v == "getScriptPath") {
Var = 
(
// http://stackoverflow.com/questions/2161159/get-script-path
function getScriptPath() {
    var scripts = _doc.currentScript || (function () { var s = _doc.getElementsByTagName('script'); return (s.length) ? s[s.length - 1] : false; })();
    var path = scripts ? scripts.src.split('?')[0] : '';
    return (path.split('/').length > 0) ? path.split('/').slice(0, -1).join('/') + '/' : '';
}
)
}


if (v == "处理iOS 微信客户端6.7.4 键盘收起页面未下移bug") {
Var = 
(
/**
 * 处理iOS 微信客户端6.7.4 键盘收起页面未下移bug
 */
;(/iphone|ipod|ipad/i.test(navigator.appVersion)) && document.addEventListener('blur', (e) => {
    // 这里加了个类型判断，因为a等元素也会触发blur事件
    ['input', 'textarea'].includes(e.target.localName) && document.body.scrollIntoView(false)
}, true)
)
}

if (v == "holder占位图") {
Var = 
(
<script src="https://cdn.bootcss.com/holder/2.9.6/holder.min.js"></script>
<img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
)
}

if (v == "dragscroll 拖拽滚动") {
Var = 
(
export const dragScroll = el => {
    var _window = window
        ,_document = document
        ,mousemove = 'mousemove'
        ,mouseup = 'mouseup'
        ,mousedown = 'mousedown'
        ,EventListener = 'EventListener'
        ,addEventListener = 'add'+EventListener
        ,removeEventListener = 'remove'+EventListener
        ,newScrollX, newScrollY;

    // HERE
    var startx,starty, endx, endy;


    return (function(el, lastClientX, lastClientY, pushed, scroller, cont) {
        (cont = el.container || el)[addEventListener](
            mousedown,
            cont.md = function(e) {
                if (!el.hasAttribute('nochilddrag') ||
                    _document.elementFromPoint(
                        e.pageX, e.pageY
                    `) == cont
                `) {
                    pushed = 1;
                    startx = lastClientX = e.clientX;
                    starty = lastClientY = e.clientY;

                    e.preventDefault();
                }
            }, 0
        `);

        el[addEventListener](
            mouseup, cont.mu = function(e) { 
                pushed = 0;  
                // HERE
                endx = e.clientX;
                endy = e.clientY;
                // setTimeout(function(){ el.classList.remove("dragging"); }, 100);
            }, 0
        `);

        el[addEventListener](
            mousemove,
            cont.mm = function(e) {
                if (pushed) {
                    // HERE
                    // el.classList.add("dragging");
                    (scroller = el.scroller || el).scrollLeft -= newScrollX = (-lastClientX + (lastClientX = e.clientX));
                    scroller.scrollTop -= newScrollY = (-lastClientY + (lastClientY = e.clientY));
                    if (el == _document.body) {
                        (scroller = _document.documentElement).scrollLeft -= newScrollX;
                        scroller.scrollTop -= newScrollY;
                    }
                }

            }, 0
        `)

        return function (CLICKHANDLER) {
            if (Math.abs(starty - endy) <= 1) {
                CLICKHANDLER && CLICKHANDLER(el)
            }
        }
    })(el);
}
)
}

if (v == "$.scrollforevery 无缝滚动") {
Var = 
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/dragscroll/0.0.8/dragscroll.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
    <script>
    </script>
    <style>
    html,
    body {
        margin: 0;
        padding: 0;
    }

    *,
    ::after,
    ::before {
        box-sizing: border-box;
    }

    #app {
        height: 200px;
        background: thin;
        width: 200px;
        overflow: scroll;
        cursor: move;
    }

    p {
        height: 40px;
        margin: 0;
        padding: 0;
    }
    </style>
</head>
<body>
    <div id="app" class='dragscroll'>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
    </div>
</body>
<script>
const $app = $('#app')
const innerHeight = 40
const len = 5
const distance = innerHeight * len
let timer = null
const start = () => {
 timer = setInterval(function() {
     const scrollDistance = $app.scrollTop();
     if (scrollDistance >= distance) {
         $app.scrollTop(0)
     } else {
         $app.scrollTop(scrollDistance + 1)
     }
 }, 10);
}

start()

$('#app').niceScroll({ cursorcolor: 'rgba(0,0,0,0.2)', autohidemode: 'hidden' })

$('#app').mouseover(e => {
    clearInterval(timer);
}).mouseleave(e => {
    start()
})
</script>

</html>
)
}

if (v == "$.autoscroll 自动滚动") {
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
}

if (v == "window.requestAnimFrame") {
_send("requestanimate", true, true)
return
}

if (v == "encodeURI URI过滤") {
Var = 
(
encodeURI
)
}

if (v == "deepfind 深度递归搜索") {
Var = 
(
var fuck = [{"label": "占用道路问题", "value": 31, "children": [{"label": "经营占道", "value": 35, "children": [{"label": "店外经营占道", "value": 40, "children": null }, {"label": "流动摊贩占道", "value": 41, "children": null } ] }, {"label": "垃圾占道", "value": 36, "children": [{"label": "生活垃圾", "value": 42, "children": null }, {"label": "建筑垃圾", "value": 43, "children": null }, {"label": "工业垃圾", "value": 44, "children": null } ] }, {"label": "车辆占道", "value": 37, "children": [{"label": "机动车占道", "value": 45, "children": null }, {"label": "非机动车占道", "value": 46, "children": null } ] }, {"label": "霸占车位", "value": 38, "children": [] }, {"label": "其他占道", "value": 39, "children": [] } ] }, {"label": "“两违”问题", "value": 32, "children": [{"label": "违法建筑", "value": 58, "children": [{"label": "房屋违建", "value": 61, "children": null }, {"label": "小区违建", "value": 62, "children": null }, {"label": "违建棚架", "value": 63, "children": null } ] }, {"label": "违法用地", "value": 59, "children": [] }, {"label": "其他违建", "value": 60, "children": [] } ] }, {"label": "市容设施管理问题", "value": 33, "children": [{"label": "道路损坏", "value": 47, "children": [] }, {"label": "垃圾桶损坏", "value": 48, "children": [] }, {"label": "下水道堵塞", "value": 49, "children": [] }, {"label": "井盖损坏", "value": 50, "children": [] }, {"label": "路灯损坏", "value": 51, "children": [] }, {"label": "树木修剪", "value": 52, "children": [] }, {"label": "水电气", "value": 53, "children": [] }, {"label": "户外广告牌", "value": 54, "children": [] }, {"label": "隔音屏损坏", "value": 55, "children": [] }, {"label": "洒水车问题", "value": 56, "children": [] }, {"label": "其他", "value": 57, "children": [] } ] }, {"label": "其他问题", "value": 34, "children": [] } ]
const deepFind = ({ arr = [], key = '', val = '', children = 'children'} = {}) => {
    // 即将返回的数组
    var main = []
    // 如果没有键也没有值，那么还是直接返回吧
    if (!val || !key) return main
    // 用try方案方便直接中止所有递归的程序
    try {
        // 开始轮询
        (function poll(arr, level) {
            // 如果传入非数组
            if (!Array.isArray(arr)) return
            // 遍历数组
            for (var i = 0; i < arr.length; i++) {
                // 获取当前项
                var item = arr[i]
                // 先占位预设值
                main[level] = item[key]
                // 如果已经找到了
                if (item[key] === val) {
                    // 直接抛出错误中断所有由父及子的所有轮询
                    throw Error
                // 如果存在children，那么深入递归
                } else if (item[children] && item[children].length) {
                    poll(item[children], level + 1)
                // 如果是最后一个了且没有找到值，那么删除之
                } else if (i === arr.length - 1) {
                   // 删除占位预设值
                   main.length = main.length - 1
                }
            }
        })(arr, 0)
    // 错误捕捉仅为程序正常执行
    } catch (err) {}

    // 返回最终数组
    return main
}
var myarr = deepFind({ arr: fuck, key: 'value', val: 63, children: 'children' })
console.log(20181115092957, myarr)
)
}


if (v == "compose 函数组合") {
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
}


if (v == "(〜￣△￣)〜认知～(￣▽￣～)：({a = 123, b = 321, c = 456} = {}) 对象解构 与 参数默认值") {
Var =
(
var abc = ({a = 123, b = 321, c = 456} = {}) => console.log(20181109155055, a)
abc()
)
}

if (v == "Object.assign({}, )") {
Var =
(
Object.assign({}, )
)
}
if (v == "Object.is 比 === 更严格的比较") {
Var =
(
0 === -0 // true
NaN === NaN // false（这也是NaN的特性）

Object.is(0, -0) // false
Object.is(NaN, NaN) // true
)
}

if (v == "'tail' in cat / cat.hasOwnProperty('tail') 判断对象是否包含某属性") {
Var =
(
'tail' in cat
cat.hasOwnProperty('tail')
)
}
if (v == "Object.getOwnPropertyDescriptor({a: 123}, 'a') 获取属性的配置") {
Var =
(
// {value: 123, writable: true, enumerable: true, configurable: true}
Object.getOwnPropertyDescriptor({a: 123}, "a")
)
}
if (v == "Object.defineProperty 属性的权限设置 writable（可写） / configurable（可配置）/enumerable（可枚举）") {
Var =
(
var myObject = {};

Object.defineProperty(myObject, "a", {
  value: 2,
  writable: true,  // 可写
  configurable: true, // 可配置
  enumerable: true  // 可枚举
});

myObject.a // 2
)
}
if (v == "Object.defineProperties 属性的批量权限设置") {
Var =
(

)
}

if (v == "getter / setter") {
Var =
(

)
}

if (v == "delete person.age 删除对象的属性") {
Var =
(
delete person.age
)
}


if (v == "cache request axios 缓存请求") {
_send("request.js", true, true)
return
}

if (v == "AMD/CommonJS/factory/module") {
Var = 
(
(function(root, factory) {
    if (typeof define === 'function' && define.amd) {
        // AMD. Register as an anonymous module.
        define(['exports', 'echarts'], factory);
    } else if (typeof exports === 'object' && typeof exports.nodeName !== 'string') {
        // CommonJS
        factory(exports, require('echarts'));
    } else {
        // Browser globals
        factory({}, root.echarts);
    }
}(this, function(exports, echarts) {
    if (!echarts) {
        log('ECharts is not Loaded');
        return;
    }
}));

;(function (root, factory) {
  if (typeof exports === "object") {
    module.exports = factory();
  } else if (typeof define === "function" && define.amd) {
    define([], factory);
  } else {
    root.FUCKYOU = factory();
  }
}(this,function () {
　　// ...  这里编写你的代码
　　return {
      
   };
});
)
}

if (v == "JSON.parse(JSON.stringify(...)) 超简易拷贝") {
Var = 
(
JSON.parse(JSON.stringify(...))
)
}

if (v == "setattr") {
Var = 
(
el.setAttribute('tabindex', 3);
)
}

if (v == "removeattr") {
Var = 
(
document.querySelector('.fuck').removeAttribute('disabled');
)
}


if (v == "onscript/loadscript 加载脚本并等待加载完成") {
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
}

if (v == "isNodeList") {
Var = 
(
Object.prototype.toString.call(v) === '[object NodeList]'
)
}

if (v == "is") {
Var = 
(
// 仿ramda: https://github.com/ramda/ramda/blob/master/source/is.js
const is = (type, val) => {
	return val != null && val.constructor === type || val instanceof type;
}

is(String, '123')     // => true
is(Number, 123)       // => true
is(Date, new Date())  // => true
is(Object, {})        // => true
is(Array, [])         // => true
)
}

if (v == "curry2 二元参数的手动柯里化") {
Var = 
(
// 二元参数的手动柯里化
function curry2(fn) {
	return function(firstArg){
		return function (secondArg) {
			return fn(firstArg, secondArg)
		}
	}
}
)
}

if (v == "es6.class") {
_send(js.class)
return
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



if (v == "Model 类") {
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
_send("hanshuqudou", true, true)
return
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

if (v == "rem 解决方案 / 淘宝解决方案") {
_send(taobao)
return 
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

if (v == "ClickOutside 点击外部冒泡") {
_send("clickoutside", true, true)
return
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
	;(function poll() {
	  if(++timeout > time * 1000 / 100){
	    return console.error(href + ' timeout');
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
_send(isbottom)
return
}

if (v == "isURL") {
Var = 
(
export const isString = input => Object.prototype.toString.call(input) === '[object String]'
)
}

if (v == "isString") {
Var = 
(
export const isString = input => Object.prototype.toString.call(input) === '[object String]'
)
}

if (v == "isBoolean") {
Var = 
(
export const isBoolean = input => Object.prototype.toString.call(input) === '[object Boolean]'
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


if (v == "pad 自动补全") {
Var = 
(
// 自动补全
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
// 是否为数组
const isArray = input => input instanceof Array || Object.prototype.toString.call(input) === '[object Array]'
)
}

if (v == "isDate") {
Var = 
(
export const isDate = input => input instanceof Date || Object.prototype.toString.call(input) === '[object Date]'
)
}

if (v == "isFunction") {
Var = 
(
export const isFunction = input => input instanceof Function || Object.prototype.toString.call(input) === '[object Function]'
)
}

if (v == "isNumber") {
Var = 
(
export const isNumber = input => (typeof input === 'number' || Object.prototype.toString.call(input) === '[object Number]') && input === input
)
}

if (v == "isPureObject") {
Var = 
(
export const isEmptyObject = obj => {
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
// 是否为对象
export const isObject = input => input != null && Object.prototype.toString.call(input) === '[object Object]'
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


if (v == "uuid 超简易版") {
Var = 
(
// 36位
function getUUID () {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
    return (c === 'x' ? (Math.random() * 16 | 0) : ('r&0x3' | '0x8')).toString(16)
  })
}

// 32位 正式版
const UUIDGeneratorBrowser = () => ([1e7] + -1e3 + -4e3 + -8e3 + -1e11).replace(/[018]/g, c => (c ^ (crypto.getRandomValues(new Uint8Array(1))[0] & (15 >> (c / 4)))).toString(16));
UUIDGeneratorBrowser(); // '7982fcfe-5721-4632-bede-6000885be57d'

// 9位 简易版
const MdUuid = () => Math.random().toString(36).slice(4)
MdUuid() // "r1mca5d4z"
)
}


if (v == "hasClass") {
Var = 
(
export const hasClass = (el, className) => {
  if (el.classList)
    return el.classList.contains(className);
  else
    return new RegExp('(^| )' + className + '( |$)', 'gi').test(el.className);
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
        if (styleName === 'opacity' && ieVersion < 9) {
            element.style.filter = isNaN(value) ? '' : 'alpha(opacity=' + value * 100 + ')';
        } else {
            element.style[styleName] = value;
        }
    }
};
)
}

if (v == "Vue 进度条组件") {
Var = 
(
<template>
    <div class="myprogress" :style='{ width: mywidth }'></div>
</template>

<script>
export default {
  name: 'myprogress',
  data () {
    return {
      mywidth: 0
    }
  },
  methods: {
      go () {
          console.log('go');
      }
  },
  props: {
    _width: {
      default: 0,
      type: String
    }
  },
  components: {

  },
  computed: {

  },
  watch: {
    _width (newV) {
      this.mywidth = 0
      setTimeout(_ => this.mywidth = newV, 50)
    }
  },
  mounted () {
      setTimeout(() => {
        this.mywidth = this._width
      }, 50);
  }
}
</script>

<style lang="scss" scoped>
@import "~@/scss/functions.scss";
.myprogress {
  transition: .5s all ease;
  width: 0;
}
</style>
)
}

code(Var)
return


::base64::
::img2base64::
Var =
(
var getBase64Image = img => {
    var { width, height } = img
    var canvas = document.createElement('canvas')
    canvas.width = width
    canvas.height = height
    var ctx = canvas.getContext('2d')
    ctx.drawImage(img, 0, 0, width, height)
    var ext = img.src.substring(img.src.lastIndexOf('.') + 1).toLowerCase()
    var dataURL = canvas.toDataURL('image/' + ext)
    return dataURL
}


var img2Base64 = url => new Promise((resolve, reject) => {
   var img = new Image()
   img.setAttribute('crossOrigin', 'anonymous')
   img.src = url
   img.onload = function() {
       var base64 = getBase64Image(img)
       resolve(base64)
   }
})


;(async function(){
    var promise_data = data.map(async (_, index) => {
        var avatar = await img2Base64(_.icon)
        console.log(`已收录${_.name}的头像：${index}`)
        return Object.assign({}, _, { avatar })
    })

    var _data = await Promise.all(promise_data)
  
    // cosole.save
    console.log('所有数据', _data)
}())
---
// 将base64转化为图片
const fs = require('fs')
const base64Data = avatar.replace(/^data:image\/\w+;base64,/, "")
const dataBuffer = new Buffer(base64Data, 'base64')
fs.writeFile('images.png', dataBuffer, function(err) {
  console.log('success：' + name)
})
---
// 最新nodejs语法
const { name, avatar } = val
const base64Data = avatar.replace(/^data:image\/\w+;base64,/, '')
const dataBuffer = new Buffer.alloc(base64Data.length, base64Data, 'base64')
fs.writeFile(`${name}.jpg`, dataBuffer) 
)
txtit(Var)
return

::gongyueshu::
Var =
(
// 求最大公约数
const greatestCommonDivisor = function(m, n) {
	var u = +m,
	    v = +n,
	    t = v;

	while (v != 0) {
	    t = u `% v;
	    u = v;
	    v = t;
	}

	return u
}

const proportion = function (m, n) {
	const v = greatestCommonDivisor(m, n)
	return ``${m/v}:${n/v}``
}

/*
proportion(1920, 1080)
"16:9"

proportion(17280, 4320)
"4:1" 

proportion(12288, 3456)
"32:9"
*/
)
code(Var)
return

::webpack::
::webpack.config::
::webpack.config.js::
::webpack.cfg::
Var =
(
// webpack.config.js
const webpack = require('webpack')
const HtmlWebpackPlugin = require('html-webpack-plugin')
const MiniCssExtractPlugin = require('mini-css-extract-plugin')

const ENV = process.env.ENV
const isProd = ENV === 'production'

module.exports = {
    // 如果启动了mode，webpack 顺便会帮你设置好了 process.env.NODE_ENV 
    // 开发模式不压缩打包后代码，生产模式压缩打包后代码
    mode: ENV,

    /**
     * 🚀 启动source-map
     * - source-map：产生文件，产生行列
     * - eval-source-map：不产生文件，产生行类
     * - cheap-source-map：产生文件，不产生列
     * - cheap-module-eval-source-map：不产生文件，不产生列
     */
    devtool: isProd ? 'cheap-module-eval-source-map' : 'source-map',

    /**
     * 🚀 entry 有几种形式：『1. 字符串类型入口』、 『2. 数组类型入口』、 『3. 对象类型入口』、 『4. 数组对象类型入口』、 『5. (异步)函数类型入口』：
     * 1. entry: './src/app.js',
     * 2. entry: [ 'babel-polyfill', './src/index.js' ],
     * 3. entry: { index: './src/index.js', lib: './src/lib.js' },
     * 4. entry: { index: ['babel-polyfill', './src/index.js'], lib: './src/lib.js' },
     * 5. entry: () => new Promise(resolve => setTimeout(() => resolve('./src/index.js'), 1000)),
     *
     * 🚀 如果使用 『1. 字符串类型入口』 和 『2. 数组类型入口』，默认编译出来的文件名为：main.js 
     * 这一点无论你 output.filename 是否采用 [name].js 都是一样的。
     *
     * 🚀 提取 vendor（供应商）: 在 webpack 中一般指工程所使用的库、框架等第三方模块集中打包产生的 bundled
     * 将不会经常变动的文件抽取出来生成一个新的 bundled，有效利用客户端的缓存，在用户后续请求页面时会加快整体的渲染速度。
     * entry: { app: './src/app.js', vendor: ['react', 'react-dom', 'react-router'] }
     */
    entry: { 
        app: ['babel-polyfill', './src/app.js'],
    },

    /**
     * output.path 默认是 ./dist，所以通常我们不配置。
     * output.path 指定资源的输出目录，必须是绝对位置： path: path.join(__dirname, 'dist'),
     * output.filename 可以是相对路径譬如： './js/bundle.js' => ./dist/js/bundle.js
     * output.filename 可以加入指纹来防止浏览器缓存： '[name]@[chunkhash].js'
     *
     * 🚀 publicPath 是一个极其特别重要的配置项，容易和path混淆。 从功能上说： path 是指定资源输出路径，publicPath 是资源请求路径。
     * 假设当前地址是： http://www.google.com/fuck/index.html
     * - publicPath: ''           // => http://www.baidu.com/fuck/bundle.js
     * - publicPath: '/'          // => http://www.baidu.com/bundle.js
     * - publicPath: '/dist/'     // => http://www.baidu.com/dist/bundle.js
     * - publicPath: './js'       // => http://www.baidu.com/fuck/js/bundle.js
     * - publicPath: '../assets'  // => http://www.baidu.com/assets/bundle.js
     */
    output: {
        // filename: isProd ? '[name]@[chunkhash].js' : '[name].js',
        filename: '[name].js',
    },

    module: {
        rules: [{
            // npm install babel-loader @babel/core @babel/preset-env
            test: /\.js$/,
            exclude: /node_modules/,
            use: {
                loader: 'babel-loader',
                options: {
                    cacheDirectory: true,
                    'presets': ['@babel/preset-env']
                },
            },
        }, {
            // npm install ts-loader typescript --save-dev
            test: /\.ts$/,
            use: 'ts-loader',
        }, {
            // npm install url-loader --save-dev
            test: /\.(png|jpg|gif|jpeg|svg)$/,
            use: {
                loader: 'url-loader',
                options: {
                    limit: 10240,
                    name: '[name].[ext]',
                    publicPath: './assets/',
                }
            },
        }, {
            // npm install css-loader mini-css-extract-plugin --save-dev
            // npm config set sass_binary_site-https//npm.taobao.org/mirrors/node-sass
            // npm install sass-loader node-sass
            // 通过配合 html-webpack-plugin 插件的使用，生成的html就会自动引入css文件
            test: /\.(css|scss)$/,
            use: [ 
                isProd ? MiniCssExtractPlugin.loader : 'style-loader', 
                { loader: 'css-loader',  options: { sourceMap: true } },
                'postcss-loader',
                { loader: 'sass-loader', options: { sourceMap: true } },
            ],
        }],
    },

    plugins: [
        // 抽离css
        new MiniCssExtractPlugin({
            filename: '[name].css',
            chunkFilename: '[id].css',
        }),

        // 动态 html
        new HtmlWebpackPlugin({
            template: './src/index.html'
        }),

        // 定义环境变量
        new webpack.DefinePlugin({
            // ⚠️ 这里必须使用 JSON.stringify 输出
            // 在 app.js 中就可以使用了： console.log(20191229005300, ENV)
            // 也可以设置其他类型： JSON.stringify({ TYPE: ['foo', 'bar'] })
            ENV: JSON.stringify('test'),
        })
    ],

    devServer: {
        /**
         * devServer.publicPath 和 output.publicPath 不一样。
         * 前者指的是资源访问目录，譬如 /dist => http://localhost:8099/dist
         * 通常这个目录要和 output.path 目录保持一致。
         */
        publicPath: '/dist',
    },

    // 是否开启监听文件： webpack --watch
    watch: true,  
    // 监听配置
    watchOptions: {
        // 每秒询问多少次
        poll: 1000,
        // 防抖
        aggregateTimeout: 500,  
        // 忽略
        ignored: /node_modules/ 
    },
}
---
// tsconfig.json
{
  "compilerOptions": {
    "module": "commonjs",
    "target": "es5",
    "sourceMap": true,

    "moduleResolution": "node",
    "esModuleInterop": true,
    "allowJs": true,
    "allowUnreachableCode": true,
    "allowUnusedLabels": true,
    "noStrictGenericChecks": true,
    "skipLibCheck": true
  }
}
---
// postcss.config.js
const autoprefixer = require('autoprefixer')

module.exports = {
    plugins: [
        autoprefixer({
            grid: true,
            browsers: [
                'last 99 versions',
            ],
        })
    ]
}
---

# 安装依赖

npm install webpack webpack-cli --save-dev
npm install cross-env --save-dev
npm install babel-polyfill --save-dev
npm install babel-loader @babel/core @babel/preset-env --save-dev
npm install webpack-dev-server --save-dev
npm install ts-loader typescript --save-dev
npm install url-loader --save-dev
npm install css-loader style-loader mini-css-extract-plugin --save-dev
cnpm install sass-loader node-sass --save-dev
cnpm install postcss-loader autoprefixer --save-dev

# package.json

"scripts": {
  "dev": "cross-env ENV=development webpack-dev-server",
  "build": "rm -rf dist && cross-env ENV=production webpack",
  "watch": "rm -rf dist && cross-env ENV=production webpack --watch"
},
)
txtit(Var)
return

::fetchnews::
::fetch_news::
::news::
::newsapi::
Var =
(
;(async function(){
    // 请求发起
    const res = await fetch('https://newsapi.org/v2/top-headlines?country=ch&apiKey=68f714e4d92748fc9c33258bf758e88b')
    // 解析json
    const json = await res.json()
    // 打印结果
    console.log(json)
    // 获取新闻列表： {"source": {"id": null, "name": "Www.srf.ch"}, "author": null, "title": '', "description": '', "url": '', "urlToImage": '', "publishedAt": '', "content": ''}
    const articles = json.articles
}())
)
code(Var)
return

::404::
Var =
(
<svg width="478" height="262" viewBox="0 0 478 262" xmlns="http://www.w3.org/2000/svg"><g fill="none" fill-rule="evenodd"><path d="M296 241.412c27.583 1.286 56.126 3.405 85 6.178v4.018c-28.877-2.778-57.423-4.902-85-6.192v-4.004zm-114 0v4.004c-33.506 1.568-68.442 4.365-103.666 8.073a2028.323 2028.323 0 0 0-54.93 6.525c-5.85.778-11.063 1.5-15.57 2.15a885.689 885.689 0 0 0-5.176.76c-1.447.22-2.468-.53-2.635-1.621a2 2 0 0 1 1.674-2.28 889.659 889.659 0 0 1 5.567-.82c4.521-.65 9.747-1.374 15.613-2.154a2035.73 2035.73 0 0 1 55.039-6.538c35.362-3.722 70.437-6.53 104.084-8.1zm219 8.196a2033.711 2033.711 0 0 1 54.123 6.44c5.866.781 11.092 1.506 15.613 2.156a889.651 889.651 0 0 1 5.203.764c1.456.222 2.205 1.243 2.038 2.335a2 2 0 0 1-2.28 1.674c-.65-.099-1.003-.151-1.411-.212a885.707 885.707 0 0 0-4.12-.602c-4.507-.648-9.72-1.37-15.57-2.15A2028.787 2028.787 0 0 0 401 253.63v-4.022z" fill="#EEE" fill-rule="nonzero"/><path d="M182 230h-1c-5.523 0-10-4.479-10-10.002v-6a5.998 5.998 0 0 1 5.997-5.998h124.006a5.998 5.998 0 0 1 5.997 5.997v6c0 5.525-4.486 10.003-10 10.003h-1v19.01a9.988 9.988 0 0 1-9.992 9.99h-94.016c-5.518 0-9.992-4.472-9.992-9.99V230zm4 0v19.01a5.99 5.99 0 0 0 5.992 5.99h94.016a5.988 5.988 0 0 0 5.992-5.99V230H186zm79 7h16a2 2 0 0 1 0 4h-16a2 2 0 1 1 0-4zm0 8h16a2 2 0 0 1 0 4h-16a2 2 0 1 1 0-4zm-90-31.003v6a6.002 6.002 0 0 0 6 6.003h116c3.308 0 6-2.69 6-6.002v-6a1.998 1.998 0 0 0-1.997-1.998H176.997a1.998 1.998 0 0 0-1.997 1.997z" fill="#EEE" fill-rule="nonzero"/><path d="M197 223a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm28 0a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm28 0a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm28 0a4 4 0 1 1 0-8 4 4 0 0 1 0 8z" fill="#C3B8E3"/><path d="M296 67h1c5.523 0 10 4.479 10 10.002v6A5.998 5.998 0 0 1 301.003 89H176.997A5.998 5.998 0 0 1 171 83.003v-6C171 71.477 175.486 67 181 67h1V55c0-11.046 8.954-20 20-20h17.014a8.498 8.498 0 0 1 8.493-8h22.986c4.53 0 8.233 3.547 8.492 8H276c11.046 0 20 8.954 20 20v12zm-4 0V55c0-8.837-7.163-16-16-16h-74c-8.837 0-16 7.163-16 16v12h106zm-37.028-32a4.512 4.512 0 0 0-4.48-4h-22.985a4.498 4.498 0 0 0-4.48 4h31.945zM175 77.002v6c0 1.103.895 1.998 1.997 1.998h124.006A1.998 1.998 0 0 0 303 83.003v-6A6.002 6.002 0 0 0 297 71H181c-3.308 0-6 2.69-6 6.002z" fill="#EEE" fill-rule="nonzero"/><g transform="translate(227 1)"><rect fill="#FEE1D3" x="6" y="18" width="12" height="4" rx="2"/><rect fill="#FDC4A8" x="3" y="9" width="18" height="4" rx="2"/><rect fill="#FDC4A8" width="24" height="4" rx="2"/></g><path d="M197 82a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm28 0a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm28 0a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm28 0a4 4 0 1 1 0-8 4 4 0 0 1 0 8z" fill="#C3B8E3"/><g fill="#FC6D26"><path opacity=".15" d="M179 89h8v119h-8z"/><path opacity=".1" d="M195 89h8v119h-8z"/><path opacity=".05" d="M211 89h8v119h-8zm16 0h8v119h-8zm16 0h8v119h-8zm16 0h8v119h-8z"/><path opacity=".1" d="M275 89h8v119h-8z"/><path opacity=".15" d="M291 89h8v119h-8z"/></g><path d="M213.508 149.148h3.844v11.93h-3.844v7.547h-12.633v-7.547H187v-10.58l14.623-22.865h11.885v21.515zm10.883-.984c0-6.582 1.073-11.655 3.35-15.238 2.486-3.91 6.34-5.926 11.204-5.926 4.876 0 8.739 2.01 11.226 5.911 2.28 3.577 3.352 8.655 3.352 15.253 0 6.583-1.073 11.653-3.352 15.23-2.487 3.901-6.35 5.91-11.226 5.91-4.863 0-8.718-2.015-11.203-5.925-2.278-3.583-3.351-8.649-3.351-15.215zm62.914.984h3.843v11.93h-3.843v7.547h-12.633v-7.547h-13.875v-10.58l14.623-22.865h11.885v21.515z" fill="#FFF" fill-rule="nonzero"/><path d="M199.194 137H203v-1h-3.167l.64-1H206v-1h-4.888l2.154-3.367h7.242V139H206v1h4.508v12.148h3.844v5.93h-3.844v7.547h-6.633v-7.547H190V157h4v-1h-4v-1h6v-1h-6v-2.625L199.194 137zm4.681 1.32l-8.836 13.828h8.836V138.32zM227.467 151a50.424 50.424 0 0 1-.076-2.836c0-3.125.255-5.846.766-8.164H232v-1h-3.6c.188-.709.404-1.375.646-2H233v-1h-3.527c.245-.523.512-1.01.8-1.465 1.922-3.023 4.813-4.535 8.672-4.535 3.156 0 5.664 1 7.524 3H240v1h7.286c.122.17.24.344.355.523 1.922 3.016 2.882 7.563 2.882 13.641 0 .986-.025 1.931-.076 2.836h-6.946c.041-.88.061-1.826.061-2.836 0-1.625-.054-3.078-.164-4.36L238.882 151h-3.937l7.563-12.07-.047-.14c-.734-1.954-1.906-2.93-3.516-2.93-1.593 0-2.757.976-3.492 2.93-.734 1.952-1.101 5.077-1.101 9.374 0 1.014.018 1.959.054 2.836h-6.939zm.068 1h10.72l-3.036 4.836c.078.25.156.476.234.68.735 1.953 1.899 2.93 3.492 2.93 1.61 0 2.782-.977 3.516-2.93.494-1.313.821-3.152.983-5.516h6.935c-.027.34-.057.673-.092 1H245v1h5.166c-.046.34-.097.674-.152 1H244v1h5.827c-.48 2.32-1.21 4.248-2.186 5.781-1.922 3.016-4.82 4.524-8.696 4.524-3.294 0-5.883-1.102-7.765-3.305H237v-1h-6.576a11.633 11.633 0 0 1-.601-1H234v-1h-4.667c-.941-2.128-1.54-4.795-1.798-8zm56.77-6v6.148h3.843V154H281v1h7.148v3.078h-3.843V159H281v1h3.305v2H278v1h6.305v2.625h-6.633v-7.547h-13.875v-6.703l3.437-5.375h5.53l-3.928 6.148h8.836V146h6.633zm0-1h-6.633v-6.68l-4.268 6.68h-5.53l5.116-8H279v-1h-5.37l1.279-2h9.396v8H279v1h5.305v2zm0-12h-8.756l1.514-2.367h7.242V133z" fill="#333"/><path d="M428 194v-3.993a4.002 4.002 0 0 0-3.993-4.007h-66.014a3.999 3.999 0 0 0-3.993 4.007V200h8a2 2 0 1 1 0 4h-8v5h13a2 2 0 1 1 0 4h-13v8.993a4.002 4.002 0 0 0 3.993 4.007h66.014a3.999 3.999 0 0 0 3.993-4h-13a2 2 0 1 1 0-4h13v-10h-6a2 2 0 1 1 0-4h6v-6h-6a2 2 0 1 1 0-4h6zm-47 36h-23.007c-4.414 0-7.993-3.588-7.993-8.007v-31.986c0-4.422 3.576-8.007 7.993-8.007h66.014c4.414 0 7.993 3.588 7.993 8.007v31.986c0 4.422-3.576 8.007-7.993 8.007H401v25.01a5.989 5.989 0 0 1-6 5.99h-8c-3.313 0-6-2.689-6-5.99V230zm4 0v25.01a2 2 0 0 0 2 1.99h8c1.111 0 2-.888 2-1.99V230h-12zm6 24a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" fill="#EEE" fill-rule="nonzero"/><g transform="translate(375 192)"><path d="M4.724 6.473l2.331 1.888c.43.348.499.973.148 1.406l-.63.779a.997.997 0 0 1-1.406.147L2.836 8.805l-.64.79a.999.999 0 0 1-1.408.15.994.994 0 0 1-.146-1.41l3.143-3.88a.999.999 0 0 1 1.408-.15c.43.347.502.969.146 1.408l-.615.76zm23.44 2.332l-2.331 1.888a.996.996 0 0 1-1.406-.147l-.63-.78a.997.997 0 0 1 .148-1.405l2.331-1.888-.615-.76a.999.999 0 0 1 .146-1.409.994.994 0 0 1 1.408.15l3.143 3.881a.999.999 0 0 1-.146 1.41.994.994 0 0 1-1.408-.15l-.64-.79zM17 2v3c0 .552-.443 1-.999 1h-1.002A.997.997 0 0 1 14 5V2h-.997A.999.999 0 0 1 12 1c0-.552.438-1 1.003-1h4.994A.999.999 0 0 1 19 1c0 .552-.438 1-1.003 1H17z" fill="#C3B8E3"/><path d="M15.593 29c-14.5 0-12.5-5.596-12.5-12.5S8.69 4 15.593 4c6.904 0 12.5 5.596 12.5 12.5s2 12.5-12.5 12.5zm0-4c2.814 0 4.908-.226 6.354-.636 1.003-.284 1.525-.592 1.774-.89.407-.485.527-1.44.421-4.655a64.986 64.986 0 0 1-.049-2.319 8.5 8.5 0 1 0-17 0c0 .683-.013 1.24-.048 2.32-.106 3.215.014 4.169.42 4.655.25.297.772.605 1.775.89 1.446.409 3.54.635 6.353.635zm-.093-1.5a7 7 0 1 1 0-14 7 7 0 0 1 0 14zm0-3a4 4 0 1 0 0-8 4 4 0 0 0 0 8z" fill="#E1DBF1" fill-rule="nonzero"/><circle fill="#6B4FBB" cx="14.5" cy="15.5" r="2.5"/></g><path d="M46.994 106zM44 103h-1.004A2.996 2.996 0 0 1 40 99.998v-1.996A3.005 3.005 0 0 1 42.996 95h22.008A2.996 2.996 0 0 1 68 98.002v1.996A3.005 3.005 0 0 1 65.004 103H64v2.997A3 3 0 0 1 61.006 109H46.994A2.997 2.997 0 0 1 44 105.997V103zm3 0v2.997l14.006.003c-.003 0-.005-1-.006-3H47zm18.004-3c-.006 0-.007-.666-.004-1.998L42.996 98c.006 0 .007.666.004 1.998l22.004.002zm-18.01-39zM44 64h-1.004A2.996 2.996 0 0 0 40 67.002v1.996A3.005 3.005 0 0 0 42.996 72h22.008A2.996 2.996 0 0 0 68 68.998v-1.996A3.005 3.005 0 0 0 65.004 64H64v-2.997A3 3 0 0 0 61.006 58H46.994A2.997 2.997 0 0 0 44 61.003V64zm3 0v-2.997L61.006 61c-.003 0-.005 1-.006 3H47zm18.004 3c-.006 0-.007.666-.004 1.998L42.996 69c.006 0 .007-.666.004-1.998L65.004 67z" fill="#EEE" fill-rule="nonzero"/><path d="M51 55a1 1 0 0 1 .99-1h4.02c.546 0 .99.444.99 1a1 1 0 0 1-.99 1h-4.02a.993.993 0 0 1-.99-1zm-1-4c0-.552.453-1 .997-1h6.006c.55 0 .997.444.997 1 0 .552-.453 1-.997 1h-6.006A.996.996 0 0 1 50 51z" fill="#EFEDF8"/><path d="M43 72h2v23h-2V72zm8 0h2v23h-2V72zm8 0h2v23h-2V72z" fill="#E1DBF1"/><path d="M47 72h2v23h-2V72zm8 0h2v23h-2V72zm8 0h2v23h-2V72z" fill="#EFEDF8"/><path d="M83.039 123.718A15.433 15.433 0 0 1 73.5 127c-2.243 0-4.375-.476-6.3-1.334A15.464 15.464 0 0 1 55.5 131c-8.56 0-15.5-6.94-15.5-15.5 0-1.34.17-2.64.49-3.879C27.301 116.964 18 129.896 18 145c0 19.882 16.118 36 36 36 1.9 0 3.765-.147 5.586-.43A18.027 18.027 0 0 1 59 176c0-6.11 3.072-11.685 8.023-14.984A22.34 22.34 0 0 1 67 160c0-12.15 9.85-22 22-22 .107 0 .214 0 .32.002a35.824 35.824 0 0 0-6.281-14.284zM93.568 139.1c.188.282.307.615.331.973a42.586 42.586 0 0 1 .089 3.938c.008.33.012.66.012.99 0 22.091-17.909 40-40 40s-40-17.909-40-40 17.909-40 40-40c20.087 0 36.715 14.806 39.568 34.099zM89 142c-9.941 0-18 8.059-18 18 0 .63.032 1.255.096 1.874a2 2 0 0 1-1.001 1.944A13.992 13.992 0 0 0 63 176c0 1.113.13 2.207.383 3.267C79.039 174.365 90 159.774 90 143c0-.325-.004-.65-.012-.973A18.323 18.323 0 0 0 89 142zm-46.5 5a6.5 6.5 0 1 1-.25 12.995 8 8 0 1 1-2.82-12.225 6.471 6.471 0 0 1 3.07-.77zm-1.179 4.294a4 4 0 0 1-3.609.089 4 4 0 1 0 1.414 6.113 4 4 0 0 1 3.275-1.498l.099.002a2.5 2.5 0 1 0-1.179-4.706zm4.055-41.255A11.436 11.436 0 0 0 44 115.5c0 6.351 5.149 11.5 11.5 11.5a11.46 11.46 0 0 0 8.682-3.958 4 4 0 0 1 4.646-1.03c1.456.649 3.036.988 4.672.988a11.46 11.46 0 0 0 6.998-2.372A35.903 35.903 0 0 0 54 109c-2.939 0-5.828.351-8.624 1.039z" fill="#EEE" fill-rule="nonzero"/></g></svg>
)
code(Var)
return