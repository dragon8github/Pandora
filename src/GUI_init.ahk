
/**
//////////////////////////////////////////////
初始化 ISearch GUI 的代码逻辑
//////////////////////////////////////////////
 */

; 设置默认GUI的ID
Gui, ISearch:Default

; 背景颜色
Gui, ISearch:Color, E6FFE6

; margin 布局
Gui, ISearch:Margin, 10, 10

; 搜索框
Gui, ISearch:Add, Edit, vISearchContent gISearchContent w600 Limit50 Section

; 提交按钮
Gui, ISearch:Add, Button, w193 h30 gOpen Section xs h30 yp+30 Default, 打开

; 提交按钮
Gui, ISearch:Add, Button, w193 h30 gsublimeOpen ys h30, sublime

; 提交按钮
Gui, ISearch:Add, Button, w193 h30 gcmderOpen ys h30, cmder打开

; 数据源
__SEARCH_DATABASE__ := {}
__SEARCH_DATABASE__[""] := ""
__SEARCH_DATABASE__["datacenter"] := "C:\Users\Lee\Desktop\dataCenter"
__SEARCH_DATABASE__["Cmder"] ="C:\Users\Lee\cmder\Cmder.exe"
__SEARCH_DATABASE__["http://localhost:4000"] := "http://localhost:4000"
__SEARCH_DATABASE__["http://localhost:8099"] := "http://localhost:8099"
__SEARCH_DATABASE__["chrome"] := "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
__SEARCH_DATABASE__["xshell"] := "C:\Program Files (x86)\NetSarang\Xshell 6\Xshell.exe"
__SEARCH_DATABASE__["12345\dist"] := A_Desktop . "\12345-plus-new\dist"
__SEARCH_DATABASE__["印象笔记yxbj"] := "C:\Program Files (x86)\Evernote\Evernote\Evernote.exe"
__SEARCH_DATABASE__["ftp"] := A_Desktop . "\FlashFXP_4.3.1.1969\flashfxp.exe"
__SEARCH_DATABASE__["cylee.top"] := "https://cylee.top/"
__SEARCH_DATABASE__["post"] := A_Desktop . "\my\source\_posts" 
__SEARCH_DATABASE__["hexo"] := A_Desktop . "\my"
__SEARCH_DATABASE__["12345"] := A_Desktop . "\12345-plus-new"
__SEARCH_DATABASE__["home"] := "/home/dc2-user/"
__SEARCH_DATABASE__["nginx安装目录"] := "/usr/local/nginx"
__SEARCH_DATABASE__["nginx.conf"] := "/usr/local/nginx/conf/nginx.conf"
__SEARCH_DATABASE__["php-fpm"] := "/usr/local/bin/php-fpm"
__SEARCH_DATABASE__["Nginx"] := "/usr/local/nginx/sbin/nginx"
__SEARCH_DATABASE__["nginx html"] := "/usr/local/nginx/html/"
__SEARCH_DATABASE__["php.ini"] := "/usr/local/php/php.ini"
__SEARCH_DATABASE__["dataZ"] := "C:\Users\Lee\Desktop\dataZ"
__SEARCH_DATABASE__["hz-12345"] := "C:\Users\Lee\Desktop\hz-12345"



; 创建含名称和大小两列的 ListView:
Gui, ISearch:Add, ListView, r7 w600 h400 gMyListView AltSubmit Section xs yp+40, Name|Path

For key, value in __SEARCH_DATABASE__
	LV_Add("", key, value)

LV_ModifyCol()
LV_ModifyCol(2, "SortDesc")

/**
//////////////////////////////////////////////
初始化 Pandora GUI 的代码逻辑
//////////////////////////////////////////////
 */



; 为菜单栏创建子菜单:
Menu, FileMenu, Add, &New, FileNew
Menu, FileMenu, Add, &Open, FileOpen

; 创建用来附加子菜单的菜单栏:
Menu, MyMenuBar, Add, &File, :FileMenu

; 添加菜单栏到窗口:
Gui, Pandora:Menu, MyMenuBar

; 支持拖拽大小
; Gui, Pandora:+Resize

Gui, Pandora:Add, Text, gAllSearchA W120 Section xs yp+10, 搜索引擎类:
; Gui, Pandora:Add, Checkbox, gMySubroutine HwndMyEditHwnd vbd, 百度
Gui, Pandora:Add, Checkbox, vnpm, npm
Gui, Pandora:Add, Checkbox, vgoogle, Google
Gui, Pandora:Add, Checkbox, vgithub Checked, Github
Gui, Pandora:Add, Checkbox, vso, Stack Overflow
Gui, Pandora:Add, Checkbox, vsegmentfault, SegmentFault

Gui, Pandora:Add, Text, gAllSearchB W120 ys, 翻译类:
Gui, Pandora:Add, Checkbox, vbdfy, 百度翻译   
Gui, Pandora:Add, Checkbox, vyoudaofy, 有道翻译
Gui, Pandora:Add, Checkbox, vgooglefanyi, Google翻译
Gui, Pandora:Add, Checkbox, vjinshanciba, 金山词霸
Gui, Pandora:Add, Checkbox, vhaicifanyi, 词海翻译


Gui, Pandora:Add, Text, gAllSearchC W90 Section xs y+20, 音乐类:
Gui, Pandora:Add, Checkbox, vwy, 网易云音乐   
Gui, Pandora:Add, Checkbox, vqq, QQ音乐
Gui, Pandora:Add, Checkbox, vdog, 酷狗音乐
Gui, Pandora:Add, Checkbox, vxiami, 虾米音乐
Gui, Pandora:Add, Checkbox, vkuwo, 酷我音乐

Gui, Pandora:Add, Text, gAllSearchD W60 ys, 社区类:
Gui, Pandora:Add, Checkbox, vjuejin, 掘金
Gui, Pandora:Add, Checkbox, vjianshu, 简书
Gui, Pandora:Add, Checkbox, vcsdn, CSDN
Gui, Pandora:Add, Checkbox, vzhihu, 知乎
Gui, Pandora:Add, Checkbox, vcylee, 博客园

Gui, Pandora:Add, Text, gAllSearchE W120 ys, 购物类:
Gui, Pandora:Add, Checkbox, vtaobao, 淘宝
Gui, Pandora:Add, Checkbox, vjingdong, 京东
Gui, Pandora:Add, Checkbox, vdangdang, 当当
Gui, Pandora:Add, Checkbox, vamazon, 亚马逊
; Gui, Pandora:Add, Checkbox, vsuning, 苏宁易购
Gui, Pandora:Add, Checkbox, vkongzi, 孔夫子二手书

; 搜索框
Gui, Pandora:Add, Edit, vSearchContent gSearchContent w260 Limit50 yp+40 Section xs, dragon8github/Pandora

; 背景色
Gui, Pandora:Color, E6FFE6

; margin 布局
Gui, Pandora:Margin, 10, 10

; submit 按钮
Gui, Pandora:Add, Button, w260 h30 gFuck Section xs h30 yp+40 Default, FUCK

; 取消按钮
Gui, Pandora:Add, Button, gCancelSelect w260 h30 xs, 取消选中


; Tab 选项卡 w830 h570 
Gui, Pandora:Add, Tab3, Section ys ym Choose1 w900, 常用 | 工作坊 | 创慧教育 | Nodejs | Vue | React | 库 | 奇妙工具 | 图表 | PHP | 微信  | 爬虫 | 移动开发 | CSS | 回收站 | 剪切板 

Gui, Pandora:Tab, 1
Gui, Pandora:Add, Text,  W140 Section xs yp+30 xp+20, 常用导航:
Gui, Pandora:Add, Link,, <a href="https://github.com/dragon8github/Pandora/blob/master/pandora.exe?raw=true">Lastest Pandora</a>
Gui, Pandora:Add, Link,, <a href="https://www.cnblogs.com/cylee">博客园</a>
Gui, Pandora:Add, Link,, <a href="https://github.com">github</a>
Gui, Pandora:Add, Link,, <a href="https://legacy.gitbook.com">gitbook</a>
Gui, Pandora:Add, Link,, <a href="https://cylee.top/">cylee.top</a>
Gui, Pandora:Add, Link,, <a href="https://ecs.console.aliyun.com/#/home">阿里云控制台</a>

Gui, Pandora:Add, Text,  W140 ys, 其他:
Gui, Pandora:Add, Link, gInspect ,  <a>安卓调试</a>
Gui, Pandora:Add, Link,, <a href="http://youmightnotneedjquery.com/">notjQuery</a>
Gui, Pandora:Add, Link,, <a href="http://jquery.cuishifeng.cn/">在线jQuery手册</a>
Gui, Pandora:Add, Link,, <a href="https://wyagd001.github.io/zh-cn/docs/Tutorial.htm">AutoHotkey官网</a>
BabelUrl := "http://babeljs.io/repl#?babili=true&browsers=&build=&builtIns=false&spec=false&loose=false&code_lz=Q&debug=false&forceAllTransforms=false&shippedProposals=false&circleciRepo=&evaluate=false&fileSize=true&timeTravel=false&sourceType=module&lineWrap=true&presets=es2015%2Creact%2Cstage-2%2Cbabili&prettier=false&targets=&version=6.26.0"
Gui, Pandora:Add, Link,, <a href="%BabelUrl%">Babel在线转换</a>
Gui, Pandora:Add, Link,, <a href="https://codesandbox.io/u/dragon8github">CodeSandbox</a>

