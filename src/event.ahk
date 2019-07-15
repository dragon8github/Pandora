!e::
	Menu, VueEventMenu, Add, @click="doThat('hello'`, $event)", EventHandler
	Menu, VueEventMenu, Add, @click.stop, EventHandler
	Menu, VueEventMenu, Add, @click.prevent, EventHandler
	Menu, VueEventMenu, Add, @click.capture, EventHandler
	Menu, VueEventMenu, Add, @click.once, EventHandler
	Menu, VueEventMenu, Add, @change, EventHandler
	Menu, VueEventMenu, Add, @keyup, EventHandler
	Menu, VueEventMenu, Add, @keyup.enter, EventHandler
	Menu, VueEventMenu, Add, @keyup.13, EventHandler
	Menu, VueEventMenu, Add, @input, EventHandler
	Menu, VueEventMenu, Add, @mouseover/@mouseleave, EventHandler
	
	Menu, ReactEventMenu, Add, onClick = { this.clickHandle }, EventHandler
	Menu, ReactEventMenu, Add, onChange = { this.changeHandle }, EventHandler
	Menu, ReactEventMenu, Add, onScroll = { this.scrollHandle }, EventHandler
	Menu, ReactEventMenu, Add, onInput = { this.inputHandle }, EventHandler
	Menu, ReactEventMenu, Add, onMouseOver = { this.MouseOverHandle }, EventHandler
	Menu, ReactEventMenu, Add, onMouseLeave = { this.MouseLeaveHandle }, EventHandler


	Menu, jqueryEventMenu, Add, $('#app').click(e => {}), EventHandler
	Menu, jqueryEventMenu, Add, $('#app').mouseleave(e => {}), EventHandler
	Menu, jqueryEventMenu, Add, $('#app').mouseover(e => {}), EventHandler
	Menu, jqueryEventMenu, Add, $('#app').change(e => {}), EventHandler
	Menu, jqueryEventMenu, Add, $('#app').mouseup(e => {}), EventHandler
	Menu, jqueryEventMenu, Add, $('#app').scroll(e => {}), EventHandler
	
	
	Menu, JavaScriptEventMenu, Add, .addEventListener('click'`, e => {}), EventHandler
	Menu, JavaScriptEventMenu, Add, .addEventListener('mouseover'`, e => {}) , EventHandler
	Menu, JavaScriptEventMenu, Add, .addEventListener('mouseleave'`, e => {}), EventHandler
	Menu, JavaScriptEventMenu, Add, , EventHandler
	Menu, JavaScriptEventMenu, Add, (〜￣△￣)〜认知：onclick只能为元素绑定一个方法，而addEventListener可以绑定无限个～(￣▽￣～), EventHandler
	Menu, JavaScriptEventMenu, Add, , EventHandler
	Menu, JavaScriptEventMenu, Add, .onclick = (e) => {}, EventHandler
	Menu, JavaScriptEventMenu, Add, .onsubmit = (e) => {}, EventHandler
	
	Menu, JavaScriptEventMenu, Add, , EventHandler
	Menu, JavaScriptEventMenu, Add, (〜￣△￣)〜认知：在HTML元素上绑定on事件的时候，需要手动加入event如：ondrop='drop(event)'～(￣▽￣～), EventHandler
	Menu, JavaScriptEventMenu, Add, (〜￣△￣)〜教训：千万别手贱使用同名函数，会造成死循环，如：ondrop='ondrop(event)'～(￣▽￣～), EventHandler
	Menu, JavaScriptEventMenu, Add, , EventHandler
	
	Menu, JavaScriptEventMenu, Add, 🍁🍁🍁🍁🍁🍁🍁🍁 drag: 在拖动目标上触发事件 (源元素) 🍁🍁🍁🍁🍁🍁🍁🍁, EventHandler
	Menu, JavaScriptEventMenu, Add, ondragstart - 用户开始拖动元素时触发, EventHandler
	Menu, JavaScriptEventMenu, Add, ondrag - 元素正在拖动时触发, EventHandler
	Menu, JavaScriptEventMenu, Add, ondragend - 用户完成元素拖动后触发, EventHandler
	
	Menu, JavaScriptEventMenu, Add
	Menu, JavaScriptEventMenu, Add, 🎵🎵🎵🎵 拖拽四部曲 🎵🎵🎵🎵, EventHandler
	Menu, JavaScriptEventMenu, Add

	
	Menu, JavaScriptEventMenu, Add, 🍁🍁🍁🍁🍁🍁🍁🍁 drop: 释放目标时触发的事件 🍁🍁🍁🍁🍁🍁🍁🍁, EventHandler
	Menu, JavaScriptEventMenu, Add, ondragenter - 当被鼠标拖动的对象进入其容器范围内时触发此事件, EventHandler
	Menu, JavaScriptEventMenu, Add, ondragover - 当某被拖动的对象在另一对象容器范围内拖动时触发此事件, EventHandler
	Menu, JavaScriptEventMenu, Add, ondragleave - 当被鼠标拖动的对象离开其容器范围内时触发此事件, EventHandler
	Menu, JavaScriptEventMenu, Add, ondrop - 在一个拖动过程中，释放鼠标键时触发此事件, EventHandler

	Menu, echartsEventMenu, Add, echarts.init, EventHandler
	Menu, echartsEventMenu, Add, echarts 通过dom获取echarts实例，批量监听reset, EventHandler
	Menu, echartsEventMenu, Add, echarts.options, EventHandler
	Menu, echartsEventMenu, Add, echarts.loading, EventHandler


	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add

	Menu, echartsEventMenu, Add, echarts.label, EventHandler
	Menu, echartsEventMenu, Add, echarts.title, EventHandler
	Menu, echartsEventMenu, Add, echarts.legend, EventHandler
	Menu, echartsEventMenu, Add, echarts.visualMap, EventHandler
	Menu, echartsEventMenu, Add, echarts.tooltip, EventHandler


	Menu, echartsEventMenu, Add, echarts.pin（饼图）, EventHandler
	Menu, echartsEventMenu, Add, echarts.bar（柱状图）, EventHandler
	Menu, echartsEventMenu, Add, echarts.line（折线图）, EventHandler
	Menu, echartsEventMenu, Add, echarts.rose（玫瑰图）, EventHandler

	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add
	
	Menu, echartsEventMenu, Add, ehcarts.click, EventHandler
	Menu, echartsEventMenu, Add, ehcarts.mouseover, EventHandler
	Menu, echartsEventMenu, Add, ehcarts.mouseout, EventHandler
	Menu, echartsEventMenu, Add, ehcarts.legendselectchanged, EventHandler


	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add

	Menu, echartsEventMenu, Add, echarts.3dmap, EventHandler
	Menu, echartsEventMenu, Add, aspectScale: 1, EventHandler
	Menu, echartsEventMenu, Add, echarts.effectScatter（2d地图散点）, EventHandler
	Menu, echartsEventMenu, Add, echarts.scatter（2d地图气泡）, EventHandler

	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add

	Menu, echartsEventMenu, Add, getPointCenter, EventHandler
	Menu, echartsEventMenu, Add, geojson, EventHandler
	Menu, echartsEventMenu, Add, createPolygon, EventHandler
	Menu, echartsEventMenu, Add, echarts.broadcast 轮播器, EventHandler
	Menu, echartsEventMenu, Add, new echarts.graphic.LinearGradient, EventHandler
	Menu, echartsEventMenu, Add, 隐藏xy轴, EventHandler
	Menu, echartsEventMenu, Add, 坐标区域虚线（其实是Y轴不是x轴）, EventHandler
	Menu, echartsEventMenu, Add, echarts 简单轮播器, EventHandler
	Menu, echartsEventMenu, Add, echarts geo地图坐标转换为页面Offset坐标, EventHandler
	Menu, echartsEventMenu, Add, map.js 类库持续集成, EventHandler
    Menu, echartsEventMenu, Add, toolbox：下载图片的工具, EventHandler

	;@a @1
	Menu, EventMenu, Add, JavaScript, :JavaScriptEventMenu
	Menu, EventMenu, Add, Vue, :VueEventMenu
	Menu, EventMenu, Add, React, :ReactEventMenu
	Menu, EventMenu, Add, jquery, :jqueryEventMenu
	Menu, EventMenu, Add, echarts, :echartsEventMenu
	
	
	Menu, EventMenu, Add
	Menu, EventMenu, Add

    Menu, EventMenu, Add, 监听动画结束：animationend, EventHandler  
	Menu, EventMenu, Add, keycode大全和打印方式, EventHandler
	Menu, EventMenu, Add, js 监听 enter, EventHandler
	Menu, EventMenu, Add, js 组合键监听 ctrl + enter, EventHandler
	Menu, EventMenu, Add, js 组合键监听 ctrl + click, EventHandler
	Menu, EventMenu, Add, js 组合键监听 ctrl + shift + p, EventHandler
	Menu, EventMenu, Add, js esc键监听, EventHandler
	Menu, EventMenu, Add, 监听paste复制黏贴事件, EventHandler
	
	Menu, EventMenu, Add
	Menu, EventMenu, Add

	Menu, EventMenu, Add, 用Input事件代替keyup事件：$('input').on('input'`, search), EventHandler
	Menu, EventMenu, Add, 对全体元素绑定事件：document.documentElement.addEventListener, EventHandler
	Menu, EventMenu, Add, 辅助功能：网页添加ctrl + d = debugger的快捷键, EventHandler
	Menu, EventMenu, Add, 模拟真实点击click，专门对付clickoutside, utilsHandler
	Menu, EventMenu, Add, ClickOutside 点击外部冒泡, utilsHandler
	Menu, EventMenu, Add, 长按longpress手势, EventHandler
	Menu, EventMenu, Add, String.fromCharCode(e.keycode), EventHandler

	Menu, EventMenu, Add
	Menu, EventMenu, Add
	
	Menu, EventMenu, Add, 用 passive 特性让页面滑动流畅, EventHandler
	Menu, EventMenu, Add, click 与 e.clientX/e.clientY, EventHandler
	Menu, EventMenu, Add, event.preventDefault(); event.stopPropagation();, EventHandler
	Menu, EventMenu, Add, capture模式的含义：由外而内, EventHandler
	
	Menu, EventMenu, Add
	Menu, EventMenu, Add
	
	Menu, EventMenu, Add, Elasticsearch#新增数据（索引/类型/文档id）, EventHandler
	Menu, EventMenu, Add, Elasticsearch#新增索引, EventHandler
	Menu, EventMenu, Add, Elasticsearch#查看所有索引, EventHandler
	Menu, EventMenu, Add, Elasticsearch#查看指定索引, EventHandler
	Menu, EventMenu, Add, Elasticsearch#查看指定索引下的指定类型, EventHandler
	Menu, EventMenu, Add, Elasticsearch#删除索引, EventHandler
    Menu, EventMenu, Add, Elasticsearch#查找数据, EventHandler
	
	Menu, EventMenu, Show
	Menu, EventMenu, DeleteAll
	Menu, echartsEventMenu, DeleteAll
	Menu, VueEventMenu, DeleteAll
	Menu, ReactEventMenu, DeleteAll
	Menu, jqueryEventMenu, DeleteAll
	Menu, JavaScriptEventMenu, DeleteAll
	
