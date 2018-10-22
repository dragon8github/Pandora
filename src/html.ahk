::rx.html::
::rxjs.html::
Var =
(
<!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <title>rxjs demo</title>
    <script src="https://cdn.bootcss.com/rxjs/6.3.3/rxjs.umd.min.js"></script>
</head>
<body>
  <button>test</button>
</body>
<script>
   // https://rxjs-dev.firebaseapp.com/guide/overview#purity
   const button = document.querySelector('button');
   const { fromEvent } = rxjs;
   const { scan } = rxjs.operators;

   fromEvent(button, 'click').pipe(scan(count => count + 1, 0))
        .subscribe(count => console.log(`Clicked ${count} times`));
</script>
)
code(Var)
return

::axios.html::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>
</head>

<body>
    <div id="app"></div>
</body>
<script>

/**
 * get 请求
 */
axios.get('http://192.168.31.97/index.php?a=123').then(response => {
    console.log(20181021221522, response)
})

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

/**
 * post application/json;charset=utf-8
 */
axios.post('http://192.168.31.97/index.php', {a: 123}).then(response => {
    console.log(20181021221338, response)
})

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

// ajax（指定为application/x-www-form-urlencoded;charset=utf-8）
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
</script>
</html>
)
code(Var)
return

::wuxianping::
::wuxianp::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js"></script>
    <style>
      b { font-size: 24px; }
    </style>
    <body>
       <div id="app">
          <p>alpha(z): 手机在水平面上旋转的角度，当设备的顶部指向正北时其值为 0°。 当设备逆时针旋转时值增加。【0 -360】: <b>{{ alpha }}</b></p>
          <p>beta(x): 围绕x轴上下翻转的角度，当设备的顶部和底部与地球表面等距时其值为 0。【向上翻为负值，-180 - 180】: <b>{{ beta }}</b></p>
          <p>gamma(y): 围绕y轴左右翻转的角度，当设备的左侧和右侧与地球表面等距时 其值为 0。【向左翻为负值， -180 - 180】: <b>{{ gamma }}</b></p>
       </div>
    </body>
    <script>
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

      var vue = new Vue({
          el: '#app',
          data: {
              alpha: "",
              beta: "",
              gamma: "",
          },
          methods: {
            render (orientData) {
                this.alpha = orientData.alpha || 'null';
                this.beta =  orientData.beta || 'null';
                this.gamma = orientData.gamma || 'null';
            }
          },
          beforeMount: function () {
              const throttle_render = throttle(this.render, 150, { leading: true, trailing: false });
              window.addEventListener('deviceorientation', throttle_render);
          }
      })
    </script>
</html>
)
code(Var)
return

::bd.map::
::bd-map::
::baidu.map::
::baidu-map::
::map.html::
::maphtml::
Var =
(
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style type="text/css">
    html, body {width: 100`%; height: 100`%; margin: 0; padding: 0; overflow: hidden; }
    #container {width: 100`%; height: 100`%; }
    /* 隐藏百度Logo */
    .BMap_cpyCtrl, .anchorBL {display: none; }    </style>
</head>

<body>
    <div id="container"></div>
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=1XjLLEhZhQNUzd93EjU5nOGQ"></script>
    <script type="text/javascript">
    var map = new BMap.Map("container");
    // 创建地图实例（东莞市）
    var point = new BMap.Point(113.76343399, 23.04302382);
    // 创建点坐标
    map.centerAndZoom(point, 13);
    // 是否开启滑轮滚动（默认：false）
    map.enableScrollWheelZoom(true)
    //清除地图覆盖物
    map.clearOverlays(); 
    // 地图自定义样式（午夜风格）
    map.setMapStyle({ style: 'midnight' });
    // 东莞东城区域数据（数据请在这里拿：https://www.cnblogs.com/CyLee/p/9416183.html）
    const data = ''
    // 建立覆盖物
    var ply = new BMap.Polygon(data, {
        strokeWeight: 2,        // 设置线粗
        strokeOpacity: 1,       // 设置透明度0-1
        StrokeStyle: "solid",   // 设置样式为实线solid或虚线dashed
        strokeColor: "#ff0000", // 设置颜色
    }); 
    // 添加覆盖物
    map.addOverlay(ply);       
    // 调整视野     
    map.setViewport(ply.getPath()); 
    </script>
</body>

</html>
)
code(Var)
return

