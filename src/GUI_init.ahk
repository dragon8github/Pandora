/**
//////////////////////////////////////////////
初始化 Book GUI 的代码逻辑
//////////////////////////////////////////////
 */
GUI, Book:Default

; 背景颜色
Gui, Book:Color, E6FFE6

; margin 布局
Gui, Book:Margin, 10, 10

; 字体大小
Gui, Book:Font, s12, Verdana

; 树
Gui, Book:Add, TreeView, vBookTree gBookTreeSelect HScroll H700 W350

; 初始化树
initbook()

;获取节点信息
top := TV_GetSelection()

; 展开所有节点
var_dump(expandallchild(top))

; 代码容器
Gui, Book:Add, Edit, ys vBookContent w890 H700 Limit199307100337 ReadOnly  

; Tab 选项卡
Gui, Book:Add, Tab3, gSwitchBook vBookTab Section xs Choose1 w1250 h25, 《JavaScript 设计模式》|《康奈尔笔记》|《Python》|《Vue.js 深入浅出》



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
Gui, ISearch:Add, Button, w140 h30 gOpen Section xs h30 yp+30 Default, 打开

; sublime
Gui, ISearch:Add, Button, w140 h30 gsublimeOpen ys h30, sublime

; vscode打开
Gui, ISearch:Add, Button, w140 h30 gvscodeOpen ys h30, vscode

; cmder打开
Gui, ISearch:Add, Button, w140 h30 gcmderOpen ys h30, cmder打开

; 数据源
__SEARCH_DATABASE__ := {}
; __SEARCH_DATABASE__[""] := ""
__SEARCH_DATABASE__["xshell"] := "C:\Program Files (x86)\NetSarang\Xshell 6\Xshell.exe"
__SEARCH_DATABASE__["ftp"] := A_Desktop . "\FlashFXP_4.3.1.1969\flashfxp.exe"
__SEARCH_DATABASE__["cylee.top"] := "https://cylee.top/"
__SEARCH_DATABASE__["12345"] := A_Desktop . "\12345-plus-new"
__SEARCH_DATABASE__["nginx安装目录"] := "/usr/local/nginx"
__SEARCH_DATABASE__["nginx.conf"] := "/usr/local/nginx/conf/nginx.conf"
__SEARCH_DATABASE__["php-fpm"] := "/usr/local/bin/php-fpm"
__SEARCH_DATABASE__["Nginx"] := "/usr/local/nginx/sbin/nginx"
__SEARCH_DATABASE__["nginx html"] := "/usr/local/nginx/html/"
__SEARCH_DATABASE__["php.ini"] := "/usr/local/php/php.ini"
__SEARCH_DATABASE__["hz-12345"] := "C:\Users\Lee\Desktop\hz-12345"
__SEARCH_DATABASE__["visual可视化"] := "C:\Users\Lee\Desktop\可视化2\ioc-visual-ui"
__SEARCH_DATABASE__["postDoge"] := "C:\Users\Lee\Desktop\postDoge"
__SEARCH_DATABASE__["fuck-app"] := "C:\Users\Lee\Desktop\微设计\fuck-app"
__SEARCH_DATABASE__["弹幕danmu"] := "C:\Users\Lee\Desktop\年会弹幕网"
__SEARCH_DATABASE__["城管citychengguan"] := "C:\Users\Lee\Desktop\cityManagement"
__SEARCH_DATABASE__["new城管citychengguan"] := "C:\Users\Lee\Desktop\new_cityMangement"
__SEARCH_DATABASE__["肺炎feiyanH5"] := "C:\Users\Lee\Desktop\iocappmain\ioc-feiyanwebsite-ui"
__SEARCH_DATABASE__["purecard"] := "C:\Users\Lee\Desktop\pureCard"

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


; 取消按钮
Gui, Pandora:Add, Button, gCancelSelect w260 h30, 取消选中
Gui, Pandora:Add, Text, gAllSearchA W120 Section xs yp+40, 搜索引擎类:
Gui, Pandora:Add, Checkbox, gMySubroutine HwndMyEditHwnd vbd, 百度
Gui, Pandora:Add, Checkbox, vdoge, doge
Gui, Pandora:Add, Checkbox, vnpm, npm
Gui, Pandora:Add, Checkbox, vcnpm, cnpm
Gui, Pandora:Add, Checkbox, vgoogle, Google
Gui, Pandora:Add, Checkbox, vgithub Checked, Github
Gui, Pandora:Add, Checkbox, vso, Stack Overflow
Gui, Pandora:Add, Checkbox, vtoutiao, 今日头条
; Gui, Pandora:Add, Checkbox, vtoutiao2, 头条搜索
Gui, Pandora:Add, Checkbox, vcodepen, codepen
Gui, Pandora:Add, Checkbox, vdasheng, 大圣网盘搜索
Gui, Pandora:Add, Checkbox, vbind, 必应搜索


Gui, Pandora:Add, Text, gAllSearchB W120 ys, 翻译类:
Gui, Pandora:Add, Checkbox, vdeepL, DeepL  
Gui, Pandora:Add, Checkbox, vbdfy, 百度翻译   
Gui, Pandora:Add, Checkbox, vyoudaofy, 有道翻译
Gui, Pandora:Add, Checkbox, vgooglefanyi, Google翻译
Gui, Pandora:Add, Checkbox, vjinshanciba, 金山词霸

Gui, Pandora:Add, Text, gAllSearchF W120 yp+25, 电子书类:
Gui, Pandora:Add, Checkbox, vshuxingtianxia, 书行天下
Gui, Pandora:Add, Checkbox, vjiumo, 鸠摩搜索
Gui, Pandora:Add, Checkbox, vdianzishuwang, 电子书网
Gui, Pandora:Add, Checkbox, voushu, 偶书小驻
Gui, Pandora:Add, Checkbox, vzhiqi, 智奇搜书

Gui, Pandora:Add, Text, gAllSearchC W90 Section xs y+20, 音乐类:
Gui, Pandora:Add, Checkbox, vwy, 网易云音乐   
Gui, Pandora:Add, Checkbox, vqq, QQ音乐
Gui, Pandora:Add, Checkbox, vdog, 酷狗音乐
Gui, Pandora:Add, Checkbox, vxiami, 虾米音乐
Gui, Pandora:Add, Checkbox, vkuwo, 酷我音乐
Gui, Pandora:Add, Checkbox, vbilibili, bilibili

Gui, Pandora:Add, Text, gAllSearchD W60 ys, 社区类:
Gui, Pandora:Add, Checkbox, vjuejin, 掘金
Gui, Pandora:Add, Checkbox, vjianshu, 简书
Gui, Pandora:Add, Checkbox, vcsdn, CSDN
Gui, Pandora:Add, Checkbox, vzhihu, 知乎
Gui, Pandora:Add, Checkbox, vcylee, 博客园
Gui, Pandora:Add, Checkbox, vsegmentfault, 思否

Gui, Pandora:Add, Text, gAllSearchE W120 ys, 购物类:
Gui, Pandora:Add, Checkbox, vtaobao, 淘宝
Gui, Pandora:Add, Checkbox, vjingdong, 京东
Gui, Pandora:Add, Checkbox, vdangdang, 当当
; Gui, Pandora:Add, Checkbox, vsuning, 苏宁易购
Gui, Pandora:Add, Checkbox, vkongzi, 孔夫子二手书
Gui, Pandora:Add, Checkbox, vtmao, 天猫
Gui, Pandora:Add, Checkbox, vpdd, 拼多多

; 搜索框
Gui, Pandora:Add, Edit, vSearchContent gSearchContent w260 H100 Limit150 yp+40 Section xs, dragon8github/Pandora

; 背景色
Gui, Pandora:Color, E6FFE6

; margin 布局
Gui, Pandora:Margin, 10, 10

; submit 按钮
Gui, Pandora:Add, Button, w260 h30 gFuck Section xs h30 yp+120 Default, FUCK


; Tab 选项卡 w830 h570 
Gui, Pandora:Add, Tab3, Section ys ym Choose1 w1050, 常用 | 工作坊 | 创慧教育 | Nodejs 与 Npm | Vue | React | 库 | 奇妙工具 | 地图 与 chart | Python | PHP | 微信  | 爬虫 | 移动开发 | CSS | 剪切板 

Gui, Pandora:Tab, 1
Gui, Pandora:Add, Text,  W140 Section xs yp+30 xp+20, 常用导航:
Gui, Pandora:Add, Link,, <a href="https://github.com/dragon8github/Pandora">Lastest Pandora</a>
Gui, Pandora:Add, Link,, <a href="https://www.cnblogs.com/cylee">博客园</a>
Gui, Pandora:Add, Link,, <a href="https://github.com">github</a>
Gui, Pandora:Add, Link,, <a href="https://app.gitbook.com/">gitbook</a>
Gui, Pandora:Add, Link,, <a href="https://cylee.top/">cylee.top</a>
Gui, Pandora:Add, Link,, <a href="https://ecs.console.aliyun.com/#/home">阿里云控制台</a>
Gui, Pandora:Add, Link,, <a href="https://www.yuque.com/lizhaohong/bpigt2/uk0pkf">一动也不动</a>

