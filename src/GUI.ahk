Gui, Add, Text, gAllSearchA W140 Section xs yp+10, 搜索引擎类:
Gui, Add, Checkbox, gMySubroutine Checked HwndMyEditHwnd vbd, 百度
Gui, Add, Checkbox, vgoogle, Google
Gui, Add, Checkbox, vgithub, Github
Gui, Add, Checkbox, vso, Stack Overflow
Gui, Add, Checkbox, vsegmentfault, SegmentFault
Gui, Add, Checkbox, vcylee, 博客园

Gui, Add, Text, gAllSearchB W140 ys, 翻译类:
Gui, Add, Checkbox, vbdfy, 百度翻译   
Gui, Add, Checkbox, vyoudaofy, 有道翻译
Gui, Add, Checkbox, vgooglefanyi, Google翻译

Gui, Add, Text, gAllSearchC W140 ys, 音乐类:
Gui, Add, Checkbox, vwy, 网易云音乐   
Gui, Add, Checkbox, vqq, QQ音乐
Gui, Add, Checkbox, vdog, 酷狗音乐
Gui, Add, Checkbox, vxiami, 虾米音乐
Gui, Add, Checkbox, vkuwo, 酷我音乐

Gui, Add, Text, gAllSearchD W140 ys, 社区类:
Gui, Add, Checkbox, vjuejin, 掘金
Gui, Add, Checkbox, vjianshu, 简书
Gui, Add, Checkbox, vcsdn, CSDN
Gui, Add, Checkbox, vzhihu, 知乎

Gui, Add, Text, gAllSearchE W140 ys, 购物类:
Gui, Add, Checkbox, vtaobao, 淘宝
Gui, Add, Checkbox, vjingdong, 京东
Gui, Add, Checkbox, vdangdang, 当当
Gui, Add, Checkbox, vamazon, 亚马逊
Gui, Add, Checkbox, vsuning, 苏宁易购
Gui, Add, Checkbox, vkongzi, 孔夫子二手书

; 搜索框
Gui, Add, Edit, vSearchContent w780 Limit50 yp+60 Section xs, 
; 背景色
Gui, Color, E6FFE6
; margin 布局
Gui, Margin, 10, 10
Gui, Add, Button, gCancelSelect w780 h30 yp+30, 取消选中
; submit 按钮
Gui, Add, Button, w780 h30 Default, FUCK

Gui, Add, Tab3, w780 h400 Choose1, 常用 | 框架 | 地图 | PHP | 工作坊
Gui, Tab, 1
Gui, Add, Text,  W140 Section xs yp+30 xp+20, 常用导航:
Gui, Add, Link,, <a href="https://github.com">github</a>
Gui, Add, Link,, <a href="https://legacy.gitbook.com">gitbook</a>
Gui, Add, Link,, <a href="https://www.cnblogs.com/cylee">博客园</a>
Gui, Add, Link,, <a href="http://e.xitu.io/">掘金前端</a>

Gui, Add, Text,  W140 ys, 其他:
Gui, Add, Link,, <a href="http://youmightnotneedjquery.com/">notjQuery</a>
Gui, Add, Link, gInspect ,  <a>安卓/Nodejs调试</a>
Gui, Add, Link,, <a href="https://wyagd001.github.io/zh-cn/docs/Tutorial.htm">AutoHotkey官网</a>
Gui, Add, Link,, <a href="http://babeljs.io/repl">Babel在线转换</a>

Gui, Add, Text,  W140 ys, 娱乐:
Gui, Add, Link,, <a href="https://www.bilibili.com/">哔哩哔哩</a>
Gui, Add, Link,, <a href="http://www.dilidili.wang/">无名小站</a>
Gui, Add, Link,, <a href="http://i.youku.com/u/UNTUzOTAwMzQ0">Ted魔兽</a>
Gui, Add, Link,, <a href="http://i.youku.com/u/UMzc0NzQ2NDg0">lion大帝魔兽</a>

Gui, Add, Text,  W140 ys, 代理IP:
Gui, Add, Link,, <a href="http://www.xicidaili.com/nn">西刺</a>
Gui, Add, Link,, <a href="https://proxy.l337.tech/txt">l337</a>
Gui, Add, Link,, <a href="http://www.66ip.cn/nm.html">66ip</a>

