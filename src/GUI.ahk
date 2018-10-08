Gui, Add, Text, gAllSearchA W140 Section xs yp+10, 搜索引擎类:
Gui, Add, Checkbox, vcylee, 博客园
Gui, Add, Checkbox, gMySubroutine Checked HwndMyEditHwnd vbd, 百度
Gui, Add, Checkbox, vgoogle, Google
Gui, Add, Checkbox, vgithub, Github
Gui, Add, Checkbox, vso, Stack Overflow
Gui, Add, Checkbox, vsegmentfault, SegmentFault

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

Gui, Add, Tab3, w780 h460 Choose1, 常用 | 框架 | UI框架 | 地图 | PHP | 微信 | 工作坊
Gui, Tab, 1
Gui, Add, Text,  W140 Section xs yp+30 xp+20, 常用导航:
Gui, Add, Link,, <a href="https://www.cnblogs.com/cylee">博客园</a>
Gui, Add, Link,, <a href="http://www.cnblogs.com/cylee">技术淘宝</a>
Gui, Add, Link,, <a href="https://github.com">github</a>
Gui, Add, Link,, <a href="https://legacy.gitbook.com">gitbook</a>
Gui, Add, Link,, <a href="http://e.xitu.io/">掘金前端</a>

Gui, Add, Text,  W140 ys, 其他:
Gui, Add, Link,, <a href="http://youmightnotneedjquery.com/">notjQuery</a>
Gui, Add, Link, gInspect ,  <a>安卓/Nodejs调试</a>
Gui, Add, Link,, <a href="https://wyagd001.github.io/zh-cn/docs/Tutorial.htm">AutoHotkey官网</a>
BabelUrl := "http://babeljs.io/repl#?babili=true&browsers=&build=&builtIns=false&spec=false&loose=false&code_lz=Q&debug=false&forceAllTransforms=false&shippedProposals=false&circleciRepo=&evaluate=false&fileSize=true&timeTravel=false&sourceType=module&lineWrap=true&presets=es2015%2Creact%2Cstage-2%2Cbabili&prettier=false&targets=&version=6.26.0"
Gui, Add, Link,, <a href="%BabelUrl%">Babel在线转换</a>

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
Gui, Add, Link,, <a href="http://tool.oschina.net/codeformat/js">在线代码格式化</a>
Gui, Add, Link,, <a href="http://tool.oschina.net/highlight">在线代码着色</a>
Gui, Add, Link,, <a href="https://tool.lu/html/">tool.lu压缩</a>
Gui, Add, Link,, <a href="http://tool.chinaz.com/Tools/urlencode.aspx">Urlencode/Unicode</a>
Gui, Add, Link,, <a href="http://www.bejson.com/">bejson超强工具箱</a>


Gui, Add, Text, W140 Section xs yp+50, 在线工具：
Gui, Add, Link,, <a href="https://wx.qq.com/">微信网页版</a>
Gui, Add, Link,, <a href="http://naotu.baidu.com/home">百度脑图</a>
Gui, Add, Link,, <a href="http://www.bootcdn.cn/">bootcdn</a>
Gui, Add, Link,, <a href="https://www.cdnjs.net/">百度cdn</a>
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
Gui, Add, Link,, <a href="http://www.jtthink.com/">jtthink.com</a>


Gui, Add, Text,  W140 ys, 工作：
Gui, Add, Link,, <a href="http://47.106.185.185:8080/api/swagger-ui.html#/">swagger-ui</a>
Gui, Add, Link,, <a href="http://47.106.185.185:3000/heziyou/demo-all-antdesign">油气管道 git</a>
Gui, Add, Link,, <a href="http://47.106.185.185:3000/lizhaohong/largeDataScreen">大数据屏幕 git</a>
Gui, Add, Link,, <a href="http://47.106.185.185:3000/frontendjs/antd-dgedu-consult-g">g端 git</a>
Gui, Add, Link,, <a href="http://120.77.146.174:82/">大数据屏幕演示</a>
Gui, Add, Link,, <a href="http://47.106.185.185:3000/frontendjs/dg12345-vue">dg12345-vue</a>