Gui, Pandora:Add, Text,  W140 ys, 其他:
Gui, Pandora:Add, Link,, <a href="https://github.com/you-dont-need/You-Dont-Need-Momentjs">notMomentjs</a>
Gui, Pandora:Add, Link,, <a href="http://youmightnotneedjquery.com/">notjQuery</a>
Gui, Pandora:Add, Link, gInspect ,  <a>安卓调试</a>
Gui, Pandora:Add, Link,, <a href="http://jquery.cuishifeng.cn/">在线jQuery手册</a>
Gui, Pandora:Add, Link,, <a href="https://wyagd001.github.io/zh-cn/docs/Tutorial.htm">AutoHotkey官网</a>
BabelUrl := "https://babeljs.io/repl#?babili=false&browsers=&build=&builtIns=false&spec=false&loose=false&code_lz=FAMwrgdgxgLglgewgAgM4FMYGV0Cc7qoDC6EMeACgqsgBQB0jAhrgOaoCUyA3sAJBQkqBABt09EQlYNmbTsAC-wUJFiIURABYsYAMQS4AtgBF0UOgGt0ATwA0yQ5k0IAJl17JkuTGFwpw0PBIdAAqLKyYRCJMqJw8wJ6ecCB0AIRhbJHRsfQgBoYAsk6ucR6JnhkRMFExqLn5RTDOLjQAvDxK5UoJiZVZtfVGjc2oANpW1gC6yO2OTa49St0AAlo6-kamULQA5GIREC5UxNoQETv2GNh4BMSk5LjHHMBQ2TQUBGu4MB3KghDCMQSKS0ABMAAYAIwATnBADZQQAWCGQgAcoNB9g-6C-MEGhWKLS4wCAA&debug=false&forceAllTransforms=false&shippedProposals=false&circleciRepo=&evaluate=true&fileSize=false&timeTravel=false&sourceType=module&lineWrap=false&presets=es2017%2Creact%2Cstage-2%2Ctypescript&prettier=false&targets=&version=7.4.5&externalPlugins="
Gui, Pandora:Add, Link,, <a href="%BabelUrl%">Babel在线转换</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/search?q=followers:`%3E=1000&type=Users">Github大神排行榜</a>


Gui, Pandora:Add, Text,  W140 ys, 娱乐:
Gui, Pandora:Add, Link,, <a href="https://www.bilibili.com/">哔哩哔哩</a>
Gui, Pandora:Add, Link,, <a href="http://i.youku.com/u/UNTUzOTAwMzQ0">Ted魔兽</a>
Gui, Pandora:Add, Link,, <a href="https://www.cmdy5.com/index.php?m=vod-search">草民电影</a>
Gui, Pandora:Add, Link,, <a href="http://www.imomoe.com/">樱花动漫</a>
Gui, Pandora:Add, Link,, <a href="http://www.fengchedm.com/">风车动漫</a>
Gui, Pandora:Add, Link,, <a href="https://www.novipnoad.com/">不负好时光</a>
Gui, Pandora:Add, Link,, <a href="https://www.youtube.com/channel/UCKiWll5qSb4oaEtZhYDtjyw">channel ASMR</a>



Gui, Pandora:Add, Text, W160 ys, 常用工具：
Gui, Pandora:Add, Link,, <a href="http://tool.oschina.net/codeformat/js">在线代码格式化</a>
Gui, Pandora:Add, Link,, <a href="https://www.sojson.com/jsjiemi.html">sojson工具库</a>
Gui, Pandora:Add, Link,, <a href="https://tool.lu/html/">tool.lu压缩</a>
Gui, Pandora:Add, Link,, <a href="http://tool.chinaz.com/Tools/urlencode.aspx">Urlencode/Unicode</a>
Gui, Pandora:Add, Link,, <a href="http://www.bejson.com/">bejson超强工具箱</a>
Gui, Pandora:Add, Link,, <a href="https://tool.oschina.net/encrypt?type=3">base64解析</a>
Gui, Pandora:Add, Link,, <a href="https://loading.io/spinner/">Loading 平台</a>


Gui, Pandora:Add, Text,  W140 ys, 奇妙工具:
Gui, Pandora:Add, Link,, <a href="http://naotu.baidu.com/home">百度脑图</a>
Gui, Pandora:Add, Link,, <a href="http://www.speedtest.net/#">斗鱼测速工具</a>
Gui, Pandora:Add, Link,, <a href="http://fontawesome.dashgame.com/">font-awesome</a>
Gui, Pandora:Add, Link,, <a href="https://nginxconfig.io/">生成器nginxconfig.io</a>
Gui, Pandora:Add, Link,, <a href="http://www.iconfont.cn/manage/index?manage_type=myprojects&projectId=955910">iconfont</a>
Gui, Pandora:Add, Link,, <a href="https://carbon.now.sh/">carbon代码图片</a>
Gui, Pandora:Add, Link,, <a href="https://www.processon.com/;jsessionid=E5042CFD362E6AAB0594AE60FE04E660.jvm1">在线思维导图</a>

Gui, Pandora:Add, Text, W120 ys, cdn：
Gui, Pandora:Add, Link,, <a href="https://cdnjs.com/">cdnjs.com</a>
Gui, Pandora:Add, Link,, <a href="https://cdnjs.net/">阿里云cdn</a>
Gui, Pandora:Add, Link,, <a href="http://www.bootcdn.cn/">bootcdn</a>
Gui, Pandora:Add, Link,, <a href="http://www.staticfile.org/">七云牛cdn</a>
Gui, Pandora:Add, Link,, <a href="https://cdn.baomitu.com/">360 cdn</a>
Gui, Pandora:Add, Link,, <a href="https://unpkg.com/#/">unpkg cdn</a>
Gui, Pandora:Add, Link,, <a href="https://www.jsdelivr.com/">jsdelivr</a>


Gui, Pandora:Add, Text,  W140 ys, 好东西：
Gui, Pandora:Add, Link,, <a href="https://www.zhihu.com/question/23054572">100块以内的礼物</a>
Gui, Pandora:Add, Link,, <a href="https://www.fontke.com/tool/convfont/">字体在线转换工具</a>
Gui, Pandora:Add, Link,, <a href="http://www.lurena.vip/">路人A</a>
Gui, Pandora:Add, Link,, <a href="http://strapdownjs.com/">html转化为md</a>
Gui, Pandora:Add, Link,, <a href="https://codesandbox.io/">codesandbox</a>
Gui, Pandora:Add, Link,, <a href="https://unbug.github.io/codelf">codeif变量神器</a>
Gui, Pandora:Add, Link,, <a href="https://www.iloveimg.com/zh-cn">图片压缩神器</a>


Gui, Pandora:Add, Text,  W140 Section xs yp+50, 最近学习：
Gui, Pandora:Add, Link,, <a href="https://hellogithub.com/periodical/volume/15/">有趣的github项目</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/vuejs/vue/blob/1.0/src/cache.js">Vue v1源码</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/vuejs/vue/blob/2.6/src/shared/util.js">Vue v2.6源码</a>

Gui, Pandora:Add, Link,, <a href="https://github.com/azl397985856/leetcode">leetcode JS版本</a>
Gui, Pandora:Add, Link,, <a href="https://miyogurt.github.io/nodelover-books">NodeLover 黄金屋</a>
Gui, Pandora:Add, Link,, <a href="https://gitee.com/explore">码云逛逛源码</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/you-dont-need">you-dont-need</a>
Gui, Pandora:Add, Link,, <a href="https://fex.baidu.com/articles/">fex周刊</a>
Gui, Pandora:Add, Link,, <a href="https://www.yuque.com/czp3ug">公司语雀</a>
Gui, Pandora:Add, Link,, <a href="https://www.tapd.cn/55583740/board/index?board_id=1155583740001000002&board_type=standard&view_type=standard-board">公司tapd</a>
Gui, Pandora:Add, Link,, <a href="https://seekbetter.me/?mode=blog">优秀博客收录网站</a>
Gui, Pandora:Add, Link,, <a href="https://youquhome.com/8790/">有趣网址之家</a>




Gui, Pandora:Add, Text,  W140 ys, 最近阅读：
Gui, Pandora:Add, Link,, <a href="http://obkoro1.com/web_accumulate/algorithm/">前端算法题</a>
Gui, Pandora:Add, Link,, <a href="http://www.ruanyifeng.com/blog/">阮一峰的博客</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/ruanyf/weekly/issues">阮一峰issue</a>
Gui, Pandora:Add, Link,, <a href="https://wangdoc.com/bash/expansion.html#start-end-%E6%89%A9%E5%B1%95">阮一峰的bash</a>
Gui, Pandora:Add, Link,, <a href="https://wubaiqing.github.io/zaobao/2019/07/31.html">前端日报</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/haizlin/fe-interview/blob/master/category/history.md">以面为练</a>
Gui, Pandora:Add, Link,, <a href="https://www.printf520.com/hot.html">每日热搜</a>
Gui, Pandora:Add, Link,, <a href="https://www.24s.net/">24s付费视频盗版</a>
Gui, Pandora:Add, Link,, <a href="https://www.autohotkey.com/boards/viewtopic.php?f=76&t=66181&hilit=whr+UTF+8">ahk官方论坛</a>
Gui, Pandora:Add, Link,, <a href="https://www.autoahk.com/?s=JSON">ahk中文社区</a>
Gui, Pandora:Add, Link,, <a href="https://www.autoahk.com/archives/1580">ahk中文网</a>
Gui, Pandora:Add, Link,, <a href="https://creatorsdaily.com/">创业者日报</a>



Gui, Pandora:Add, Text,  W140 ys, 与钱为伍
Gui, Pandora:Add, Link,, <a href="https://apizza.net/pro/#/project/ec4f5a86d6f29a67336e85f820350718/dev">apizza</a>
Gui, Pandora:Add, Link,, <a href="https://cloud.minapp.com/">知晓云</a>
Gui, Pandora:Add, Link,, <a href="https://www.leancloud.cn/">Leancloud</a>
Gui, Pandora:Add, Link,, <a href="https://www.leancloud.cn/">wilddog</a>
Gui, Pandora:Add, Link,, <a href="http://www.taokouling.com/index/taobao_tkljm">淘宝口令解密</a>
Gui, Pandora:Add, Link,, <a href="www.materialtools.com/">临时接收手机验证码</a>
Gui, Pandora:Add, Link,, <a href="http://www.ucdrs.superlib.net/">全国图书馆参考联盟</a>
Gui, Pandora:Add, Link,, <a href="https://itpdf.online/?tdsourcetag=s_pctim_aiomsg">电子书列表</a>
Gui, Pandora:Add, Link,, <a href="https://www.sxpdf.com/1738.html">书行天下</a>

Gui, Pandora:Add, Text,  W140 ys, 美图秀秀：
Gui, Pandora:Add, Link,, <a href="https://tinypng.com/">tinypng熊猫图片压缩</a>
Gui, Pandora:Add, Link,, <a href="https://docsmall.com/image-compress">图片压缩工具2</a>
Gui, Pandora:Add, Link,, <a href="http://www.gaitubao.com/">改图宝</a>
Gui, Pandora:Add, Link,, <a href="https://compresspng.com/zh/">压缩图片</a>
Gui, Pandora:Add, Link,, <a href="http://getemoji.com/">getemoji.com</a>
Gui, Pandora:Add, Link,, <a href="https://www.autodraw.com/">google autodraw</a>
Gui, Pandora:Add, Link,, <a href="https://imgchr.com/album/QKUpV">路过图床</a>
Gui, Pandora:Add, Link,, <a href="http://likeyunba.com/imgupload/">阿里云图床</a>
Gui, Pandora:Add, Link,, <a href="https://akveo.github.io/eva-icons/#/">480个免费的svg</a>
Gui, Pandora:Add, Link,, <a href="https://iconstore.co">iconstore</a>
Gui, Pandora:Add, Link,, <a href="https://www.yuque.com/ruanyf/share/free-photos">阮一峰的资源</a>
Gui, Pandora:Add, Link,, <a href="https://www.behance.net/galleries/illustration">优美插画资源</a>



Gui, Pandora:Add, Text,  W160 ys, 宁可错过：
Gui, Pandora:Add, Link,, <a href="https://ponyorm.org/">python在线建模UML</a>
Gui, Pandora:Add, Link,, <a href="https://app.didiyun.com/#/dc2/detail?uuid=a289c3f607fd5bbd8261df9b266ae211">滴滴云</a>
Gui, Pandora:Add, Link,, <a href="https://hub.docker.com/_/hello-world?tab=description">dockerhub 镜像仓库</a>
Gui, Pandora:Add, Link,, <a href="http://www.51ym.me/User/MobileSMSCode.aspx">易码平台</a>
Gui, Pandora:Add, Link,, <a href="https://autoprefixer.github.io/">autoprefixer</a>
Gui, Pandora:Add, Link,, <a href="https://wangchujiang.com/linux-command/">linux-command 命令搜索</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/n0shake/Public-APIs">API大全</a>
Gui, Pandora:Add, Link,, <a href="https://www.zcool.com.cn/">站酷特效</a>
Gui, Pandora:Add, Link,, <a href="https://colorhunt.co/palettes/random">随机颜色网</a>
Gui, Pandora:Add, Link,, <a href="https://psdrepo.com/free-psd/free-weather-icons-freebie/">psdrepo 天气图片资源</a>
Gui, Pandora:Add, Link,, <a href="https://cn.bing.com/search?q=%E5%A3%81%E7%BA%B8">壁纸 - 国内版 Bing</a>


Gui, Pandora:Add, Text,  W120 ys, 不可放过：
Gui, Pandora:Add, Link,, <a href="https://www.pexels.com/">Pexels</a>
Gui, Pandora:Add, Link,, <a href="https://gratisography.com/">Gratisography</a>
Gui, Pandora:Add, Link,, <a href="https://picjumbo.com/">picjumbo</a>
Gui, Pandora:Add, Link,, <a href="https://pixabay.com/">Pixabay</a>
Gui, Pandora:Add, Link,, <a href="https://www.canva.com/photos/free/">Canva</a>
Gui, Pandora:Add, Link,, <a href="https://www.reshot.com/">reshot</a>
Gui, Pandora:Add, Link,, <a href="https://www.rawpixel.com/">rawpixel</a>
Gui, Pandora:Add, Link,, <a href="https://morguefile.com/">Morguefile</a>
Gui, Pandora:Add, Link,, <a href="https://pxhere.com/">pxhere</a>
Gui, Pandora:Add, Link,, <a href="Republic    https://isorepublic.com/">ISO</a>
Gui, Pandora:Add, Link,, <a href="http://www.polayoutu.com">泼辣有图</a>
Gui, Pandora:Add, Link,, <a href="http://fuli.su">fuli.su</a>


Gui, Pandora:Add, Text,  W140 ys, 程序许仙：
Gui, Pandora:Add, Link,, <a href="https://www.ghpym.com/">果核剥壳 - 破解软件</a>
Gui, Pandora:Add, Link,, <a href="https://tailwindcss.com/docs/utility-first">tailwindcss</a>
Gui, Pandora:Add, Link,, <a href="https://so.baideye.com/">白的夜</a>
Gui, Pandora:Add, Link,, <a href="https://liulisusu.org/user">琉璃VPN</a>
Gui, Pandora:Add, Link,, <a href="https://medium.com/@tarkus">medium</a>
Gui, Pandora:Add, Link,, <a href="https://36dcup.net/user">36dcup</a>
Gui, Pandora:Add, Link,, <a href="https://www.ox.ac.uk/soundsofthebodleian/#radcam">图书馆白噪音</a>
Gui, Pandora:Add, Link,, <a href="https://mynoise.net/NoiseMachines/openOfficeNoiseGenerator.php">办公室白噪音</a>
Gui, Pandora:Add, Link,, <a href="https://chrome.google.com/webstore/category/extensions">Chomre商店</a>
Gui, Pandora:Add, Link,, <a href="http://www.cnplugins.com/">Chomre国内镜像商店</a>
Gui, Pandora:Add, Link,, <a href="https://jsrun.net/app/scss">scss在线转css</a>
Gui, Pandora:Add, Link,, <a href="https://es6console.com/k1yivejb/">es6console</a>


;@1

Gui, Pandora:Tab, 2
Gui, Pandora:Add, Text, gNewPureIndexHtml W140 Section y+20, 新建index.html
Gui, Pandora:Add, Text, gNewPureIndexHtml2 W140 , 新建纯index.html
Gui, Pandora:Add, Text, gvueecharts W140 , 新建纯v-chart.html
Gui, Pandora:Add, Text, gNewcomposition W160 , 新建vue-composition.html
Gui, Pandora:Add, Text, gNewPureIndexHtmltable W140 , 新建table.html
Gui, Pandora:Add, Text, gNewVueRules W140 , 新建vue.rules.html

Gui, Pandora:Add, Text, ganimjquery W160,新建animate.css与jquery
Gui, Pandora:Add, Text, gNewnorepeataxiosHtml W160,新建去重复axios.html
Gui, Pandora:Add, Text, gNewnorepeatajaxsHtml W160,新建去重复ajax.html
Gui, Pandora:Add, Text, gNewAxiosIndexHtml W140,新建axios.html
Gui, Pandora:Add, Text, gajaxuploadhtml W160,新建ajax图片上传.html
Gui, Pandora:Add, Text, gvueDeepSethtml W180, vue $deepSet示例.html
Gui, Pandora:Add, Text, gvuelistenhtml W180, vue $listen示例.html
Gui, Pandora:Add, Text, gdirectivehtml W180, 新建vue-directive指令.html
Gui, Pandora:Add, Text, gzhilinghtml W180, 新建Vue指令实现拖拽.html
Gui, Pandora:Add, Text, gVueComponentHtml W140, 新建vueComponent.html
Gui, Pandora:Add, Text, gVueComponentHtml2 W140, 新建vueComponent2.html
Gui, Pandora:Add, Text, gNewIndexHtml W140, 新建vue-form.html
Gui, Pandora:Add, Text, gVueAnimateHtml W140, 新建vueAnimate.html
Gui, Pandora:Add, Text, gNewvuetransitionHtml W160,新建vue-transition.html
Gui, Pandora:Add, Text, gNewvuetransitiongroupHtml W180,新建vue-transition-group列表
Gui, Pandora:Add, Text, gcsspinyinHtml W180,css正则匹配选择器实现拼音搜索



Gui, Pandora:Add, Text, gNewautoscrollHtml W140 ys x+20 ,新建autoscroll.html
Gui, Pandora:Add, Text, gNewscrollforeveryHtml W160,新建scrollforevery.html
Gui, Pandora:Add, Text, gscrollTextHtml W160,新建scrollText.html
Gui, Pandora:Add, Text, gWaterhtml W160,新建水球波纹带进度条
Gui, Pandora:Add, Text, gxuanliyanhua W160,新建点击绚丽烟花效果.html
Gui, Pandora:Add, Text, gmaoboli W160,新建毛玻璃.html
Gui, Pandora:Add, Text, gwangyejindutiao W160,新建网页进度条.html
Gui, Pandora:Add, Text, gemphhtml W160,新建更新提示波动图.html
Gui, Pandora:Add, Text, gautowidth W160,新建input动态宽度.html
Gui, Pandora:Add, Text, ghuxihtml W160, 新建呼吸变色棱角空间.html
Gui, Pandora:Add, Text, ghuehtml W160, 新建hue-rotate.html
Gui, Pandora:Add, Text, glocalForagehtml W180, 新建localForage缓存示例.html
Gui, Pandora:Add, Text, gquickbianimhtml W180, 新建quickbi的过场动画.html
Gui, Pandora:Add, Text, gcssbodongsandian W180, 新建css波动散点.html
Gui, Pandora:Add, Text, ginputyanhua W140,新建input烟花特效
Gui, Pandora:Add, Text, grandcolorHtml W160,新建随机渐变色.html
Gui, Pandora:Add, Text, ghackdiguo  W140,黑客帝国
Gui, Pandora:Add, Text, gxiexiangougudingli  W140,斜线与勾股定理
Gui, Pandora:Add, Text, gyoujiancaidanxinjian  W140,新建拦截右键菜单
Gui, Pandora:Add, Text, gdomshengyin W180,只要 dom 改变就会发出声音


Gui, Pandora:Add, Text, gNewEchartDemoHtml ys x+50,新建.echartsDemo.html（官方demo）
Gui, Pandora:Add, Text, gNewEchartsPinHtml, 新建.pin.html(玫瑰饼图)
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
Gui, Pandora:Add, Text, gsandianchart W180, 新建.Scatter.html（散点图）
Gui, Pandora:Add, Text, gyibiaopan W180, 新建.仪表盘刻度.html
Gui, Pandora:Add, Text, gdataSetBar W190, 新建.dataSet.html（柱状图）
Gui, Pandora:Add, Text, gdataSetBar2 W190, 新建.dataSet2.html（双柱状图）
Gui, Pandora:Add, Text, gfunnelhtml W190, 新建.funnel.html（漏斗图）
Gui, Pandora:Add, Text, gdatasetfunnel W210, 新建.datasetfunnel.html（漏斗图）
Gui, Pandora:Add, Text, gechartsleidatu W160, echarts雷达图.html
Gui, Pandora:Add, Text, gechartciyunHTML W160, echarts词云黑科技.html


Gui, Pandora:Add, Text, gNodeHttp W140 ys x+80, 新建nodejs http
Gui, Pandora:Add, Text, gNewNodePachong W140, 新建nodejs爬虫模板
Gui, Pandora:Add, Text, gNewNodegbkPachong W200, 新建nodejs(gbk/gb2312)爬虫模板
Gui, Pandora:Add, Text, gNewNodefengzhuangPachong W200, 新建nodejs(封装版)爬虫模板
Gui, Pandora:Add, Text, gNewPyhtonPachong W140, 新建python爬虫模板
Gui, Pandora:Add, Text, gNewNodejsSequelize W190, 新建nodejs-sequelize-mysql模板
Gui, Pandora:Add, Text, gNewNodejsRenamechName W190, 新建nodejs批量改名中文模板
Gui, Pandora:Add, Text, gNewgdmapHtml W160,新建高德地图天气测试.html
Gui, Pandora:Add, Text, gdgmap3Dhtml W160, 新建高德地图3D倾斜.html
Gui, Pandora:Add, Text, gdgmap3DhtmlWMTS W160, 新建高德地图WMTS.html
Gui, Pandora:Add, Text, gdgmap3DZOOMhtml W160, 新建高德地图监听ZOOM.html
Gui, Pandora:Add, Text, gtiandituhtml ,新建天地图.html
Gui, Pandora:Add, Text, gtianditujuhetuhtml ,新建天地图聚合图.html
Gui, Pandora:Add, Text, gmapVbaiduhtml W160, 新建百度地图 + mapV.html
Gui, Pandora:Add, Text, gechartsZGDT W180, echarts中国地图（下沉）.html
Gui, Pandora:Add, Text, gechartsZGDTchun W180, echarts中国地图（纯）.html
Gui, Pandora:Add, Text, gechartsqipaodongtai W180, echarts 气泡动态大小.html


Gui, Pandora:Add, Text, gcsssearchtml W160 ys x+60, 新建简单CSS也能做搜索.html
Gui, Pandora:Add, Text, gskeletonHtml W140,新建骨骼图.skeleton
Gui, Pandora:Add, Text, gcssskeletonHtml W140,新建css骨骼图.skeleton
Gui, Pandora:Add, Text, gdropdivhtml W160, 新建拖动DIV元素.html
Gui, Pandora:Add, Text, gscriptzhuruhtml W180, 新建书签栏脚本注入.html
Gui, Pandora:Add, Text, gxiexianhtml W180, 新建勾股定理画斜线.html
Gui, Pandora:Add, Text, gNewuploadHtml W160,新建读取本地目录/文件内容
Gui, Pandora:Add, Text, gNewlshtml W160,新建读取本地目录列表
Gui, Pandora:Add, Text, ghtml2mdhtml W160,新建HTML2Markdown
Gui, Pandora:Add, Text, gwebidehtml W160,新建在线编辑器webide
Gui, Pandora:Add, Text, gprismhtml W160,prism代码高亮.html
Gui, Pandora:Add, Text, gdom2imghtml W160,网页截图dom-to-image.html
Gui, Pandora:Add, Text, gliveHtml W160,新建调用摄像头.html
Gui, Pandora:Add, Text, grightmenuhtml W160, 新建右键菜单拦截.html
Gui, Pandora:Add, Text, gworkerhtml W180, 新建worker.js.html
Gui, Pandora:Add, Text, gNewCanvasHtml W140,新建Canvas.html
Gui, Pandora:Add, Text, gNewAsyncassertHtml W160,新建assert.html
Gui, Pandora:Add, Text, gvideohtml W160, 新建video视频.html
Gui, Pandora:Add, Text, gdialogHTML W140,新建HTML5.2 Dialog
Gui, Pandora:Add, Text, gwebsocketHTML W140,新建WebSocket
Gui, Pandora:Add, Text, gsocketHtml W160,新建socket.html
Gui, Pandora:Add, Text, gEventSource W160,EventSource（类socket）.html


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

Gui, Pandora:Add, Text,  W160 ys, 12345大数据屏（vue）
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/frontEnd/dg12345-plus">新的 gitlab 地址</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/12345Platform/12345Platform/tree/master/DOC/">新的 UI gitlab 地址</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/12345Platform/12345Platform/boards">敏捷看板</a>
Gui, Pandora:Add, Link,, <a href="http://12345v2.alltosea.com:6080/api/sg/redis/cleanDefault">清空缓存</a>
Gui, Pandora:Add, Link,, <a href="http://12345admin.dgdatav.com:6080/#">admin</a>

Gui, Pandora:Add, Text,  W120 ys, 12345预览地址：
Gui, Pandora:Add, Link,, <a href="http://12345.alltosea.com:6080/#/overallSituation">v0</a>
Gui, Pandora:Add, Link,, <a href="http://12345v1.dgdatav.com:6080/#/dg/overallSituation">v1</a>
Gui, Pandora:Add, Link,, <a href="http://12345v2.alltosea.com:6080/#/">v2</a>
Gui, Pandora:Add, Link,, <a href="http://12345v3.dgdatav.com:6080/">v3</a>

Gui, Pandora:Add, Text,  W140 ys, 知识库
Gui, Pandora:Add, Link,, <a href="https://confluence.alltosea.com/dashboard.action#all-updates">confluence</a>
Gui, Pandora:Add, Link,, <a href="https://confluence.alltosea.com/pages/viewpage.action?pageId=1310755">confluence2</a>
Gui, Pandora:Add, Link,, <a href="https://hui.dgjy.net">门户网站</a>

Gui, Pandora:Add, Text,  W120 ys, hz-12345：
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/frontEnd/hz-12345">hz-12345 源码</a>
Gui, Pandora:Add, Link,, <a href="http://219.135.182.2:6083/#/dg/Index">预览地址</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/12345Platform/big-bcreen/boards">敏捷看板</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/12345Platform/12345Platform/blob/master/DOC/东莞市社会治理可视化分析平台/05UIUE文档/大屏UI/">UI资源</a>
Gui, Pandora:Add, Link,, <a href="http://19.104.40.37:8084/">内网预览地址</a>


Gui, Pandora:Add, Text,  W140 xs Section yp+150, 数据中心
Gui, Pandora:Add, Link,, <a href="http://datacenter.dgdatav.com:6080/">预览地址</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/DateCenter/vue-datacenter">源码gitlab</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/DateCenter/datacenter">原型gitlab</a>
Gui, Pandora:Add, Link,, <a href="https://docs.qq.com/sheet/DUXBCem1Kd2dQdkNi?opendocxfrom=admin&tdsourcetag=s_pctim_aiomsg&ADUIN=928532756&ADSESSION=1555287968&ADTAG=CLIENT.QQ.5603_.0&ADPUBNO=26882&tab=BB08J2">腾讯文档</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/groups/DateCenter/-/boards">测试敏捷看板</a>
Gui, Pandora:Add, Link,, <a href="http://dc.dgjy.net:8080/">Jenkins</a>

Gui, Pandora:Add, Text,  W140 ys, 东莞课外教育网（nuxt）
Gui, Pandora:Add, Link,, <a href="http://47.106.185.185:3000/chuanghui-edu/extra-edu">extra-edu git</a>
Gui, Pandora:Add, Link,, <a href="http://kw.dgjy.net">extra-edu 线上</a>



Gui, Pandora:Add, Text,  W140 ys xp+160, 私服仓库Nexus
Gui, Pandora:Add, Link,, <a href="https://nexus.alltosea.com/">公司的Nexus</a>
Gui, Pandora:Add, Link,, <a href="https://www.cnblogs.com/xueyoucd/p/9538126.html">搭建 npm 私服教程</a>
Gui, Pandora:Add, Link,, <a href="https://www.sonatype.com/nexus-repository-oss">官方网站</a>

Gui, Pandora:Add, Text,  W140 ys xp+160, 东莞疫情
Gui, Pandora:Add, Link,, <a href="http://fangyqgk.dg.cn/h5/#/Index">正式地址</a>
Gui, Pandora:Add, Link,, <a href="http://219.135.182.3:30021/h5/#/index">预览地址</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/lizhaohong/epidemich5">gitlab地址</a>
Gui, Pandora:Add, Link,, <a href="http://219.135.182.3:30020/doc.html#/default/举报信息表/add_5">Swagger</a>
Gui, Pandora:Add, Link,, <a href="http://219.135.182.3:30022/doc.html#/default/%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86/login">登陆接口文档</a>

Gui, Pandora:Add, Link,, <a href="https://lanhuhu.com/web/#/item/project/board/detail?pid=be48ee3e-ad31-43a0-be0c-5fe1a760cf8f&project_id=be48ee3e-ad31-43a0-be0c-5fe1a760cf8f&image_id=71b685be-867b-497a-b7e3-7aa72640f950">蓝湖</a>
Gui, Pandora:Add, Link,, <a href="https://lanhuapp.com/web/#/item/project/board/detail?pid=cb5dae81-83e7-4acb-8f7e-cfef14dddf7e&see=all&project_id=cb5dae81-83e7-4acb-8f7e-cfef14dddf7e&image_id=f7c27c58-44db-4d18-9494-cd76b5c96ba9">蓝狐领导版</a>


Gui, Pandora:Add, Text,  W140 ys xp+160, 统一门户网站
Gui, Pandora:Add, Link,, <a href="http://dotnet.alltosea.com:6012/portalui/">入口</a>
Gui, Pandora:Add, Link,, <a href="http://dotnet.alltosea.com:6012/portalapi/doc.html">API文档</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/unifiedfabric/dgjy/portalui/tree/newdev/vue-education/src">代码地址</a>

Gui, Pandora:Add, Text,  W140 ys xp+160, visual可视化
Gui, Pandora:Add, Link,, <a href="http://219.135.182.2:6181/datatransferweb/login">预览地址</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/dg-ioc/ioc-visual">源码地址</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/dg-ioc/ioc-visual/issues">issue</a>
Gui, Pandora:Add, Link,, <a href="https://axhub.im/pro/0259ef6c97abade0/#g=1&p=数据可视化大屏">原型</a>
Gui, Pandora:Add, Link,, <a href="https://lanhuapp.com/url/kIBor-gQrv3">可视化蓝湖</a>
Gui, Pandora:Add, Link,, <a href="https://lanhuapp.com/url/hjf31-04pmy">bi个性化报表蓝湖</a>
Gui, Pandora:Add, Link,, <a href="http://183.6.55.26:31088/doc.html">Swagger</a>


Gui, Pandora:Add, Text,  W140 ys xp+160, 城管
Gui, Pandora:Add, Link,, <a href="http://219.135.182.3:32201/#/Index">预览地址</a>
Gui, Pandora:Add, Link,, <a href="https://master.alltosea.com:8443/console/project/nhc-visual/browse/builds/citymanagement-ui?tab=history">部署地址</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/lizhaohong/citymanagement">代码地址</a>
Gui, Pandora:Add, Link,, <a href="http://219.135.182.3:32202/project/11/interface/api">yAPI</a>
Gui, Pandora:Add, Link,, <a href="https://shimo.im/sheets/TCjR8jdTwwwYKjtY/MODOC/">需求文档</a>
Gui, Pandora:Add, Link,, <a href="https://shimo.im/docs/bab1e94724614258/read">接口文档</a>
Gui, Pandora:Add, Link,, <a href="http://git.smart-info.cn:8999/visual/citymanagement.git">新城管源码</a>


; @gs
Gui, Pandora:Tab, 4

Gui, Pandora:Add, Text, W140 Section, Nodejs:
Gui, Pandora:Add, Link,, <a href="https://nodejs.org/en/">Nodejs 官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/sindresorhus/awesome-nodejs">awesome-nodejs</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/nodejs/node">Nodejs github</a>
Gui, Pandora:Add, Link,, <a href="https://nodejs.org/dist/latest-v11.x/docs/api/">Nodejs API</a>

Gui, Pandora:Add, Text, W140 ys, koajs：
Gui, Pandora:Add, Link,, <a href="https://github.com/koajs">koajs-github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/koajs/jwt">koajs-jwt</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/koajs/bodyparser">koajs-bodyparser</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/koajs/koa/wiki">所有koa插件</a>


Gui, Pandora:Add, Text, W160 ys, electron：
Gui, Pandora:Add, Link,, <a href="https://github.com/electron/electron-api-demos">electron-api-demos</a>
Gui, Pandora:Add, Link,, <a href="https://electronjs.org/">electron 官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/electron">electron github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/electron/electron-quick-start">electron-quick-start</a>
Gui, Pandora:Add, Link,, <a href="https://electronjs.org/docs/api/client-request">electron-api文档</a>

Gui, Pandora:Add, Text,  W160 ys, nest:
Gui, Pandora:Add, Link,, <a href="https://github.com/nestjs/nest">nestjs github</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/juliandavidmr/awesome-nestjs">awesome-nestjs</a>
Gui, Pandora:Add, Link,, <a href="https://www.bilibili.com/video/av68935258">nestjs大地教程</a>


Gui, Pandora:Add, Text, W160 ys, nodejs cms：
Gui, Pandora:Add, Link,, <a href="https://www.awesomes.cn/repos/NodeJS/CMS">NodeJS/CMS</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/netlify/netlify-cms">netlify-cms</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/doramart/DoraCMS">（推荐）DoraCMS</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/dragon8github/awesome-javascript#node-powered-cms-frameworks">（推荐）powered-cms</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/NodeBB/NodeBB">NodeBB</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/apostrophecms/apostrophe">apostrophe</a>


Gui, Pandora:Add, Text, W140 ys, typescript:
Gui, Pandora:Add, Link,, <a href="http://www.typescriptlang.org/docs/home.html">typescript official</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/jkchao/typescript-book-chinese">深入理解 TypeScript</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/dzharii/awesome-typescript">typescript awesome</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/bitjson/typescript-starter">typescript-starter</a>

Gui, Pandora:Add, Link, W450 Section xs yp+120, <a href="https://github.com/KyleAMathews/deepmerge">对象深度合并，单纯的使用Object.assign会导致覆盖：deepmerge</a>
Gui, Pandora:Add, Link, ys, <a href="https://github.com/SBoudrias/Inquirer.js">命令行问答交互神器，比Commander更简洁专注问答：inquirer</a>

Gui, Pandora:Add, Link, W450 Section xs yp+30, <a href="https://github.com/KyleAMathews/deepmerge">一次性执行多个npm script：npm-run-all</a>
Gui, Pandora:Add, Link, ys, <a href="https://github.com/request/request">元老级别的nodejs请求库，但现在推荐axios：request</a>

Gui, Pandora:Add, Link, W450 Section xs yp+30, <a href="https://github.com/sindresorhus/globby">使用正则表达式规则匹配目录和文件：globby</a>
Gui, Pandora:Add, Link, ys, <a href="https://github.com/hapijs/joi">最强大的验证库：joi</a>

Gui, Pandora:Add, Link, W450 Section xs yp+30, <a href="https://github.com/isaacs/minimatch">更简单的正则表达式match匹配库：minimatch</a>
Gui, Pandora:Add, Link, ys, <a href="https://github.com/sindresorhus/execa">更好的 child_process 流管理，stdout，stderr，stdin：execa</a>

Gui, Pandora:Add, Link, W450 Section xs yp+30, <a href="https://github.com/KyleAMathews/deepmerge">华丽的命令行界面，值得一看，功能本身一般：node-rename-cli</a>
Gui, Pandora:Add, Link, ys, <a href="https://github.com/shelljs/shelljs">nodejs 中使用 shell bash，神器来着：shelljs</a>

Gui, Pandora:Add, Link, W450 Section xs yp+30, <a href="https://github.com/jprichardson/node-fs-extra">文件IO操作库，十分常用，比官方的好太多了：node-fs-extra</a>
Gui, Pandora:Add, Link, ys, <a href="https://github.com/nodemailer/nodemailer">nodejs email 库：nodemailer</a>

Gui, Pandora:Add, Link, W450 Section xs yp+30, <a href="https://github.com/sindresorhus/ora">命令行loading，很多库都在使用：ora</a>
Gui, Pandora:Add, Link, ys, <a href="https://github.com/wiredjs/wired-elements">手绘的线框或有趣的外观，非常好玩：wired-elements</a>	

Gui, Pandora:Add, Link, W450 Section xs yp+30, <a href="https://github.com/isaacs/rimraf">rm -rf 命令的nodejs版本，其实就是删除文件：rimraf</a>
Gui, Pandora:Add, Link, ys, <a href="https://github.com/olistic/warriorjs">圣剑！一个JavaScript逻辑游戏：warriorjs</a>

Gui, Pandora:Add, Link, W450 Section xs yp+30, <a href="https://github.com/substack/node-mkdirp">创建文件夹：node-mkdirp</a>
Gui, Pandora:Add, Link, ys, <a href="https://github.com/sindresorhus/open">打开默认浏览器：open</a>

Gui, Pandora:Add, Link, W450 Section xs yp+30, <a href="https://github.com/kentcdodds/cross-env">设置环境变量的库，很常用很实用：cross-env</a>
Gui, Pandora:Add, Link, ys, <a href="https://github.com/remy/nodemon">自动重启nodejs的神器，很常用很实用，开发nodejs必备：nodemon</a>

;@nodejs @node

Gui, Pandora:Tab, 5
Gui, Pandora:Add, Text,  W140 Section, Vue：
Gui, Pandora:Add, Link,, <a href="https://cn.vuejs.org/">vue</a>
Gui, Pandora:Add, Link,, <a href="http://vuex.vuejs.org">vuex</a>
Gui, Pandora:Add, Link,, <a href="http://router.vuejs.org ">vue-router</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/opendigg/awesome-github-vue">vue-awesome</a>
Gui, Pandora:Add, Link,, <a href="https://cli.vuejs.org/">vue-cli</a>
Gui, Pandora:Add, Link,, <a href="https://cli.vuejs.org/config/#devserver-proxy">vue-config 文档</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/vuejs/vuepress">vuepress</a>
Gui, Pandora:Add, Link,, <a href="https://vue-test-utils.vuejs.org/zh/">vue-test-utils</a>
Gui, Pandora:Add, Link,, <a href="https://vue-composition-api-rfc.netlify.app/api.html#setup">vue composition API</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/kefranabg/awesome-vue-composition-api">vue-awesome composition</a>

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
Gui, Pandora:Add, Link,, <a href="https://github.com/kirillmurashov/vue-drag-resize">vue-drag-resize</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/SortableJS/Vue.Draggable">拖拽Vue.Draggable</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/jbaysolutions/vue-grid-layout">bi拖拽神器vue-grid-layout</a>

Gui, Pandora:Add, Text,  W160 ys, vue-ant-design
Gui, Pandora:Add, Link,, <a href="https://github.com/vueComponent/ant-design-vue">github</a>
Gui, Pandora:Add, Link,, <a href="https://vue.ant.design/docs/vue/introduce/">docs</a>

Gui, Pandora:Add, Text, W140 Section xs yp+300, vue动画钩子：
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

Gui, Pandora:Add, Text, W140 ys, 强大的周边：
Gui, Pandora:Add, Link,, <a href="https://cssfx.dev/">（神器）效果大全：cssfx</a>

Gui, Pandora:Add, Text, W140 ys, 移动端UI框架：
Gui, Pandora:Add, Link,, <a href="https://youzan.github.io/vant/#/zh-CN/button">有赞的Vant</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/jdf2e/nutui">nutui</a>

Gui, Pandora:Add, Text, W140 ys, CMS内容管理系统：
Gui, Pandora:Add, Link,, <a href="http://doc.cms.7yue.pro/lin/start/koa/frontend-demo.html#%E5%BB%BA%E7%AB%8B%E9%A1%B5%E9%9D%A2">基于Vue和koa</a>



;@vue

;@react
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

Gui, Pandora:Add, Text,  W160 ys, ReactNative：
Gui, Pandora:Add, Link,, <a href="https://github.com/facebook/react-native">react-native github</a>
Gui, Pandora:Add, Link,, <a href="https://facebook.github.io/react-native/">react-native 官网</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/enaqx/awesome-react#react-native">awesome-react-native</a>
Gui, Pandora:Add, Link,, <a href="https://mp.weixin.qq.com/s/7yy5wFbEet30EcOwxDOWVA">react-native 开源项目</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/enaqx/awesome-react#react-native-sample-apps">react-native 开源项目2</a>
Gui, Pandora:Add, Link,, <a href="https://facebook.github.io/react-native/docs/components-and-apis">Components and APIs</a>



Gui, Pandora:Add, Text,  W140  Section xs yp+60, taro:
Gui, Pandora:Add, Link,, <a href="https://github.com/NervJS/taro">taro github</a>
Gui, Pandora:Add, Link,, <a href="https://taro.jd.com/">taro 官网</a>
Gui, Pandora:Add, Link,, <a href="https://taro-docs.jd.com/taro/docs/README.html">taro docs</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/NervJS/awesome-taro">awesome-taro</a>
Gui, Pandora:Add, Link,, <a href="https://aotu.io/search/?query=taro">凹凸实验室 - taro专题</a>



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


Gui, Pandora:Add, Text,  W140 ys, storybook：
Gui, Pandora:Add, Link,, <a href="https://github.com/storybookjs/storybook">storybook github</a>
Gui, Pandora:Add, Link,, <a href="https://storybook.js.org/docs/guides/guide-vue/">guide-vue</a>
Gui, Pandora:Add, Link,, <a href="https://storybook.js.org/docs/configurations/custom-webpack-config/">webpack-config</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/lauthieb/awesome-storybook">awesome-storybook</a>
Gui, Pandora:Add, Link,, <a href="https://storybook.js.org/docs/addons/addon-gallery/">插件大全</a>
Gui, Pandora:Add, Link,, <a href="https://storybooks-official.netlify.com/?path=/story/ui-panel--default">demo-1</a>
Gui, Pandora:Add, Link,, <a href="https://axaguildev.github.io/react-toolkit/v1.1.0/storybook/?selectedKind=Form.Demo`%20Statefull&selectedStory=Form%20with%20recompose&full=0&addons=1&stories=1&panelRight=1&addonPanel=storybook%2Factions%2Factions-panel">demo-2</a>



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
Gui, Pandora:Add, Link,, <a href="https://github.com/avajs/ava-docs/blob/master/zh_CN/readme.md">ava 中文文档</a>