Gui, Add, Text, W140 ys, 站长工具：
Gui, Add, Link,, <a href="http://tool.oschina.net/codeformat/js">代码格式化</a>
Gui, Add, Link,, <a href="https://tool.lu/html/">tool.lu</a>
Gui, Add, Link,, <a href="http://jsbeautifier.org/">jsbeautifier</a>
Gui, Add, Link,, <a href="http://tool.chinaz.com/Tools/urlencode.aspx">Urlencode/Unicode</a>

Gui, Add, Text, W140 Section xs yp+60, 在线工具：
Gui, Add, Link,, <a href="https://wx.qq.com/">微信网页版</a>
Gui, Add, Link,, <a href="http://naotu.baidu.com/home">百度脑图</a>
Gui, Add, Link,, <a href="http://www.bootcdn.cn/">bootcdn</a>
Gui, Add, Link,, <a href="http://fontawesome.dashgame.com/">fontawesome</a>
Gui, Add, Link,, <a href="http://www.speedtest.net/#">斗鱼测速工具</a>


Gui, Add, Text,  W140 ys, 最近浏览:
Gui, Add, Link,, <a href="http://guss.one/guss/register.html?code=ec19c0ca">guss</a>
Gui, Add, Link,, <a href="http://www.51ym.me/User/Default.aspx">易码</a>
Gui, Add, Link,, <a href="http://www.manbiwang.com/#/">满币网</a>
Gui, Add, Link,, <a href="http://candy.dragonvein.io/frontend/web/site/signup">dragonvein</a>
Gui, Add, Link,, <a href="https://www.aliyun.com/">阿里云</a>


Gui, Add, Text,  W140 ys, 最近学习：
Gui, Add, Link,, <a href="https://juejin.im/book/5b1e15f76fb9a01e516d14a0">react 掘金小册</a>
Gui, Add, Link,, <a href="http://huziketang.mangojuice.top/books/react/lesson1">React 小书</a>
Gui, Add, Link,, <a href="https://ant.design/docs/react/recommendation-cn">Ant-design精选插件</a>
Gui, Add, Link,, <a href="https://ant.design/components/table-cn/">Ant-design-table</a>
Gui, Add, Link,, <a href="https://github.com/alibaba/ice">淘宝飞冰ice</a>


Gui, Add, Text,  W140 ys, 工作：
Gui, Add, Link,, <a href="http://47.106.185.185:8080/api/swagger-ui.html#/">swagger-ui</a>


Gui, Tab, 2
Gui, Add, Text,  W140  Section, layer/layui：
Gui, Add, Link,, <a href="http://layer.layui.com/">layer</a>
Gui, Add, Link,, <a href="http://www.layui.com/doc/">layui文档</a>
Gui, Add, Link,, <a href="http://www.layui.com/demo/">layui示例</a>
Gui, Add, Link,, <a href="https://github.com/sentsin/layui/">layui-github</a>

Gui, Add, Text,  W140 ys, Vue：
Gui, Add, Link,, <a href="http://vuejs.org/">vue</a>
Gui, Add, Link,, <a href="http://vuex.vuejs.org">vuex</a>
Gui, Add, Link,, <a href="http://router.vuejs.org ">vue-router</a>
Gui, Add, Link,, <a href="https://github.com/opendigg/awesome-github-vue">vue-awesome</a>

Gui, Add, Text,  W140 ys, React:
Gui, Add, Link,, <a href="https://reactjs.org/docs/hello-world.html">react 官网</a>
Gui, Add, Link,, <a href="https://reacttraining.com/react-router/web/api/Route/component">React-router</a>
Gui, Add, Link,, <a href="https://redux.js.org/basics/usage-with-react">React-redux</a>

Gui, Add, Text,  W140 ys, 饿了么UI：
Gui, Add, Link,, <a href="http://element-cn.eleme.io/#/zh-CN/component/radio">Element-UI</a>
Gui, Add, Link,, <a href="https://github.com/ElemeFE/element/blob/dev/packages/">Element-github</a>
Gui, Add, Link,, <a href="http://elemefe.github.io/mint-ui/#/">mint-ui</a>
Gui, Add, Link,, <a href="https://github.com/ElemeFE/mint-ui/blob/master/packages/radio/src/radio.vue">mint-ui-github</a>

