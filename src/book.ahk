+b::
; 显示
	Gui, Book:Show,, Book
return


SwitchBook:

; 删除所有树
while(A := TV_GetNext(A)) {
	TV_Delete(top)
}

; 获取当前Tab
GuiControlGet, currentBook,, BookTab 

; 去掉空格符
currentBook := Trim(currentBook)

; 模板
if (currentBook == "") {
}


if (currentBook == "《JavaScript 设计模式》") {
initbook()
}

if (currentBook == "《康奈尔笔记》") {
	cornell("焦虑专题")
}


;获取节点信息
_top := TV_GetSelection()

; 展开所有节点
var_dump(expandallchild(_top))

return

; 第一页的内容
initbook() {
	; 暴漏出 A1 到外部，主要是因为：默认会选择第一个，也就是A作为select，这时候我重定向到A1去。
	global A1
	A := TV_Add("_代码复用模式")
	A1 := TV_Add("类式继承模式#1 —— 克隆模式", A)
	TV_Add("类式继承模式#2 —— 借用模式", A)
	TV_Add("类式继承模式#3 —— 借用模式 + 克隆模式", A)
	TV_Add("类式继承模式#4 —— 共享原型", A)
	TV_Add("类式继承模式#5 —— 临时构造函数", A)
	TV_Add("通过复制属性实现继承", A)
	TV_Add("原型继承", A)

		
	B := TV_Add("_this")
	TV_Add("1、作为对象的方法调用", B)
	TV_Add("2、作为普通函数调用时", B)
	TV_Add("3、作为构造器调用", B)
	TV_Add("4、call 或 apply 调用", B)
	TV_Add("5、es6箭头函数调用时", B)
	TV_Add("6、es6 class 中的", B)

	C := TV_Add("_原型知识")
	TV_Add("prototype 和 __proto__的关系", C)
	TV_Add("实现 Object.create 方法", C)
	TV_Add("实现 new 运算符的过程", C)
	TV_Add("闭包封装实现private", C)
	TV_Add("多态", C)
	TV_Add("Function.prototype.before", C)
	TV_Add("Function.prototype.after", C)
	TV_Add("AOP - 面向切面编程", C)
	
	D := TV_Add("_继承")
	TV_Add("extend 浅拷贝（继承模式中最后的圣杯）", D)
	TV_Add("deepExtend 深拷贝", D)
	TV_Add("multi 多重拷贝", D)
	TV_Add("寄生式继承", D)
	TV_Add("构造器借用", D)
	
	E := TV_Add("_call 和 apply")
	TV_Add("1. 改变 this 指向", E)
	TV_Add("2. Function.prototype.bind", E)
	TV_Add("3. 借用其他对象的方法", E)
	
	F := TV_Add("_闭包")
	TV_Add("简易Cache", F)
	TV_Add("参数标记缓存器 memoized", F)
	TV_Add("模块模式：现代模块实现的基石", F)
	
	G := TV_Add("_单例模式")
	TV_Add("惰性单例", G)
	TV_Add("透明单例", G)
	TV_Add("代理单例", G)
	TV_Add("通用的惰性单例", G)
	TV_Add("单例模式：生成不重复的随机数", G)
	TV_Add("（回调版）单例模式，通常用于ajax类", G)
	
	H := TV_Add("_模板模式")
	TV_Add("咖啡与茶", H)
	TV_Add("通用模板 StateFactory", H)
}




BookTreeSelect:
; 获取当前选中的id，初始化的时候默认会选中第一个
ItemID := TV_GetSelection()

; 获取该id的text
TV_GetText(v, ItemID)

; 默认内容
Var := ""

; 首字母为 _ 说明是顶级，那么自动导航到子中的第一个
if (SubStr(v, 1, 1) == "_") {
	childId := TV_GetChild(ItemID)
	TV_Modify(childId, "Select")
}	