Gui, Pandora:Add, Text, W140 ys, 团队工具：
Gui, Pandora:Add, Link,, <a href="https://www.atlassian.com/software/confluence">confluence知识库</a>


Gui, Pandora:Add, Text, W140 ys, jointjs流程图
Gui, Pandora:Add, Link,, <a href="https://github.com/clientIO/joint">jointjs github</a>
Gui, Pandora:Add, Link,, <a href="http://resources.jointjs.com/docs/jointjs/v2.2/joint.html">jointjs api</a>
Gui, Pandora:Add, Link,, <a href="http://resources.jointjs.com/demos">jointjs demo大全</a>
Gui, Pandora:Add, Link,, <a href="http://resources.jointjs.com/tutorial">jointjs 入门指引</a>


Gui, Pandora:Add, Text, W120 ys, 最强验证库joi
Gui, Pandora:Add, Link,, <a href="https://github.com/hapijs/joi">hapijs joi</a>

Gui, Pandora:Add, Text,  W120 yp+50, 明星验证库validator
Gui, Pandora:Add, Link,, <a href="https://github.com/chriso/validator.js">validator.js</a>


Gui, Pandora:Add, Text, W140 ys, 数字上下滚动插件：
Gui, Pandora:Add, Link,, <a href="https://github.hubspot.com/odometer/docs/welcome/">odometer（已废弃）</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/gitWhatever/vue-digitroll">vue-digitroll</a>