Gui, Pandora:Add, Text,  W140 ys, 娱乐:
Gui, Pandora:Add, Link,, <a href="https://www.bilibili.com/">哔哩哔哩</a>
Gui, Pandora:Add, Link,, <a href="http://i.youku.com/u/UNTUzOTAwMzQ0">Ted魔兽</a>
Gui, Pandora:Add, Link,, <a href="https://www.cmdy5.com/index.php?m=vod-search">草民电影</a>
Gui, Pandora:Add, Link,, <a href="http://www.dilidili.name/">无名小站</a>
Gui, Pandora:Add, Link,, <a href="http://www.imomoe.com/">樱花动漫</a>
Gui, Pandora:Add, Link,, <a href="http://www.fengchedm.com/">风车动漫</a>


Gui, Pandora:Add, Text, W160 ys, 常用工具：
Gui, Pandora:Add, Link,, <a href="http://tool.oschina.net/codeformat/js">在线代码格式化</a>
Gui, Pandora:Add, Link,, <a href="https://www.sojson.com/jsjiemi.html">sojson工具库</a>
Gui, Pandora:Add, Link,, <a href="https://tool.lu/html/">tool.lu压缩</a>
Gui, Pandora:Add, Link,, <a href="http://tool.chinaz.com/Tools/urlencode.aspx">Urlencode/Unicode</a>
Gui, Pandora:Add, Link,, <a href="http://www.bejson.com/">bejson超强工具箱</a>
Gui, Pandora:Add, Link,, <a href="https://loading.io/spinner/">Loading 平台</a>

Gui, Pandora:Add, Text,  W140 ys, 奇妙工具:
Gui, Pandora:Add, Link,, <a href="http://naotu.baidu.com/home">百度脑图</a>
Gui, Pandora:Add, Link,, <a href="http://www.speedtest.net/#">斗鱼测速工具</a>
Gui, Pandora:Add, Link,, <a href="http://fontawesome.dashgame.com/">font-awesome</a>
Gui, Pandora:Add, Link,, <a href="https://nginxconfig.io/">生成器nginxconfig.io</a>
Gui, Pandora:Add, Link,, <a href="http://www.iconfont.cn/manage/index?manage_type=myprojects&projectId=955910">iconfont</a>
Gui, Pandora:Add, Link,, <a href="https://carbon.now.sh/">carbon代码图片</a>


Gui, Pandora:Add, Text, W140 ys, cdn：
Gui, Pandora:Add, Link,, <a href="http://www.bootcdn.cn/">bootcdn</a>
Gui, Pandora:Add, Link,, <a href="http://www.staticfile.org/">七云牛cdn</a>
Gui, Pandora:Add, Link,, <a href="https://cdn.baomitu.com/">360 cdn</a>
Gui, Pandora:Add, Link,, <a href="https://unpkg.com/#/">unpkg cdn</a>
Gui, Pandora:Add, Link,, <a href="https://cdnjs.com/">cdnjs.com</a>
Gui, Pandora:Add, Link,, <a href="https://cdn.baomitu.com/">75cdn</a>


Gui, Pandora:Add, Text,  W140 Section xs yp+50, 最近学习：
Gui, Pandora:Add, Link,, <a href="https://hellogithub.com/periodical/volume/15/">有趣的github项目</a>
Gui, Pandora:Add, Link,, <a href="https://gitbook.cn/gitchat/geekbooks">极客书单</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/vuejs/vue/tree/0.10">Vue v0.10源码</a>
Gui, Pandora:Add, Link,, <a href="https://www.codecasts.com/">CODECASTS 免费课程</a>
Gui, Pandora:Add, Link,, <a href="http://aotu.jd.com/share/">凹凸实验室公开课</a>
Gui, Pandora:Add, Link,, <a href="https://camp.qianduan.group/koa2/2/1/2">ikcamp</a>
Gui, Pandora:Add, Link,, <a href="https://aotu.io/">凹凸实验室</a>
Gui, Pandora:Add, Link,, <a href="https://scrimba.com/">学习代码新世界</a>
Gui, Pandora:Add, Link,, <a href="https://www.shiyanlou.com/">实验楼</a>

Gui, Pandora:Add, Text,  W140 ys, 最近阅读：
Gui, Pandora:Add, Link,, <a href="https://www.amazon.cn/manageyourkindle">我的设备</a>
Gui, Pandora:Add, Link,, <a href="https://www.amazon.cn/Kindle免费电子书/b?node=116175071">kindle官方</a>
Gui, Pandora:Add, Link,, <a href="https://www.amazon.cn/b/ref=sv_kinc_4?ie=UTF8&node=1337022071">Kindle Unlimited</a>
Gui, Pandora:Add, Link,, <a href="https://baideye.com/article/123#menu_index_24">免费游戏1500G</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/phodal/serverless">《Serverless》</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/trekhleb/javascript-algorithms/blob/master/README.zh-CN.md">《JavaScript 算法》</a>
Gui, Pandora:Add, Link,, <a href="http://huziketang.mangojuice.top/books/react/lesson1">《React 小书》</a>
Gui, Pandora:Add, Link,, <a href="https://www.awesomes.cn/weuse?page=1">《大牛都在用什么？》</a>
Gui, Pandora:Add, Link,, <a href="https://classroom.udacity.com/courses/ud905/lessons/92a39eec-0c04-4d98-b47f-c884b9cd5a3b/concepts/78143d19-8360-4f83-88ab-cfcb5b160465">「Flutter 教学视频」</a>

Gui, Pandora:Add, Text,  W140 ys, 与钱为伍
Gui, Pandora:Add, Link,, <a href="https://www.yuanjisong.com/job">猿急送</a>
Gui, Pandora:Add, Link,, <a href="https://leancloud.cn/">leancloud</a>
Gui, Pandora:Add, Link,, <a href="https://cloud.minapp.com/">知晓云</a>
Gui, Pandora:Add, Link,, <a href="https://www.wilddog.com/console/wd6326449524sjxxpb">wilddog野狗</a>
Gui, Pandora:Add, Link,, <a href="https://zb.oschina.net/services/service-star/index.html">开源众包</a>
Gui, Pandora:Add, Link,, <a href="https://apizza.net/console/project/ec4f5a86d6f29a67336e85f820350718/dev">apizza-old</a>
Gui, Pandora:Add, Link,, <a href="https://apizza.net/pro/#/project/ec4f5a86d6f29a67336e85f820350718/dev">apizza</a>
Gui, Pandora:Add, Link,, <a href="https://apizza.net/pro/#/project/3aa99766c2834cdcf0f9efe553f79177/dev">apizza-Live</a>
Gui, Pandora:Add, Link,, <a href="https://apizza.net/pro/#/project/526d58e01a7480bf15c97fd4e5038d9d/dev">apizza-数据中心</a>

Gui, Pandora:Add, Text,  W140 ys, 美图秀秀：
Gui, Pandora:Add, Link,, <a href="http://getemoji.com/">getemoji.com</a>
Gui, Pandora:Add, Link,, <a href="http://iconstore.co/">iconstore.co</a>
Gui, Pandora:Add, Link,, <a href="https://www.pexels.com/">pexels.com</a>
Gui, Pandora:Add, Link,, <a href="https://unsplash.com/">unsplash.com</a>
Gui, Pandora:Add, Link,, <a href="https://www.foodiesfeed.com/">foodiesfeed.com</a>
Gui, Pandora:Add, Link,, <a href="https://pixabay.com/">pixabay.com</a>
Gui, Pandora:Add, Link,, <a href="https://magdeleine.co/browse/">magdeleine.co</a>
Gui, Pandora:Add, Link,, <a href="https://www.autodraw.com/">google autodraw</a>
Gui, Pandora:Add, Link,, <a href="http://www.gaitubao.com/">改图宝</a>