return


EventHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=	

if (v == "") {
Var = 
(
)
}


if (v == "toolbox：下载图片的工具") {
Var = 
(
toolbox: {
    left: "160",
    feature: {
        saveAsImage: {
            show: true
        },
    }
},
)
}
	

if (v == "监听动画结束：animationend") {
Var = 
(
.addEventListener('animationend', (event) => {
  
})
)
}

if (v == "map.js 类库持续集成") {
_send("map.js", true, true)
}



if (v == "echarts geo地图坐标转换为页面Offset坐标") {
Var = 
(
// 获取系列
var seriesModel = myChart.getModel().getSeriesByIndex(opts.series.length - 1)
// 获取地理坐标系实例
var coordSys = seriesModel.coordinateSystem;
// dataToPoint 相当于 getPosByGeo
var point = coordSys.dataToPoint([current.lng, current.lat]);
// 直接显示layer
showkeySupervision__layer(point[0], point[1], current)
)
}


if (v == "keycode大全和打印方式") {
_send("keycode", true, true)
return
}


if (v == "@click.capture") {
Var = 
(
@click.capture
)
}

if (v == "@click.prevent") {
Var = 
(
@click.prevent
)
}

if (v == "对全体元素绑定事件：document.documentElement.addEventListener") {
Var = 
(
document.documentElement.addEventListener('click', () => {
	// logic
}, true)	
)
}