Gui, Pandora:Add, Text,  W140 yp+50, 超好看拖拽上传：
Gui, Pandora:Add, Link,, <a href="https://github.com/pqina/filepond">filepond</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/ThalKod/DropIt">DropIt</a>

Gui, Pandora:Add, Text, W140 Section xs yp+100, 响应式导航：
Gui, Pandora:Add, Link,, <a href="https://github.com/viljamis/responsive-nav.js">responsive-nav</a>

Gui, Pandora:Add, Text, W140 yp+50, stickUp黏住固定：
Gui, Pandora:Add, Link,, <a href="https://github.com/LiranCohen/stickUp">stickUp</a>

Gui, Pandora:Add, Text, W140 yp+50, clone-deep：
Gui, Pandora:Add, Link,, <a href="https://github.com/jonschlinkert/clone-deep/blob/master/index.js">clone-deep</a>


Gui, Pandora:Add, Text,  W120 yp+50, 本地存储：
Gui, Pandora:Add, Link,, <a href="https://github.com/localForage/localForage">localForage</a>

Gui, Pandora:Add, Text, W140 ys, 拖拽：
Gui, Pandora:Add, Link,, <a href="https://ilyashubin.github.io/scrollbooster/">table拖动js</a>
Gui, Pandora:Add, Link,, <a href="https://sortablejs.github.io/Sortable/">列表拖拽js</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/bevacqua/dragula">拖拽神器dragula</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/SortableJS/Vue.Draggable">拖拽Vue.Draggable</a>
Gui, Pandora:Add, Link,, <a href="https://vuegg.now.sh/">vuegg</a>


