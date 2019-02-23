!e::
	Menu, VueEventMenu, Add, @click="doThat('hello'`, $event)", EventHandler
	Menu, VueEventMenu, Add, @click.stop, EventHandler
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
	


	Menu, echartsEventMenu, Add, echarts.init, EventHandler
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

	Menu, EventMenu, Add, echarts, :echartsEventMenu
	Menu, EventMenu, Add, Vue, :VueEventMenu
	Menu, EventMenu, Add, React, :ReactEventMenu
	Menu, EventMenu, Add, jquery, :jqueryEventMenu
	Menu, EventMenu, Add, JavaScript, :JavaScriptEventMenu
	
	Menu, EventMenu, Add
	Menu, EventMenu, Add
	
	Menu, EventMenu, Add, 冒泡点击mouseup, EventHandler
	Menu, EventMenu, Add, String.fromCharCode(e.keycode), EventHandler
	Menu, EventMenu, Add, event.preventDefault(); event.stopPropagation();, EventHandler
	Menu, EventMenu, Add, 长按longpress手势, EventHandler
	Menu, EventMenu, Add, 监听paste复制黏贴事件, EventHandler
	Menu, EventMenu, Add, click 与 e.clientX/e.clientY, EventHandler
	Menu, EventMenu, Add, js 监听 enter, EventHandler
	Menu, EventMenu, Add, js 组合键监听 ctrl + enter, EventHandler
	Menu, EventMenu, Add, js 组合键监听 ctrl + click, EventHandler
	Menu, EventMenu, Add, js 组合键监听 ctrl + shift + p, EventHandler
	Menu, EventMenu, Add, js esc键监听, EventHandler
	Menu, EventMenu, Add, 用Input事件代替keyup事件：$('input').on('input'`, search), EventHandler
	
	Menu, EventMenu, Add
	Menu, EventMenu, Add
	
	Menu, EventMenu, Add, Elasticsearch#新增数据（索引/类型/文档id）, EventHandler
	Menu, EventMenu, Add, Elasticsearch#新增索引, EventHandler
	Menu, EventMenu, Add, Elasticsearch#查看所有索引, EventHandler
	Menu, EventMenu, Add, Elasticsearch#查看指定索引, EventHandler
	Menu, EventMenu, Add, Elasticsearch#查看指定索引下的指定类型, EventHandler
	Menu, EventMenu, Add, Elasticsearch#删除索引, EventHandler
	
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

if (v == "Elasticsearch#查看指定索引") {
_send("esmapindex", true, true)
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
$(window).keydown(function (event) {
	 // 监听 Ctrl + Shift + p 打开搜索框
	 if (event.ctrlKey && event.shiftKey && event.keyCode == 80) {
		openPanel()
	 }
});
)
}

if (v == "js esc键监听") {
Var = 
(
$(window).keydown(function (event) {
    // 监听esc键退出全屏
    if (event.keyCode == 27) {
      
    }
});
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
$(window).keydown(function (event) {
	 // 监听esc键退出全屏
	 if (event.keyCode == 27) {
	   
	 }
	 // 监听 Ctrl + Enter 可全屏查看 
	 if (event.ctrlKey && event.keyCode == 13) {
		
	 }
});
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

if (v == "冒泡点击mouseup") {
Var = 
(
// jQuery版本
$('.keySupervision__layer').css({ left, top }).show(300, function () {
      window.addEventListener('mouseup', function cancelFade(e) {
         if (!e.target.className.includes('keySupervision__layer')) {
             $('.keySupervision__layer').hide();
             window.removeEventListener('mouseup', cancelFade);
         }
      })
})

// vue版本
<div class="msgbox" v-show="value">
data () {
    return {
        value: false
    }
},
methods: {
  hideListener (e) {
    // 只要你的弹窗所有元素都准许BEM规范即可。也就是说都带msgbox前缀，就可以轻松区分。
    if (!e.target.className.includes('msgbox')) {
        this.value = false
    }
  },
  // 可以给关闭按钮绑定，如<a class="msgbox__header--close" @click='value = !value'>×</a>
  show () {
    if (!this.value) this.value = true
  }
},
watch: {
    value (newV) {
      newV === true && window.addEventListener('mouseup', this.hideListener)
      newV === false && window.removeEventListener('mouseup', this.hideListener);
    }
},
)
}

code(Var)
return

::es.put::
::es.post::
::esput::
::espost::
::es.insert::
::esinsert::
::es.add::
::esadd::
Var =
(
curl -XPUT 'http://localhost:9200/get-together/group/1?pretty' -H 'Content-Type:application/json' -d '{"firstName": "JOJO", "lastName": "Joestar"}'
)
Send, %Var%
return

::es.map::
::esmap::
::es.mapping::
::esmapping::
::es.maping::
::esmaping::
::es.all::
::esall::
Var =
(
curl 'localhost:9200/_mapping?pretty=true'
)
Send, %Var%
return

::esdel::
::es.del::
::es.remove::
::esremove::
Var =
(
curl -XDELETE 'http://localhost:9200/get-together'
)
Send, %Var%
return

::esindex::
::es.index::
::esnewindex::
::es.newindex::
Var =
(
curl -XPUT 'http://localhost:9200/new-index'
)
Send, %Var%
return

::esmapindex::
::es.mapindex::
Var =
(
curl 'localhost:9200/you-index/_mapping?pretty=true'
)
Send, %Var%{left 22}
return

::esmaptype::
::es.maptype::
Var =
(
curl 'localhost:9200/you-index/_mapping/you-type?pretty=true'
)
Send, %Var%{left 22}
return


::es.sh::
::essh::
::es.test::
::es.data::
Var =
(
#!/usr/bin/env bash

ADDRESS=$1

if [ -z $ADDRESS ]; then
  ADDRESS="localhost:9200"
fi

# Check that Elasticsearch is running
curl -s "http://$ADDRESS" 2>&1 > /dev/null
if [ $? != 0 ]; then
    echo "Unable to contact Elasticsearch at $ADDRESS"
    echo "Please ensure Elasticsearch is running and can be reached at http://$ADDRESS/"
    exit -1
fi

echo "WARNING, this script will delete the 'get-together' and the 'myindex' indices and re-index all data!"
echo "Press Control-C to cancel this operation."
echo
echo "Press [Enter] to continue."
read

# Delete the old index, swallow failures if it doesn't exist
curl -s -XDELETE "$ADDRESS/get-together" > /dev/null

# Create the next index using mapping.json
echo "Creating 'get-together' index..."
curl -s -XPOST "$ADDRESS/get-together" -d@$(dirname $0)/mapping.json

# Wait for index to become yellow
curl -s "$ADDRESS/get-together/_health?wait_for_status=yellow&timeout=10s" > /dev/null
echo
echo "Done creating 'get-together' index."

echo
echo "Indexing data..."

echo "Indexing groups..."
curl -s -XPOST "$ADDRESS/get-together/group/1" -d'{
  "name": "Denver Clojure",
  "organizer": ["Daniel", "Lee"],
  "description": "Group of Clojure enthusiasts from Denver who want to hack on code together and learn more about Clojure",
  "created_on": "2012-06-15",
  "tags": ["clojure", "denver", "functional programming", "jvm", "java"],
  "members": ["Lee", "Daniel", "Mike"],
  "location_group": "Denver, Colorado, USA"
}'

echo
curl -s -XPOST "$ADDRESS/get-together/group/2" -d'{
  "name": "Elasticsearch Denver",
  "organizer": "Lee",
  "description": "Get together to learn more about using Elasticsearch, the applications and neat things you can do with ES!",
  "created_on": "2013-03-15",
  "tags": ["denver", "elasticsearch", "big data", "lucene", "solr"],
  "members": ["Lee", "Mike"],
  "location_group": "Denver, Colorado, USA"
}'

echo
curl -s -XPOST "$ADDRESS/get-together/group/3" -d'{
  "name": "Elasticsearch San Francisco",
  "organizer": "Mik",
  "description": "Elasticsearch group for ES users of all knowledge levels",
  "created_on": "2012-08-07",
  "tags": ["elasticsearch", "big data", "lucene", "open source"],
  "members": ["Lee", "Igor"],
  "location_group": "San Francisco, California, USA"
}'

echo
curl -s -XPOST "$ADDRESS/get-together/group/4" -d'{
  "name": "Boulder/Denver big data get-together",
  "organizer": "Andy",
  "description": "Come learn and share your experience with nosql & big data technologies, no experience required",
  "created_on": "2010-04-02",
  "tags": ["big data", "data visualization", "open source", "cloud computing", "hadoop"],
  "members": ["Greg", "Bill"],
  "location_group": "Boulder, Colorado, USA"
}'

echo
curl -s -XPOST "$ADDRESS/get-together/group/5" -d'{
  "name": "Enterprise search London get-together",
  "organizer": "Tyler",
  "description": "Enterprise search get-togethers are an opportunity to get together with other people doing search.",
  "created_on": "2009-11-25",
  "tags": ["enterprise search", "apache lucene", "solr", "open source", "text analytics"],
  "members": ["Clint", "James"],
  "location_group": "London, England, UK"
}'

echo
echo "Done indexing groups."

echo "Indexing events..."

curl -s -XPOST "$ADDRESS/get-together/event/100?parent=1" -d'{
  "host": ["Lee", "Troy"],
  "title": "Liberator and Immutant",
  "description": "We will discuss two different frameworks in Clojure for doing different things. Liberator is a ring-compatible web framework based on Erlang Webmachine. Immutant is an all-in-one enterprise application based on JBoss.",
  "attendees": ["Lee", "Troy", "Daniel", "Tom"],
  "date": "2013-09-05T18:00",
  "location_event": {
    "name": "Stoneys Full Steam Tavern",
    "geolocation": "39.752337,-105.00083"
  },
  "reviews": 4
}'
echo
curl -s -XPOST "$ADDRESS/get-together/event/101?parent=1" -d'{
  "host": "Sean",
  "title": "Sunday, Surly Sunday",
  "description": "Sort out any setup issues and work on Surlybird issues. We can use the EC2 node as a bounce point for pairing.",
  "attendees": ["Daniel", "Michael", "Sean"],
  "date": "2013-07-21T18:30",
  "location_event": {
    "name": "IRC, #denofclojure"
  },
  "reviews": 2
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/102?parent=1" -d'{
  "host": "Daniel",
  "title": "10 Clojure coding techniques you should know, and project openbike",
  "description": "What are ten Clojure coding techniques that you wish everyone knew? We will also check on the status of Project Openbike.",
  "attendees": ["Lee", "Tyler", "Daniel", "Stuart", "Lance"],
  "date": "2013-07-11T18:00",
  "location_event": {
    "name": "Stoneys Full Steam Tavern",
    "geolocation": "39.752337,-105.00083"
  },
  "reviews": 3
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/103?parent=2" -d'{
  "host": "Lee",
  "title": "Introduction to Elasticsearch",
  "description": "An introduction to ES and each other. We can meet and greet and I will present on some Elasticsearch basics and how we use it.",
  "attendees": ["Lee", "Martin", "Greg", "Mike"],
  "date": "2013-04-17T19:00",
  "location_event": {
    "name": "Stoneys Full Steam Tavern",
    "geolocation": "39.752337,-105.00083"
  },
  "reviews": 5
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/104?parent=2" -d'{
  "host": "Lee",
  "title": "Queries and Filters",
  "description": "A get together to talk about different ways to query Elasticsearch, what works best for different kinds of applications.",
  "attendees": ["Lee", "Greg", "Richard"],
  "date": "2013-06-17T18:00",
  "location_event": {
    "name": "Stoneys Full Steam Tavern",
    "geolocation": "39.752337,-105.00083"
  },
  "reviews": 1
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/105?parent=2" -d'{
  "host": "Lee",
  "title": "Elasticsearch and Logstash",
  "description": "We can get together and talk about Logstash - http://logstash.net with a sneak peek at Kibana",
  "attendees": ["Lee", "Greg", "Mike", "Delilah"],
  "date": "2013-07-17T18:30",
  "location_event": {
    "name": "Stoneys Full Steam Tavern",
    "geolocation": "39.752337,-105.00083"
  },
  "reviews": null
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/106?parent=3" -d'{
  "host": "Mik",
  "title": "Social management and monitoring tools",
  "description": "Shay Banon will be there to answer questions and we can talk about management tools.",
  "attendees": ["Shay", "Mik", "John", "Chris"],
  "date": "2013-03-06T18:00",
  "location_event": {
    "name": "Quid Inc",
    "geolocation": "37.798442,-122.399801"
  },
  "reviews": 5
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/107?parent=3" -d'{
  "host": "Mik",
  "title": "Logging and Elasticsearch",
  "description": "Get a deep dive for what Elasticsearch is and how it can be used for logging with Logstash as well as Kibana!",
  "attendees": ["Shay", "Rashid", "Erik", "Grant", "Mik"],
  "date": "2013-04-08T18:00",
  "location_event": {
    "name": "Salesforce headquarters",
    "geolocation": "37.793592,-122.397033"
  },
  "reviews": 3
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/108?parent=3" -d'{
  "host": "Elyse",
  "title": "Piggyback on Elasticsearch training in San Francisco",
  "description": "We can piggyback on training by Elasticsearch to have some Q&A time with the ES devs",
  "attendees": ["Shay", "Igor", "Uri", "Elyse"],
  "date": "2013-05-23T19:00",
  "location_event": {
    "name": "NoSQL Roadshow",
    "geolocation": "37.787742,-122.398964"
  },
  "reviews": 5
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/109?parent=4" -d'{
  "host": "Andy",
  "title": "Hortonworks, the future of Hadoop and big data",
  "description": "Presentation on the work that hortonworks is doing on Hadoop",
  "attendees": ["Andy", "Simon", "David", "Sam"],
  "date": "2013-06-19T18:00",
  "location_event": {
    "name": "SendGrid Denver office",
    "geolocation": "39.748477,-104.998852"
  },
  "reviews": 2
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/110?parent=4" -d'{
  "host": "Andy",
  "title": "Big Data and the cloud at Microsoft",
  "description": "Discussion about the Microsoft Azure cloud and HDInsight.",
  "attendees": ["Andy", "Michael", "Ben", "David"],
  "date": "2013-07-31T18:00",
  "location_event": {
    "name": "Bing Boulder office",
    "geolocation": "40.018528,-105.275806"
  },
  "reviews": 1
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/111?parent=4" -d'{
  "host": "Andy",
  "title": "Moving Hadoop to the mainstream",
  "description": "Come hear about how Hadoop is moving to the main stream",
  "attendees": ["Andy", "Matt", "Bill"],
  "date": "2013-07-21T18:00",
  "location_event": {
    "name": "Courtyard Boulder Louisville",
    "geolocation": "39.959409,-105.163497"
  },
  "reviews": 4
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/112?parent=5" -d'{
  "host": "Dave Nolan",
  "title": "real-time Elasticsearch",
  "description": "We will discuss using Elasticsearch to index data in real time",
  "attendees": ["Dave", "Shay", "John", "Harry"],
  "date": "2013-02-18T18:30",
  "location_event": {
    "name": "SkillsMatter Exchange",
    "geolocation": "51.524806,-0.099095"
  },
  "reviews": 3
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/113?parent=5" -d'{
  "host": "Dave",
  "title": "Elasticsearch at Rangespan and Exonar",
  "description": "Representatives from Rangespan and Exonar will come and discuss how they use Elasticsearch",
  "attendees": ["Dave", "Andrew", "David", "Clint"],
  "date": "2013-06-24T18:30",
  "location_event": {
    "name": "Alumni Theatre",
    "geolocation": "51.51558,-0.117699"
  },
  "reviews": 3
}'

echo
curl -s -XPOST "$ADDRESS/get-together/event/114?parent=5" -d'{
  "host": "Yann",
  "title": "Using Hadoop with Elasticsearch",
  "description": "We will walk through using Hadoop with Elasticsearch for big data crunching!",
  "attendees": ["Yann", "Bill", "James"],
  "date": "2013-09-09T18:30",
  "location_event": {
    "name": "SkillsMatter Exchange",
    "geolocation": "51.524806,-0.099095"
  },
  "reviews": 2
}'

echo
echo "Done indexing events."

# Refresh so data is available
curl -s -XPOST "$ADDRESS/get-together/_refresh"

echo
echo "Done indexing data."
echo

echo
echo "Creating Templates."
curl -s -XPUT "http://$ADDRESS/_template/logging_index_all" -d'{
    "template" : "logstash-09-*",
    "order" : 1,
    "settings" : {
        "number_of_shards" : 2,
        "number_of_replicas" : 1
   },
    "mappings" : {
        "date" : { "store": false }
    },
    "alias" : { "november" : {} }
}'

echo
curl -s -XPUT "http://$ADDRESS/_template/logging_index" -d '{
    "template" : "logstash-*",
    "order" : 0,
    "settings" : {
        "number_of_shards" : 2,
        “number_of_replicas” : 1
   },
    "mappings" : {
     "date" : { "store": true }
    }
}'
echo
echo "Done Creating Templates."


echo
echo "Adding Dynamic Mapping"
curl -s -XDELETE "http://$ADDRESS/myindex" > /dev/null
curl -s -XPUT "http://$ADDRESS/myindex" -d'
{
    "mappings" : {
        "my_type" : {
            "dynamic_templates" : [{
                "UUID" : {
                    "match" : "*_guid",
                    "match_mapping_type" : "string",
                    "mapping" : {
                        "type" : "string",
                        "index" : "not_analyzed"
                    }
                }
            }]
        }
    }
}'
echo
echo "Done Adding Dynamic Mapping"

echo
echo "Adding Aliases"
curl -s -XDELETE "http://$ADDRESS/november_2014_invoices" > /dev/null
curl -s -XDELETE "http://$ADDRESS/december_2014_invoices" > /dev/null
curl -s -XPOST "http://$ADDRESS/november_2014_invoices" -d'{}'
echo
curl -s -XPOST "http://$ADDRESS/december_2014_invoices" -d'
{
    "mappings" :
    {
        "invoice" :
        {
            "properties" :
            {
                "revenue" : { "type" : "integer" }
            }
        }
    }
}'

echo

curl -s -XPOST "http://$ADDRESS/_aliases" -d'
{
    "actions" : [
	{
		"add" :
		{
			"index" : "november_2014_invoices",
			"alias" : "2014_invoices"
		},
		"add" :
		{
			"index" : "december_2014_invoices",
			"alias" : "2014_invoices"
		},
		"remove" :
		{
		  "index" : "myindex",
		  "alias" : "december_2014_invoices"
		}
	}
    ]
}'
echo
echo "Done Adding Aliases"

echo "Adding Filter Alias"
curl -s -XPOST "http://$ADDRESS/_aliases" -d '
{
    "actions" : [
        {
            "add" : {
                 "index" : "december_2014_invoices",
                 "alias" : "bigmoney",
                 "filter" :
                 {
                    "range" :
                    {
                      "revenue" :
                      {
                        "gt" : 1000
                      }

                    }
                 }
            }
        }
    ]
}'
echo
echo "Done Adding Filter Alias"

echo
echo "Adding Routing Alias"
curl -s -XPOST "http://$ADDRESS/_aliases" -d '
{
    "actions" : [
        {
            "add" : {
                 "index" : "december_2014_invoices",
                 "alias" : "2014_invoices",
                 "search_routing" : "en,es",
                 "index_routing" : "en"
            }
        }
    ]
}'
echo
echo "Done Adding Routing Alias"

echo
)
code(Var)
return