if (v == "capture模式的含义：由外而内") {
run, https://segmentfault.com/q/1010000005875549?_ea=954179
return
}

if (v == "辅助功能：网页添加ctrl + d = debugger的快捷键") {
_send("setdebugger", true, true)
return
}

if (v == "🎵🎵🎵🎵 拖拽四部曲 🎵🎵🎵🎵") {
Var = 
(
<!-- 源元素 -->
<div draggable='true' ondragstart='dragstart(event)'></div>

<!-- 目的地 -->
<div ondrop='drop(event)' ondragover="event.preventDefault()"></div>
---
/**
* 拖拽四步骤：
* 1、源元素：draggable='true' ondragstart='dragstart(event)'
* 2、目的地：ondrop='drop(event)' + ondragover="event.preventDefault()"
* 3、e.dataTransfer配置
* 4、event.dataTransfer.getData()读取配置
*/

/**
 * 在源元素中配置 dataTransfer
 */
function dragstart(e) {
    e.dataTransfer.dropEffect = 'copy'
    e.dataTransfer.effectAllowed = 'all'
    e.dataTransfer.setData('text/plain', JSON.stringify({ width: 300, height: 300, name: 'div' }))
}

/**
 * 在目的地中读取 dataTransfer 数据
 */
function drop(event) {
    console.log(JSON.parse(event.dataTransfer.getData('text/plain')))
}
)
txtit(Var)
return
}

if (v == "ondragstart - 用户开始拖动元素时触发") {
Var = 
(
ondragstart
)
}

if (v == "ondrag - 元素正在拖动时触发") {
Var = 
(
ondrag
)
}

if (v == "ondragend - 用户完成元素拖动后触发") {
Var = 
(
ondragend
)
}

if (v == "ondragenter - 当被鼠标拖动的对象进入其容器范围内时触发此事件") {
Var = 
(
ondragenter
)
}

if (v == "ondragover - 当某被拖动的对象在另一对象容器范围内拖动时触发此事件") {
Var = 
(
ondragover
)
}

if (v == "ondragleave - 当被鼠标拖动的对象离开其容器范围内时触发此事件") {
Var = 
(
ondragleave
)
}

if (v == "ondrop - 在一个拖动过程中，释放鼠标键时触发此事件") {
Var = 
(
ondrop
)
}