Gui, Pandora:Add, Text,  W120 yp+50, 模板引擎：
Gui, Pandora:Add, Link,, <a href="https://aui.github.io/art-template/zh-cn/docs/">art-template</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/tj/ejs">ejs</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/pugjs/pug">pug</a>


Gui, Pandora:Add, Text, W120 ys, 录制js：
Gui, Pandora:Add, Link,, <a href="https://www.rrweb.io/replay">录制和回放</a>
Gui, Pandora:Add, Link,, <a href="https://scrimba.com/p/pV5eHk/c9EqQSD">录制灵感来源</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/yaronn/GifW00t">纯js实现录屏</a>

Gui, Pandora:Add, Text, W140 yp+50, 截屏HTML2CANVAS：
Gui, Pandora:Add, Link,, <a href="https://html2canvas.hertzen.com/">html2canvas.js</a>

Gui, Pandora:Add, Text, W140 yp+50, Element Resize 事件：
Gui, Pandora:Add, Link,, <a href="https://github.com/Justineo/resize-detector">resize-detector</a>
 
Gui, Pandora:Add, Text, W140 ys, 最强MP3播放器APlayer
Gui, Pandora:Add, Link,, <a href="https://github.com/MoePlayer/APlayer">Aplay github</a>

Gui, Pandora:Add, Text, W140 yp+50, bilibili开源播放器：
Gui, Pandora:Add, Link,, <a href="https://github.com/Bilibili/flv.js">flv.js</a>