Gui, Add, Text,  W140 ys, 奇妙工具:
Gui, Add, Link,, <a href="http://jquery.cuishifeng.cn/">在线jQuery手册</a>
Gui, Add, Link,, <a href="https://sketch2code.azurewebsites.net/">Microsoft sketch2code</a>
Gui, Add, Link,, <a href="http://blog.mn886.net/jqGrid/">jQGrid 中文文档</a>
Gui, Add, Link,, <a href="http://www.hanhande.com/">憨憨电影</a>

Gui, Tab, 2
Gui, Add, Text,  W140 Section, Vue：
Gui, Add, Link,, <a href="http://vuejs.org/">vue</a>
Gui, Add, Link,, <a href="http://vuex.vuejs.org">vuex</a>
Gui, Add, Link,, <a href="http://router.vuejs.org ">vue-router</a>
Gui, Add, Link,, <a href="https://github.com/opendigg/awesome-github-vue">vue-awesome</a>
Gui, Add, Link,, <a href="https://github.com/PanJiaChen/vue-element-admin">vue-element-admin</a>
Gui, Add, Link,, <a href="https://ssr.vuejs.org/zh/">vue-ssr </a>

Gui, Add, Text,  W140 ys, vue ssr nuxt：
Gui, Add, Link,, <a href="https://nuxtjs.org/">nuxt官网</a>
Gui, Add, Link,, <a href="https://nuxtjs.org/guide/installation">nuxt install</a>
Gui, Add, Link,, <a href="https://nuxtjs.org/api">nuxt api</a>
Gui, Add, Link,, <a href="https://nuxtjs.org/examples">nuxt example</a>
Gui, Add, Link,, <a href="https://github.com/nuxt">nuxt github</a>
Gui, Add, Link,, <a href="https://github.com/nuxt-community/create-nuxt-app">create-nuxt-app</a>

Gui, Add, Text,  W140 ys, React:
Gui, Add, Link,, <a href="https://reactjs.org/docs/hello-world.html">react 官网</a>
Gui, Add, Link,, <a href="https://reacttraining.com/react-router/web/api/Route/component">React-router</a>
Gui, Add, Link,, <a href="https://github.com/reduxjs/redux">redux</a>
Gui, Add, Link,, <a href="https://redux.js.org/basics/usage-with-react">React-redux</a>
Gui, Add, Link,, <a href="https://github.com/facebook/create-react-app">create-react-app</a>


Gui, Add, Text,  W140 ys, react ssr next：
Gui, Add, Link,, <a href="https://nextjs.org/">next官网</a>
Gui, Add, Link,, <a href="https://nextjs.org/docs/#setup">nuxt setup</a>
Gui, Add, Link,, <a href="https://nextjs.org/docs">nuxt doc</a>
Gui, Add, Link,, <a href="https://nextjs.org/learn/">nuxt learn</a>
Gui, Add, Link,, <a href="https://github.com/zeit/next.js/tree/master">next github</a>
Gui, Add, Link,, <a href="https://github.com/segmentio/create-next-app">create-next-app</a>

Gui, Add, Text,  W160 ys, DvaJS:
Gui, Add, Link,, <a href="https://github.com/dvajs/dva">DvaJS-Github</a>
Gui, Add, Link,, <a href="https://dvajs.com/guide/">DvaJS 入门指引</a>
Gui, Add, Link,, <a href="https://dvajs.com/guide/">DvaJS API</a>
Gui, Add, Link,, <a href="https://dvajs.com/guide/examples-and-boilerplates.html#官方">DvaJS Demo</a>

Gui, Add, Text,  W140 Section xs yp+110, umi:
Gui, Add, Link,, <a href="https://github.com/umijs/umi">umi github</a>
Gui, Add, Link,, <a href="https://umijs.org/">umi 官网</a>
Gui, Add, Link,, <a href="https://umijs.org/guide/#features">umi 入门指引</a>
Gui, Add, Link,, <a href="https://umijs.org/api/">umi api</a>
Gui, Add, Link,, <a href="https://umijs.org/config/">umi config</a>


Gui, Add, Text,  W140 ys, puppeteer：
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer?utm_source=gold_browser_extension">puppeteer 官网</a>
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md">puppeteer API</a>
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer">puppeteer-Github</a>
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer/tree/master/examples/">puppeteer-示例</a>