; 首字母为@，说明是康奈尔笔记。使用康奈尔专用数组中进行渲染
if (InStr(v, "@")) {
	; 获取康奈尔数组中的值
	Var := cornellAry[v]
}

if (v == "") {
Var = 
(
)
}

if (v == "通用模板 StateFactory") {
Var = 
(
var StateFactory = (function() {
    var State = function() {}

    State.prototype.clickHandler1 = function() {
        throw new Error(`子类必须重写父类的${arguments.callee.name}方法`)
    }

    State.prototype.clickHandler2 = function() {
        throw new Error(`子类必须重写父类的${arguments.callee.name}方法`)
    }

    return function(params) {
        var F = function( /* ... */ ) {
        	/* ... */
        }

        F.prototype = new State()

        for (var i in params) {
            F.prototype[i] = params[i]
        }

        return F
    }
}())
)
}

if (v == "咖啡与茶") {
Var = 
(
// 继承抽象类的目的，通常是可以为了可以省略很多重复的操作，或者帮你完成了很多基础工作，譬如本例的煮水（boilWater）
// 但接口还强制你重写/实现/覆盖指定方法譬如brew, pourIncup, addCondiments来搜集配置和个性化需求。
// 这种模式也成为模板模式。可以脑补【模板页面】的场景

var Beverage = function() {};

Beverage.prototype.boilWater = function() {
	console.log( '把水煮沸' );
};

Beverage.prototype.brew = function() {
	throw new Error( '子类必须重写 brew 方法' );
};

Beverage.prototype.pourIncup = function() {
	throw new Error( '子类必须重写 pourIncup 方法' );
};

Beverage.prototype.addCondiments = function() {
	throw new Error( '子类必须重写 addCondiments 方法' );
};

Beverage.prototype.init = function() {
    this.boilWater();
    this.bubbleBeverage();
    this.pourCup();
    this.addCondiments();
};

var Coffee = function() {};

// 原型继承抽象类
Coffee.prototype = new Beverage();

Coffee.prototype.bubbleBeverage = function() {
    console.log("开水冲泡咖啡.");
};

Coffee.prototype.pourCup = function() {
    console.log("咖啡倒入杯中.");
};

Coffee.prototype.addCondiments = function() {
    console.log("添加糖和牛奶.");
};

var coffee = new Coffee();
coffee.init();
)
}

if (v == "单例模式：生成不重复的随机数") {
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
}


if (v == "（回调版）单例模式，通常用于ajax类") {
Var = 
(
// （回调版）单例模式，通常用于ajax类
var getCallBackSingle = function(fn) {
    // 缓存
    var cache;
    // 接受一个回调函数
    return function (cb) {
        // 如果有缓存存在，那么直接使用缓存作为回调值，否则使用默认函数
        cache ? cb.apply(this, cache) : fn(function () {
            console.log('no cache')
            // 保存到缓存并且执行回调
            cb.apply(this, cache = arguments)
        })
    }
};

// demo：获取所有内容
var getData = function (successcb) {
    $.ajax({
        url: "/search.json",
        dataType: 'json',
        success: successcb,
        error: function(e, m){
           console.log('数据接口请求异常', e, m);
        }
    })
}

// 使用示例
var _getData = getCallBackSingle(getData)
_getData(_ => {console.log(20190126191340, _)}) // no cache，[...]
_getData(_ => {console.log(20190126191340, _)}) // [...]
)
}


if (v == "通用的惰性单例") {
Var = 
(
var getSingle = function(fn) {
     var result;
     return function() {
         return result || (result = fn.apply(this, arguments));
     }
};
)
}


if (v == "惰性单例") {
Var = 
(
var Singleton = function(name) {
     this.name = name;
};
Singleton.getInstance = (function() {
     var instance = null;
     return function(name) {
         if (!instance) {
             instance = new Singleton(name);
         }
         return instance;
     }
})();
var a = Singleton.getInstance( 'sven1' );
var b = Singleton.getInstance( 'sven2' );
alert ( a === b ); // true
)
}