Gui, Pandora:Add, Text, W140 yp+50, jsdiff数据对比神器：
Gui, Pandora:Add, Link,, <a href="https://github.com/kpdecker/jsdiff">jsdiff.js</a>


Gui, Pandora:Add, Text, W140 ys xp+160, 有趣有趣：
Gui, Pandora:Add, Link,, <a href="https://github.com/e-oj/Magic-Grid">新瀑布流 Magic-Grid</a>

Gui, Pandora:Add, Text, W140 yp+60, 几乎实现所有轮播：slick
Gui, Pandora:Add, Link,, <a href="http://kenwheeler.github.io/slick/">slick</a>

Gui, Pandora:Add, Text, W140 ys xp+180, 文档神器docsify：
Gui, Pandora:Add, Link,, <a href="https://github.com/docsifyjs/docsify">docsify</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/docsifyjs/awesome-docsify">awesome-docsify</a>

Gui, Pandora:Add, Text, W140 yp+50, 文档神器 docz：
Gui, Pandora:Add, Link,, <a href="https://github.com/pedronauck/docz">docz</a>

Gui, Pandora:Add, Text, W140 yp+50, FaceBook 文档工具：
Gui, Pandora:Add, Link,, <a href="https://github.com/facebook/docusaurus">docusaurus</a>
Gui, Pandora:Add, Link,, <a href="https://romejs.dev/docs/introduction/installation/">示例 roma document</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/facebookexperimental/rome/blob/master/website/docusaurus.config.js">roma document souce</a>

