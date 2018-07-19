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

; 搜索框
Gui, Add, Edit, vSearchContent w780  Limit50 yp+60 Section xs, 
; 背景色
Gui, Color, E6FFE6
; margin 布局
Gui, Margin, 10, 10
Gui, Add, Button, gCancelSelect w780 h30 yp+30, 取消选中
; submit 按钮
Gui, Add, Button, w780 h30 Default, FUCK

Gui, Add, Tab3, w780 h400 Choose1, 常用 | 框架 | 库 
Gui, Tab, 1
Gui, Add, Text,  W140 Section xs yp+30 xp+20, 常用导航:
Gui, Add, Link,, <a href="https://github.com">github</a>
Gui, Add, Link,, <a href="https://legacy.gitbook.com">gitbook</a>
Gui, Add, Link,, <a href="https://www.cnblogs.com/cylee">博客园</a>
Gui, Add, Link,, <a href="http://e.xitu.io/">掘金前端</a>

Gui, Add, Text,  W140 ys, 其他:
Gui, Add, Link,, <a href="http://youmightnotneedjquery.com/">notjQuery</a>
Gui, Add, Link, gInspect ,  <a>安卓/Nodejs调试</a>
Gui, Add, Link,, <a href="https://wyagd001.github.io/zh-cn/docs/Tutorial.htm">AHK官网</a>
Gui, Add, Link,, <a href="http://babeljs.io/repl">Babel在线转换</a>

Gui, Add, Text,  W140 ys, 娱乐:
Gui, Add, Link,, <a href="https://www.bilibili.com/">哔哩哔哩</a>
Gui, Add, Link,, <a href="http://www.dilidili.wang/">嘀哩嘀哩</a>
Gui, Add, Link,, <a href="http://i.youku.com/u/UNTUzOTAwMzQ0">Ted魔兽</a>
Gui, Add, Link,, <a href="http://i.youku.com/u/UMzc0NzQ2NDg0">lion大帝魔兽</a>

Gui, Add, Text,  W140 ys, 代理IP:
Gui, Add, Link,, <a href="http://www.xicidaili.com/nn">西刺</a>
Gui, Add, Link,, <a href="https://proxy.l337.tech/txt">l337</a>
Gui, Add, Link,, <a href="http://www.66ip.cn/nm.html">66ip</a>

Gui, Add, Text, W140 ys, 站长工具：
Gui, Add, Link,, <a href="http://tool.oschina.net/codeformat/js">代码格式化</a>
Gui, Add, Link,, <a href="https://tool.lu/html/">代码美化</a>
Gui, Add, Link,, <a href="http://jsbeautifier.org/">jsbeautifier</a>
Gui, Add, Link,, <a href="http://tool.chinaz.com/Tools/urlencode.aspx">Urlencode/Unicode</a>

Gui, Add, Text, W140 Section xs yp+40, 在线工具：
Gui, Add, Link,, <a href="https://wx.qq.com/">微信网页版</a>
Gui, Add, Link,, <a href="http://naotu.baidu.com/home">百度脑图</a>
Gui, Add, Link,, <a href="http://www.bootcdn.cn/">bootcdn</a>
Gui, Add, Link,, <a href="http://fontawesome.dashgame.com/">fontawesome</a>

Gui, Add, Text,  W140 ys, 最近浏览:
Gui, Add, Link,, <a href="http://guss.one/guss/register.html?code=ec19c0ca">guss</a>
Gui, Add, Link,, <a href="http://www.51ym.me/User/Default.aspx">易码</a>
Gui, Add, Link,, <a href="http://www.manbiwang.com/#/">满币网</a>
Gui, Add, Link,, <a href="http://candy.dragonvein.io/frontend/web/site/signup">dragonvein</a>


Gui, Add, Text,  W140 ys, 最近学习：
Gui, Add, Link,, <a href="https://juejin.im/book/5b1e15f76fb9a01e516d14a0">react 掘金小册</a>
Gui, Add, Link,, <a href="http://huziketang.mangojuice.top/books/react/lesson1">React 小书</a>
Gui, Add, Link,, <a href="https://ant.design/docs/react/recommendation-cn">Ant-design精选插件</a>
Gui, Add, Link,, <a href="https://ant.design/components/table-cn/">Ant-design-table</a>



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

Gui, Add, Text,  W140 ys, 饿了么UI：
Gui, Add, Link,, <a href="http://element-cn.eleme.io/#/zh-CN/component/radio">Element-UI</a>
Gui, Add, Link,, <a href="https://github.com/ElemeFE/element/blob/dev/packages/">Element-github</a>
Gui, Add, Link,, <a href="http://elemefe.github.io/mint-ui/#/">mint-ui</a>
Gui, Add, Link,, <a href="https://github.com/ElemeFE/mint-ui/blob/master/packages/radio/src/radio.vue">mint-ui-github</a>

Gui, Add, Text,  W140 ys, Ant-Design:
Gui, Add, Link,, <a href="https://github.com/ant-design/ant-design/">Ant-Design-Github</a>
Gui, Add, Link,, <a href="https://ant.design/docs/react/introduce-cn">Ant-Design 文档</a>
Gui, Add, Link,, <a href="https://github.com/ant-design/ant-design-pro/">Ant-Design 示例项目</a>
Gui, Add, Link,, <a href="http://47.106.185.185:3000/heziyou/demo-all-antdesign">投标演示工程</a>

Gui, Add, Text,  W140 ys, DvaJS:
Gui, Add, Link,, <a href="https://github.com/dvajs/dva">DvaJS-Github</a>
Gui, Add, Link,, <a href="https://dvajs.com/guide/">DvaJS 入门指引</a>
Gui, Add, Link,, <a href="https://dvajs.com/guide/">DvaJS API</a>
Gui, Add, Link,, <a href="https://dvajs.com/guide/examples-and-boilerplates.html#官方">DvaJS Demo</a>

Gui, Add, Text,  W140 Section xs yp+40, React：
Gui, Add, Link,, <a href="https://reactjs.org/docs/hello-world.html">react 官网</a>
Gui, Add, Link,, <a href="https://reacttraining.com/react-router/web/api/Route/component">React-router</a>
Gui, Add, Link,, <a href="https://redux.js.org/basics/usage-with-react">React-redux</a>

Gui, Add, Text,  W140 ys, puppeteer：
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer?utm_source=gold_browser_extension">puppeteer 官网</a>
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md">puppeteer API</a>
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer">puppeteer-Github</a>
Gui, Add, Link,, <a href="https://github.com/GoogleChrome/puppeteer/tree/master/examples/">puppeteer-示例</a>


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
Gui, Add, Text, W140 ys,
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/index.php?title=jspopular3.0/guide/helloworld">百度地图-快速上手</a>
Gui, Add, Link, W140, <a href="http://api.map.baidu.com/lbsapi/getpoint/">拾取坐标系统</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#k0_2">主题定制</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/custom/">地图皮肤制作</a>
Gui, Add, Text, W140 ys,
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c1_16">设置点的新图标</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c2_9">百度线面教程</a>
Gui, Add, Link, W140, <a href="http://lbsyun.baidu.com/jsdemo.htm#c2_5">沿线运动教程（马里奥）</a>

return

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
return