if (v == "透明单例") {
Var = 
(
var CreateDiv = (function() {
     var instance;
     var _CreateDiv = function(html) {
         if (instance) {
             return instance;
         }
         this.html = html;
         this.init();
         return instance = this;
     };
     _CreateDiv.prototype.init = function() {
         var div = document.createElement('div');
         div.innerHTML = this.html;
         document.body.appendChild(div);
     };
     return _CreateDiv;
})();

var a = new CreateDiv('sven1');
var b = new CreateDiv('sven2');
alert(a === b); // => true
)
}

if (v == "代理单例") {
Var = 
(
// 普通的创建 div 的类：
var CreateDiv = function(html) {
     this.html = html;
     this.init();
};
CreateDiv.prototype.init = function() {
     var div = document.createElement('div');
     div.innerHTML = this.html;
     document.body.appendChild(div);
};
// 引入代理类
var ProxySingletonCreateDiv = (function() {
    var instance;
    return function(html) {
        if (!instance) {
            instance = new CreateDiv(html);
        }
        return instance;
    }
})();
var a = new ProxySingletonCreateDiv('sven1');
var b = new ProxySingletonCreateDiv('sven2');
alert(a === b);
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


if (v == "简易Cache") {
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
}

if (v == "参数标记缓存器 memoized") {
Var = 
(
// 参数标记缓存器
var memoized = function (fn) {
      var cache = {};
      return function () {
        // 我们约定以第一个参数作为key
        var __KEY__ = arguments[0]
        // 记录缓存
        return cache[__KEY__] || (cache[__KEY__] = fn.apply(this, arguments));
      };
};

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



if (v == "1. 改变 this 指向") {
Var = 
(
window.name = 'Mp'
var f = function () { 
	alert(this.name) 
}
f() // => 'Mp'


// 狸猫换太子
var obj = { name: 'Lee' }
f.call(obj) // => 'Lee'





// 认知：在 DOM 事件中的this指向这个 DOM 本身
document.getElementById( 'div1' ).onclick = function () {
	alert(this.id) // => div1
}

// 但如果在事件内部还有一个函数，而这个函数想访问 DOM，则不能使用 this了。因为函数指向window。
document.getElementById( 'div1' ).onclick = function () {
	var f = function () { alert(this.id) }
	f()  // => undefined
}

// 我们知道es6的箭头函数可以解决大部分此类问题。但在es5之前的时代，只能依赖 call/apply
document.getElementById( 'div1' ).onclick = function () {
	var f = function () { alert(this.id) }
	f.cal(this)  // => div1
}
)
}

if (v == "2. Function.prototype.bind") {
Var = 
(
Function.prototype.bind = function () {
	var self = this

	// 获取第一个参数，也就是代替this的『上下文』
	var context = [].shift.call( arguments )

	// 参数集
	var args = [].slice.call( arguments )

	return function () {
		// 新参数
		var new_args = [].slice.call( arguments )

		// 最终参数 = 历史参数 + 新参数
		var finall_args = [].concat.call( args, new_args )

		// 调用自己，使用新的上下文
		return self.apply( context, finall_args )
	}
}




var obj = { name: 'Lee' }

var f = function (a, b, c, d) {
	alert(this.name)
	alert([a, b, c, d])
}.bind(obj, 1, 2)

f(3, 4)
)
}

if (v == "3. 借用其他对象的方法") {
Var = 
(
// 场景1： 借用构造函数，这种方式常用在 JavaScript 模仿继承机制中
var A = function (name) { 
	this.name = name 
}

var B = function () { 
	A.apply(this, arguments) 
}

B.prototype.getName = function () {
	return this.name
}

var b = new B('Lee')
console.log(b.getName) // => Lee





// 场景2：对类数组（ArrayLike），如：arguments、NodeList 使用数组方法
// 所谓类数组，可以简单理解为：『具备 length 属性并且以int索引（0, 1, 2, 3...）为key的对象』
// 譬如这就是一个类数组：{ 0: 'a', 1: 'b', 2: 'c', length: 3 }

// 为 arguments 添加参数
Array.prototype.push.call( arguments, 3 )

// 取出 arguments 第一个参数
Array.prototype.shift( arguments )

// 转化为真正的数组
Array.prototype.slice( arguments )
)
}

if (v == "call 和 apply") {
Var = 
(
var f = function (a, b, c) {
	console.log([a, b, c])
}

// apply 就是传入数组
f.apply(null, [1, 2, 3]) // => [1, 2, 3]

// call 就是传入多参数
f.call(null, 1, 2, 3) // => [1, 2, 3]


『第一个参数为null，函数体内的 this 会指向默认的宿主对象，在浏览器则是window』


// 但如果是严格模式下，函数体内的 this 还是为 null
var f = function () {
	'use strict';
	alert( this === null ) // => null
}


// 借用其他对象
// Math.max([1, 2, 3, 4, 5])
Math.max.apply(null, [1, 2, 3, 4, 5]) // => 5
Math.max.apply(null, 1, 2, 3, 4, 5)   // => 5
)
}


if (v == "Function.prototype.before") {
Var = 
(
// es5 版本
Function.prototype.before = function(beforefn) {
    var __self = this;

    return function() {
        beforefn.apply(this, arguments);
        return __self.apply(this, arguments);
    }
};





// es6 async/await 版本：支持异步before
// 如果要保留this，那么不能使用this，依然需要使用原始的function
Function.prototype.before = function (beforefn) {
    var __self = this

    return async (...args) => {
        await beforefn(...args)
        return __self(...args)
    }
}

// 测试函数
let fuck = () => {
	console.log('fuck')
}

// 返回新的函数
_fuck = fuck.before(() => {
	return new Promise((resolve, reject) => {
	   setTimeout(function () {
	   		console.log('success')
	        resolve('success')
	   }, 1000);
	})
})

// start fuck
_fuck()

/* 使用示例 */
let fuck = () => {
	console.log(20190519080323, 'fuck')
}

fuck = fuck.before(() => {
	return new Promise((resolve, reject) => {
	   setTimeout(function () {
	   		console.log('success')
	        resolve('success')
	   }, 1000);
	})
})






// next的策略版本
// 注意：用next版本，就意味着你无法直接从fuck()中拿到返回值了，你只能使用回调了。
Function.prototype.before = function(beforefn) {
    var __self = this;

    // 所谓的next，就是把函数注入进去让他代理和执行
    return (...args) => {
        return beforefn(__self, ...args)
    }
};

/* 使用示例 */

// 我们约定，第一个参数就是before为我们注入的数据，其他数据是我们额外接受的
let fuck = (beforeData, you) => {
    // 使用before给我们注入的数据
    console.log('use', beforeData)
    // 使用我们自己接受的数据
    console.log('fuck', you)
}

fuck = fuck.before((next, ...args) => {
    setTimeout(() => {
        // 为fuck注入新参数，可有可无。只是说明而已。实际情况可以灵活调整开发
        next('durex', ...args)
    }, 1000);
})

fuck('Lee')
)
}

if (v == "Function.prototype.after") {
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
}


if (v == "extend 浅拷贝（继承模式中最后的圣杯）") {
Var = 
(
// 继承模式中最后的圣杯（Holy Grail）
function extend(Child, Parent){
    var F = function(){ };
    F.prototype = Parent.prototype;
    Child.prototype = new F();
    Child.prototype.constructor = Child;
    Child.parent = Parent.prototype
}
)
}

if (v == "deepExtend 深拷贝") {
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

if (v == "multi 多重拷贝") {
Var = 
(
function multi() {
  var n = {}, stuff, j = 0, len = arguments.length;
  for (var i = 0; i < len; i++) {
      stuff = arguments[j];
      for (var i in stuff) {
        if (stuff hasOwnProperty(i)) {
          n[i] = stuff[i];
        }
      }
  }
  return n
}
)
}


if (v == "构造器借用") {
Var = 
(
function Shape(id) {
  this.id = id;
}
Shape.prototype.name = 'shape'
Shape.prototype.toString = function () {
  return this.name
}

function Triangle() {
  Shape.apply(this, arguments)
}
Triangle.prototype.name = 'Triangle'

var t = new Triangle(101);
t.name; // "Triangle"
)
}

if (v == "寄生式继承") {
Var = 
(
// 在创建对象的函数中直接吸收其他对象的功能，然后对其进行扩展并返回。“就好像所有的工作都是自己做的一样无耻！”
// 寄生式继承并没有涉及什么新的模式和语法，只是一种概念认知。
var twoD = {
  name: '2D shape',
  dimensions: 2
}

function triangle(s, h) {
  var that = Object(twoD);
  that.name = 'TRIANGLE';
  that.side = s;
  that.height = h;
  that.getArea = function () {
    return this.side * this.height / 2;
  };
  return that;
}

var t = triangle(5, 10);
t.dimensions; // 2
)
}

if (v == "多态") {
Var = 
(
//////////////////////////////////////////////
// 鸭子类型示例
//////////////////////////////////////////////

var makeSound = function(animal) {
    if (animal instanceof Duck) {
        console.log('嘎嘎嘎');
    } else if (animal instanceof Chicken) {
        console.log('咯咯咯');
    }
};
var Duck = function() {};
var Chicken = function() {};
makeSound(new Duck());    // 嘎嘎嘎
makeSound(new Chicken()); // 咯咯咯






//////////////////////////////////////////////
// 地图调用实例
//////////////////////////////////////////////

var renderMap = function( map ){
  if ( map.show instanceof Function ){
     map.show();
  }
};
renderMap( googleMap ); // 输出：开始渲染谷歌地图
renderMap( baiduMap );  // 输出：开始渲染百度地图

// 即使以后增加了搜搜地图， renderMap 函数仍、然不需要做任何改变，如下所示：
var sosoMap = {
  show: function(){
     console.log( '开始渲染搜搜地图' );
  }
};
renderMap( sosoMap ); // 输出：开始渲染搜搜地图
)
}

if (v == "闭包封装实现private") {
Var = 
(
// JavaScript并没有提供private、public、protected 关键字来提供不同的访问权限，我们只能依赖变量的 作用域来实现封装特性

var Module = (function(){
    var _private = "safe now";
    var foo = function(){
        console.log(_private)
    }

    return {
        foo: foo
    }
})()

Module.foo();    // "safe now"
Module._private; // undefined
)
}

if (v == "1、作为对象的方法调用") {
Var = 
(
var obj = {
     a: 1,
     getA: function(){
        alert ( this === obj ); // 输出：true
        alert ( this.a );       // 输出: 1
     }
};
obj.getA();
)
}

if (v == "2、作为普通函数调用时") {
Var = 
(
//////////////////////////////////////////////
// 当函数作为普通函数方式被调用时，此时的 this 总是指向全局对象。
// 如果是在浏览器里，全局对象就是 window。
//////////////////////////////////////////////

window.name = 'windowName';
var getName = function () {
     return this.name;
};
console.log( getName() ); // windowName




// 以下写法和（1）很相似，所以容易混淆，但实际上这种调用函数的方式和（2）也是一样的道理，它指向的是函数执行时的环境，所以需要额外注意一下：
window.name = 'windowName';
var myObject = {
     name: 'sven',
     getName: function(){
        return this.name;
     }
};
var getName = myObject.getName;
console.log( getName() ); // windowName
)
}

if (v == "3、作为构造器调用") {
Var = 
(
//////////////////////////////////////////////
// JavaScript 中没有类，但是可以从构造器中创建对象，同时也提供了 new 运算符，使得构造器看起来更像一个类。
// 所有 JavaScript 函数都可以当作构造器使用。当用 new 运算符调用函数时，该函数总会返回一个对象，通常情况下，构造器里的 this 就指向返回的这个对象。
//////////////////////////////////////////////

var MyClass = function(){
     this.name = 'sven';
};
var obj = new MyClass();
alert ( obj.name ); // 输出：sven
)
}


if (v == "4、call 或 apply 调用") {
Var = 
(
window.name = 'foo';

var obj1 = {name: 'sven'};

var getName = function () {
    alert ( this.name );
};

getName();            // 输出: foo

getName.call( obj1 ); // 输出: sven
)
}


if (v == "5、es6箭头函数调用时") {
Var = 
(
// 箭头函数自己没有this，只能往上找对象。

// 不适用场合
var fuck = {
	bb: 'bb',
	methods: () =>  {
		console.log(this.bb) // undefined
	}
}
)
}


if (v == "6、es6 class 中的") {
Var = 
(
衡指向自己class本身。
)
}

if (v == "实现 new 运算符的过程") {
Var = 
(
var objectFactory = function () {
	// 从 Object.prototype 中实例化对象
	var obj = new Object()

	// 获取第一个参数
	var Constructor = [].shift.call( arguments )

	// 指向原型
	obj.__proto__ = Constructor.prototype

	// 借用外部传入的构造器，给 obj 设置属性，这是一个原型继承中常用的技巧
	var ret = Constructor.apply( obj, arguments )

	// 总会返回一个对象
	return typeof ret === 'object' ? ret : obj
}
)
}

if (v == "实现 Object.create 方法") {
Var = 
(
Object.create = Object.create || function (obj) {
	var F = function () {}
	F.prototype = obj
	return new F() 
}
)
}

if (v == "prototype 和 __proto__的关系") {
Var = 
(
function F() {

}

new F().__proto__ === F.prototype // => true
)
}

if (v == "类式继承模式#1 —— 克隆模式") {
Var = 
(
//////////////////////////////////////////////

// 类式继承模式#1 —— 克隆模式
// 缺点 1：不支持将参数传递给父构造函数。所以 say() 打印出是undefined
// 缺点 2：并没有继承父亲的属性，所以儿子也并没有name的属性
function inherit(C, P) {
	// 重点
	C.prototype = new P();
}

//////////////////////////////////////////////


// 父构造函数
function Parent(name) {
	this.name = name;
}

// 父方法
Parent.prototype.say = function() {
	return this.name;
};

// 空白的子构造函数
function Child(name) {}

// 继承
inherit(Child, Parent);

// 实例化
var c = new Child('Lee')

// 看看
c.name  // => undefined ？？？
c.say() // => undefined ？？？
)
}

if (v == "类式继承模式#2 —— 借用模式") {
Var = 
(
function Article() {
	this.tags = ['js', 'css']
}

//////////////////////////////////////////////

// 类式继承模式#2 —— 借用构造函数
function Blog() {
	// 重点：借风使船
	// 但这也意味着，放弃了原型，断开了原型链的血缘联系
	Article.call(this)
}

//////////////////////////////////////////////

var blog = new Blog()

console.log(blog.hasOwnProperty('tags')) // => true

blog.tags.push('html')

console.log(blog.tags.join(',')) // => js,css,html





//////////////////////////////////////////////

// 使用 #2 重构 #1...
// 缺点：由于没有使用父构造函数，断开了原型联系，所以从未继承过 say() 方法。
// 认知：这里所谓的 『继承 name 属性』，其实也是借用 Article 的代码块进行初始化 Child 罢了。有点类似模板复用。
// 举一反三：这种方法可以实现 『多重继承』，也就是多借用几个构造函数就是了

//////////////////////////////////////////////

function Parent(name) {
	this.name = name
}

Parent.prototype.say = function () {
	return this.name
}

function Child() {
	Parent.apply(this, arguments)
}

var c = new Child('Lee')
c.name // => Lee
c.say  // => undefined ？？？
)
}

if (v == "类式继承模式#3 —— 借用模式 + 克隆模式") {
Var = 
(
//////////////////////////////////////////////

// 类式继承模式#3 —— 借用和设置原型
// 其实就是 #1 + #2
// 缺点：由于结合了 『借用模式』 + 『克隆模式』，所以等于调用了两次父构造函数。效率低下而且风险很高

//////////////////////////////////////////////

function Parent(name) {
    this.name = name
}

Parent.prototype.say = function () {
    return this.name
}

function Child() {
	// 第一次调用父构造函数
    Parent.apply(this, arguments)
}

// 第二次调用父构造函数
Child.prototype = new Parent()

var c = new Child('Lee')
c.name  // => Lee
c.say() // => Lee
)
}

if (v == "类式继承模式#4 —— 共享原型") {
Var = 
(

)
}

if (v == "类式继承模式#5 —— 临时构造函数") {
Var = 
(

)
}

if (v == "通过复制属性实现继承") {
Var = 
(

)
}

if (v == "原型继承") {
Var = 
(

)
}

if (v == "设计模式") {
Var = 
(

)
}

if (v == "工厂模式") {
Var = 
(

)
}

if (v == "策略模式") {
Var = 
(

)
}

if (v == "装饰者模式") {
Var = 
(

)
}

if (v == "代理模式") {
Var = 
(

)
}

if (v == "中介者模式") {
Var = 
(

)
}

if (v == "观察者模式") {
Var = 
(

)
}

_Var := StrReplace(Var, "`t", "    ")

GuiControl, Book:Text, BookContent, %_Var%
return

cornell(v) {
Var := 

if (v == "") {
Var = 
(
)
}


if (v == "焦虑专题") {
Var = 
(
@什么是焦虑？
焦虑是对未来不确定性产生的应急反应。
本质是一种缺乏安全感的表现。
知识焦虑的原因在于个体掌握的知识量不够，同时缺乏存储方法，导致面对大量知识迷茫不知所措，产生焦虑。

@为什么会焦虑？
知识焦虑源于人类的规避损失心理，类似"不看就落后"、"别人都再学我也要学"、加之媒体推波助澜，社会媒体导向，人为制造的焦虑。

@焦虑的来源？
焦虑来源于不之所从，要做的事情很多，每件事看上去都很有价值，正因如此，我们变得难以抉择，从而焦虑。
因为我们没有一个标准来判断一件事的价值。这个标准就算我们的目标、我们的愿望。

@知识焦虑的解药
知识付费其实和小时候花钱请学霸写作业的行为没什么区别。
如何缓解知识焦虑，并不是一个难解的问题，首先你要知道：
1. 不是所有知识都是我们需要的。
2. 学习是一个短期内并不能快速见效的行为. 是需要我们花费精力和意志去坚持的过程。
)
}


getDec(Var, v)
}


getDec(txt, top) {
	
if (InStr(txt, "@")) {
	cornellTop := TV_Add("_" . top)
	
	ary := StrSplit(txt, "@")
	; 康奈尔专用数组
	global cornellAry := {}
	
	For key, value in ary
		; 如果是第一条的话，那么直接加入全体把
		if (key == 1) {
			TV_Add("@All", cornellTop)
			cornellAry["@All"] := txt
		; 索引是从1开始的，而1是没有任何内容的
		} else if (key > 1) {
			; 标题
			title := StrSplit(value, "`n")[1]
			; 内容
			v := SubStr(value, StrLen(title) + 1)
			; 塞入数组
			cornellAry["@" . title] := v
			; 并且加入当前的树中， 但需要先找到树
			TV_Add("@" . title, cornellTop)
		}
	
}
}