Gui, Pandora:Add, Text, W140 ys xp+150, 简易HTTP：
Gui, Pandora:Add, Link,, <a href="https://github.com/tapio/live-server">live-server</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/JacksonTian/anywhere">anywhere</a>

Gui, Pandora:Add, Text, W140 yp+50, 模型live2D：
Gui, Pandora:Add, Link,, <a href="https://imjad.cn/archives/lab/add-dynamic-poster-girl-with-live2d-to-your-blog-02">教程博客</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/journey-ad/live2d_src">github</a>
Gui, Pandora:Add, Link,, <a href="https://l2dwidget.js.org/docs/index.html">文档</a>


; @qimiao @qm @ku

; @map @ditu

Gui, Pandora:Tab, 9
Gui, Pandora:Add, Text, W140 Section, 高德地图：
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/summary">高德地图-JavaScript</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/example/personalized-map/map-showlabel">高德地图-Demo</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/reference/core">高德地图-API</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/demo-center/amap-ui">高德地图-轨迹图</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/guide/map/3d-map">高德地图-3D地图</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/guide/services/weather/?sug_index=0">高德地图-天气预报</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/example/thirdlayer/wmts">高德地图-WMTS</a>
Gui, Pandora:Add, Link,, <a href="https://lbs.amap.com/api/javascript-api/example/selflayer/heatmap">高德地图-热力图</a>



Gui, Pandora:Add, Text,  W140 ys, 百度地图：
Gui, Pandora:Add, Link,, <a href="http://lbsyun.baidu.com/cms/jsapi/reference/jsapi_reference_3_0.html#a3b0">百度地图-API</a>
Gui, Pandora:Add, Link,, <a href="http://lbsyun.baidu.com/index.php?title=jspopular3.0/openlibrary">百度地图-开源库</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/index.php?title=jspopular3.0/guide/helloworld">百度地图-快速上手</a>
Gui, Pandora:Add, Link, W140, <a href="http://bbs.lbsyun.baidu.com/forum.php?mod=viewthread&tid=137156&tdsourcetag=s_pctim_aiomsg&qq-pf-to=pcqq.temporaryc2c">百度地图-论堂</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#webgl0_0">百度地图-3D地图</a>


Gui, Pandora:Add, Text, W140 ys, 百度地图教程：
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#f0_3">地图点击事件</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c2_9">地图线面教程</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c1_11">自定义覆盖物</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c1_4">点聚合（聚合图）</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c2_5">沿线运动教程（马里奥）</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c1_16">自定义点图标（狐美人）</a>
Gui, Pandora:Add, Link, W140, <a href="http://huiyan-fe.github.io/BMap-JavaScript-library/demo/MarkerClusterer/MarkerClusterer.html">聚合图API</a>

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
Gui, Pandora:Add, Link,, <a href="http://lbsyun.baidu.com/solutions/solutions/mapvdata">mapV官方示例大全</a>


Gui, Pandora:Add, Text, W140 ys, charts.js：
Gui, Pandora:Add, Link,, <a href="https://www.chartjs.org/">charts.js 官网</a>
Gui, Pandora:Add, Link,, <a href="https://www.chartjs.org/samples/latest/">charts.js samples</a>
Gui, Pandora:Add, Link,, <a href="https://www.chartjs.org/docs/latest/">charts.js doc</a>

Gui, Pandora:Add, Text, W140 ys, arcgis：
Gui, Pandora:Add, Link,, <a href="https://developers.arcgis.com/javascript/">arcgis js官网</a>
Gui, Pandora:Add, Link,, <a href="https://developers.arcgis.com/javascript/latest/showcase/">arcgis showcase</a>
Gui, Pandora:Add, Link,, <a href="https://developers.arcgis.com/javascript/latest/api-reference/">api文档</a>
Gui, Pandora:Add, Link,, <a href="https://developers.arcgis.com/javascript/latest/guide/">入门指引</a>

; @chart echarts

Gui, Pandora:Add, Text,  W140  Section xs yp+150, echart:
Gui, Pandora:Add, Link,, <a href="http://echartsjs.com/option.html#series-map.data.itemStyle.color">echart 配置项手册</a>
Gui, Pandora:Add, Link,, <a href="http://echartsjs.com/examples/">echart 官方示例</a>
Gui, Pandora:Add, Link,, <a href="http://gallery.echartsjs.com/explore.html">ECharts 官方论坛</a>
Gui, Pandora:Add, Link,, <a href="https://www.oschina.net/translate/geojson-spec#positions">GeoJSON 格式规范</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/ecomfe/awesome-echarts">awesome-echarts</a>
Gui, Pandora:Add, Link,, <a href="https://www.echartsjs.com/zh/option.html#dataset">echart dataset API</a>
Gui, Pandora:Add, Link,, <a href="https://www.echartsjs.com/zh/tutorial.html#%E4%BD%BF%E7%94%A8%20dataset%20%E7%AE%A1%E7%90%86%E6%95%B0%E6%8D%AE">echart dataset 教程</a>
Gui, Pandora:Add, Link,, <a href="https://www.echartsjs.com/examples/zh/index.html#chart-type-dataset">echart dataset demo</a>


Gui, Pandora:Add, Text, W140 ys, 优秀的echarts示例:
Gui, Pandora:Add, Link, W140, <a href="https://gallery.echartsjs.com/editor.html?c=xH2DfA0Olu">幻影之舞</a>
Gui, Pandora:Add, Link,, <a href="https://gallery.echartsjs.com/editor.html?c=heatmap-map">热力图示例</a>
Gui, Pandora:Add, Link,, <a href="https://gallery.echartsjs.com/editor.html?c=xkeSbXdmhp">三角形Echarts</a>
Gui, Pandora:Add, Link,, <a href="https://gallery.echartsjs.com/editor.html?c=xSk6VBUGuG">冰山图</a>
Gui, Pandora:Add, Link,, <a href="https://gallery.echartsjs.com/editor.html?c=xpO_B8IDmq">饼图花瓣图</a>
Gui, Pandora:Add, Link,, <a href="https://www.echartsjs.com/examples/zh/editor.html?c=scatter-life-expectancy-timeline&theme=light">轮播时间轴</a>
Gui, Pandora:Add, Link,, <a href="http://gallery.echartsjs.com/editor.html?c=xSy3KhFV4M">ECharts 3D地图</a>

Gui, Pandora:Add, Text, W140 ys, highcharts:
Gui, Pandora:Add, Link,, <a href="https://github.com/highcharts/highcharts">highcharts github</a>
Gui, Pandora:Add, Link,, <a href="https://www.highcharts.com/demo/">highcharts demo</a>
Gui, Pandora:Add, Link,, <a href="https://api.highcharts.com/highcharts/">highcharts api</a>
Gui, Pandora:Add, Link,, <a href="https://www.highcharts.com/demo/pie-basic">highcharts 完美饼图</a>



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