Gui, Add, Text,  W140 ys, Bootstrap:
Gui, Add, Link,, <a href="https://v3.bootcss.com/css/#grid-options">全局 css 样式</a>
Gui, Add, Link,, <a href="https://v3.bootcss.com/components/#jumbotron">全局 js 组件</a>
Gui, Add, Link,, <a href="https://github.com/twbs/bootstrap">Bootstrap-github</a>
Gui, Add, Link,, <a href="http://www.youzhan.org/">示例网站</a>

Gui, Add, Text,  W140 Section xs yp+40, Ant-Design：
Gui, Add, Link,, <a href="https://github.com/ant-design/ant-design/">Ant-Design-Github</a>
Gui, Add, Link,, <a href="https://ant.design/docs/react/introduce-cn">Ant-Design 文档</a>
Gui, Add, Link,, <a href="https://preview.pro.ant.design/#/dashboard/analysis">Ant-Design 示例项目</a>
Gui, Add, Link,, <a href="https://github.com/ant-design/ant-design-pro">Ant-Design-github</a>
Gui, Add, Link,, <a href="http://antv.alipay.com/zh-cn/index.html">antv可视化图表</a>
Gui, Add, Link,, <a href="http://47.106.185.185:3000/heziyou/demo-all-antdesign">投标演示工程</a>

Gui, Add, Text,  W140 ys, DvaJS:
Gui, Add, Link,, <a href="https://github.com/dvajs/dva">DvaJS-Github</a>
Gui, Add, Link,, <a href="https://dvajs.com/guide/">DvaJS 入门指引</a>
Gui, Add, Link,, <a href="https://dvajs.com/guide/">DvaJS API</a>
Gui, Add, Link,, <a href="https://dvajs.com/guide/examples-and-boilerplates.html#官方">DvaJS Demo</a>

Gui, Add, Text,  W140 ys, puppeteer：
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer?utm_source=gold_browser_extension">puppeteer 官网</a>
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md">puppeteer API</a>
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer">puppeteer-Github</a>
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer/tree/master/examples/">puppeteer-示例</a>


Gui, Add, Text,  W140 ys, Bootstrap第三方插件：
Gui, Add, Link,, <a href="https://github.com/1000hz/bootstrap-validator">表单验证插件</a>
Gui, Add, Link,, <a href="https://github.com/uxsolutions/bootstrap-datepicker">datepicker时间插件</a>

Gui, Add, Text,  W140 ys, echart:
Gui, Add, Link,, <a href="http://echarts.baidu.com/index.html">echart官网</a>
Gui, Add, Link,, <a href="http://echarts.baidu.com/theme-builder/">echart主题构建</a>


Gui, Tab, 3
Gui, Add, Text,  W140 Section, 高德地图：
Gui, Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/summary">高德地图-JavaScript</a>
Gui, Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/example/map/map-show">高德地图-Demo</a>
Gui, Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/reference/core">高德地图-API</a>
Gui, Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/guide/abc/quickstart">高德地图-快速上手</a>

Gui, Add, Text,  W140 ys, 百度地图：
Gui, Add, Link,, <a href="http://lbsyun.baidu.com/index.php?title=jspopular3.0">百度地图-JavaScript</a>
Gui, Add, Link,, <a href="http://lbsyun.baidu.com/jsdemo.htm#canvaslayer">百度地图-Demo</a>
Gui, Add, Link,, <a href="http://lbsyun.baidu.com/cms/jsapi/reference/jsapi_reference_3_0.html">百度地图-API</a>
Gui, Add, Link,, <a href="http://lbsyun.baidu.com/index.php?title=jspopular3.0/openlibrary">百度地图-开源库</a>

Gui, Add, Text, W140 ys, 地图工具：
Gui, Add, Link, W140, <a href="http://api.map.baidu.com/lbsapi/getpoint/">百度拾取坐标系统</a>
Gui, Add, Link, W140, <a href="http://geojson.io/">在线绘制GIS数据</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#k0_2">百度地图主题定制</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/custom/">百度地图皮肤制作</a>