::bootstrap-validate::
::bs.validate::
::bs.validator::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js"></script>
    <!-- jquery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <!-- bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <!-- validator：http://1000hz.github.io/bootstrap-validator/#validator-usage -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.js"></script>
    <style>

    </style>

    <body>
        <div id="app">
            <form data-toggle="validator" role="form" id="myForm">
                <div class="form-group">
                    <label for="inputName" class="control-label" >Name</label>
                    <input type="text" class="form-control" v-model="join.name" id="inputName" placeholder="Cina Saffary" required>
                </div>
                <div class="form-group">
                    <label for="inputEmail" class="control-label">Email</label>
                    <input type="email" v-model="join.email" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required>
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>

                <div class="form-group">
                    <input type="button" id="fuck" class="btn btn-primary" @click="handleClick" value="清空数据">
                </div>

                <div class="form-group">
                    <input type="button" id="fuck" class="btn btn-primary" @click="handleClick2" value="添加数据">
                </div>
            </form>
        </div>
    </body>
    <script>
    $(function() {
    	// 手动调用
        // $('#myForm').validator()
    })

    var vue = new Vue({
        el: '#app',
        data: {
            join: {
            	name: '',
            	email: '',
            }
        },
        beforeMount() {
            console.log('hello world');
        },
        methods: {
            handleClick2: function() {
            	this.join = {
            		name: 123,
            		email: '928532756@qq.com'
            	}
            	// 这个的意思是，等数据绑定到UI后，渲染完成之后才触发
            	this.$nextTick(() => {
            		// 原来重置表单是这个API，而不是Update
            		$('#myForm').validator('validate')
            	})
            },
            handleClick: function() {
            	this.join = {}
            }
        }
    })
    </script>

</html>
)
code(Var)
return

::bs.time::
::bs-time::
::bs.date::
::bs-date::
::bs.datepick::
::bs-datepick::
::bootstrap.time::
::bootstrap.date::
::bootstrap:datetime::
::bootstrap-datepick::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- jquery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <!-- bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <!-- bootstrap-datepicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/locales/bootstrap-datepicker.zh-CN.min.js"></script>
    <style>
    </style>
<body>
   
<div id="sandbox-container">
    <div class="input-group date">
        <input type="text" class="form-control">
        <div class="input-group-addon">
            <span class="glyphicon glyphicon-th"></span>
        </div>
    </div>
</div>

</body>
<script>
    
    var today = (function(){
        var date = new Date()
        var year = date.getFullYear()
        var month = date.getMonth() + 1
        var day = date.getDate()
        var hours = date.getHours()
        var minu = date.getMinutes()
        var second = date.getSeconds()
        var arr = [month, day, hours, minu, second]
        arr.forEach((item, index) => { arr[index] = item < 10 ? "0" + item : item; })
        return year + '/' + arr[0] + '/' + arr[1]
    }());
    
    /**
     * github: https://github.com/uxsolutions/bootstrap-datepicker
     * 在线配置：https://uxsolutions.github.io/bootstrap-datepicker/
     * 文档地址：https://bootstrap-datepicker.readthedocs.io/en/latest/
     */
    $('#sandbox-container input').val(today).datepicker({
        //...
        format: 'yyyy/mm/dd',
        language: 'zh-CN',
        todayBtn: true,
        todayHighlight: true,
    }).on('changeDate', function(e) {
        console.log('当前值为：', $(e.target).datepicker('getFormattedDate'))
    });
</script>
</html>
)
code(Var)
return

::aa::
::alink::
::ahref::
Var = 
(
<a href="http://www.baidu.com" target='_blank'>百度一下</a>
)
code(Var)
return