Gui, Pandora:Add, Text, W140 ys, 天地图与国土地图:
Gui, Pandora:Add, Link, W140, <a href="http://www.tianditu.gov.cn/">天地图 官网</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbs.tianditu.gov.cn/api/js4.0/guide.html">天地图 入门指导</a>
Gui, Pandora:Add, Link, W140, <a href="http://service.tianditu.gov.cn/">服务搜索</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbs.tianditu.gov.cn/server/MapService.html">地图服务-矢量API</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbs.tianditu.gov.cn/api/js4.0/examples.html">示例中心：散点、mark</a>
Gui, Pandora:Add, Link, W140, <a href="http://lbs.tianditu.gov.cn/api/js4.0/opensource/source.html">集成D3效果</a>


; @python
Gui, Pandora:Tab, 10
Gui, Pandora:Add, Text, W140 Section, python官方：
Gui, Pandora:Add, Link, W140, <a href="https://docs.python.org/zh-cn/3.7/library/index.html">官方文档</a>

; @php
Gui, Pandora:Tab, 11
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

Gui, Pandora:Tab, 12
Gui, Pandora:Add, Text,  W140 Section, 微信小程序：
Gui, Pandora:Add, Link, W140, <a href="https://github.com/justjavac/awesome-wechat-weapp">awesome-wechat-weapp</a>
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
Gui, Pandora:Add, Link, W140, <a href="https://youzan.github.io/vant-weapp/#/datetime-picker">Vant ui</a>


Gui, Pandora:Add, Text,  W140 Section ys, 一个简单工作流：

Gui, Pandora:Add, Link, W140, <a href="https://github.com/Jeff2Ma/WeApp-Workflow">gulp4 scss 微信小程序</a>

Gui, Pandora:Tab, 13
Gui, Pandora:Add, Text,  W100 Section, 代理IP:
Gui, Pandora:Add, Link,, <a href="http://www.xicidaili.com/nn">西刺</a>
Gui, Pandora:Add, Link,, <a href="https://proxy.l337.tech/txt">l337</a>
Gui, Pandora:Add, Link,, <a href="http://www.66ip.cn/nm.html">66ip</a>

Gui, Pandora:Add, Text,  W140 ys, 目标网站:
Gui, Pandora:Add, Link,, <a href="http://guss.one/guss/register.html?code=ec19c0ca">guss</a>
Gui, Pandora:Add, Link,, <a href="http://www.51ym.me/User/Default.aspx">易码</a>
Gui, Pandora:Add, Link,, <a href="http://www.manbiwang.com/#/">满币网</a>
Gui, Pandora:Add, Link,, <a href="http://candy.dragonvein.io/frontend/web/site/signup">dragonvein</a>

Gui, Pandora:Tab, 14
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

;@css 
Gui, Pandora:Tab, 15
Gui, Pandora:Add, Text,  W140 Section, 森罗万象:
Gui, Pandora:Add, Link,, <a href="https://tailwindcss.com/">tailwindcss</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/jobbole/awesome-css-cn">awesome-css</a>
Gui, Pandora:Add, Link,, <a href="https://www.9178.work/qianduannav.html">前端导航</a>
Gui, Pandora:Add, Link,, <a href="https://www.9178.work/qianduan.html">前端导航2</a>
Gui, Pandora:Add, Link,, <a href="http://css3lib.alloyteam.com/#animation/AnimatedButtons">alloyteam css</a>
Gui, Pandora:Add, Link,, <a href="http://microjs.com/#">极简js大全：microjs</a>


Gui, Pandora:Add, Text,  W180 ys, 极简库:
Gui, Pandora:Add, Link,, <a href="https://ajusa.github.io/lit/">极简风格：lit.css</a>
Gui, Pandora:Add, Link,, <a href="https://nostalgic-css.github.io/NES.css/">马里奥风格：NES.css</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/pure-css/pure/">雅虎：pure.css</a>
Gui, Pandora:Add, Link,, <a href="https://bulma.io/">青铜王者：bulma.css</a>
Gui, Pandora:Add, Link,, <a href="https://foundation.zurb.com/">响应翘楚：foundation 6</a>
Gui, Pandora:Add, Link,, <a href="https://milligram.io">只有2k的CSS框架：milligram.css</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/kognise/water.css">简单得一逼：water.css</a>


Gui, Pandora:Add, Text,  W140 ys, css工具:
Gui, Pandora:Add, Link,, <a href="http://www.nicetool.net/app/shadow_visualization.html">css阴影生成器</a>

Gui, Pandora:Add, Text,  W140 ys, Material Design:
Gui, Pandora:Add, Link,, <a href="https://github.com/Dogfalo/">（推荐）materialize</a>
Gui, Pandora:Add, Link,, <a href="https://github.com/zdhxiong/mdui">中文版md</a>

Gui, Pandora:Add, Text,  W140 ys, 主题收录:
Gui, Pandora:Add, Link,, <a href="https://bootswatch.com">bootstrap主题收录</a>
Gui, Pandora:Add, Link,, <a href="https://jenil.github.io/bulmaswatch/">Bluma主题收录</a>


; 剪切框
Gui, Pandora:Tab, 16
Gui, Pandora:Add, Edit, vClipHistory w1020 H660 Limit199307100337
; Gui, Pandora:Add, Button, gSaveClipHistory w870 h30, 保存到桌面


/**
//////////////////////////////////////////////
初始化 Card GUI 的代码逻辑
//////////////////////////////////////////////
 */
GUI, Card:Default

; 背景颜色
Gui, Card:Color, E6FFE6

; margin 布局
Gui, Card:Margin, 10, 10

; 字体大小
Gui, Card:Font, s12, Verdana

Gui, Card:Add, Text, Section h30, Access_token:

; 获取accessToken
accessToken := getAccessToken()

; accessToken Input
Gui, Card:Add, Edit, vCardAccessToken gCardAccessTokenHandler w860 h30 ys , %accessToken%

; update
Gui, Card:Add, Button, W250 h30 gUpdateGist h30 ys, Pull Gists

; Tab 选项卡
Gui, Card:Add, Tab3, gSwitchCardTab vCardTab Section xs Choose1 w1250, 知识卡片|新增卡片

Gui, Card:Tab, 1

; 搜索框
Gui, Card:Add, Edit, vCardSearchInput gCardInputHandler W350 Limit50 Section

; 树
Gui, Card:Add, ListView, vCardTree gCardTreeSelect AltSubmit xs HScroll H530 W350, 标题|标签

global cardGistObj := {}

; 初始化树
initCard()


; update
Gui, Card:Add, Button, vCardUpdate gCardUpdateHandler w350 h30 xs , Update Snippets 📝

; delete
Gui, Card:Add, Button, vCardDelete gCardDeleteHandler w350 h30 xs , Delete Snippets ✖




; 代码容器
Gui, Card:Add, Edit, ys vCardContent w890 H650  Limit199307100337  

Gui, Card:Tab, 2

; TODO: 新增表单



/**
//////////////////////////////////////////////

//////////////////////////////////////////////
 */


OnClipboardChange("ClipChanged")

ClipChanged(Type) {
	
   ; 图片类
   if (Type == 2) {
		; 名字
		t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
		; .pandora\名字.png
		path := A_Desktop . "\.pandora\" . t . ".png"
		
		; 在桌面创建一个图片
		; createPic(path)

		; 修改为使用 WinClip 来处理
		WinClip.SaveBitmap(path, "png")
		
		; 将最新的名字加入到全局替换
		latestImageName := path
   }
	
   ; 文本类
   if (Type == 1) {
	
		b := Trim(StrReplace(Clipboard, "`r`n"))
		
		; 左键是否按紧了
		KeyIsDown := GetKeyState("LButton")
	
		
		; 我们约定只有当左键的时候才可以
		if (KeyIsDown && InStr(b, "sinaimg.cn/small") && StrLen(b) <= 100 && !InStr(b, "![](")) {
			b := "![](" . StrReplace(b, "small", "large") . ")"
			Clipboard := b
		}
		
		; 我们约定只有当左键的时候才可以
		if (KeyIsDown && InStr(b, "ax1x.com") && StrLen(b) <= 100 && !InStr(b, "![](")) {
			b := "![](" . b . ")"
			Clipboard := b
		}
		 
		; 必须复制的不是空内容但小于N，并且不是在GUI中复制的才进行储存。
		if (StrLen(b) != 0 && StrLen(b) <= 9999 && !WinActive("ahk_class AutoHotkeyGUI")) {
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
				txt := "__________________ " . title . " 【" . time . "】 " . "__________________ `r`n`r`n" . Clipboard . "`r`n`r`n`r`n`r`n"
				DIRECTORY := A_Desktop . "\.pandora"
				AttributeString := FileExist(DIRECTORY)
				; 如果没有目录，则创建
				if (AttributeString != "D") {
					FileCreateDir, % DIRECTORY
				}
				filename := DIRECTORY . "/.pandora" . A_YYYY . "" . A_MM . "" . A_DD
				FileAppend, %txt% ,  %filename%
				content := txt . OutputVar
				GuiControl, Pandora:Text, ClipHistory, %content%
			}
		}
	} 
}