Gui, Pandora:Add, Text,  W140 ys, 宁可错过：
Gui, Pandora:Add, Link,, <a href="https://ponyorm.org/">python在线建模UML</a>
Gui, Pandora:Add, Link,, <a href="https://tinypng.com/">tinypng图片压缩</a>
Gui, Pandora:Add, Link,, <a href="https://app.didiyun.com/#/dc2/detail?uuid=a289c3f607fd5bbd8261df9b266ae211">滴滴云</a>
Gui, Pandora:Add, Link,, <a href="https://hub.docker.com/_/hello-world?tab=description">dockerhub 镜像仓库</a>
Gui, Pandora:Add, Link,, <a href="https://amazonaws-china.com/cn/ec2/">aws Amazon EC2</a>
Gui, Pandora:Add, Link,, <a href="http://www.51ym.me/User/MobileSMSCode.aspx">易码平台</a>
Gui, Pandora:Add, Link,, <a href="https://autoprefixer.github.io/">autoprefixer</a>
Gui, Pandora:Add, Link,, <a href="http://www.nicetool.net/app/cmd.html">linux命令搜索</a>
Gui, Pandora:Add, Link,, <a href="http://www.nicetool.net/app/ocr.html">OCR在线识别</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/n0shake/Public-APIs">API大全</a>


Gui, Pandora:Add, Text,  W140 ys, 不可放过：
Gui, Pandora:Add, Link,, <a href="http://photo.weibo.com/upload/index">新浪微博图床</a>
Gui, Pandora:Add, Link,, <a href="https://www.zhihu.com/question/23054572">100块以内的礼物</a>
Gui, Pandora:Add, Link,, <a href="https://dc.36fy.com/">加速度</a>
Gui, Pandora:Add, Link,, <a href="https://chrome.google.com/webstore/category/extensions">Chomre商店</a>
Gui, Pandora:Add, Link,, <a href="https://yeoman.io/generators/">yeoman generators</a>
Gui, Pandora:Add, Link,, <a href="https://www.vultr.com/">vultr</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/Alvin9999/new-pac/wiki/自建ss服务器教程">自建ss服务器教程</a>
Gui, Pandora:Add, Link,, <a href="https://36dcup.tk/user">36dcup加速度</a>
Gui, Pandora:Add, Link,, <a href="https://jsrun.net/app/scss">scss在线转css</a>
Gui, Pandora:Add, Link,, <a href="http://www.ucdrs.superlib.net/">全国图书馆参考联盟</a>
;@1

Gui, Pandora:Tab, 2
Gui, Pandora:Add, Text, gNewPureIndexHtml W140 Section y+20, 新建纯index.html
Gui, Pandora:Add, Text, gNewIndexHtml W140, 新建index.html
Gui, Pandora:Add, Text, gNewreactbabelHtml W140, 新建react.babel.html
Gui, Pandora:Add, Text, gNewcreateareactapp, 新建create-react-app脚手架
Gui, Pandora:Add, Text, gNewreduxIndexHtml W140,新建react-redux.html
Gui, Pandora:Add, Text, gNewAxiosIndexHtml W140,新建axios.html
Gui, Pandora:Add, Text, gNewRxjsIndexHtml W140,新建Rxjs.html
Gui, Pandora:Add, Text, gNewCanvasHtml W140,新建Canvas.html
Gui, Pandora:Add, Text, gNewvuetransitionHtml W160,新建vue-transition.html
Gui, Pandora:Add, Text, gNewassertHtml W160,新建assert.html
Gui, Pandora:Add, Text, gNewAsyncassertHtml W160,新建异步assert.html
Gui, Pandora:Add, Text, gNewnorepeataxiosHtml W160,新建去重复axios.html
Gui, Pandora:Add, Text, gNewnorepeatajaxsHtml W160,新建去重复ajax.html
Gui, Pandora:Add, Text, gNewjointjsHtml W160,新建去重复jointjs流程图
Gui, Pandora:Add, Text, gNewuploadHtml W160,新建读取本地目录/文件内容
Gui, Pandora:Add, Text, gNewlshtml W160,新建读取本地目录列表
Gui, Pandora:Add, Text, gWaterhtml W160,新建水球波纹带进度条


Gui, Pandora:Add, Text, gNewautoscrollHtml W140 ys x+20 ,新建autoscroll.html
Gui, Pandora:Add, Text, gNewscrollforeveryHtml W160,新建scrollforevery.html
Gui, Pandora:Add, Text, gNewgdmapHtml W160,新建高德地图天气测试.html
Gui, Pandora:Add, Text, gliveHtml W160,新建调用摄像头.html
Gui, Pandora:Add, Text, gscrollTextHtml W160,新建scrollText.html
Gui, Pandora:Add, Text, gxuanliyanhua W160,新建点击绚丽烟花效果.html
Gui, Pandora:Add, Text, gmaoboli W160,新建毛玻璃.html
Gui, Pandora:Add, Text, gwangyejindutiao W160,新建网页进度条.html
Gui, Pandora:Add, Text, gemphhtml W160,新建更新提示波动图.html
Gui, Pandora:Add, Text, gautowidth W160,新建input动态宽度.html


Gui, Pandora:Add, Text, gNewEchartsPinHtml  ys x+20, 新建.pin.html(玫瑰饼图)
Gui, Pandora:Add, Text, gNewEchartsLineHtml ,新建.Line.html（折线图）
Gui, Pandora:Add, Text, gNewEchartsBarHtml ,新建.Bar.html（柱状图）
Gui, Pandora:Add, Text, gNewEchartsPurePinHtml ,新建.Pin.html（纯圆饼图）
Gui, Pandora:Add, Text, gNewEchartsmap3dHtml ,新建.map3D.html（3D地图）
Gui, Pandora:Add, Text, gNewEchartstwoBarHtml ,新建.twoBar.html（双Y轴柱状图）
Gui, Pandora:Add, Text, gNewEchartssmoothHtml ,新建.smooth.html（曲线图smooth）
Gui, Pandora:Add, Text, gNewEchartsareaStyleHtml ,新建.areaStyle.html（折线覆盖面图）
Gui, Pandora:Add, Text, gNewEchartraduisHtml ,新建.raduis.html（圆环图）
Gui, Pandora:Add, Text, gNewEchartPinBoderHtml ,新建.pinBoder.html（圆环断层图）
Gui, Pandora:Add, Text, gNewEchartdoulecolorHtml ,新建.doulecolor.html（双色柱状图）


Gui, Pandora:Add, Text, gNewNodePachong W140 ys x+20, 新建nodejs爬虫模板
Gui, Pandora:Add, Text, gNewNodegbkPachong W200, 新建nodejs(gbk/gb2312)爬虫模板
Gui, Pandora:Add, Text, gNewNodefengzhuangPachong W200, 新建nodejs(封装版)爬虫模板
Gui, Pandora:Add, Text, gNewPyhtonPachong W140, 新建python爬虫模板
Gui, Pandora:Add, Text, gNewNodejsSequelize W190, 新建nodejs-sequelize-mysql模板
Gui, Pandora:Add, Text, gNewNodejsRenamechName W190, 新建nodejs批量改名中文模板
Gui, Pandora:Add, Text, gNewmochachai W190, 新建mocha+chai单元测试模板
Gui, Pandora:Add, Text, gNewesmodule W190, 新建nodejs运行es Module模板


Gui, Pandora:Tab, 3
Gui, Pandora:Add, Text,  W130 Section, 油气管道（react）:
Gui, Pandora:Add, Link,, <a href="http://47.106.185.185:8080/api/swagger-ui.html#/">油气管道swagger-ui</a>
Gui, Pandora:Add, Link,, <a href="http://47.106.185.185:3000/heziyou/demo-all-antdesign">油气管道 git</a>

Gui, Pandora:Add, Text,  W160 ys, 大数据屏幕（vue+jquery）
Gui, Pandora:Add, Link,, <a href="http://47.106.185.185:3000/lizhaohong/largeDataScreen">大数据屏幕 git</a>
Gui, Pandora:Add, Link,, <a href="http://120.77.146.174:82/">大数据屏幕174演示</a>
Gui, Pandora:Add, Link,, <a href="http://120.196.128.45:801/">大数据屏幕45演示</a>

Gui, Pandora:Add, Text,  W150 ys, 教育咨询（react）
Gui, Pandora:Add, Link,, <a href="http://47.106.185.185:3000/frontendjs/antd-dgedu-consult-g">g端 git（教育局后台）</a>
Gui, Pandora:Add, Link,, <a href="http://47.106.185.185:3000/frontendjs/antd-dgedu-consult-b">b端 git（商家后台）</a>
Gui, Pandora:Add, Link,, <a href="http://120.77.146.174:8081/dashboard/user/login.jspx">前端菜单配置</a>

Gui, Pandora:Add, Text,  W140 ys, 12345大数据屏（vue）
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/frontEnd/dg12345-plus">新的 gitlab 地址</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/12345Platform/12345Platform/tree/master/DOC/">新的 UI gitlab 地址</a>
Gui, Pandora:Add, Link,, <a href="http://12345.alltosea.com:6080/#/overallSituation">v0</a>
Gui, Pandora:Add, Link,, <a href="http://12345v1.dgdatav.com:6080/#/dg/overallSituation">v1</a>
Gui, Pandora:Add, Link,, <a href="http://12345v2.alltosea.com:6080/#/">v2</a>
Gui, Pandora:Add, Link,, <a href="http://12345v3.dgdatav.com:6080/">v3</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/12345Platform/12345Platform/boards">敏捷看板</a>
Gui, Pandora:Add, Link,, <a href="http://12345v2.alltosea.com:6080/api/sg/redis/cleanDefault">清空缓存</a>
Gui, Pandora:Add, Link,, <a href="http://12345admin.dgdatav.com:6080/#">admin</a>