Gui, Add, Text, W140 ys, 百度地图教程：
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/index.php?title=jspopular3.0/guide/helloworld">百度地图-快速上手</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c1_16">设置点的新图标</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c2_9">百度线面教程</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c2_5">沿线运动教程（马里奥）</a>

Gui, Add, Text, W140 ys, 百度mapv：
Gui, Add, Link, W140, <a href="http://mapv.baidu.com/">mapv官网</a>
Gui, Add, Link, W140, <a href="http://mapv.baidu.com/examples/#csv-car.html">mapv-example</a>
Gui, Add, Link, W140, <a href="https://github.com/huiyan-fe/mapv/blob/master/API.md">百度线面教程</a>
Gui, Add, Link, W140, <a href="https://github.com/huiyan-fe/mapv/#readme">ampv-github</a>

Gui, Tab, 4
Gui, Add, Text,  W140 Section, Thinkphp：
Gui, Add, Link, W140, <a href="https://github.com/top-think/thinkphp">Thinkphp3.2-github</a>
Gui, Add, Link, W140, <a href="https://github.com/top-think/think">Thinkphp5-github</a>
Gui, Add, Link, W140, <a href="http://www.thinkphp.cn/">Thinkphp 官网</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/special/thinkphp5_quickstart">Thinkphp 官方教程</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/147289">Thinkphp5 快速入门</a>

Gui, Add, Text, W140 ys, PHP官方：
Gui, Add, Link, W140, <a href="http://php.net/manual/zh/language.oop5.php">官方文档 - 类与对象</a>
Gui, Add, Link, W140, <a href="http://php.net/manual/zh/language.namespaces.php">官方文档 - 命名空间</a>
Gui, Add, Link, W140, <a href="http://www.php.cn/xiazai/gongju/1351">vc9-vc14运行库合集</a>
Gui, Add, Link, W140, <a href="http://www.jetbrains.com/phpstorm/">phpstorm 下载</a>
Gui, Add, Link, W140, <a href="https://www.jianshu.com/p/133af2e4fe3f">phpstorm 破解</a>

Gui, Add, Text, W140 ys, Composer：
Gui, Add, Link, W140, <a href="https://getcomposer.org/Composer-Setup.exe">Windows 下载</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/composer">Composer 中文版本</a>
Gui, Add, Link, W140, <a href="https://getcomposer.org/doc/">Composer 官方文档</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478269">Composer 使用教程</a>

Gui, Add, Text, W140 ys, Thinkphp 开源项目：
Gui, Add, Link, W140, <a href="https://github.com/zoujingli/ThinkAdmin">ThinkAdmin</a>
Gui, Add, Link, W140, <a href="https://github.com/ijry/lyadmin">lyadmin</a>
Gui, Add, Link, W140, <a href="https://github.com/baijunyao/thinkphp-bjyblog">thinkphp-bjyblog</a>
Gui, Add, Link, W140, <a href="https://github.com/lea21st/leacmf-thinkphp">leacmf-thinkphp</a>

Gui, Add, Text, W140 ys, Thinkphp MVC：
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478275">控制器Control</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478276">视图View</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478282">路由规则route</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478286">$request请求</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478287">$response响应</a>

Gui, Add, Text,  W140 Section xs yp+40, Think 数据库：
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478289">think\Db 数据库</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478291">CURD/切换数据库/占位符</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478292">ORM 数据层操作</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478293">数据库复杂查询链式操作</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478294">事务支持</a>

Gui, Add, Link, W140 ys, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478295">各种查询表达式</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478301">聚合查询</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478302">时间查询</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478303">where 参数注入</a>
Gui, Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478304">分批/分块查询</a>


Gui, Tab, 5
Gui, Add, Text, gNewIndexHtml W140 Section y+20, 新建index.html
Gui, Add, Text, gNewNodePachong W140, 新建nodejs爬虫模板


GuiEscape:
GuiClose:
	Gui,Hide
return

!space::
	Gui, Show,, Simple Input Example
return 