Gui, Tab, 3
Gui, Add, Text,  W140  Section, layer/layui：
Gui, Add, Link,, <a href="http://layer.layui.com/">layer</a>
Gui, Add, Link,, <a href="http://www.layui.com/doc/">layui文档</a>
Gui, Add, Link,, <a href="http://www.layui.com/demo/">layui示例</a>
Gui, Add, Link,, <a href="https://github.com/sentsin/layui/">layui-github</a>
Gui, Add, Link,, <a href="https://www.layui.com/admin/std/dist/views/">layui-admin</a>

Gui, Add, Text,  W140 ys, 饿了么UI：
Gui, Add, Link,, <a href="http://element-cn.eleme.io/#/zh-CN/component/radio">Element-UI</a>
Gui, Add, Link,, <a href="https://github.com/ElemeFE/element/blob/dev/packages/">Element-github</a>
Gui, Add, Link,, <a href="http://elemefe.github.io/mint-ui/#/">mint-ui</a>
Gui, Add, Link,, <a href="https://github.com/ElemeFE/mint-ui/blob/master/packages/radio/src/radio.vue">mint-ui-github</a>
Gui, Add, Link,, <a href="https://github.com/PanJiaChen/vue-element-admin">vue-element-admin</a>

Gui, Add, Text,  W140 ys, Bootstrap:
Gui, Add, Link,, <a href="https://v3.bootcss.com/css/#grid-options">全局 css 样式</a>
Gui, Add, Link,, <a href="https://v3.bootcss.com/components/#jumbotron">全局 js 组件</a>
Gui, Add, Link,, <a href="https://github.com/twbs/bootstrap">Bootstrap-github</a>
Gui, Add, Link,, <a href="http://www.youzhan.org/">示例网站</a>
Gui, Add, Link,, <a href="https://github.com/1000hz/bootstrap-validator">表单验证插件</a>
Gui, Add, Link,, <a href="https://github.com/uxsolutions/bootstrap-datepicker">datepicker时间插件</a>

Gui, Add, Text,  W160 ys, Ant-Design：
Gui, Add, Link,, <a href="https://github.com/ant-design/ant-design/">Ant-Design-Github</a>
Gui, Add, Link,, <a href="https://ant.design/docs/react/introduce-cn">Ant-Design 文档</a>
Gui, Add, Link,, <a href="https://preview.pro.ant.design/#/dashboard/analysis">Ant-Design-pro 后台示例</a>
Gui, Add, Link,, <a href="https://github.com/ant-design/ant-design-pro">Ant-Design-pro-Github</a>
Gui, Add, Link,, <a href="http://antv.alipay.com/zh-cn/index.html">antv可视化图表</a>
Gui, Add, Link,, <a href="https://ant.design/docs/react/recommendation-cn">Ant-design精选插件</a>

Gui, Tab, 4
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
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/index.php?title=jspopular3.0/guide/helloworld">百度地图-快速上手</a>

Gui, Add, Text, W140 ys, 地图工具：
Gui, Add, Link, W140, <a href="http://api.map.baidu.com/lbsapi/getpoint/">百度拾取坐标系统</a>
Gui, Add, Link, W140, <a href="http://geojson.io/">GeoJSON.io</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#k0_2">百度地图主题定制</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/custom/">百度地图皮肤制作</a>


Gui, Add, Text, W140 ys, 百度地图教程：
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#f0_3">地图点击事件</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c2_9">地图线面教程</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c1_11">自定义覆盖物</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c1_4">点聚合（聚合图）</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c2_5">沿线运动教程（马里奥）</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c1_16">自定义点图标（狐美人）</a>

Gui, Add, Text, W140 ys, 百度mapv：
Gui, Add, Link, W140, <a href="http://mapv.baidu.com/">mapv官网</a>
Gui, Add, Link, W140, <a href="http://mapv.baidu.com/examples/#csv-car.html">mapv-example</a>
Gui, Add, Link, W140, <a href="https://github.com/huiyan-fe/mapv/blob/master/API.md">百度线面教程</a>
Gui, Add, Link, W140, <a href="https://github.com/huiyan-fe/mapv/#readme">ampv-github</a>