; @gs


Gui, Pandora:Add, Text,  W140 ys, 东莞课外教育网（nuxt）
Gui, Pandora:Add, Link,, <a href="http://47.106.185.185:3000/chuanghui-edu/extra-edu">extra-edu git</a>
Gui, Pandora:Add, Link,, <a href="http://kw.dgjy.net">extra-edu 线上</a>


Gui, Pandora:Add, Text,  W140 ys, 知识库
Gui, Pandora:Add, Link,, <a href="https://confluence.alltosea.com/dashboard.action#all-updates">confluence</a>
Gui, Pandora:Add, Link,, <a href="https://confluence.alltosea.com/pages/viewpage.action?pageId=1310755">confluence2</a>
Gui, Pandora:Add, Link,, <a href="https://hui.dgjy.net">门户网站</a>

Gui, Pandora:Add, Text,  W140 xs Section yp+100, 数据中心
Gui, Pandora:Add, Link,, <a href="http://datacenter.dgdatav.com:6080/">数据中心 - 线上地址</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/DateCenter/vue-datacenter">数据中心源码gitlab</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/DateCenter/datacenter">数据中心原型gitlab</a>
Gui, Pandora:Add, Link,, <a href="https://docs.qq.com/sheet/DUXBCem1Kd2dQdkNi?opendocxfrom=admin&tdsourcetag=s_pctim_aiomsg&ADUIN=928532756&ADSESSION=1555287968&ADTAG=CLIENT.QQ.5603_.0&ADPUBNO=26882&tab=BB08J2">腾讯文档</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/DateCenter/vue-datacenter">数据中心git lab</a>
Gui, Pandora:Add, Link,, <a href="https://top7bx.axshare.com">紫莹数据中心web原型</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/groups/DateCenter/-/boards">测试敏捷看板</a>


Gui, Pandora:Add, Text,  W140 ys xp+160, 私服仓库Nexus
Gui, Pandora:Add, Link,, <a href="https://nexus.alltosea.com/">公司的Nexus</a>
Gui, Pandora:Add, Link,, <a href="https://www.cnblogs.com/xueyoucd/p/9538126.html">搭建 npm 私服教程</a>
Gui, Pandora:Add, Link,, <a href="https://www.sonatype.com/nexus-repository-oss">官方网站</a>

Gui, Pandora:Add, Text,  W140 ys xp+160, dataZ
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/frontEnd/dataz">gitlab地址</a>
Gui, Pandora:Add, Link,, <a href="http://183.6.55.26:6082/#/Studio">在线预览地址</a>

Gui, Pandora:Tab, 4
Gui, Pandora:Add, Text,  W130 Section, Nodejs:
Gui, Pandora:Add, Link,, <a href="https://nodejs.org/dist/latest-v11.x/docs/api/">Nodejs API</a>
Gui, Pandora:Add, Link,, <a href="https://nodejs.org/en/">Nodejs 官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/nodejs/node">Nodejs github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/sindresorhus/awesome-nodejs">awesome-nodejs</a>

Gui, Pandora:Add, Text,  W140 ys, 工具库：
Gui, Pandora:Add, Link,, <a href="https://github.com/sindresorhus/globby">globby</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/isaacs/minimatch#usage">minimatch</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/jhotmann/node-rename-cli">node-renames-cli</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/jprichardson/node-fs-extra">node-fs-extra</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/sindresorhus/ora">ora</a>

Gui, Pandora:Add, Text,  W140 ys, 工具库2：
Gui, Pandora:Add, Link,, <a href="https://github.com/isaacs/rimraf">rimraf</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/substack/node-mkdirp">node-mkdirp</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/JacksonTian/anywhere">anywhere</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/sindresorhus/opn">opn</a>
Gui, Pandora:Add, Link,, <a href="https://www.npmjs.com/package/cross-env">cross-env</a>

Gui, Pandora:Add, Text,  W140 ys, 工具库3：
Gui, Pandora:Add, Link,, <a href="https://github.com/remy/nodemon/">nodemon</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/SBoudrias/Inquirer.js">inquirer</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/request/request">request</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/hapijs/joi">joi</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/sindresorhus/execa">execa</a>

Gui, Pandora:Add, Text,  W140 ys, 工具库4：
Gui, Pandora:Add, Link,, <a href="https://github.com/shelljs/shelljs">shelljs</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/nodemailer/nodemailer">nodemailer</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/kvz/locutus">locutus</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/wiredjs/wired-elements">wired-elements</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/olistic/warriorjs">warriorjs</a>

Gui, Pandora:Add, Text,  W140 ys, nest框架中的django:
Gui, Pandora:Add, Link,, <a href="https://github.com/nestjs/nest">nestjs github</a>

Gui, Pandora:Add, Text, W140 Section xs yp+180, JS库：
Gui, Pandora:Add, Link,, <a href="https://github.com/KyleAMathews/deepmerge">deepmerge</a>

Gui, Pandora:Add, Text, W140 Section ys, koajs：
Gui, Pandora:Add, Link,, <a href="https://github.com/koajs">koajs-github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/koajs/jwt">koajs-jwt</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/koajs/bodyparser">koajs-bodyparser</a>

Gui, Pandora:Add, Text, W140 Section ys, electron：
Gui, Pandora:Add, Link,, <a href="https://github.com/electron/electron-api-demos">electron-api-demos</a>
Gui, Pandora:Add, Link,, <a href="https://electronjs.org/">electron 官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/electron">electron github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/electron/electron-quick-start">electron-quick-start</a>
Gui, Pandora:Add, Link,, <a href="https://electronjs.org/docs/api/client-request">electron-api文档</a>


Gui, Pandora:Add, Text, W140 Section ys, nodejs cms：
Gui, Pandora:Add, Link,, <a href="https://www.awesomes.cn/repos/NodeJS/CMS">NodeJS/CMS</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/doramart/DoraCMS">（推荐）DoraCMS</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/dragon8github/awesome-javascript#node-powered-cms-frameworks">（推荐）powered-cms</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/NodeBB/NodeBB">NodeBB</a>
Gui, Pandora:Add, Link,, <a href="https://www.graphql.com/">graphql</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/apostrophecms/apostrophe">apostrophe</a>
;@nodejs @node

Gui, Pandora:Tab, 5
Gui, Pandora:Add, Text,  W140 Section, Vue：
Gui, Pandora:Add, Link,, <a href="http://vuejs.org/">vue</a>
Gui, Pandora:Add, Link,, <a href="http://vuex.vuejs.org">vuex</a>
Gui, Pandora:Add, Link,, <a href="http://router.vuejs.org ">vue-router</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/opendigg/awesome-github-vue">vue-awesome</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/PanJiaChen/vue-element-admin">vue-element-admin</a>
Gui, Pandora:Add, Link,, <a href="https://ssr.vuejs.org/zh/">vue-ssr </a>

Gui, Pandora:Add, Text,  W140 ys, vue ssr nuxt：
Gui, Pandora:Add, Link,, <a href="https://nuxtjs.org/">nuxt官网</a>
Gui, Pandora:Add, Link,, <a href="https://nuxtjs.org/guide/installation">nuxt install</a>
Gui, Pandora:Add, Link,, <a href="https://nuxtjs.org/api">nuxt api</a>
Gui, Pandora:Add, Link,, <a href="https://nuxtjs.org/examples">nuxt example</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/nuxt">nuxt github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/nuxt-community/create-nuxt-app">create-nuxt-app</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/nuxt/nuxtjs.org/blob/master/pages/guide.vue">nuxt 官网源码</a>


Gui, Pandora:Add, Text,  W140 ys, 饿了么UI：
Gui, Pandora:Add, Link,, <a href="http://element-cn.eleme.io/#/zh-CN/component/radio">Element-UI</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/ElemeFE/element/blob/dev/packages/">Element-github</a>
Gui, Pandora:Add, Link,, <a href="http://elemefe.github.io/mint-ui/#/">mint-ui</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/ElemeFE/mint-ui/blob/master/packages/radio/src/radio.vue">mint-ui-github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/PanJiaChen/vue-element-admin">vue-element-admin</a>

Gui, Pandora:Add, Text,  W160 ys, vuetifyjs
Gui, Pandora:Add, Link,, <a href="https://github.com/vuetifyjs/vuetify">vuetify</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/vuetifyjs/nuxt">vuetifyjs/nuxt</a>