!m::
	isAllSearchC := true
	GuiControl,,bd, 0
	GuiControl,, wy, 1 
	GuiControl,, qq, 1 
	GuiControl,, dog, 1 
	GuiControl,, xiami, 1 
	GuiControl,, kuwo, 1 
	Gui, Show,, Simple Input Example
return 

NewNodePachong:
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
filename := name . "/index.js"
FileCreateDir, %name%
FileAppend,
(
// npm i request cheerio
const request = require('request');
const cheerio = require('cheerio');

request('http://candy.dragonvein.io/frontend/web/site/signup', function (err, response, body) {
	if (err) throw new Error(err.message);
	let $ = cheerio.load(response.body)
});
), %filename%
RunWaitOne("cd " . name . " && npm init -y && npm i request cheerio")
run, %name%
RunBy(filename)
return

NewIndexHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
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
),  %name%
RunBy(name)
return

CancelSelect:
	GuiControl,, bd, 0
	GuiControl,, google, 0
	GuiControl,, so, 0
	GuiControl,, github, 0
	GuiControl,, segmentfault, 0
	GuiControl,, cylee, 0
	
	GuiControl,, bdfy, 0
	GuiControl,, youdaofy, 0
	GuiControl,, googlefanyi, 0

	GuiControl,, wy, 0
	GuiControl,, qq, 0
	GuiControl,, dog, 0
	GuiControl,, xiami, 0
	GuiControl,, kuwo, 0 

	GuiControl,, juejin, 0
	GuiControl,, jianshu, 0
	GuiControl,, csdn, 0
	GuiControl,, zhihu, 0

	GuiControl,, taobao, 0
	GuiControl,, tianmao, 0
	GuiControl,, jingdong, 0
	GuiControl,, dangdang, 0
	GuiControl,, amazon, 0 
	GuiControl,, suning, 0
return

; +g 其实就是添加吧
MySubroutine:
	/*
		MsgBox, %MyEditHwnd%
		MsgBox, %A_EventInfo%, %A_GuiEvent%, %A_GuiControl%, %A_Gui%
	*/
return

Inspect:
	Var = chrome://inspect/#devices
	Clipboard := Var
return

isAllSearchA := false
AllSearchA:
	isAllSearchA := !isAllSearchA
	if (isAllSearchA) {
		GuiControl,, bd, 1 
		GuiControl,, google, 1 
		GuiControl,, so, 1 
		GuiControl,, github, 1 
		GuiControl,, segmentfault, 1 
		GuiControl,, cylee, 1 
	} else {
		GuiControl,, bd, 0
		GuiControl,, google, 0
		GuiControl,, so, 0
		GuiControl,, github, 0
		GuiControl,, segmentfault, 0
		GuiControl,, cylee, 0
	}
return

isAllSearchB := false
AllSearchB:
	isAllSearchB := !isAllSearchB
	if (isAllSearchB) {
		GuiControl,, bdfy, 1 
		GuiControl,, youdaofy, 1 
		GuiControl,, googlefanyi, 1 
	} else {
		GuiControl,, bdfy, 0
		GuiControl,, youdaofy, 0
		GuiControl,, googlefanyi, 0
	}
return

isAllSearchC := false
AllSearchC:
	isAllSearchC := !isAllSearchC
	if (isAllSearchC) {
		GuiControl,, wy, 1 
		GuiControl,, qq, 1 
		GuiControl,, dog, 1 
		GuiControl,, xiami, 1 
		GuiControl,, kuwo, 1 
	} else {
		GuiControl,, wy, 0
		GuiControl,, qq, 0
		GuiControl,, dog, 0
		GuiControl,, xiami, 0
		GuiControl,, kuwo, 0 
		
	}
return

isAllSearchD := false
AllSearchD:
	isAllSearchD := !isAllSearchD
	if (isAllSearchD) {
		GuiControl,, juejin, 1 
		GuiControl,, jianshu, 1 
		GuiControl,, csdn, 1 
		GuiControl,, zhihu, 1 
	} else {
		GuiControl,, juejin, 0
		GuiControl,, jianshu, 0
		GuiControl,, csdn, 0
		GuiControl,, zhihu, 0
	}
return