Gui, Add, Text,  W140  Section xs yp+100, echart:
Gui, Add, Link,, <a href="http://echarts.baidu.com/examples/">echart 官方示例</a>
Gui, Add, Link,, <a href="http://echarts.baidu.com/theme-builder/">echart 主题构建</a>
Gui, Add, Link,, <a href="http://echarts.baidu.com/tutorial.html#5 分钟上手 ECharts">echart 快速上手</a>
Gui, Add, Link,, <a href="http://echarts.baidu.com/api.html">echart API</a>
Gui, Add, Link,, <a href="http://echarts.baidu.com/option.html#series-map.data.itemStyle.color">echart 配置项手册</a>

Gui, Add, Text, W140 ys, ECharts 相关资料：
Gui, Add, Link,, <a href="http://echarts.baidu.com/examples/editor.html?c=map-HK">echarts HK示例</a>
Gui, Add, Link,, <a href="http://echarts.baidu.com/examples/data/asset/geo/HK.json">HK GeoJson 数据示例</a>
Gui, Add, Link,, <a href="http://echarts.baidu.com/option.html#series-map.data.itemStyle.color">echart 覆盖物配置</a>
Gui, Add, Link, W140, <a href="https://www.oschina.net/translate/geojson-spec#positions">GeoJSON 格式规范</a>


Gui, Add, Text, W140 ys, ECharts Gallery:
Gui, Add, Link, W140, <a href="http://gallery.echartsjs.com/explore.html">ECharts 官方论坛</a>
Gui, Add, Link, W140, <a href="http://gallery.echartsjs.com/explore.html?u=bd-2135947294">ECharts 论坛示例</a>
Gui, Add, Link, W140, <a href="http://gallery.echartsjs.com/editor.html?c=xB1jgoJnDf">ECharts 安徽示例</a>

Gui, Tab, 5
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

Gui, Add, Text,  W140 Section xs yp+50, Think 数据库：
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

Gui, Tab, 6
Gui, Add, Text,  W140 Section, 微信小程序：
Gui, Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html">微信小程序开发工具</a>
Gui, Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/api/">微信内置API</a>
Gui, Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/component/">内置组件</a>
Gui, Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/api/authorize-index.html">授权 与 scope 列表</a>
Gui, Add, Link, W140, <a href="https://developers.weixin.qq.com/miniprogram/dev/framework/app-service/app.html">生命周期</a>
Gui, Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/framework/view/wxml/event.html">事件大全</a>
Gui, Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/framework/custom-component/component.html">Component构造器</a>
Gui, Add, Link, W140, <a href="https://legacy.gitbook.com/book/dragon8github/fuck/edit#/edit/master/README.md?_k=pfi687">我的gitbook</a>

Gui, Tab, 7
Gui, Add, Text, gNewPureIndexHtml W140 Section y+20, 新建纯index.html
Gui, Add, Text, gNewIndexHtml W140, 新建index.html


Gui, Add, Text, gNewreactbabelHtml ys, 新建react.babel.html
Gui, Add, Text, gNewcreateareactapp, 新建create-react-app脚手架
Gui, Add, Text, gNewreduxIndexHtml W140,新建react-redux.html

Gui, Add, Text, gNewEchartsPinHtml  ys x+50, 新建echarts.pin.html(玫瑰饼图)
Gui, Add, Text, gNewEchartsLineHtml ,新建echats.Line.html（折线图）
Gui, Add, Text, gNewEchartsBarHtml ,新建echats.Bar.html（柱状图）
Gui, Add, Text, gNewEchartsPurePinHtml ,新建echats.Pin.html（纯圆饼图）

Gui, Add, Text, gNewNodePachong W140 ys x+40, 新建nodejs爬虫模板
Gui, Add, Text, gNewNodegbkPachong W200, 新建nodejs(gbk/gb2312)爬虫模板
Gui, Add, Text, gNewNodefengzhuangPachong W200, 新建nodejs(封装版)爬虫模板
Gui, Add, Text, gNewPyhtonPachong W140, 新建python爬虫模板
Gui, Add, Text, gNewNodejsSequelize W190, 新建nodejs-sequelize-mysql模板