Gui, Pandora:Add, Text,  W100 ys, vux
Gui, Pandora:Add, Link,, <a href="https://github.com/airyland/vux">vux github</a>
Gui, Pandora:Add, Link,, <a href="https://vux.li/">vux 官网</a>


Gui, Pandora:Add, Text,  W160 ys, 其他插件收录
Gui, Pandora:Add, Link,, <a href="https://github.com/jaweii/Vueg----page-transition-plugin">vueg转场动画</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/1615450788/vue-cron">vue-cron</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/OYsun/VueCircleMenu">vue-圆环菜单</a>
Gui, Pandora:Add, Link,, <a href="https://vuegg.now.sh/">vuegg 神器，找了好久了</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/xiaokaike/vue-color">vue-color 给力颜色器</a>

Gui, Pandora:Add, Text, W140 Section xs yp+150, vue动画钩子：
Gui, Pandora:Add, Link,, <a href="https://vuejs.org/v2/guide/transitions.html#Transition-Classes">vue-transition</a>
Gui, Pandora:Add, Link,, <a href="https://vuejs.org/v2/guide/transitions.html#JavaScript-Hooks">JavaScript-Hooks</a>
Gui, Pandora:Add, Link,, <a href="https://vuejs.org/v2/api/#transition-group">transition-group</a>

Gui, Pandora:Add, Text, W140 ys, admin-lte-free：
Gui, Pandora:Add, Link,, <a href="https://themequarry.com/category/free?page=2">admin-lte-free</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/creativetimofficial/material-dashboard">material-dashboard</a>
Gui, Pandora:Add, Link,, <a href="https://www.creative-tim.com/product/vue-material-dashboard">material-dashboard-vue</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/vuematerial/vue-material">vue-material</a>

Gui, Pandora:Add, Text, W160 ys, 轻量级组件收录：
Gui, Pandora:Add, Link,, <a href="https://github.com/hekigan/vue-directive-tooltip">vue-directive-tooltip</a>

Gui, Pandora:Add, Text, W140 ys, 冷门UI框架：
Gui, Pandora:Add, Link,, <a href="https://github.com/stasson/vue-mdc-adapter">极简Material框架</a>

;@vue

Gui, Pandora:Tab, 6
Gui, Pandora:Add, Text,  W140  Section, React：
Gui, Pandora:Add, Link,, <a href="https://reactjs.org/docs/hello-world.html">react 官网</a>
Gui, Pandora:Add, Link,, <a href="https://reacttraining.com/react-router/web/api/Route/component">React-router</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/reduxjs/redux">redux</a>
Gui, Pandora:Add, Link,, <a href="https://redux.js.org/basics/usage-with-react">React-redux</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/facebook/create-react-app">create-react-app</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/enaqx/awesome-react">awesome-react</a>


Gui, Pandora:Add, Text,  W140 ys, react ssr next：
Gui, Pandora:Add, Link,, <a href="https://nextjs.org/">next官网</a>
Gui, Pandora:Add, Link,, <a href="https://nextjs.org/docs/#setup">nuxt setup</a>
Gui, Pandora:Add, Link,, <a href="https://nextjs.org/docs">nuxt doc</a>
Gui, Pandora:Add, Link,, <a href="https://nextjs.org/learn/">nuxt learn</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/zeit/next.js/tree/master">next github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/segmentio/create-next-app">create-next-app</a>

Gui, Pandora:Add, Text,  W140 ys, DvaJS:
Gui, Pandora:Add, Link,, <a href="https://github.com/dvajs/dva">DvaJS-Github</a>
Gui, Pandora:Add, Link,, <a href="https://dvajs.com/guide/">DvaJS 入门指引</a>
Gui, Pandora:Add, Link,, <a href="https://dvajs.com/guide/">DvaJS API</a>
Gui, Pandora:Add, Link,, <a href="https://dvajs.com/guide/examples-and-boilerplates.html#官方">DvaJS Demo</a>

Gui, Pandora:Add, Text,  W140 ys, umi:
Gui, Pandora:Add, Link,, <a href="https://github.com/umijs/umi">umi github</a>
Gui, Pandora:Add, Link,, <a href="https://umijs.org/">umi 官网</a>
Gui, Pandora:Add, Link,, <a href="https://umijs.org/guide/#features">umi 入门指引</a>
Gui, Pandora:Add, Link,, <a href="https://umijs.org/api/">umi api</a>
Gui, Pandora:Add, Link,, <a href="https://umijs.org/config/">umi config</a>

Gui, Pandora:Add, Text,  W160 ys, Ant-Design：
Gui, Pandora:Add, Link,, <a href="https://github.com/ant-design/ant-design/">Ant-Design-Github</a>
Gui, Pandora:Add, Link,, <a href="https://ant.design/docs/react/introduce-cn">Ant-Design 文档</a>
Gui, Pandora:Add, Link,, <a href="https://preview.pro.ant.design/#/dashboard/analysis">Ant-Design-pro 后台示例</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/ant-design/ant-design-pro">Ant-Design-pro-Github</a>
Gui, Pandora:Add, Link,, <a href="http://antv.alipay.com/zh-cn/index.html">antv可视化图表</a>
Gui, Pandora:Add, Link,, <a href="https://ant.design/docs/react/recommendation-cn">Ant-design精选插件</a>


Gui, Pandora:Add, Text,  W140  Section xs yp+60, ReactNative：
Gui, Pandora:Add, Link,, <a href="https://github.com/facebook/react-native">react-native github</a>
Gui, Pandora:Add, Link,, <a href="https://facebook.github.io/react-native/">react-native 官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/enaqx/awesome-react#react-native">awesome-react-native</a>
Gui, Pandora:Add, Link,, <a href="https://mp.weixin.qq.com/s/7yy5wFbEet30EcOwxDOWVA">react-native 开源项目</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/enaqx/awesome-react#react-native-sample-apps">react-native 开源项目2</a>
Gui, Pandora:Add, Link,, <a href="https://facebook.github.io/react-native/docs/components-and-apis">Components and APIs</a>



Gui, Pandora:Tab, 7
Gui, Pandora:Add, Text,  W140  Section, layer/layui：
Gui, Pandora:Add, Link,, <a href="http://layer.layui.com/">layer</a>
Gui, Pandora:Add, Link,, <a href="https://www.layui.com/doc/modules/layer.html">layui文档</a>
Gui, Pandora:Add, Link,, <a href="http://www.layui.com/demo/">layui示例</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/sentsin/layui/">layui-github</a>
Gui, Pandora:Add, Link,, <a href="https://www.layui.com/admin/std/dist/views/">layui-admin</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/sentsin/layui/blob/master/src/layui.js">layui 源码</a>
Gui, Pandora:Add, Link,, <a href="https://www.layui.com/template/fly/">layui 论坛</a>



Gui, Pandora:Add, Text,  W140 ys, Bootstrap:
Gui, Pandora:Add, Link,, <a href="https://v3.bootcss.com/css/#grid-options">全局 css 样式</a>
Gui, Pandora:Add, Link,, <a href="https://v3.bootcss.com/components/#jumbotron">全局 js 组件</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/twbs/bootstrap">Bootstrap-github</a>
Gui, Pandora:Add, Link,, <a href="http://www.youzhan.org/">示例网站</a>
Gui, Pandora:Add, Link,, <a href="http://www.bootcss.com/p/layoutit/">layout可视化布局（未开源）</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/justjavac/layoutit">layout第三方源码</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/1000hz/bootstrap-validator">表单验证插件</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/uxsolutions/bootstrap-datepicker">datepicker时间插件</a>

Gui, Pandora:Add, Text,  W140 ys, puppeteer：
Gui, Pandora:Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer?utm_source=gold_browser_extension">puppeteer 官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md">puppeteer API</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer">puppeteer-Github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer/tree/master/examples/">puppeteer-示例</a>

Gui, Pandora:Add, Text,  W160 ys, moment.js：
Gui, Pandora:Add, Link,, <a href="http://momentjs.com/">moment 官网</a>
Gui, Pandora:Add, Link,, <a href="http://momentjs.cn/">moment 中文</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/moment/moment/">moment.js github</a>
Gui, Pandora:Add, Link,, <a href="http://momentjs.cn/docs/#/parsing/">moment.js 文档手册</a>

Gui, Pandora:Add, Text,  W160  ys, 函数式库：
Gui, Pandora:Add, Link,, <a href="https://underscorejs.org/">underscore 官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/jashkenas/underscore">underscore-github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/hanzichi/underscore-analysis">underscore-源码解读</a>
Gui, Pandora:Add, Link,, <a href="https://lodash.com/">lodash 官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/lodash/lodash">lodash-github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/yeyuqiudeng/pocket-lodash">lodash-源码解读</a>
Gui, Pandora:Add, Link,, <a href="http://ramda.cn/">ramda.js 官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/ramda/ramda">ramda.js github</a>