if (v == "用 passive 特性让页面滑动流畅") {
Var = 
(
// 特别是监听mousewheel页面滑动事件之类的，最适合用
// https://blog.csdn.net/tengxy_cloud/article/details/52858742
// https://www.youtube.com/watch?v=65VMej8n23A
document.addEventListener('touchstart', touchstartListener, {
  capture: true,  // 是否要从父组件开始冒泡
  once: false,    // 是否只执行一次
  passive: true,  // 是否跳过 preventDefault() 的判断，能大幅度增加速度
})
)
}

if (v == "echarts 简单轮播器") {
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

if (v == "echarts 通过dom获取echarts实例，批量监听reset") {
Var = 
(
// 懒加载优化：滚动节流策略
var __SCROLLTIMER__ = null

// 重新设置 echarts 的宽高
var resizeEcharts = () => {
 $('[_echarts_instance_]').each((i, e) => { 
	 echarts.getInstanceByDom(e).resize()
 })  
}

// 绑定事件
window.onresize = function () {
 clearTimeout(__SCROLLTIMER__);
 __SCROLLTIMER__ = setTimeout(resizeEcharts, 150);
}

)
}

if (v == "Elasticsearch#查找数据") {
Var = 
(
)
}

if (v == "Elasticsearch#查看指定索引") {
_send("esq", true, true)
return
}

if (v == "Elasticsearch#查看指定索引下的指定类型") {
_send("esmaptype", true, true)
return
}

if (v == "Elasticsearch#新增索引") {
_send("esindex", true, true)
return
}

if (v == "Elasticsearch#新增数据（索引/类型/文档id）") {
_send("esput", true, true)
return
}

if (v == "Elasticsearch#查看所有索引") {
_send("esmap", true, true)
return
}

if (v == "Elasticsearch#删除索引") {
_send("esdel", true, true)
return
}

if (v == "用Input事件代替keyup事件：$('input').on('input', search)") {
Var = 
(
$('input').on('input', search)
)
}

if (v == "js 组合键监听 ctrl + shift + p") {
Var = 
(
document.addEventListener('keydown', (event) => {
    // 监听 Ctrl + Shift + p 打开搜索框
    if (event.ctrlKey && event.shiftKey && event.keyCode == 80) {
    	openPanel()
    }
})
)
}

if (v == "js esc键监听") {
Var = 
(
document.addEventListener('keydown', (event) => {
	// 监听esc键退出全屏
	if (event.keyCode == 27) {
	  
	}
})
)
}

if (v == "js 组合键监听 ctrl + click") {
Var = 
(
/**
 * 点击事件的回调函数
 */
const clickHandle = ({ ctrlKey } = event) => {
    if (ctrlKey) {
        // ...
    }
}

$(window).click(clickHandle)
)
}

if (v == "click 与 e.clientX/e.clientY") {
Var = 
(
$('#app').click(e => {
    const x = e.clientX + 'px'
    const y = e.clientY + 'px'
    const div = $(`<div style="position: absolute; left: ${x}; top: ${y}; width: 10px; height: 10px; background:red"></div>`)
    $('body').append(div)
    layer.open({
        offset: [y, x],
        area: ['auto', '305px'],
        title: `新建便签 —— ${moment(new Date()).format('YYYY/MM/DD HH:mm:ss')}`,
        content: '<textarea class="note" placeholder="记笔记..."></textarea>',
    })
})
)
}

if (v == "监听paste复制黏贴事件") {
Var = 
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
    body {
        display: -webkit-flex;
        display: flex;
        -webkit-justify-content: center;
        justify-content: center;
    }
    </style>
</head>

<body>
    <textarea></textarea>
    <div contenteditable style="width: 300px;height: 100px; border:1px solid">
        <img src="" id="imgNode">
</div>
</body>
<script>
document.addEventListener('paste', function(event) {
    console.log(event);
    var isChrome = false;
    if (event.clipboardData || event.originalEvent) {
        var clipboardData = (event.clipboardData || event.originalEvent.clipboardData);
        if (clipboardData.items) {
            // for chrome
            var items = clipboardData.items,
                len = items.length,
                blob = null;
            isChrome = true;
            for (var i = 0; i < len; i++) {
                console.log(items[i]);
                if (items[i].type.indexOf("image") !== -1) {
                    //getAsFile() 此方法只是living standard firefox ie11 并不支持
                    blob = items[i].getAsFile();
                }
            }
            if (blob !== null) {
                var blobUrl = URL.createObjectURL(blob);
                //blob对象显示
                document.getElementById("imgNode").src = blobUrl;
                var reader = new FileReader();
                //base64码显示
                /* 
                    reader.onload = function (event) {
                        // event.target.result 即为图片的Base64编码字符串
                        var base64_str = event.target.result;

                        document.getElementById("imgNode").src=base64_str;
                    }
                    reader.readAsDataURL(blob);
                */
                var fd = new FormData(document.forms[0]);
                fd.append("the_file", blob, 'image.png');
                //创建XMLHttpRequest对象
                var xhr = new XMLHttpRequest();
                xhr.open('POST', '/image');
                xhr.onload = function() {
                    if (xhr.readyState === 4) {
                        if (xhr.status === 200) {
                            var data = JSON.parse(xhr.responseText);
                            console.log(data);
                        } else {
                            console.log(xhr.statusText);
                        }
                    };
                };
                xhr.onerror = function(e) {
                    console.log(xhr.statusText);
                }
                xhr.send(fd);
            }
        }
    }
})
</script>

</html>
)
}