GuiEscape:
GuiClose:
	Gui,Hide
return

!space::
	Gui, Show,, Simple Input Example
return 

/*
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
*/

NewNodejsSequelize:
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
filename := name . "/index.js"
FileCreateDir, %name%
FileAppend,
(
// http://docs.sequelizejs.com/manual/installation/getting-started.html#setting-up-a-connection
const Sequelize = require('sequelize');

const sequelize = new Sequelize('database', 'username', 'password', {
    host: 'localhost',
    port: 3306,
    dialect: 'mysql',
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    },
});

sequelize.authenticate().then(() => {
    console.log('Connection has been established successfully.');
})
.catch(err => {
    console.error('Unable to connect to the database:', err);
});

// 第一次没有表的时候需要同步来创建
const User = sequelize.define('user', {
    firstName: { type: Sequelize.STRING },
    lastName: { type: Sequelize.STRING },
}, {
	// 省略 createdAt 和 updateAt
	timestamps: false
});

sequelize.sync({
    force: true
}).then(() => {
	return User.create({
        firstName: 'John',
        lastName: 'Hancock'
    })
}).then(() => {
    return User.find({
        where: {
            firstName: 'John'
        }
    })
}).then(console.log)
), %filename%
RunWaitOne("cd " . name . " && npm init -y && npm i sequelize mysql2 -S")
run, %name%
RunBy(filename)
return

Newcreateareactapp:
	name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
	FileCreateDir, %name%
	RunWaitOne("cd " . name . " && npm install -g create-react-app && create-react-app my-app && cd my-app && npm start")
return

NewEchartsPurePinHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    myChart.setOption({
        title: {
            text: '经营占道',
            x: 'center',
            y: 'bottom'
        },
        series: [{
            name: '经营占道类型',
            type: 'pie',
            radius: '55`%',
            center: ['50`%', '60`%'],
            labelLine: {
                normal: {
                    // 引导线的长度
                    length: 1
                }
            },
            data: [
                { value: 1210, name: '店外经营占道' },
                { value: 1030, name: '流动经营占道' }
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                },
                // normal 是图形在默认状态下的样式；emphasis是图形在高亮状态下的样式，比如在鼠标悬浮或者图例联动高亮时。
                normal: {
                    // 饼图图形上的文本标签
                    label: { show: true },
                    // 标签的视觉引导线样式
                    labelLine: { show: true }
                }
            }
        }],
        color: ['#e76660', '#df4547']
    });
    </script>
</body>

</html>
),  %name%
RunBy(name)	
run, % name
return

NewEchartsBarHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    myChart.setOption({
        title: {
            text: '占用道路问题结构',
            x: 'center',
            align: 'right'
        },
        xAxis: {
            data: ["经营占道", "垃圾占道", "车辆占道", "霸占车位", "其他占道"],
            axisLine: {
                lineStyle: {
                    color: 'black',
                    width: 0.5
                }
            },
            axisLabel: {
                interval: 0,
                textStyle: {
                    color: 'black',
                    fontSize: 18
                }
            }
        },
        yAxis: {
            splitLine: {
                show: true
            },
            type: 'value',
            axisLine: {
                lineStyle: {
                    width: 0
                }
            },
            axisLabel: {
                interval: 0,
                textStyle: {
                    color: 'black',
                    fontSize: 14
                }
            }
        },
        series: [{
            name: '销量',
            type: 'bar',
            data: [2240, 1768, 1547, 600, 31],
            barWidth: 25,
            itemStyle: {
                normal: {
                    color: function(params) {
                        var colorList = ['#00a0e9', '#00a0e9 ', '#00a0e9 ', '#00a0e9 ', '#00a0e9'];
                        return colorList[params.dataIndex]
                    },
                    label: {
                        show: true,
                        position: 'top',
                        color: 'black',
                        fontSize: 14,
                        formatter: '{c}'
                    },
                    opacity: 0.4
                },
            },
        }]
    });
    </script>
</body>

</html>
),  %name%
RunBy(name)	
run, % name
return