Gui, Pandora:Add, Text,  W140  ys, 手机调试：
Gui, Pandora:Add, Link,, <a href="https://github.com/Tencent/vConsole/blob/dev/src/lib/query.js">vconsole</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/AlloyTeam/AlloyLever">AlloyLever</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/wuchangming/spy-debugger">spy-debugger</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/dragon8github/whistle">whistle</a>


Gui, Pandora:Add, Text,  W140  Section xs yp+180, Rxjs：
Gui, Pandora:Add, Link,, <a href="https://rxjs-dev.firebaseapp.com/guide/overview">Rxjs 官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/Reactive-Extensions/RxJS">Rxjs github</a>
Gui, Pandora:Add, Link,, <a href="https://cn.rx.js.org/manual/overview.html">Rxjs 中文网</a>
Gui, Pandora:Add, Link,, <a href="https://rxjs-dev.firebaseapp.com/api">Rxjs API大全</a>

Gui, Pandora:Add, Text,  W140  Section ys , mobx：
Gui, Pandora:Add, Link,, <a href="https://github.com/mobxjs/mobx">mobx github</a>
Gui, Pandora:Add, Link,, <a href="https://cn.mobx.js.org/">mobx 官网</a>

Gui, Pandora:Add, Text,  W140  ys, 动画库：
Gui, Pandora:Add, Link,, <a href="https://github.com/julianshapiro/velocity">velocity-github</a>
Gui, Pandora:Add, Link,, <a href="http://velocityjs.org/">velocity-官网</a>
Gui, Pandora:Add, Link,, <a href="http://www.mrfront.com/docs/velocity.js/index.html">velocity-中文官网</a>

Gui, Pandora:Add, Text,  W160  ys, elasticsearch：
Gui, Pandora:Add, Link,, <a href="https://www.elastic.co/cn/products">elasticsearch官网</a>
Gui, Pandora:Add, Link,, <a href="https://www.elastic.co/guide/en/elasticsearch/reference/6.0/getting-started.html">elasticsearch文档</a>
Gui, Pandora:Add, Link,, <a href="https://www.elastic.co/guide/cn/elasticsearch/guide/current/index.html">elasticsearch 中文网</a>
Gui, Pandora:Add, Link,, <a href="http://www.ruanyifeng.com/blog/2017/08/elasticsearch.html">阮一峰elasticsearch</a>

Gui, Pandora:Add, Text,  W140  ys, sweetAlert：
Gui, Pandora:Add, Link,, <a href="https://sweetalert.js.org/guides/#getting-started">sweetAlert官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/t4t5/sweetalert">sweetAlert Github</a>

Gui, Pandora:Add, Text,  W140 ys, axios：
Gui, Pandora:Add, Link,, <a href="https://github.com/axios/axios">axios github</a>
Gui, Pandora:Add, Link,, <a href="https://www.cnblogs.com/CyLee/p/9827489.html">axios 简易教程</a>


Gui, Pandora:Tab, 8
Gui, Pandora:Add, Text,  W180 Section, 库1：
Gui, Pandora:Add, Link,, <a href="https://github.com/GoogleChromeLabs/quicklink/tree/master/translations/zh-cn">quicklink</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/developit/microbundle">microbundle 零配置打包</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/greensock/GreenSock-JS">GreenSock-JS/TweenMax.js</a>
Gui, Pandora:Add, Link,, <a href="https://www.awesomes.cn/repo/hakimel/reveal-js">演示文稿PPT js</a>

Gui, Pandora:Add, Text,  W140 ys, grafana：
Gui, Pandora:Add, Link,, <a href="https://grafana.com/">grafana</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/grafana/grafana">grafana github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/soWill666/grafana-echarts-panel">grafana-echarts</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/gbrian/grafana-echart-panel">grafana-echarts2</a>



Gui, Pandora:Add, Text, W140 ys, 地图辅助库：
Gui, Pandora:Add, Link,, <a href="http://turfjs.org/docs/#bearing">turfjs</a>

Gui, Pandora:Add, Text,  W140 yp+50, 顺眼测试框架：
Gui, Pandora:Add, Link,, <a href="https://github.com/avajs/ava">ava</a>

Gui, Pandora:Add, Text, W140 ys, 团队工具：
Gui, Pandora:Add, Link,, <a href="https://www.atlassian.com/software/confluence">confluence知识库</a>


Gui, Pandora:Add, Text, W140 ys, jointjs流程图
Gui, Pandora:Add, Link,, <a href="https://www.jointjs.com/">jointjs官网</a>
Gui, Pandora:Add, Link,, <a href="http://resources.jointjs.com/docs/jointjs/v2.2/joint.html">jointjs api</a>
Gui, Pandora:Add, Link,, <a href="http://resources.jointjs.com/demos/kitchensink">jointjs 在线体验</a>
Gui, Pandora:Add, Link,, <a href="http://resources.jointjs.com/demos">jointjs demo大全</a>
Gui, Pandora:Add, Link,, <a href="http://resources.jointjs.com/tutorial">jointjs 入门指引</a>

Gui, Pandora:Add, Text, W140 ys, 最强验证库joi
Gui, Pandora:Add, Link,, <a href="https://github.com/hapijs/joi">hapijs joi</a>

Gui, Pandora:Add, Text,  W140 yp+50, 本地存储：
Gui, Pandora:Add, Link,, <a href="https://github.com/localForage/localForage">localForage</a>

Gui, Pandora:Add, Text, W140 Section xs yp+100, 响应式导航：
Gui, Pandora:Add, Link,, <a href="https://github.com/viljamis/responsive-nav.js">responsive-nav</a>


Gui, Pandora:Add, Text, W140 yp+50, stickUp黏住固定：
Gui, Pandora:Add, Link,, <a href="https://github.com/LiranCohen/stickUp">stickUp</a>

Gui, Pandora:Add, Text, W140 yp+50, clone-deep：
Gui, Pandora:Add, Link,, <a href="https://github.com/jonschlinkert/clone-deep/blob/master/index.js">clone-deep</a>

Gui, Pandora:Add, Text, W140 ys, 拖拽：
Gui, Pandora:Add, Link,, <a href="https://ilyashubin.github.io/scrollbooster/">table拖动js</a>
Gui, Pandora:Add, Link,, <a href="https://sortablejs.github.io/Sortable/">列表拖拽js</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/bevacqua/dragula">拖拽神器dragula</a>
Gui, Pandora:Add, Link,, <a href="https://vuegg.now.sh/">vuegg</a>

Gui, Pandora:Add, Text, W120 ys, 录制js：
Gui, Pandora:Add, Link,, <a href="https://www.rrweb.io/replay">录制和回放</a>
Gui, Pandora:Add, Link,, <a href="https://scrimba.com/p/pV5eHk/c9EqQSD">录制灵感来源</a>

Gui, Pandora:Add, Text, W140 ys, APlayer（优雅的MP3，B站和iSearch都用，也支持Vue和各种版本）：
Gui, Pandora:Add, Link,, <a href="https://github.com/MoePlayer/APlayer">Aplay github</a>

Gui, Pandora:Add, Text, W140 ys xp+160, 有趣有趣：
Gui, Pandora:Add, Link,, <a href="https://github.com/e-oj/Magic-Grid">新瀑布流 Magic-Grid</a>

Gui, Pandora:Add, Text, W140 ys xp+180, 文档神器docsify：
Gui, Pandora:Add, Link,, <a href="https://github.com/docsifyjs/docsify">docsify</a>


Gui, Pandora:Add, Text, W140 yp+50, 模型live2D：
Gui, Pandora:Add, Link,, <a href="https://imjad.cn/archives/lab/add-dynamic-poster-girl-with-live2d-to-your-blog-02">教程博客</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/journey-ad/live2d_src">github</a>
Gui, Pandora:Add, Link,, <a href="https://l2dwidget.js.org/docs/index.html">文档</a>

; @qimiao @qm @ku

Gui, Pandora:Tab, 9
Gui, Pandora:Add, Text, W140 Section, 高德地图：
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/summary">高德地图-JavaScript</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/example/map/map-show">高德地图-Demo</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/reference/core">高德地图-API</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/demo-center/amap-ui">高德地图-轨迹图</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/guide/map/3d-map">高德地图-3D地图</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/guide/services/weather/?sug_index=0">高德地图-天气预报</a>

Gui, Pandora:Add, Text,  W140 ys, 百度地图：
Gui, Pandora:Add, Link,, <a href="http://lbsyun.baidu.com/cms/jsapi/reference/jsapi_reference_3_0.html#a3b0">百度地图-API</a>
Gui, Pandora:Add, Link,, <a href="http://lbsyun.baidu.com/index.php?title=jspopular3.0/openlibrary">百度地图-开源库</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/index.php?title=jspopular3.0/guide/helloworld">百度地图-快速上手</a>
Gui, Pandora:Add, Link, W140, <a href="http://bbs.lbsyun.baidu.com/forum.php?mod=viewthread&tid=137156&tdsourcetag=s_pctim_aiomsg&qq-pf-to=pcqq.temporaryc2c">百度地图-论堂</a>
Gui, Pandora:Add, Link, W140, <a href="https://lbs.amap.com/api/javascript-api/guide/map/3d-map">百度地图-3D地图</a>