if (v == "长按longpress手势") {
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
    <button id="longPress">longPress</button>

    <li class="longPress">longPress</li>
    <li class="longPress">longPress</li>
    <li class="longPress">longPress</li>
    <li class="longPress">longPress</li>
</body>
<script>
    
/**
 * 绑定长按事件，同时支持绑定点击事件
 * @param {dom} dom 需要绑定的dom元素
 * @param {fn} longPressCallBack 长按事件执行的方法
 * @param {fn} touchCallBack 点击事件执行的方法
 */
var longPress = function (dom, longPressCallBack, touchCallBack) {
    var timer = undefined;
    var isLongPress = false;

    var setEvent = function (e) {
          e.addEventListener('touchstart', function(event) {
                  timer = setTimeout(function () {
                    isLongPress = true
                  longPressCallBack && longPressCallBack(e);
                }, 500);
          }, false);

          e.addEventListener('touchmove', function(event) {
                 clearTimeout(timer);
          }, false);

          e.addEventListener('touchend', function(event) {
                  if (!isLongPress) touchCallBack && touchCallBack()
                  clearTimeout(timer); 
                  isLongPress = false;
          }, false);
    }

    if (dom.length) {
        // 支持绑定多个元素
          for (var i = 0; i < dom.length; i++) {
            setEvent(dom[i])
        }
    } else {
        setEvent(dom)
    }
}

longPress(document.getElementById('longPress'), function () {
    console.log('longPress')
}, function () {
    console.log('touch');
});

[...document.querySelectorAll('.longPress')].forEach(function (e, i) {
    longPress(e, function () {
        console.log('longPress')
    }, function () {
        console.log('touch');
    });
});
</script>
</html>
)
}

if (v == "event.preventDefault(); event.stopPropagation();") {
Var = 
(
event.preventDefault(); event.stopPropagation();

var stope = function(thisEvent){
  thisEvent = thisEvent || window.event;
  try { thisEvent.stopPropagation() } catch(e){
    thisEvent.cancelBubble = true;
  }
};
)
}

if (v == "隐藏xy轴") {
Var = 
(
axisLine: {
	lineStyle: {
		width: 0,
		color: 'transparent'
	}
},
)
}

if (v == "坐标区域虚线（其实是Y轴不是x轴）") {
Var = 
(
splitLine: {
	show: true,
	lineStyle: {
	  type: 'dashed',
	  color: '#34495e',
	  opacity: 0.54,
	  width: 1,
	}
},
)
}


if (v == "js 组合键监听 ctrl + enter") {
Var = 
(
document.addEventListener('keydown', (event) => {
	// 监听esc键退出全屏
	if (event.keyCode == 27) {
	  
	}
	// 监听 Ctrl + Enter 可全屏查看 
	if (event.ctrlKey && event.keyCode == 13) {
	
	}
})
)
}

