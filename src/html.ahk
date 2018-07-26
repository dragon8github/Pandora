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
    <script src="https://cdn.bootcss.com/vue/2.5.16/vue.min.js"></script>
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <!-- bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

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
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

    <!-- bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

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
    <link href="https://cdn.bootcss.com/normalize/8.0.0/normalize.min.css" rel="stylesheet">

    <!-- Vue -->
    <script src="https://cdn.bootcss.com/vue/2.5.16/vue.min.js"></script>

    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

    <!-- bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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


::vuehtml::
::vhtml::
::vue.html::
::vue-html::
Var = 
(
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<script src="https://cdn.bootcss.com/vue/2.5.16/vue.min.js"></script>
<style>
</style>
<body>
    <div id="app">
        {{ title }}
        <mybutton></mybutton>
    </div>
</body>
<script>
    // 局部注册组件
    var mybutton = Vue.extend({
          template: `
            <div><button @click="handle">fuck title</button></div>
          `,
          methods: {
            handle () {
                vue.title = 'fuck'
            }
          }
    });
    Vue.component('mybutton', mybutton)
    var vue = new Vue({
        el: '#app',
        data: {
            title: '123'
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
<script src="https://cdn.bootcss.com/vue/2.5.16/vue.min.js"></script>
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