Gui, Pandora:Add, Text, W140 ys, 百度地图教程：
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#f0_3">地图点击事件</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c2_9">地图线面教程</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c1_11">自定义覆盖物</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c1_4">点聚合（聚合图）</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c2_5">沿线运动教程（马里奥）</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c1_16">自定义点图标（狐美人）</a>

Gui, Pandora:Add, Text, W140 ys, 地图工具：
Gui, Pandora:Add, Link, W140, <a href="http://geojson.io/">GeoJSON.io</a>
Gui, Pandora:Add, Link, W140, <a href="http://api.map.baidu.com/lbsapi/getpoint/">百度拾取坐标系统</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#k0_2">百度地图主题定制</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/custom/">百度地图皮肤制作</a>


Gui, Pandora:Add, Text, W140 ys, 百度mapv：
Gui, Pandora:Add, Link,, <a href="http://mapv.baidu.com/">mapv官网</a>
Gui, Pandora:Add, Link,, <a href="http://mapv.baidu.com/examples/#csv-car.html">mapv-example</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/huiyan-fe/mapv/blob/master/API.md">百度线面教程</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/huiyan-fe/mapv/#readme">ampv-github</a>

Gui, Pandora:Add, Text, W140 ys, charts.js：
Gui, Pandora:Add, Link,, <a href="https://www.chartjs.org/">charts.js 官网</a>
Gui, Pandora:Add, Link,, <a href="https://www.chartjs.org/samples/latest/">charts.js samples</a>
Gui, Pandora:Add, Link,, <a href="https://www.chartjs.org/docs/latest/">charts.js doc</a>


Gui, Pandora:Add, Text,  W140  Section xs yp+120, echart:
Gui, Pandora:Add, Link,, <a href="http://echarts.baidu.com/examples/">echart 官方示例</a>
Gui, Pandora:Add, Link,, <a href="http://echarts.baidu.com/theme-builder/">echart 主题构建</a>
Gui, Pandora:Add, Link,, <a href="http://echarts.baidu.com/tutorial.html#5 分钟上手 ECharts">echart 快速上手</a>
Gui, Pandora:Add, Link,, <a href="http://echarts.baidu.com/api.html">echart API</a>
Gui, Pandora:Add, Link,, <a href="http://echarts.baidu.com/option.html#series-map.data.itemStyle.color">echart 配置项手册</a>

Gui, Pandora:Add, Text, W140 ys, ECharts 相关资料：
Gui, Pandora:Add, Link,, <a href="http://echarts.baidu.com/examples/editor.html?c=map-HK">echarts HK示例</a>
Gui, Pandora:Add, Link,, <a href="http://echarts.baidu.com/examples/data/asset/geo/HK.json">HK GeoJson 数据示例</a>
Gui, Pandora:Add, Link,, <a href="http://echarts.baidu.com/option.html#series-map.data.itemStyle.color">echart 覆盖物配置</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.oschina.net/translate/geojson-spec#positions">GeoJSON 格式规范</a>


Gui, Pandora:Add, Text, W140 ys, ECharts Gallery:
Gui, Pandora:Add, Link, W140, <a href="http://gallery.echartsjs.com/explore.html">ECharts 官方论坛</a>
Gui, Pandora:Add, Link, W140, <a href="http://gallery.echartsjs.com/explore.html?u=bd-2135947294">ECharts 论坛示例</a>
Gui, Pandora:Add, Link, W140, <a href="http://gallery.echartsjs.com/editor.html?c=xB1jgoJnDf">ECharts 安徽示例</a>
Gui, Pandora:Add, Link, W140, <a href="http://gallery.echartsjs.com/editor.html?c=xSy3KhFV4M">ECharts 3D地图</a>


Gui, Pandora:Add, Text, W140 ys, openlayers:
Gui, Pandora:Add, Link, W140, <a href="https://github.com/openlayers/openlayers">openlayers github</a>
Gui, Pandora:Add, Link, W140, <a href="http://openlayers.org/">openlayers 官网</a>
Gui, Pandora:Add, Link, W140, <a href="http://openlayers.org/en/latest/apidoc/index.html">openlayers API</a>
Gui, Pandora:Add, Link, W140, <a href="http://weilin.me/ol3-primer/">openlayers 中文教程</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.cnblogs.com/CyLee/p/6429628.html">我的博客园笔记</a>

Gui, Pandora:Add, Text, W140 ys, mapbox:
Gui, Pandora:Add, Link, W140, <a href="https://docs.mapbox.com/">mapbox 官网</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.mapbox.com/mapbox-gl-js/api/">mapbox gl api</a>
Gui, Pandora:Add, Link, W140, <a href="https://github.com/mapbox/mapbox-gl-js">mapbox gl github</a>


Gui, Pandora:Tab, 10
Gui, Pandora:Add, Text, W140 Section, PHP官方：
Gui, Pandora:Add, Link, W140, <a href="http://php.net/manual/zh/language.oop5.php">官方文档 - 类与对象</a>
Gui, Pandora:Add, Link, W140, <a href="http://php.net/manual/zh/language.namespaces.php">官方文档 - 命名空间</a>
Gui, Pandora:Add, Link, W140, <a href="http://www.php.cn/xiazai/gongju/1351">vc9-vc14运行库合集</a>
Gui, Pandora:Add, Link, W140, <a href="http://www.jetbrains.com/phpstorm/">phpstorm 下载</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.jianshu.com/p/133af2e4fe3f">phpstorm 破解</a>


Gui, Pandora:Add, Text, W140 ys, Thinkphp：
Gui, Pandora:Add, Link, W140, <a href="https://github.com/top-think/thinkphp">Thinkphp3.2-github</a>
Gui, Pandora:Add, Link, W140, <a href="https://github.com/top-think/think">Thinkphp5-github</a>
Gui, Pandora:Add, Link, W140, <a href="http://www.thinkphp.cn/">Thinkphp 官网</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/special/thinkphp5_quickstart">Thinkphp 官方教程</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/147289">Thinkphp5 快速入门</a>


Gui, Pandora:Add, Text, W140 ys, Composer：
Gui, Pandora:Add, Link, W140, <a href="https://getcomposer.org/Composer-Setup.exe">Windows 下载</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/composer">Composer 中文版本</a>
Gui, Pandora:Add, Link, W140, <a href="https://getcomposer.org/doc/">Composer 官方文档</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478269">Composer 使用教程</a>
Gui, Pandora:Add, Link, W140, <a href="https://packagist.org/?query=laravel">packagist.org</a>


Gui, Pandora:Add, Text, W140 ys, Thinkphp 开源项目：
Gui, Pandora:Add, Link, W140, <a href="https://github.com/zoujingli/ThinkAdmin">ThinkAdmin</a>
Gui, Pandora:Add, Link, W140, <a href="https://github.com/ijry/lyadmin">lyadmin</a>
Gui, Pandora:Add, Link, W140, <a href="https://github.com/baijunyao/thinkphp-bjyblog">thinkphp-bjyblog</a>
Gui, Pandora:Add, Link, W140, <a href="https://github.com/lea21st/leacmf-thinkphp">leacmf-thinkphp</a>

Gui, Pandora:Add, Text, W140 ys, Thinkphp MVC：
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478275">控制器Control</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478276">视图View</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478282">路由规则route</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478286">$request请求</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478287">$response响应</a>

Gui, Pandora:Add, Text,  W140 Section xs yp+50, Think 数据库：
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478289">think\Db 数据库</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478291">CURD/切换数据库/占位符</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478292">ORM 数据层操作</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478293">数据库复杂查询链式操作</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478294">事务支持</a>
Gui, Pandora:Add, Link, W140 ys, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478295">各种查询表达式</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478301">聚合查询</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478302">时间查询</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478303">where 参数注入</a>
Gui, Pandora:Add, Link, W140, <a href="https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478304">分批/分块查询</a>

Gui, Pandora:Tab, 11
Gui, Pandora:Add, Text,  W140 Section, 微信小程序：
Gui, Pandora:Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html">微信小程序开发工具</a>
Gui, Pandora:Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/api/">微信内置API</a>
Gui, Pandora:Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/component/">内置组件</a>
Gui, Pandora:Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/api/authorize-index.html">授权 与 scope 列表</a>
Gui, Pandora:Add, Link, W140, <a href="https://developers.weixin.qq.com/miniprogram/dev/framework/app-service/app.html">生命周期</a>
Gui, Pandora:Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/framework/view/wxml/event.html">事件大全</a>
Gui, Pandora:Add, Link, W140, <a href="https://mp.weixin.qq.com/debug/wxadoc/dev/framework/custom-component/component.html">Component构造器</a>
Gui, Pandora:Add, Link, W140, <a href="https://legacy.gitbook.com/book/dragon8github/fuck/edit#/edit/master/README.md?_k=pfi687">我的gitbook</a>