if (v == "new echarts.graphic.LinearGradient") {
Var = 
(
color: new echarts.graphic.LinearGradient(
	// 右/下/左/上
	0, 0, 0, 1,
	[
		{offset: 0, color: 'rgba(141, 222, 255, 0.8)'},
		{offset: 0.6, color: 'rgba(141, 222, 255, 0.3)'},
		{offset: 1, color: 'transparent'}
	]
`),
)
}

if (v == "echarts.broadcast 轮播器") {
SendLevel 1
Send, echarts.lunbo{tab}
return
}

if (v == "aspectScale: 1") {
Var = 
(
aspectScale: 1
)
}


if (v == "echarts.init") {
SendLevel 1
Send, echarts.init{tab}
return
}

if (v == "echarts.options") {
SendLevel 1
Send, echarts.options{tab}
return
}

if (v == "echarts.loading") {
SendLevel 1
Send, echarts.loading{tab}
return
}

if (v == "echarts.pin（饼图）") {
SendLevel 1
Send, echarts.pin{tab}
return
}

if (v == "echarts.bar（柱状图）") {
SendLevel 1
Send, echarts.bar{tab}
return
}

if (v == "echarts.line（折线图）") {
SendLevel 1
Send, echarts.line{tab}
return
}

if (v == "echarts.rose（玫瑰图）") {
SendLevel 1
Send, echarts.rose{tab}
return
}

if (v == "echarts.label") {
SendLevel 1
Send, echarts.label{tab}
return
}

if (v == "echarts.title") {
SendLevel 1
Send, echarts.title{tab}
return
}

if (v == "echarts.legend") {
SendLevel 1
Send, echarts.legend{tab}
return
}

if (v == "echarts.visualMap") {
SendLevel 1
Send, echarts.visualMap{tab}
return
}

if (v == "echarts.tooltip") {
SendLevel 1
Send, echarts.tooltip{tab}
return
}

if (v == "echarts.3dmap") {
SendLevel 1
Send, echarts.3dmap{tab}
return
}

if (v == "echarts.effectScatter（2d地图散点）") {
SendLevel 1
Send, echarts.effectScatter{tab}
return
}

if (v == "echarts.scatter（2d地图气泡）") {
SendLevel 1
Send, echarts.scatter{tab}
return
}

if (v == "getPointCenter") {
SendLevel 1
Send, getPointCenter{tab}
return
}

if (v == "geojson") {
SendLevel 1
Send, geojson{tab}
return
}

if (v == "createPolygon") {
SendLevel 1
Send, createPolygon{tab}
return
}


if (v == "js 监听 enter") {
Var = 
(
window.addEventListener("keydown", function(e) {
	// enter键开始
	if (e.keyCode == 13) self.start();
}, false);
)
}

if (v == "@mouseover/@mouseleave") {
Var = 
(
@mouseover='broadcast(false)' @mouseleave='broadcast'
)
}

if (v == "ehcarts.legendselected") {
Var = 
(
this.myChart.on('legendselectchanged', params => {
	console.log(20181028120657, params)
})
)
}

if (v == "$('#app').scroll(e => {})") {
Var = 
(
$('.trajectoryTable').scroll(function (e) {
    console.log(20180825190354, e.currentTarget.scrollTop)
})
)
}

if (v == ".addEventListener('click', e => {})") {
Var = 
(
.addEventListener('click', e => {})
)
}
if (v == ".addEventListener('mouseover', e => {})") {
Var = 
(
.addEventListener('mouseover', e => {})
)
}
if (v == ".addEventListener('mouseleave', e => {})") {
Var = 
(
.addEventListener('mouseleave', e => {})
)
}
if (v == ".onclick = (e) => {}") {
Var = 
(
.onclick = (e) => {}
)
}
if (v == ".onsubmit = (e) => {}") {
Var = 
(
.onsubmit = (e) => {}
)
}
if (v == "$('#app').click(e => {})") {
Var = 
(
$('#app').click(e => {})
)
}
if (v == "$('#app').mouseleave(e => {})") {
Var = 
(
$('#app').mouseleave(e => {})
)
}
if (v == "$('#app').mouseover(e => {})") {
Var = 
(
$('#app').mouseover(e => {})
)
}
if (v == "$('#app').change(e => {})") {
Var = 
(
$('#app').change(e => {})
)
}
if (v == "$('#app').mouseup(e => {})") {
Var = 
(
$('#app').mouseup(e => {})
)
}
if (v == "@click=""doThat('hello', $event)""") {
Var = 
(
@click = "doThat('hello', $event)"
)
}
if (v == "@click.stop") {
Var = 
(
@click.stop = "doThat('hello', $event)"
)
}
if (v == "@click.once") {
Var = 
(
@click.once = "doThat('hello', $event)"
)
}
if (v == "@change") {
Var = 
(
@change = "doThat('hello', $event)"
)
}
if (v == "@keyup") {
Var = 
(
@keyup = "doThat('hello', $event)"
)
}
if (v == "@keyup.enter") {
Var = 
(
@keyup.enter = "doThat('hello', $event)"
)
}

if (v == "@keyup.13") {
Var = 
(
@keyup.13 = "doThat('hello', $event)"
)
}

if (v == "@input") {
Var = 
(
@input = "doThat('hello', $event)"
)
}
if (v == "onClick = { this.clickHandle }") {
Var = 
(
onClick = { this.clickHandle }
)
}
if (v == "onChange = { this.changeHandle }") {
Var = 
(
onChange = { this.changeHandle }
)
}
if (v == "onScroll = { this.scrollHandle }") {
Var = 
(
onScroll = { this.scrollHandle }
)
}
if (v == "onInput = { this.inputHandle }") {
Var = 
(
onInput = { this.inputHandle }
)
}
if (v == "onMouseOver = { this.MouseOverHandle }") {
Var = 
(
onMouseOver = { this.MouseOverHandle }
)
}
if (v == "onMouseLeave = { this.MouseLeaveHandle }") {
Var = 
(
onMouseLeave = { this.MouseLeaveHandle }
)
}
if (v == "ehcarts.click") {
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
this.myChart.on('click', params => {
	console.log(%t%, params)
})
)
}
if (v == "ehcarts.mouseover") {
Var = 
(
this.myChart.on('mouseover', params => {
	console.log(%t%, params)
})
)
}

if (v == "ehcarts.mouseout") {
Var = 
(
this.myChart.on('mouseout', params => {
	console.log(%t%, params)
})
)
}

if (v == "ehcarts.legendselectchanged") {
Var = 
(
this.myChart.on('legendselectchanged', params => {
	console.log(%t%, params)
})
)
}

code(Var)
return

::setdebugger::
::setd::
::setdebug::
::chrome.debuger::
::chrome-debuger::
Var =
(
window.addEventListener('keydown', function (event) {
	// / 监听 Ctrl + a
	if (event.ctrlKey && event.keyCode == 65) {
		debugger;
	}
})
)
code(Var)
return

::keycode::
Var =
(
A	65	J	74	S	83	1	49
B	66	K	75	T	84	2	50
C	67	L	76	U	85	3	51
D	68	M	77	V	86	4	52
E	69	N	78	W	87	5	53
F	70	O	79	X	88	6	54
G	71	P	80	Y	89	7	55
H	72	Q	81	Z	90	8	56
I	73	R	82	0	48	9	57

0	96		F1	112	
1	97		F2	113	
2	98		F3	114	
3	99		F4	115	
4	100		F5	116	
5	101		F6	117	
6	102		F7	118 	 	 	 
7	103		F8	119 	 	 	 
8	104     F9	120
9	105     F10	121
			F11	122
			F12	123

BackSpace	8
Shift	    16
Enter	    13
Control	    17
Alt	        18
Esc	        27
Home	    36

Insert	    45
Delete	    46
Page Up	    33
Page Down	34

Left Arrow	37
Up Arrow	38
Right Arrow	39
Dw Arrow	40


window.addEventListener("keydown", function(e) {
	console.log(e.keyCode)
}, false);
)
code(Var)
return


::map.js::
Var =
(
import { maybe, division } from '@/utils/utils.js'
const colorMap = ["#E83035", "#E88234", "#ECED08", "#01F1C4", "#01F1C4"]

// 东莞市的geo地理数据
const DongGuan = require('@/mapSources/DongGuan.geo.json');
// 东莞市所有镇区的geo地理数据
const DongGuanGrid = require('@/mapSources/DongGuanGrid.geo.json');

// 注册 <东莞市> 地图
echarts.registerMap('DongGuan', JSON.stringify(DongGuan));
// 注册 <东莞市网格> 地图
echarts.registerMap('DongGuanGrid', JSON.stringify(DongGuanGrid));


// 核心地图类
class AggregationMap {
    // 构造函数
    constructor(el) {
        // ehcarts 实例
        this.myChart = echarts.init(el)
    }

    // 热力图必须和这个结合才能生效，至于最大值最小值，实际上并没有。只是按照一般情况是需要的而已。
    createVisualMap (min = 0, max = 1) {
        return {
            show: false,
            min,
            max,
            splitNumber: 3,
            seriesIndex: 1,  // 这里需要指定，是映射哪个series配置，我的是第二个的
            inRange: {
                color: ["#ab1653", '#04af43', '#d4dd7a'],
            },
        }
    }

    // 热力图配置
    createHeatmap (data) {
        return {
            // 设置为热力图类型
            type: 'heatmap',
            // 热力点的粗细值
            pointSize: 5,
            // 每个点模糊的大小，在地理坐标系(coordinateSystem: 'geo')上有效。
            blurSize: 50, // 30 50
            // 设置坐标类型为geo
            coordinateSystem: 'geo',
            // 指定geo的ID
            geoIndex: 0,
            // 每帧渲染的个数，默认400
            progressive: 1000,
            // 关闭动画
            animation: false,
            // 层级
            zlevel: 2,
            // 设置地图数据：[[ "113.797669", "23.027844", 1 ], [ "113.807751", "23.026374", 1 ]]
            data: data,
        }
    }

    // 气泡图
    createaPin (data = [], max = 1, min = 0, maxSizePin = 230, minSizePin = 145) {
        return {
            type: 'scatter',
            // 坐标系（默认上面的geo配置作为坐标系）
            coordinateSystem: 'geo',
            // 图形
            symbol: 'pin', // 'circle', 'pin', 'rect', 'roundRect', 'triangle', 'diamond', 'pin', 'arrow', 'none'，'image://url'
            // 动态设置气泡的大小
            symbolSize: val => {
                var a = (maxSizePin - minSizePin) / (max - min);
                var b = minSizePin - a * min;
                b = maxSizePin - a * max;
                return a * val[2] + b;
            },
            label: {
                normal: {
                    show: true,
                    textStyle: {
                        color: '#fff',
                        fontSize:'30',
                    },
                    formatter: function (params) {
                        return params.value[2]
                    }
                }
            },
            itemStyle: {
                normal: {
                    color: '#F34234',
                }
            },
            zlevel: 6,
            data: data,
        }
    }

    // 创建散点配置项
    createPoints (data) {
        // 返回的这个配置对象，直接插入到series即可
        return {
            // 散点类型
            type: 'effectScatter',
            // 坐标系（默认上面的geo配置作为坐标系）
            coordinateSystem: 'geo',
            // 图形
            symbol: 'circle', // 'circle', 'rect', 'roundRect', 'triangle', 'diamond', 'pin', 'arrow', 'none'，'image://url'
            // 层级
            zlevel: 2,
            // 绘制完成后显示特效
            showEffectOn: 'render',
            // 是否开启鼠标 hover 的提示动画效果
            hoverAnimation: true,
            // 散点大小
            symbolSize: 30,
            // 涟漪效果
            // rippleEffect: { period: 15, scale: 6, brushType: 'fill' },
            itemStyle: {
                normal: {
                    // 根据不同的 twoconsTypeId 渲染不同的颜色
                    color: params => colorMap[params.value[2]],
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            // 涟漪的配置
            rippleEffect: {
                // 动画中波纹的最大缩放比例。
                scale: 7,
                // 动画的周期，秒数。
                period: 4,
                // 波纹的绘制方式，可选 'stroke' 和 'fill'
                brushType: 'fill'
            },
            // 散点数据，格式如下:
            // [{name: '不重要随便写点什么都可以', value: [经度, 纬度, 其他值]}, {...}, , {...}, , {...}]
            data: data
        }
    }

    // 获取默认配置
    getDefaultConfig() {
        // 默认配置
        const defaultConfig = {
            // 地图的geo配置（这里选择东莞市地图作为底层背景图，同时也可以作为热力图的坐标系）
            geo: {
                // 当作为坐标系的时候需要被指定的Id
                id: 0,
                // 是否禁止鼠标事件（default: false）
                silent: true,
                // <东莞市>
                map: 'DongGuan',
                // 设置缩放比（default: 0.75）
                aspectScale: '1',
                // 地图样式
                itemStyle: {
                    // 区域颜色
                    areaColor: 'transparent',
                    // 边界颜色
                    borderColor: 'transparent',
                }
            },
            series: [
                // 东莞市网格的基本配置
                {
                    // 是否禁止鼠标事件（default: false）
                    silent: false,
                    // 渲染类型为地图
                    type: 'map',
                    // <东莞市网格>
                    mapType: 'DongGuanGrid',
                    // 设置缩放比（default: 0.75）
                    aspectScale: '1',
                    // 层级结构
                    zlevel: 1,
                    // 标签样式
                    label: {
                        // 是否显示
                        show: false,
                        // 文字颜色
                        color: '#fff',
                        // 文字大小
                        fontSize: "20"
                    },
                    // 地图样式
                    itemStyle: {
                        // 边界颜色
                        borderColor: 'rgba(147, 235, 248, 1)',
                        // 地图颜色
                        areaColor: '#143248',
                        // 阴影
                        shadowColor: 'rgba(128, 217, 248, 1)', shadowOffsetX: 0, shadowOffsetY: 0, shadowBlur: 10
                    },
                    // 鼠标hover网格时的配置
                    emphasis: {
                        // 鼠标hover时的网块样式
                        itemStyle: {
                            // 区域颜色（这里必须设置一个值，才可以方便覆盖，覆盖也是为了取消hover的效果而已。）
                            areaColor: '#00ffff',
                        },
                        // 鼠标hover时标签的样式
                        label: {
                            // 文字颜色
                            color: '#112e43',
                            fontSize: '30',
                            show: false,
                        },
                    },
                },
            ]
        }
        // 返回配置（使用$.extend避免深拷贝事件）
        return $.extend(true, {}, defaultConfig)
    }

    clear() {
        this.myChart.clear()
    }

    // 默认地图渲染
    render() {
        this.myChart.clear()
        // 按照默认配置渲染地图
        this.myChart.setOption(this.getDefaultConfig())
    }

    getChart () {
        return this.myChart
    }

    // 渲染散点
    renderScatter (data) {
        // 第一个数据就是第一名
        const first = data.first()
        // 获取散点的配置
        const config = this.createPoints(data)
        // 获取默认配置
        const defaultConfig = this.getDefaultConfig()
        // 从默认配置中插入散点配置
        defaultConfig.series.push(config)
        // 需求：第一名需要区域高亮
        defaultConfig.series.first().data = [{ name: first.name, selected: true }]
        // 开始渲染
        this.myChart.setOption(defaultConfig)
    }
    
    // 渲染气泡数据
    renderPin (data, max, min) {
        // 获取散点的配置
        const config = this.createaPin(data, max, min)
        // 获取默认配置
        const defaultConfig = this.getDefaultConfig()
        // 从默认配置中插入散点配置
        defaultConfig.series.push(config)
        // 开始渲染
        this.myChart.setOption(defaultConfig)
    }

    renderHeatmap (data) {
        // 创建热力图层
        const heatmap = this.createHeatmap(data)
        // 获取散点的配置
        const defaultConfig = this.getDefaultConfig()
        // 从默认配置中插入散点配置
        defaultConfig.series.push(heatmap)
        // 从默认配置中插入VisualMap
        defaultConfig.visualMap = this.createVisualMap()
        // 开始渲染
        this.myChart.setOption(defaultConfig)
    }

    getPosByGeo (lng, lat) {
        // 获取系列
        var seriesModel = this.myChart.getModel().getSeriesByIndex(0)
        // 获取地理坐标系实例
        var coordSys = seriesModel.coordinateSystem;
        // dataToPoint 相当于 getPosByGeo
        return coordSys.dataToPoint([lng, lat]);
    }
}

export default AggregationMap
}
)
code(Var)
return