NewEchartsLineHtml: 
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var option = {
        grid: { left: '12`%', right: '3`%', bottom: '35px', top: '35px', },
        xAxis: [{
            type: 'category',
            axisTick: { show: false },
            axisLine: { show: false, },
            axisLabel: {
                textStyle: {
                    color: '#444444',
                    fontSize: '16'
                }
            },
            data: ['1月', '2月', '3月', '4月', '5月', '6月']
        }],
        yAxis: [{
            type: 'value',
            splitLine: {
                lineStyle: {
                    color: 'rgba(52,73,94, .23)',
                    type: 'dashed'
                },
            },
            axisTick: { show: false },
            axisLine: { show: false, },
            axisLabel: {
                margin: '10',
                textStyle: {
                    color: '#444444',
                    fontSize: '16',
                    align: 'right',
                    baseline: 'bottom'
                }
            }
        }],
        series: [{
            type: 'line',
            symbol: 'emptyCircle',
            symbolSize: 7,
            itemStyle: {
                normal: {
                    color: '#118cfe',
                    lineStyle: {
                        color: '#118cfe'
                    }
                }
            },
            label: {
                show: true,
                position: 'top',
                distance: 8,
                textStyle: {
                    color: '#444444',
                    fontSize: 18
                }
            },
            data: [1020, 324, 1132, 1389, 1288, 1358],
        }, ]
    };
    myChart.setOption(option);
    </script>
</body>

</html>
),  %name%
RunBy(name)	
run, % name
return

NewEchartsPinHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var data = [
        { value: 10, name: '就业保障类' },
        { value: 5, name: '其他类' },
        { value: 15, name: '城市建设类' },
        { value: 25, name: '民政救济类' },
        { value: 20, name: '市场监管类' },
        { value: 35, name: '市容城管类' },
        { value: 30, name: '公共安全类' },
        { value: 40, name: '公安消防类' }
    ];
    var category = [];
    for (var i = 0; i < data.length; i++) {
        category.push(data[i].name);
    }
    var option = {
        legend: {
            x: 'center',
            y: 'bottom',
            data: category
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
                        formatter: [
                            '{b}', '占比{d}`%'
                        ].join('\n'),
                        textStyle: {
                            color: '#000000',
                            fontSize: 16
                        }
                    },
                }
            },
            data: data
        }]
    };
    myChart.setOption(option);
    </script>
</body>
</html>
),  %name%
RunBy(name)
run, % name
return

NewreactbabelHtml:
	run, https://github.com/dragon8github/Pandora/blob/master/template/babeltest.zip?raw=true
return

NewreduxIndexHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/redux/4.0.0/redux.min.js"></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
    }

    #app {

    }
    </style>
</head>

<body>
    <div id="app">
        <label class='num'></label>
        <button class='like'>like</button>
        <button class='unlike'>unlike</button>
    </div>
</body>
<script>
    
    const render = () => {
        document.querySelector('.num').innerText = store.getState()
    }

    document.querySelector('.like').addEventListener('click', function (event) {
        store.dispatch({ type: 'LIKE' })
    })

    document.querySelector('.unlike').addEventListener('click', function (event) {
        store.dispatch({ type: 'UNLIKE' })
    })

    // redux的核心方法： reducer
    const reducer = (previousState = 0, action) => {
        switch (action.type) {
            case 'LIKE':
                return previousState + 1;
            case 'UNLIKE':
                return previousState - 1;
            default:
                return previousState
        }
    }

    // 创建redux的核心：store
    const store = Redux.createStore(reducer);

    // 订阅更新渲染
    store.subscribe(render);

    // 首次渲染
    render()

</script>
</html>
),  %name%
RunBy(name)
return

NewPyhtonPachong: 
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
filename := name . "/index.python"
FileCreateDir, %name%
FileAppend,
(
# python 3.x 开始自带了pip，如果没有请自信百度安装。
# pip install beautifulsoup4 requests
from bs4 import BeautifulSoup
import requests

res = requests.get('https://etherscan.io/token/tokenholderchart/0x86fa049857e0209aa7d9e616f7eb3b3b78ecfdb0?range=10')
res.encoding = 'gbk'
soup = BeautifulSoup(res.text, 'html.parser')
table = soup.select('#ContentPlaceHolder1_resultrows table tr')
myarr = []
for tr in table:
	td = tr.select('td')
	if len(td) > 0:
		Rank = td[0].text;
		Address = td[1].text;
		Quantity = td[2].text;
		Percentage = td[3].text;
		myarr.append({"Rank": Rank, "Address": Address, "Quantity": Quantity, "Percentage": Percentage})
print(myarr)
});
), %filename%
RunWaitOne("pip install beautifulsoup4 requests")
run, %name%
RunBy(filename)
return