isAllSearchE := false
AllSearchE:
	isAllSearchE := !isAllSearchE
	if (isAllSearchE) {
		GuiControl,, taobao, 1 
		GuiControl,, tianmao, 1 
		GuiControl,, jingdong, 1 
		GuiControl,, dangdang, 1 
		GuiControl,, amazon, 1 
		GuiControl,, suning, 1 
	} else {
		GuiControl,, taobao, 0
		GuiControl,, tianmao, 0
		GuiControl,, jingdong, 0
		GuiControl,, dangdang, 0
		GuiControl,, amazon, 0 
		GuiControl,, suning, 0
	}
return


ButtonFUCK:
	; 保存用户的输入到每个控件的关联变量中.
	Gui, Submit, NoHide 

	; 贝尔塔猫'博客园
	if (cylee == 1) {
		RUN, https://zzk.cnblogs.com/my/s/blogpost-p?Keywords=%SearchContent%
	}

	; 百度
	if (bd == 1) {
		RUN, https://www.baidu.com/s?wd=%SearchContent%
	}

	; Google
	if (google == 1) {
		RUN, https://www.google.com/search?q=%SearchContent%
	}

	; Github
	if (github == 1) {
		RUN, https://github.com/search?q=%SearchContent%
	}

	; Stack Overflow
	if (so == 1) {
		RUN, https://stackoverflow.com/search?q=%SearchContent%
	}

	; SegmentFault
	if (segmentfault == 1) {
		RUN, https://segmentfault.com/search?q=%SearchContent%
	}

	; 百度翻译   
	if (bdfy == 1) {
		RUN, http://fanyi.baidu.com/translate?aldtype=16047&query=%SearchContent%&keyfrom=baidu&smartresult=dict&lang=auto2zh#zh/en/%SearchContent%
	}

	; 有道翻译
	if (youdaofy == 1) {
		RUN, http://dict.youdao.com/w/eng/%SearchContent%/#keyfrom=dict2.index
	}

	; Google翻译
	if (googlefanyi == 1) {
		RUN, https://translate.google.cn/#auto/en/%SearchContent%
	}

	; 网易云音乐   
	if (wy == 1) {
		RUN, http://music.163.com/#/search/m/?s=%SearchContent%
	}

	; QQ音乐
	if (qq == 1) {
		RUN, https://y.qq.com/portal/search.html#w=%SearchContent%
	}

	; 酷狗音乐
	if (dog == 1) {
		RUN, http://www.kugou.com/yy/html/search.html#searchType=song&searchKeyWord=%SearchContent%
	}

	; 虾米音乐
	if (xiami == 1) {
		RUN, https://www.xiami.com/search?key=%SearchContent%
	}

	if (kuwo == 1) {
		RUN, http://sou.kuwo.cn/ws/NSearch?type=all&key=%SearchContent%
	}

	; 掘金
	if (juejin == 1) {
		RUN, https://juejin.im/search?query=%SearchContent%
	}

	; 简书
	if (jianshu == 1) {
		RUN, https://www.jianshu.com/search?q=%SearchContent%&page=1&type=note
	}

	; CSDN
	if (csdn == 1) {
		RUN, https://so.csdn.net/so/search/s.do?q=%SearchContent%
	}

	; 知乎
	if (zhihu == 1) {
		RUN, https://www.zhihu.com/search?type=content&q=%SearchContent%
	}

	; 淘宝
	if (taobao == 1) {
		RUN, https://s.taobao.com/search?q=%SearchContent%
	}

	; 京东
	if (jingdong == 1) {
		RUN, https://search.jd.com/Search?keyword=%SearchContent%&enc=utf-8&wq=%SearchContent%
	}

	; 亚马逊
	if (amazon == 1) {
		RUN, https://www.amazon.cn/s/ref=nb_sb_noss?field-keywords=%SearchContent%
	}

	; 苏宁易购
	if (suning == 1) {
		RUN, https://search.suning.com/%SearchContent%/
	}

	; 当当
	if (dangdang == 1) {
		RUN, http://search.dangdang.com/?key=%SearchContent%
	}
	
	; 孔夫子二手书
	if (kongzi == 1) {
		RUN, http://search.kongfz.com/product_result/?key=%SearchContent%
	}
return