Gui, Pandora:Add, Text,  W140 Section ys, 其他：
Gui, Pandora:Add, Link, W140, <a href="https://wx.qq.com/">微信网页版</a>

Gui, Pandora:Tab, 12
Gui, Pandora:Add, Text,  W100 Section, 代理IP:
Gui, Pandora:Add, Link,, <a href="http://www.xicidaili.com/nn">西刺</a>
Gui, Pandora:Add, Link,, <a href="https://proxy.l337.tech/txt">l337</a>
Gui, Pandora:Add, Link,, <a href="http://www.66ip.cn/nm.html">66ip</a>

Gui, Pandora:Add, Text,  W140 ys, 目标网站:
Gui, Pandora:Add, Link,, <a href="http://guss.one/guss/register.html?code=ec19c0ca">guss</a>
Gui, Pandora:Add, Link,, <a href="http://www.51ym.me/User/Default.aspx">易码</a>
Gui, Pandora:Add, Link,, <a href="http://www.manbiwang.com/#/">满币网</a>
Gui, Pandora:Add, Link,, <a href="http://candy.dragonvein.io/frontend/web/site/signup">dragonvein</a>

Gui, Pandora:Tab, 13
Gui, Pandora:Add, Text,  W140 Section, Dart:
Gui, Pandora:Add, Link,, <a href="https://www.dartlang.org/">Dart 官网</a>
Gui, Pandora:Add, Link,, <a href="http://www.cndartlang.com/">Dart 中文社区</a>
Gui, Pandora:Add, Link,, <a href="https://webdev.dartlang.org/tools/sdk#install">Dart 安装下载</a>
Gui, Pandora:Add, Link,, <a href="https://webdev.dartlang.org/api?package=Dart SDK">Dart SDK 文档</a>
Gui, Pandora:Add, Link,, <a href="https://dartpad.dartlang.org/2a24f3f042f1c86cf91621c30adce771">DartPad 在线调试</a>
Gui, Pandora:Add, Link,, <a href="https://pub.dartlang.org/">pub 仓库</a>



Gui, Pandora:Add, Text,  W140 ys, Flutter:
Gui, Pandora:Add, Link,, <a href="https://github.com/flutter/flutter">Flutter github</a>
Gui, Pandora:Add, Link,, <a href="https://flutter.io/">Flutter官网</a>
Gui, Pandora:Add, Link,, <a href="https://flutter-io.cn/">Flutter中文社区</a>
Gui, Pandora:Add, Link,, <a href="https://docs.flutter.io/">Flutter文档</a>
Gui, Pandora:Add, Link,, <a href="https://classroom.udacity.com/courses/ud905/lessons/92a39eec-0c04-4d98-b47f-c884b9cd5a3b/concepts/78143d19-8360-4f83-88ab-cfcb5b160465">Flutter视频教学</a>
Gui, Pandora:Add, Link,, <a href="https://book.flutterchina.club/">Flutter电子书</a>


Gui, Pandora:Add, Text,  W140 ys, Dcloud:
Gui, Pandora:Add, Link,, <a href="http://www.dcloud.io/">Dcloud官网</a>
Gui, Pandora:Add, Link,, <a href="http://dcloud.io/doc.html">Dcloud文档</a>
Gui, Pandora:Add, Link,, <a href="http://ask.dcloud.net.cn/docs/#//ask.dcloud.net.cn/article/111">Dcloud 云打包</a>
Gui, Pandora:Add, Link,, <a href="http://droid4x.haimawan.com/">海马玩模拟器下载</a>

Gui, Pandora:Tab, 14
Gui, Pandora:Add, Text,  W140 Section, 森罗万象:
Gui, Pandora:Add, Link,, <a href="https://github.com/jobbole/awesome-css-cn">awesome-css</a>
Gui, Pandora:Add, Link,, <a href="https://www.9178.work/qianduannav.html">前端导航</a>
Gui, Pandora:Add, Link,, <a href="https://www.9178.work/qianduan.html">前端导航2</a>
Gui, Pandora:Add, Link,, <a href="http://css3lib.alloyteam.com/#animation/AnimatedButtons">alloyteam css</a>
Gui, Pandora:Add, Link,, <a href="http://microjs.com/#">极简js大全：microjs</a>


Gui, Pandora:Add, Text,  W140 ys, 极简库:
Gui, Pandora:Add, Link,, <a href="https://ajusa.github.io/lit/">极简风格：lit.css</a>
Gui, Pandora:Add, Link,, <a href="https://nostalgic-css.github.io/NES.css/">马里奥风格：NES.css</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/pure-css/pure/">雅虎：pure.css</a>
Gui, Pandora:Add, Link,, <a href="https://bulma.io/">青铜王者：bulma.css</a>
Gui, Pandora:Add, Link,, <a href="https://foundation.zurb.com/">响应翘楚：foundation 6</a>

Gui, Pandora:Add, Text,  W140 ys, css工具:
Gui, Pandora:Add, Link,, <a href="http://www.nicetool.net/app/shadow_visualization.html">css阴影生成器</a>



; 垃圾回收站
Gui, Pandora:Tab, 15
Gui, Pandora:Add, Text,  W140 Section, 垃圾1:
Gui, Pandora:Add, Link,, <a href="http://wx1.sinaimg.cn/large/006ar8zggy1g24gdlck3sj316h0u0gqu.jpg">git命令速查表</a>
Gui, Pandora:Add, Link,, <a href="https://www.bilibili.com/video/av39807850?zw">Hexo bilibili教程</a>
Gui, Pandora:Add, Link,, <a href="https://www.jiumodiary.com/">鸠摩搜书</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/30-seconds/30-seconds-of-code">30 seconds of code</a>
Gui, Pandora:Add, Link,, <a href="https://leancloud.cn/docs/leanstorage-started-js.html">数据存储入门</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/leancloud/StorageStarted">leancloud入门Demo</a>
Gui, Pandora:Add, Link,, <a href="https://www.bilibili.com/video/av8868380/">leancloud安全课程</a>

Gui, Pandora:Add, Text,  W140 ys, 垃圾2:
Gui, Pandora:Add, Link,, <a href="http://192.168.8.124:8080/api/swagger-ui.html#/">swagger-ui</a>
Gui, Pandora:Add, Link,, <a href="http://47.106.185.185:3000/frontendjs/dg12345-vue">旧版 dg12345 git</a>
Gui, Pandora:Add, Link,, <a href="http://47.106.185.185:3000/lizhaohong/dg12345-vue-plus">旧版 dg12345-plus git</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/frontEnd/12345-old">新的 gitlab 地址旧版12345</a>
Gui, Pandora:Add, Link,, <a href="http://12345.alltosea.com/#/overallSituation">旧版测试地址174</a>
Gui, Pandora:Add, Link,, <a href="http://39.108.64.147:86">旧版演示地址</a>
Gui, Pandora:Add, Link,, <a href="http://12345v2.alltosea.com:6080/#/dg/maptheme">新版 plus 测试地址174</a>

; 剪切框
Gui, Pandora:Tab, 16
Gui, Pandora:Add, Edit, vClipHistory w870 H420 Limit199307100337
Gui, Pandora:Add, Button, gSaveClipHistory w870 h30, 保存到桌面



/**
//////////////////////////////////////////////

//////////////////////////////////////////////
 */

OnClipboardChange("ClipChanged")

ClipChanged(Type) {
   if (type == 1) {
		b := Trim(StrReplace(Clipboard, "`r`n"))
		
		if (InStr(b, "sinaimg.cn/small") && StrLen(b) <= 100) {
			b := "![](" . StrReplace(b, "small", "large") . ")"
			return Clipboard := b
		}
		
		; 必须复制的不是空内容但小于200，并且不是在GUI中复制的才进行储存。
		if (StrLen(b) != 0 && StrLen(b) <= 200 && !WinActive("ahk_class AutoHotkeyGUI")) {
			; 从文本框获取已有的内容，保存到OutputVar变量中
			GuiControlGet, OutputVar, Pandora:, ClipHistory, Text
			; 注意文本框中的文本是`n为换行符，但剪切板是`r`n
			a := Trim(StrReplace(OutputVar, "`n"))
			; 文本框是否存在了，存在就不添加了
			is := InStr(a, b)
			; 只是去重复。防止不小心重复，缺点是无法放在最前面比较遗憾; 可惜数组无法使用，不然肯定很简单实现。
			if (is == 0) {
				time := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
				WinGetTitle, title, A
				content := "__________________ " . title . " 【" . time . "】 " . "__________________ `r`n`r`n" . Clipboard . "`r`n`r`n`r`n`r`n" . OutputVar
				GuiControl, Pandora:Text, ClipHistory, %content%
			}
		}
	} 
}
