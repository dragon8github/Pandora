::#app::
Var = 
(
<div id="app"></div>
)
code(Var)
Send, {left 6}
return

::a::
	SendRaw, <a href="http://www.baidu.com" target='_blank'>百度一下</a>
return

::html`:5::
Var = 
(
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Document</title>
</head>
<style>
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

::table-cell::
Var = 
(
/**
 * 父元素，table-cell兼容到IE8
 *
 * 缺点1：margin属性会失效（但子元素不影响），因为margin不适用于表格布局。
 * 解决1：再外层多套一个div容器，然后对这个容器display:block;margin: 0 auto;即可
 *
 * 缺点2：使用display: table-cell;的元素设置宽高百分比的时候将不起作用，譬如想设置为外层的100`%宽度
 * 解决2：如果只是想随着外层的100`%，还是有方法的，那就是设置一个很大的值，如3000px
 *
 * 缺点3：当元素设置为position: absolute;的时候会失效。
 * 解决3：参考解决1，在外层套一个容器,将absolute作用于该容器即可。
 *       但这样一来，又会导致缺点2的问题，也就是宽高百分比失效。所以要看场景使用。
 *       实在不行可以使用:
 		 position: relative;
		 top: 50`%;
		 transform: translateY(-50`%);  
         加上-webkit-前缀后，兼容性可以达到IE9。
         也可以采用margin-top: 负元素的高度。但需要知道高度，无法根据内容长度自适应。
 */
.my-container {
    display: table-cell;
    vertical-align: middle;
}
)
code(Var)
return

::middle::
    SendRaw, vertical-align: middle;
return

::fig::
Var = 
(
<figure>
    <img src="https://iph.href.lu/100x100" alt="..." />
    <figcaption>explanatory caption</figcaption>
</figure>
)
code(Var)
return

::fig-span::
Var = 
(
<style>
.my-container {
	display: table-cell;
	vertical-align: middle;
	background-color: red;
	height:500px;
}
img, span {
	/**
	 * 以前我以为只有display:table-cell;可以使用。
	 * 现在才发现原来只要是行内元素都可以，更意外的是，img居然也是一个行内元素。 
	 */
	vertical-align: middle;
}
</style>
<body>
	<figure class="my-container">
		<img src="https://iph.href.lu/100x100" alt="..." />
		<span>explanatory caption</span>
	</figure>
</div>
)
code(Var)
return


; https://tool.lu/imageholder/ 其实完全可以自己实现。算了，网上有的是这种服务
::img::
    SendInput, <img src="https://iph.href.lu/400x400" alt="..." />{left 14}{ShiftDown}{left 7}{ShiftUp}
Return