NewNodegbkPachong:
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
filename := name . "/index.js"
FileCreateDir, %name%
FileAppend,
(
// npm i request cheerio iconv-lite
const request = require('request');
const cheerio = require('cheerio');
const iconv = require('iconv-lite');

request({
	url: 'http://roll.mil.news.sina.com.cn/col/zgjq/index.shtml',
	encoding : null // raw buffer
}, function (err, response, body) {
	if (err) throw new Error(err.message);
	var buffer = response.body;
	var str = iconv.decode(buffer, 'GBK').toString();
	let $ = cheerio.load(str)
	let lis = $(".linkNews li");
	let myarr = [];
	lis.each(function (i, li) {
	    var a = $(li).find('a')
	    var title = a.text()
	    myarr.push({ title });
	});
	console.log("简单成狗了:", myarr);
});
), %filename%
RunWaitOne("cd " . name . " && npm init -y && npm i request cheerio iconv-lite")
run, %name%
RunBy(filename)
return

NewNodefengzhuangPachong:
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
filename := name . "/index.js"
FileCreateDir, %name%
FileAppend,
(
// npm i request cheerio iconv-lite
const request = require('request');
const cheerio = require('cheerio');
const iconv = require('iconv-lite');

const _request = (url, cb, charset = 'utf8') => {
	request({ url: url, encoding : null }, function (err, response, body) {
		if (err) throw new Error(err.message);
		var buffer = response.body;
		var str = iconv.decode(buffer, charset).toString();
		let $ = cheerio.load(str)
		cb && cb($);
	});
}

_request('http://roll.mil.news.sina.com.cn/col/zgjq/index.shtml', function ($) {
	let lis = $(".linkNews li");
	let myarr = [];
	lis.each(function (i, li) {
	    var a = $(li).find('a')
	    var title = a.text()
	    myarr.push({ title });
	});
	console.log(myarr);
}, 'GBK')
), %filename%
RunWaitOne("cd " . name . " && npm init -y && npm i request cheerio")
run, %name%
RunBy(filename)
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

request('https://etherscan.io/token/tokenholderchart/0x86fa049857e0209aa7d9e616f7eb3b3b78ecfdb0?range=10', function (err, response, body) {
	if (err) throw new Error(err.message);
	let $ = cheerio.load(response.body)
	let trs = $("#ContentPlaceHolder1_resultrows tr");
	let myarr = [];
	trs.each(function (i, tr) {
	    var td = $(tr).find('td')
	    let Rank = td.eq(0).text();
	    let Address = td.eq(1).text();
	    let Quantity = td.eq(2).text();
	    let Percentage = td.eq(3).text();
	    myarr.push({Rank, Address, Quantity, Percentage});
	});
	console.log("简单成狗了:", myarr);
});
), %filename%
RunWaitOne("cd " . name . " && npm init -y && npm i request cheerio")
run, %name%
RunBy(filename)
return

NewPureIndexHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js"></script>
    <!-- jquery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <style>
    html, body{ 
        margin: 0;
        padding: 0;
    }

    #app {
      
    }
    </style>
</head>

<body>
    <div id="app"></div>
</body>
<script>
$(function() {
    console.log('hello world');
});
</script>
</html>
),  %name%
RunBy(name)
run, % name
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
),  %name%
RunBy(name)
run, % name
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
	GuiControl,, kongzi, 0
	
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
		GuiControl,, kongzi, 1
	} else {
		GuiControl,, taobao, 0
		GuiControl,, tianmao, 0
		GuiControl,, jingdong, 0
		GuiControl,, dangdang, 0
		GuiControl,, amazon, 0 
		GuiControl,, suning, 0
		GuiControl,, kongzi, 0
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