::vuehtml::
::vue.html::
::html-all::
::html`:all::
::html.all::
::htmlall::
::allhtml::
::myhtml::
Var = 
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- normalize -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.0/normalize.min.css" rel="stylesheet">

    <!-- Vue -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js"></script>

    <!-- jquery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <!-- bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
    </style>

    <body>
        <div id="app">
          <!--   <input type="radio" id="one" value="One" v-model="picked">
            <label for="one">One</label>
            <br>
            <input type="radio" id="two" value="Two" v-model="picked">
            <label for="two">Two</label> -->

            <div v-for='(item, index) in items' :key='index'>
                <input type="radio" id="two" :value="item" v-model="picked">
                <label for="two">{{ item }}</label>
            </div>

            <br>
            <span>Picked: {{ picked }}</span>

            <hr />
            
            <div id='example-3'>
                  <input type="checkbox" id="jack" value="Jack" v-model="checkedNames">
                  <label for="jack">Jack</label>
                  <input type="checkbox" id="john" value="John" v-model="checkedNames">
                  <label for="john">John</label>
                  <input type="checkbox" id="mike" value="Mike" v-model="checkedNames">
                  <label for="mike">Mike</label>
                  <br>
                  <span>Checked names: {{ checkedNames }}</span>
            </div>

            <hr>

            <!-- select绑定v-model时，默认取option的value属性值，如果option没有value属性，那就取Option的text属性。  -->
            <select v-model="selected">
              <!-- 必须设置value = '' 才会展示text -->
              <option disabled value="">Please select one</option>
              <option>A</option>
              <option>B</option>
              <option>C</option>
            </select>
            <span>Selected: {{ selected }}</span>
        </div>
    </body>
    <script>
        // jquery
        $(function () {
            console.log('hello world');
        });

         // Vue
        new Vue({
            el: '#app',
            data: {
                title: 'hello world',
                picked: 'Three',
                checkedNames: [],
                selected: '',
                items: ['One', 'Two', 'Three']
            },
            methods: {
                clickHandle: function () {
                    console.log('hello world');
                }
            }
        })
    </script>

</html>
)
code(Var)
return

::html5::
::html`:5::
Var = 
(
<!DOCTYPE html>
	<html lang="en">
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
	<title>Document</title>
</head>
<style>
	body {
		max-width: 540px;
        min-width: 320px;
	}
</style>
<body>
	
</body>
<script>
</script>
</html>
)
code(Var)
Return

::meta::
Var = 
(
<meta charset="UTF-8">
<!-- 禁止缩放 -->
<meta name="viewport"content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!-- 设置缩放 -->
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui" />
<!-- 可隐藏地址栏，仅针对IOS的Safari（注：IOS7.0版本以后，safari上已看不到效果） -->
<meta name="apple-mobile-web-app-capable" content="yes" />
<!-- 仅针对IOS的Safari顶端状态条的样式（可选default/black/black-translucent ） -->
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<!-- IOS中禁用将数字识别为电话号码/忽略Android平台中对邮箱地址的识别 -->
<meta name="format-detection"content="telephone=no, email=no" />
其他meta标签
<!-- 启用360浏览器的极速模式(webkit) -->
<meta name="renderer" content="webkit">
<!-- 避免IE使用兼容模式 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 针对手持设备优化，主要是针对一些老的不识别viewport的浏览器，比如黑莓 -->
<meta name="HandheldFriendly" content="true">
<!-- 微软的老式浏览器 -->
<meta name="MobileOptimized" content="320">
<!-- uc强制竖屏 -->
<meta name="screen-orientation" content="portrait">
<!-- QQ强制竖屏 -->
<meta name="x5-orientation" content="portrait">
<!-- UC强制全屏 -->
<meta name="full-screen" content="yes">
<!-- QQ强制全屏 -->
<meta name="x5-fullscreen" content="true">
<!-- UC应用模式 -->
<meta name="browsermode" content="application">
<!-- QQ应用模式 -->
<meta name="x5-page-mode" content="app">
<!-- windows phone 点击无高光 -->
<meta name="msapplication-tap-highlight" content="no">
)
code(Var)
Return

::nocache::
(
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  
<!-- HTTP 1.1 -->  
<meta http-equiv="pragma" content="no-cache">  
<!-- HTTP 1.0 -->  
<meta http-equiv="cache-control" content="no-cache">  
<!-- Prevent caching at the proxy server -->  
<meta http-equiv="expires" content="0">  
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />  
)
Return

::art::
    SendRaw, <article></article>
return

::middle::
    SendRaw, vertical-align: middle;
return

; https://tool.lu/imageholder/ 其实完全可以自己实现。算了，网上有的是这种服务
::img::
    SendInput, <img src="https://iph.href.lu/400x400" alt="..." />{left 14}{ShiftDown}{left 7}{ShiftUp}
Return


::vuehtml2::
Var = 
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <body>
        <div id="app">
            <div v-for="(v,i) in list">
                <input v-model="list[i].a"></input>
                <select v-model="list[i].b">
                    <option disabled value="">Please select one</option>
                    <option value='1'>A</option>
                    <option value='2'>B</option>
                    <option value='3'>C</option>
                </select>
                <button @click="handleDel"> X </button>
            </div>
            <button @click="handleClick">添加一行</button>
            <button @click="handleSublimt">提交</button>
        </div>
    </body>
    <script>
        // Vue
        new Vue({
            el: '#app',
            data: {
                selected: '',
                list: [
                  {a: '', b: ''},
                  {a: '', b: ''},
                  {a: '', b: ''}
                ]
            },
            methods: {
                handleClick () {
                    this.list.push({a: '', b: ''})
                },
                handleSublimt () {
                    console.log(20180726102759, this.list)
                },
                handleDel (e) {
                    // 这就是使用jquery的好处，这里看情况，不一定只是parent，也可能是parents(xxxx)
                    var index = $(e.target).parent().index()
                    // 删除索引
                    this.list.splice(index, 1)
                }
            }
        })
    </script>

</html>
)
code(Var)
return

::gujia::
::gujiatu::
::newloading::
::Skeleton::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js"></script>
<style>
.timeline-item {
   background: #fff;
   border: 1px solid;
   border-color: #e5e6e9 #dfe0e4 #d0d1d5;
   border-radius: 3px;
   padding: 12px;
   margin: 0 auto;
   max-width: 472px;
   min-height: 200px;
}


@keyframes placeHolderShimmer{
    0`% {
        background-position: -468px 0
    }
    100`%{
        background-position: 468px 0
    }
}

.animated-background {
    animation-duration: 1s;
    animation-fill-mode: forwards;
    animation-iteration-count: infinite;
    animation-name: placeHolderShimmer;
    animation-timing-function: linear;
    background: #f6f7f8;
    background: linear-gradient(to right, #eeeeee 8`%, #dddddd 18`%, #eeeeee 33`%);
    background-size: 800px 104px;
    height: 40px;
    position: relative;
}


.background-masker {
    background: #fff;
    position: absolute;
}

.background-masker.header-top,
.background-masker.header-bottom,
.background-masker.subheader-bottom {
    top: 0;
    left: 40px;
    right: 0;
    height: 10px;
}

.background-masker.header-left,
.background-masker.subheader-left,
.background-masker.header-right,
.background-masker.subheader-right {
    top: 10px;
    left: 40px;
    height: 8px;
    width: 10px;
}

.background-masker.header-bottom {
    top: 18px;
    height: 6px;
}

.background-masker.subheader-left,
.background-masker.subheader-right {
    top: 24px;
    height: 6px;
}


.background-masker.header-right,
.background-masker.subheader-right {
    width: auto;
    left: 300px;
    right: 0;
}

.background-masker.subheader-right {
    left: 230px;
}

.background-masker.subheader-bottom {
    top: 30px;
    height: 10px;
}

.background-masker.content-top,
.background-masker.content-second-line,
.background-masker.content-third-line,
.background-masker.content-second-end,
.background-masker.content-third-end,
.background-masker.content-first-end {
    top: 40px;
    left: 0;
    right: 0;
    height: 6px;
}

.background-masker.content-top {
    height:20px;
}

.background-masker.content-first-end,
.background-masker.content-second-end,
.background-masker.content-third-end{
    width: auto;
    left: 380px;
    right: 0;
    top: 60px;
    height: 8px;
}

.background-masker.content-second-line  {
    top: 68px;
}

.background-masker.content-second-end {
    left: 420px;
    top: 74px;
}

.background-masker.content-third-line {
    top: 82px;
}

.background-masker.content-third-end {
    left: 300px;
    top: 88px;
}
</style>
<body>
    <div id="app">
      <div v-for="user in users" class="items" v-if="loading">
        <user-item :name="user.name" :email="user.email"></user-item>
      </div>
      <div v-for="load in loades" v-if="!loading">
        <loading-item></loading-item>
      </div>
    </div>
</body>
<script>
    // https://cloud.tencent.com/developer/article/1006169
    Vue.component('user-item', {
      props: ['email', 'name'],
      template: ``<div>
          <h2 v-text="name"></h2>
          <p v-text="email"></p>
        </div>``
    })

    Vue.component('loading-item', {
      template: ``<div class="animated-background">
         <div class="background-masker header-top"></div>
         <div class="background-masker header-left"></div>
         <div class="background-masker header-right"></div>
         <div class="background-masker header-bottom"></div>
         <div class="background-masker subheader-left"></div>
         <div class="background-masker subheader-right"></div>
         <div class="background-masker subheader-bottom"></div>
       </div>``
    })

    var app = new Vue({
      el: '#app',
      data: {
        users: [],
        loading: false,
        loades: 10
      },
      methods: {
        getUserDetails: function() {
          fetch('https://jsonplaceholder.typicode.com/users')
            .then(result => result.json())
            .then(result => {
              this.users = result
              this.loading = true
            });
        }
      },
      beforeMount: function() {
        setTimeout(() => {
          this.getUserDetails()
        }, 3000);
      }
    });
</script>
</html>
)
code(Var)
return