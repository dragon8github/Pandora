!e::

	Menu, mapMenu, Add, 百度地图 bdmap bdmap 一些实用、常用的解决方案, EventHandler
	Menu, mapMenu, Add, echarts 随机地图生成散点, EventHandler
	Menu, mapMenu, Add, bmap 百度地图 农村包围城市、围城、打暗周围, EventHandler

	
	
	Menu, esEventMenu, Add, Elasticsearch#新增数据（索引/类型/文档id）, EventHandler
	Menu, esEventMenu, Add, Elasticsearch#新增索引, EventHandler
	Menu, esEventMenu, Add, Elasticsearch#查看所有索引, EventHandler
	Menu, esEventMenu, Add, Elasticsearch#查看指定索引, EventHandler
	Menu, esEventMenu, Add, Elasticsearch#查看指定索引下的指定类型, EventHandler
	Menu, esEventMenu, Add, Elasticsearch#删除索引, EventHandler
    Menu, esEventMenu, Add, Elasticsearch#查找数据, EventHandler
	

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
	
	
	Menu, JavaScriptEventMenu, Add, , EventHandler
	Menu, JavaScriptEventMenu, Add, (〜￣△￣)〜认知：addEventListener的 capture 和 passive～(￣▽￣～), EventHandler
	Menu, JavaScriptEventMenu, Add, , EventHandler
	
	Menu, JavaScriptEventMenu, Add, capture 和 passive 的作用, EventHandler
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

	Menu, JavaScriptEventMenu, Add
	Menu, JavaScriptEventMenu, Add, 🍁🍁🍁🍁🍁🍁🍁🍁 touch: 移动端常用事件 🍁🍁🍁🍁🍁🍁🍁🍁, EventHandler
	Menu, JavaScriptEventMenu, Add
	Menu, JavaScriptEventMenu, Add, ontouchstart, EventHandler
	Menu, JavaScriptEventMenu, Add, ontouchmove, EventHandler
	Menu, JavaScriptEventMenu, Add, ontouchend, EventHandler
	Menu, JavaScriptEventMenu, Add, ontouchcancel, EventHandler

	Menu, JavaScriptEventMenu, Add
	Menu, JavaScriptEventMenu, Add, 🍁🍁🍁🍁🍁🍁🍁🍁 mouse家族 🍁🍁🍁🍁🍁🍁🍁🍁, EventHandler
	Menu, JavaScriptEventMenu, Add
	Menu, JavaScriptEventMenu, Add, mousedown, EventHandler
	Menu, JavaScriptEventMenu, Add, mouseup, EventHandler
	Menu, JavaScriptEventMenu, Add, mousemove, EventHandler
	Menu, JavaScriptEventMenu, Add, mouseout, EventHandler
	Menu, JavaScriptEventMenu, Add, mouseenter, EventHandler
	Menu, JavaScriptEventMenu, Add, mouseleave, EventHandler

	Menu, JavaScriptEventMenu, Add
	Menu, JavaScriptEventMenu, Add, 🍁🍁🍁🍁🍁🍁🍁🍁 右键菜单 🍁🍁🍁🍁🍁🍁🍁🍁, EventHandler
	Menu, JavaScriptEventMenu, Add
	Menu, JavaScriptEventMenu, Add, contextmenu, EventHandler
	


	Menu, echartsAction, Add, legendUnSelect, EventHandler
	Menu, echartsAction, Add, legendSelect, EventHandler
	Menu, echartsAction, Add, legendToggleSelect, EventHandler

	Menu, echartsAction, Add
	Menu, echartsAction, Add

	Menu, echartsAction, Add, 取消高亮节点：downplay, EventHandler
	Menu, echartsAction, Add, 高亮节点：highlight, EventHandler


	Menu, echartsEventMenu, Add, myChart.dispatchAction, :echartsAction
	Menu, echartsEventMenu, Add, 阈值线最佳实践, EventHandler
	Menu, echartsEventMenu, Add, 柱状图轮播最佳实践, EventHandler
	Menu, echartsEventMenu, Add, echarts.init, EventHandler
	Menu, echartsEventMenu, Add, echarts 通过dom获取echarts实例，批量监听resize, EventHandler
	Menu, echartsEventMenu, Add, echarts 通过dom获取echarts实例，批量监听clear, EventHandler
	Menu, echartsEventMenu, Add, echarts.options, EventHandler
	Menu, echartsEventMenu, Add, echarts.loading, EventHandler


	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add

	Menu, echartsEventMenu, Add, echarts.label, EventHandler
	Menu, echartsEventMenu, Add, echarts.title, EventHandler
	Menu, echartsEventMenu, Add, echarts.legend, EventHandler
	Menu, echartsEventMenu, Add, echarts.visualMap, EventHandler
	Menu, echartsEventMenu, Add, echarts.tooltip, EventHandler
	Menu, echartsEventMenu, Add, echarts.dataSet, EventHandler
	Menu, echartsEventMenu, Add, echarts.zoom滚动条, EventHandler


	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add
	

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
    Menu, echartsEventMenu, Add, ehcarts.formatter 和 rich, EventHandler

	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add

	Menu, echartsEventMenu, Add, echarts.3dmap, EventHandler
	Menu, echartsEventMenu, Add, aspectScale: 1, EventHandler
	Menu, echartsEventMenu, Add, echarts.effectScatter（2d地图散点）, EventHandler
	Menu, echartsEventMenu, Add, echarts.scatter（2d地图气泡）, EventHandler

	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add

	Menu, echartsEventMenu, Add, echarts.datazoom 轮播解决方案, EventHandler
	Menu, echartsEventMenu, Add, echarts.broadcast 轮播器, EventHandler
	Menu, echartsEventMenu, Add, echarts 简单轮播器, EventHandler
	Menu, echartsEventMenu, Add, getPointCenter获取镇区中心点, EventHandler
	Menu, echartsEventMenu, Add, new echarts.graphic.LinearGradient, EventHandler
	Menu, echartsEventMenu, Add, 隐藏xy轴, EventHandler
	Menu, echartsEventMenu, Add, 坐标区域虚线（其实是Y轴不是x轴）, EventHandler
	Menu, echartsEventMenu, Add, echarts geo地图坐标转换为页面Offset坐标, EventHandler
	Menu, echartsEventMenu, Add, getRangeRBG：专门用于生成 echarts 的渐变色, EventHandler
	Menu, echartsEventMenu, Add, echarts + vue Mixins 摧毁方案, EventHandler
	Menu, echartsEventMenu, Add, 气泡动态宽度大小, EventHandler
	Menu, echartsEventMenu, Add, 饼图解决方案：以大带小, EventHandler
	Menu, echartsEventMenu, Add, map.js 类库持续集成, EventHandler
    Menu, echartsEventMenu, Add, toolbox：下载图片的工具, EventHandler

	;@a @1
	Menu, EventMenu, Add, JavaScript, :JavaScriptEventMenu
	Menu, EventMenu, Add, Vue, :VueEventMenu
	Menu, EventMenu, Add, React, :ReactEventMenu
	Menu, EventMenu, Add, jquery, :jqueryEventMenu
	Menu, EventMenu, Add, echarts, :echartsEventMenu
	Menu, EventMenu, Add, 地图相关, :mapMenu
	Menu, EventMenu, Add, elasticsearch, :esEventMenu
	
	
	Menu, EventMenu, Add
	Menu, EventMenu, Add


	Menu, EventMenu, Add, CustomEvent 自定义事件 和 推送, EventHandler
	Menu, EventMenu, Add, 监听键盘码：onKeyBoardEvent, EventHandler
	Menu, EventMenu, Add, 元素触碰位置：captureTouch, EventHandler
	Menu, EventMenu, Add, 元素鼠标位置：captureMouse, EventHandler
	Menu, EventMenu, Add, 鼠标事件大全一次到位：onMouseEvent, EventHandler
    Menu, EventMenu, Add, 监听动画结束：animationend, EventHandler  
	Menu, EventMenu, Add, keycode大全和打印方式, EventHandler
	Menu, EventMenu, Add, js 监听 enter, EventHandler
	Menu, EventMenu, Add, js 组合键监听 ctrl + enter, EventHandler
	Menu, EventMenu, Add, js 组合键监听 ctrl + click, EventHandler
	Menu, EventMenu, Add, js 组合键监听 ctrl + shift + p, EventHandler
	Menu, EventMenu, Add, js 组合键监听 shift + 1, EventHandler
	Menu, EventMenu, Add, js esc键监听, EventHandler
	Menu, EventMenu, Add, window.addEventListener('load'), EventHandler
	
	Menu, EventMenu, Add
	Menu, EventMenu, Add

	Menu, EventMenu, Add, 轮询监听URL变化：onUrlChange, EventHandler
	Menu, EventMenu, Add, 监听 history API 变化 , EventHandler
	Menu, EventMenu, Add, 哈希变化hashchange, EventHandler
	Menu, EventMenu, Add, 用Input事件代替keyup事件：$('input').on('input'`, search), EventHandler
	Menu, EventMenu, Add, 对全体元素绑定事件：document.documentElement.addEventListener, EventHandler
	Menu, EventMenu, Add, 辅助功能：网页添加ctrl + d = debugger的快捷键, EventHandler
	Menu, EventMenu, Add, 模拟真实点击click，专门对付clickoutside, utilsHandler
	Menu, EventMenu, Add, ClickOutside 点击外部冒泡, utilsHandler
	Menu, EventMenu, Add, 长按longpress手势, EventHandler
	Menu, EventMenu, Add, String.fromCharCode(e.keycode), EventHandler
	Menu, EventMenu, Add, 监听paste复制黏贴事件, EventHandler

	Menu, EventMenu, Add
	Menu, EventMenu, Add
	
	Menu, EventMenu, Add, 用 passive 特性让页面滑动流畅, EventHandler
	Menu, EventMenu, Add, click 与 e.clientX/e.clientY, EventHandler
	Menu, EventMenu, Add, event.preventDefault(); event.stopPropagation();, EventHandler
	Menu, EventMenu, Add, capture模式的含义：由外而内, EventHandler
	
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

if (v == "js 组合键监听 shift + 1") {
Var =
(
window.addEventListener("keydown", (e) => {
	const { shiftKey, keyCode } = e

	if (shiftKey && keyCode === 49) {
	    this.openfy()
	}
})
)
}

if (v == "mousedown") {
Var = 
(
document.addEventListener('mousedown', function (e) {
	console.log(20200801091642, e)
})
)
}

if (v == "mouseup") {
Var = 
(
document.addEventListener('mouseup', function (e) {
	console.log(20200801091642, e)
})
)
}

if (v == "mousemove") {
Var = 
(
document.addEventListener('mousemove', function (e) {
	console.log(20200801091642, e)
})
)
}

if (v == "mouseout") {
Var = 
(
document.addEventListener('mouseout', function (e) {
	console.log(20200801091642, e)
})
)
}

if (v == "mouseenter") {
Var = 
(
document.addEventListener('mouseenter', function (e) {
	console.log(20200801091642, e)
})
)
}

if (v == "mouseleave") {
Var = 
(
document.addEventListener('mouseleave', function (e) {
	console.log(20200801091642, e)
})
)
}

if (v == "contextmenu") {
Var = 
(
document.addEventListener('contextmenu', function (e) {
	// 拦截浏览器默认右键行为
    e.preventDefault()
})
)
}


if (v == "CustomEvent 自定义事件 和 推送") {
_send("customevent", true, true)
return
}

if (v == "echarts.datazoom 轮播解决方案") {
Var =
(
<template>
    <div @mouseover='mouseover' @mouseout='mouseout' >
        <v-chart :options="option" class='chart' ref="FireChart"></v-chart>
    </div>
</template>
<script>
import { poll, isNaN } from '@/utils/utils'
import { mapState, mapActions } from 'vuex'

export default {
    data() {
        return {
            option: {},
            timer: null,
            startValue: 0,
            endValue: 6,
        }
    },
    props: {
        title: { type: String, default: '' },
    },
    computed: {
        factoryRubbishWeight() {
            return this.maybe(_ => this.$store.state.Index.factoryRubbishWeight.filter(_ => !_.streetname.includes('厂内物质')), [])
        },
    },
    watch: {
        factoryRubbishWeight: {
            deep: true,
            immediate: true,
            handler(newV, oldV) {
                if (newV) {
                    // 渲染 chart
                    this.renderChart(newV.sort((a, b) => +a.contractnum - +b.contractnum))
                    // 开始轮询
                    this.poll2(newV, 0, 6)
                }
            }
        },
        title() {
            this.$store.dispatch('Index/factoryRubbishWeight2', this.title)
        }
    },
    methods: {
        mouseover () {
            clearInterval(this.timer)
        },
        mouseout() {
            const { startValue, endValue } = this.$refs.FireChart.computedOptions.dataZoom[0]
            this.poll2(this.factoryRubbishWeight, startValue, endValue)
        },
        poll2(newV, startValue = 0, endValue = 6) {
            const len = newV.length

            // 先清楚上一次的轮询
            clearInterval(this.timer)

            // fixbug： 找不到 FireChart 导致问题
            poll(() => this.$refs.FireChart, () => {
                this.timer = setInterval(() => {
                    // 如果是最后一个？
                    if (endValue >= len - 1) {
                        // 还原
                        this.$refs.FireChart.dispatchAction({ type: 'dataZoom', startValue: startValue = 0, endValue: endValue = 6 })
                    } else {
                        // 轮播
                        this.$refs.FireChart.dispatchAction({ type: 'dataZoom', startValue: startValue++, endValue: endValue++ })
                    }
                }, 5 * 1000)
            })
        },
        renderChart(dataArr) {
            // xAxis 、 bar-data
            const [xdataName, dataNum, contractnum] = dataArr.maps(_ => _.streetname, _ => (_.num || 0) / 1000, _ => _.contractnum || 0)

            // tooltip
            const tooltip = {
                trigger: 'axis',
                textStyle: { fontSize: 18 },
                axisPointer: { 
                  type: 'cross', 
                  label: { 
                    backgroundColor: '#283b56' 
                  }
                },
                formatter: v => {
                    const [a, b] = v
                    return `
                      <div class='u-p-2'>
                        <div>垃圾合同量：${a.value}（吨）</div>
                        <div class='u-mt-2'>垃圾产生量：${b.value}（吨）</div>
                      </div>
                    `
                }
            }

            // grid
            const grid = { top: '10`%', left: '7`%', right: '2`%', bottom: '24`%' }

            // xAxis
            const xAxis = {
                type: 'category',
                boundaryGap: true,
                data: xdataName,
                axisLine: { lineStyle: { color: 'rgba(255,255,255,1)' } },
                axisLabel: {
                    textStyle: { fontSize: 20 },
                    formatter: v => v.length > 4 ? v.slice(0, 4) + '\n' + v.slice(4) : v,
                    rotate: 0
                }
            }

            // yAxis
            const yAxis = {
                type: 'value',
                // name: '当日垃圾进场图',
                nameTextStyle: {
                    color: '#f29f02',
                    fontSize: 20,
                    padding: [0, 0, 5, 30]
                },
                scale: true,
                min: 0,
                boundaryGap: [0.2, 0.2],
                splitLine: { show: false },
                axisLine: { lineStyle: { color: 'rgba(255,255,255,1)' } },
                axisLabel: {
                    textStyle: { fontSize: 16 },
                    formatter: v => v + '吨'
                }
            }

            // dataZoom
            const dataZoom = [{
                top: 20,
                show: true,
                type: 'inside',
                xAxisIndex: [0],
                moveOnMouseWheel: true,
                moveOnMouseMove: true,
                zoomOnMouseWheel: false,
                startValue: 0,
                endValue: 6
            }]

            // series
            const series = [{
                name: '垃圾合同量',
                type: 'bar',
                barWidth: 15,
                data: contractnum,
                itemStyle: {
                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#f6ec66'
                    }, {
                        offset: 1,
                        color: '#fadc6d'
                    }]),
                }
            }, {
                name: '垃圾产生量',
                type: 'bar',
                barWidth: 15,
                data: dataNum,
                itemStyle: {
                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#007cf3'
                    }, {
                        offset: 1,
                        color: '#38d9e5'
                    }]),
                }
            }]

            this.option = { tooltip, grid, xAxis, yAxis, dataZoom, series }
        }
    },
    beforeMount() {
        this.$store.dispatch('Index/factoryRubbishWeight', this.title)
    },
    destroyed() {
        clearInterval(this.timer)
    },
}
</script>
<style lang='scss' scoped>
.chart {
    width: 100`%;
    height: rem(250);
}
</style>
)
}

if (v == "bmap 百度地图 农村包围城市、围城、打暗周围") {
Var =
(
// 高亮的镇街
lightCity(city) {
    // 南城
    let path = "";
    let path2;
    
    // 获取当前选中的镇街的轮廓坐标集合
    const grid = DongGuanGrid[city]
    // 拼接path成 "180, 90;" 格式
    path = grid.join(';') + ';'
    // 东南西北四个角
    const EN_JW = "180, 90;";
    const NW_JW = "-180,  90;";
    const WS_JW = "-180, -90;";
    const SE_JW = "180, -90;";

    // 东南西北四个角添加一个覆盖物
    const ply = new BMap.Polygon(
        path + SE_JW + WS_JW + NW_JW + EN_JW + SE_JW, {
            strokeColor: "none",
            fillColor: "#020729",
            fillOpacity: 0.8,
        }
    `);
    // 遮罩
    map.addOverlay(ply);

    // 当前镇街边界
    path2 = grid.map(g => new BMap.Point(...g));
    // 画线
    const ply2 = new BMap.Polyline(path2, {
        strokeColor: "aqua",
        strokeOpacity: 1,
        strokeWeight: 2
    });
    // 边界线 数据问题，所以要另加一根线
    map.addOverlay(ply2);
},
)
}

if (v == "echarts.zoom滚动条") {
Var =
(
methods: {
	clear() {
	    this.option = {}
	},
	mouseover () {
	    clearInterval(this.timer)
	},
	mouseout() {
	    const { startValue, endValue } = this.$refs.FireChart.computedOptions.dataZoom[0]
	    this.poll2(this.factoryRubbishWeight, startValue, endValue)
	},
	poll2(newV, startValue = 0, endValue = 6) {
	    const len = newV.length

	    // 先清楚上一次的轮询
	    clearInterval(this.timer)

	    // fixbug： 找不到 FireChart 导致问题
	    poll(() => this.$refs.FireChart, () => {
	        this.timer = setInterval(() => {
	            // 如果是最后一个？
	            if (endValue >= len - 1) {
	                // 还原
	                this.$refs.FireChart.dispatchAction({ type: 'dataZoom', startValue: startValue = 0, endValue: endValue = 6 })
	            } else {
	                // 轮播
	                this.$refs.FireChart.dispatchAction({ type: 'dataZoom', startValue: startValue++, endValue: endValue++ })
	            }
	        }, 5 * 1000)
	    })
	},
	renderChart(dataArr) {
	    // xAxis 、 bar-data
	    const [xdataName, dataNum, contractnum] = dataArr.maps(_ => _.streetname, _ => (_.num || 0) / 1000, _ => _.contractnum || 0)

	    // tooltip
	    const tooltip = {
	        trigger: 'axis',
	        textStyle: { fontSize: 18 },
	        axisPointer: { 
	          type: 'cross', 
	          label: { 
	            backgroundColor: '#283b56' 
	          }
	        },
	        formatter: v => {
	            const [a, b] = v
	            return ``
	              <div class='u-p-2'>
	                <div>垃圾合同量：${a.value}（吨）</div>
	                <div class='u-mt-2'>垃圾产生量：${b.value}（吨）</div>
	              </div>
	            ``
	        }
	    }

	    // grid
	    const grid = { top: '10`%', left: '7`%', right: '2`%', bottom: '24`%' }

	    // xAxis
	    const xAxis = {
	        type: 'category',
	        boundaryGap: true,
	        data: xdataName,
	        axisLine: { lineStyle: { color: 'rgba(255,255,255,1)' } },
	        axisLabel: {
	            textStyle: { fontSize: 20 },
	            formatter: v => v.length > 4 ? v.slice(0, 4) + '\n' + v.slice(4) : v,
	            rotate: 0
	        }
	    }

	    // yAxis
	    const yAxis = {
	        type: 'value',
	        // name: '当日垃圾进场图',
	        nameTextStyle: {
	            color: '#f29f02',
	            fontSize: 20,
	            padding: [0, 0, 5, 30]
	        },
	        scale: true,
	        min: 0,
	        boundaryGap: [0.2, 0.2],
	        splitLine: { show: false },
	        axisLine: { lineStyle: { color: 'rgba(255,255,255,1)' } },
	        axisLabel: {
	            textStyle: { fontSize: 16 },
	            formatter: v => v + '吨'
	        }
	    }

	    // dataZoom
	    const dataZoom = [{
	        top: 20,
	        show: true,
	        type: 'inside',
	        xAxisIndex: [0],
	        moveOnMouseWheel: true,
	        moveOnMouseMove: true,
	        zoomOnMouseWheel: false,
	        startValue: 0,
	        endValue: 6
	    }]

	    // series
	    const series = [{
	        name: '垃圾合同量',
	        type: 'bar',
	        barWidth: 15,
	        data: contractnum,
	        itemStyle: {
	            color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
	                offset: 0,
	                color: '#f6ec66'
	            }, {
	                offset: 1,
	                color: '#fadc6d'
	            }]),
	        }
	    }, {
	        name: '垃圾产生量',
	        type: 'bar',
	        barWidth: 15,
	        data: dataNum,
	        itemStyle: {
	            color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
	                offset: 0,
	                color: '#007cf3'
	            }, {
	                offset: 1,
	                color: '#38d9e5'
	            }]),
	        }
	    }]

	    this.option = { tooltip, grid, xAxis, yAxis, dataZoom, series }
	}
},
)
}

if (v == "阈值线最佳实践") {
Var =
(
// https://gallery.echartsjs.com/editor.html?c=x7AFiJ06e
const getWarnLineConfig = value => ({
    type: 'line',
    symbol: 'circle',
    symbolSize: 10,
    smooth: true,
    animationDuration: 2000,
    markLine: { silent: true, data: [{ yAxis: value }] },
    markPoint: {
        data: [{ name: '触发', value: value, coord: [0, 120] }],
        label: { show: true, align: 'center', color: 'WHITE', fontWeight: 100, formatter: '{b}'},
        itemStyle: { color: {type: 'radial', x: 0.4, y: 0.4, r: 0.9, colorStops: [{offset: 0, color: '#51e0a2'}, {offset: 1, color: 'rgb(33,150,243)'}], globalCoord: false }, shadowColor: 'rgba(0, 0, 0, 0.5)', shadowBlur: 10, },
    }
})
)
}

if (v == "柱状图轮播最佳实践") {
Var =
(
watch: {
    factoryRubbishWeight: {
        deep: true,
        immediate: true,
        handler (newV, oldV) {
            if (newV) {
              this.poll(newV)
            }
        }
    }
},
methods: {
    poll (newV) {
       const pages = division(newV, 6, [])

       const len = pages.length

       clearInterval(this.timer)

       // 当前分页指针
       let current = 0

       this.timer = (function(fn, t) {
           // 立即执行一次，这也是这个IIFE的目的：为了解决 setInterval 首次不执行的尴尬
           fn && fn()
           // 返回计时器timer
           return setInterval(fn, t)
       })(() => {
           // your logic...
           const data = pages[current++ `% len]

           // 渲染 chart
           this.renderChart(data)
       }, 5 * 1000)
    },
}
)
}

if (v == "capture 和 passive 的作用") {
Var =
(
capture 几乎不用管，默认为 false，而且大部分场景也不会管它。
它是冒泡的意思。默认冒泡是从里到外，符合自觉，如果设置为true，就是从外到里。极少场景需要设置为 true。
---
passive 才是优化重点，默认为 true，如果设置为 false 则能提高流畅度，代价是无法使用event.preventDefault()
passive 意思是顺从的意思，即顺从浏览器安排，不反抗，不中断。让浏览器顺滑的执行。
)
}

if (v == "百度地图 bdmap bdmap 一些实用、常用的解决方案") {
Var =
(
https://www.jianshu.com/p/e44a68bf0cdc
https://www.cnblogs.com/weiweictgu/p/6196235.html
---
map.getOverlays().filter(_ => _.city)

setTimeout(() => {
    map.setViewport(map.getOverlays().filter(_ => _.city)[0].getPath())
}, 5000);

BMapLib.GeoUtils.isPointInPolygon(new BMap.Point(113.843319, 22.921901), map.getOverlays().filter(_ => _.city)[0])
---
按照 polygon 生成，如果有需要东莞市访问内生成，
你就需要先渲染一个 东莞市的轮廓了。并且找到它。
const py = map.getOverlays().filter(_ => _.city)[0]

const bounds = py.getBounds()

function addMarker(p) {
    var marker = new BMap.Marker(p);
    map.addOverlay(marker);
}

var sw = bounds.getSouthWest();
var ne = bounds.getNorthEast();
var lngSpan = Math.abs(sw.lng - ne.lng);
var latSpan = Math.abs(ne.lat - sw.lat);
var ary = []

for (var i = 0; i < 10; i++) {
    var p = new BMap.Point(sw.lng + lngSpan * Math.random(), ne.lat - latSpan * Math.random());
    if (BMapLib.GeoUtils.isPointInPolygon(p, py)) {
        addMarker(p)
        ary.push(p)
    } else {
       i--
    }
}

console.log(20200117131136, ary)
)
}

if (v == "echarts 随机地图生成散点") {
Var =
(
重点是如何判断是否包含东莞市？
var geo = myChart.getModel().getComponent('geo').coordinateSystem

geo.containCoord([113.843319, 28.921901])
---
东莞市获取
const randomCount = 100

const geo = myChart.getModel().getComponent('geo').coordinateSystem;

// 获取区域信息
const rect = geo.getBoundingRect()

const coords = [...Array(randomCount)].map((v, index, array) => {
	// 初始化坐标
	let coord = [0, 0]

	// 轮询直到添加不重复的点城管
    while (!geo.containCoord(coord)) {
    	coord[0] = rect.x + Math.random() * rect.width
    	coord[1] = rect.y + Math.random() * rect.height
    }

    return coord
});

console.log(20200115144141, coords)
---
某个镇区获取
var getRandomPoint = (chart, name, randomCount = 100) => {
	const geo = chart.getModel().getComponent('geo').coordinateSystem;

	// 尝试获取区域，如果不存在则为 null
	const region = geo.getRegion(name)

	// 获取区域信息
	const rect = region.getBoundingRect()

	return [...Array(randomCount)].map((v, index, array) => {
		// 初始化坐标
		let value = [0, 0]

		// 随便取一个名字
		const name = 's' + index

		// 轮询直到添加不重复的点城管
	    while (!region.contain(value)) {
	    	value[0] = rect.x + Math.random() * rect.width
	    	value[1] = rect.y + Math.random() * rect.height
	    }

        return { name, value }
	});
};
---
封装 与 测试
var getRandomPoint = (myChart, randomCount = 100) => {
	const geo = myChart.getModel().getComponent('geo').coordinateSystem;

	// 获取区域信息
	const rect = geo.getBoundingRect()

	return [...Array(randomCount)].map((v, index, array) => {
		// 初始化坐标
		let value = [0, 0]

		// 随便取一个名字
		const name = 's' + index

		// 轮询直到添加不重复的点城管
	    while (!geo.containCoord(value)) {
	    	value[0] = rect.x + Math.random() * rect.width
	    	value[1] = rect.y + Math.random() * rect.height
	    }

	    return { name: name, value: value }
	});
};

// 生成100个散点
var RandomPoint = getRandomPoint(myChart, 100);

// 插入散点测试
var opts = myChart.getOption();
opts.series[1].data = RandomPoint;
myChart.setOption(opts);
---
测试2
(function(console) {
    console.save = function(data, filename) {
        if (!data) {
            console.error('Console.save: No data')
            return;
        }
        if (!filename) filename = 'mock1.js'
        if (typeof data === "object") {
            data = JSON.stringify(data, undefined, 4)
        }
        var blob = new Blob([data], { type: 'text/json' }),
            e = document.createEvent('MouseEvents'),
            a = document.createElement('a')

        a.download = filename
        a.href = window.URL.createObjectURL(blob)
        a.dataset.downloadurl = ['text/json', a.download, a.href].join(':')
        e.initMouseEvent('click', true, false, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null)
        a.dispatchEvent(e)
    }
})(console)

// 范围选择如 -100 ~ 100 强烈推荐这个函数
var random = (min, max) => min + Math.floor(Math.random() * (max - min + 1))

var getRandomPoint = (chart, name, randomCount = 100) => {
	const geo = chart.getModel().getComponent('geo').coordinateSystem;

	// 尝试获取区域，如果不存在则为 null
	const region = geo.getRegion(name)

	// 获取区域信息
	const rect = region.getBoundingRect()

	return [...Array(randomCount)].map((v, index, array) => {
		// 初始化坐标
		let value = [0, 0]

		// 随便取一个名字
		const name = 's' + index

		// 轮询直到添加不重复的点城管
	    while (!region.contain(value)) {
	    	value[0] = rect.x + Math.random() * rect.width
	    	value[1] = rect.y + Math.random() * rect.height
	    }

	    // 生成符合mapV的格式
	    const point = { geometry: { type: 'Point', coordinates: value, color: random(1, 3) } }

	    // 三十分之一的几率会产生一个闪点
	    if (random(1, 30) === 30) {
	    	point.time = Math.random() * 10
	    }

	    return point
	});
};


var RandomPoint = [
	getRandomPoint(myChart, '东城', 5000,),
	getRandomPoint(myChart, '厚街', 5000,),

	getRandomPoint(myChart, '南城', 4000,),
	getRandomPoint(myChart, '万江', 4000,),
	getRandomPoint(myChart, '寮步', 4000,),

	getRandomPoint(myChart, '大岭山', 3000,),
	getRandomPoint(myChart, '松山湖', 3000,),

	getRandomPoint(myChart, '虎门', 3000,),
	getRandomPoint(myChart, '长安', 3000,),


	getRandomPoint(myChart, '茶山', 500,),
	getRandomPoint(myChart, '莞城', 500,),
	getRandomPoint(myChart, '大朗', 500,),
	getRandomPoint(myChart, '道滘', 500),
	getRandomPoint(myChart, '洪梅', 500),
	getRandomPoint(myChart, '望牛墩', 500),

	getRandomPoint(myChart, '石碣', random(150, 300),),
	getRandomPoint(myChart, '石龙', random(150, 300),),
	getRandomPoint(myChart, '石排', random(150, 300),),
	getRandomPoint(myChart, '企石', random(150, 300),),
	getRandomPoint(myChart, '横沥', random(150, 300),),
	getRandomPoint(myChart, '桥头', random(150, 300),),
	getRandomPoint(myChart, '谢岗', random(150, 300),),
	getRandomPoint(myChart, '东坑', random(150, 300),),
	getRandomPoint(myChart, '常平', random(150, 300),),
	getRandomPoint(myChart, '黄江', random(150, 300),),
	getRandomPoint(myChart, '清溪', random(150, 300),),
	getRandomPoint(myChart, '塘厦', random(150, 300),),
	getRandomPoint(myChart, '凤岗', random(150, 300),),
	getRandomPoint(myChart, '沙田', random(150, 300),),
	getRandomPoint(myChart, '麻涌', random(150, 300),),
	getRandomPoint(myChart, '中堂', random(150, 300),),
	getRandomPoint(myChart, '高埗', random(150, 300),),
	getRandomPoint(myChart, '樟木头', random(150, 300),),
].flat()

const data1 = RandomPoint.filter(_ => _.geometry.color === 1)
const data2 = RandomPoint.filter(_ => _.geometry.color === 2)
const data3 = RandomPoint.filter(_ => _.geometry.color === 3)
const data4 = RandomPoint.filter(_ => _.time)

console.save(``
window.__data1__ = ${JSON.stringify(data1)};
window.__data2__ = ${JSON.stringify(data2)};
window.__data3__ = ${JSON.stringify(data3)};
window.__data4__ = ${JSON.stringify(data4)};
``)

// 插入散点测试
// var opts = myChart.getOption();
// opts.series[1].data = RandomPoint;
// myChart.setOption(opts);
)
}

if (v == "ontouchstart") {
Var = 
(
addEventListener('touchstart', (event) => {
	console.log('touchstart')
}, { capture: false, passive: false })
)
}

if (v == "ontouchmove") {
Var = 
(
addEventListener('touchmove', (event) => {
	console.log('touchmove')
}, { capture: false, passive: false })
)
}

if (v == "ontouchend") {
Var = 
(
addEventListener('touchend', (event) => {
	console.log('touchend')
}, { capture: false, passive: false })
)
}

if (v == "ontouchcancel") {
Var = 
(
addEventListener('touchcancel', (event) => {
	console.log('touchcancel')
}, { capture: false, passive: false })
)
}

if (v == "取消高亮节点：downplay") {
Var = 
(
// 取消高亮
myChart.dispatchAction({ type: 'downplay', seriesIndex: 0, dataIndex: current `% len })
)
}
if (v == "高亮节点：highlight") {
Var = 
(
// 高亮当前节点
myChart.dispatchAction({ type: 'highlight', seriesIndex: 0, dataIndex: ++current `% len })
)
}

if (v == "legendUnSelect") {
Var = 
(
myChart.dispatchAction({ type: 'legendUnSelect', name: '其他类' })	
)
}

if (v == "legendSelect") {
Var = 
(
myChart.dispatchAction({ type: 'legendSelect', name: '其他类' })	
)
}

if (v == "legendToggleSelect") {
Var = 
(
myChart.dispatchAction({ type: 'legendToggleSelect', name: '其他类' })	
)
}

if (v == "ehcarts.formatter 和 rich") {
_send("ehcarts.rich", true, true)
return
}

if (v == "饼图解决方案：以大带小") {
_send("yidadaixiao", true, true)
return
}

if (v == "气泡动态宽度大小") {
Var =
(
// 散点大小
symbolSize: val => {
    // 获取所有values
    const values = scatter_data.map(_ => _.value[2])

    // 获取最大值
    const max = Math.max(Math.max(...values))
    // 获取最小值
    const min = Math.min(...values)

    // 定义最大气泡
    const maxSize4Pin = 30
    // 定义最小气泡
    const minSize4Pin = 10

    // 固定套路
    var a = (maxSize4Pin - minSize4Pin) / (max - min);
    /* var b = minSize4Pin - a * min; */
    var b = maxSize4Pin - a * max;
    return a * val[2] + b;
},

var dynamicWidth = (min = 0, max = 1, minSize = 1, maxSize = 10) => (v = 0) => {
    const a = (maxSize - minSize) / (max - min)
    const b = maxSize - a * max
    return a * v + b
}
)
}

if (v == "监听键盘码：onKeyBoardEvent") {
Var = 
(
function onKeyBoardEvent (event) {
	switch (event.keyCode) {
		case 38:
			console.log('up')
			break;
		case 39:
			console.log('right')
			break;
		case 40:
			console.log('down')
			break;
		case 37:
			console.log('left')
			break;
		default:
			console.log(event.keyCode)
	}
}

window.addEventListener('keydown', onKeyBoardEvent, false)
)
}

if (v == "元素触碰位置：captureTouch") {
Var = 
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    html, body{
        margin: 0;
        padding: 0;
        background-color: #ddd;
    }

    #canvas {
        width: 600px;
        height: 300px;
        margin: 20px;
        background: #fff;
    }
    </style>
</head>

<body>
    <!--
        当设置元素的width/height属性时，是同时修改了该元素本身大小和元素绘图表面的大小。
        如果是通过 CSS 来设定canvas的大小，那么只会改变元素本身的大小，而不会影响到绘图表面。
    -->
    <canvas id='canvas' width='600' height='300'>
        Canvas not supported
    </canvas>
</body>
<script>
    const captureTouch = element => {
        let touch = { x: 0, y: 0, isPressed: false }

        element.addEventListener('touchstart', event => {
            touch.isPressed = true
        }, false)

        element.addEventListener('touchstart', event => {
            touch.isPressed = false
            touch.x = null
            touch.y = null
        }, false)

        element.addEventListener('touchmove', event => {
            let x, y, touch_event = event.touches[0]

            if (touch_event.pageX || touch_event.pageY) {
                x = touch_event.pageX
                y = touch_event.pageY
            } else {
                x = touch_event.clientX + document.body.scrollLeft + document.documentElement.scrollLeft
                y = touch_event.clientY + document.body.scrollTop + document.documentElement.scrollTop
            }

            x -= element.offsetLeft
            y -= element.offsetTop

            touch.x = x
            touch.y = y
        }, false)
        
        return touch
    }

    const canvas = document.getElementById('canvas')
           touch = captureTouch(canvas)

    canvas.addEventListener('touchmove', function () {
        console.log(touch.x, touch.y)
    }, false)
</script>
</html>
)
}

if (v == "元素鼠标位置：captureMouse") {
Var = 
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    html, body{
        margin: 0;
        padding: 0;
        background-color: #ddd;
    }

    #canvas {
        width: 600px;
        height: 300px;
        margin: 20px;
        background: #fff;
    }
    </style>
</head>

<body>
    <!--
        当设置元素的width/height属性时，是同时修改了该元素本身大小和元素绘图表面的大小。
        如果是通过 CSS 来设定canvas的大小，那么只会改变元素本身的大小，而不会影响到绘图表面。
    -->
    <canvas id='canvas' width='600' height='300'>
        Canvas not supported
    </canvas>
</body>
<script>
    const captureMouse = element => {
		let mouse = { x: 0, y: 0 }

		element.addEventListener('mousemove', event => {
			let x, y

			if (event.pageX || event.pageY) {
				x = event.pageX
				y = event.pageY
			} else {
				x = event.clientX + document.body.scrollLeft + document.documentElement.scrollLeft
				y = event.clientY + document.body.scrollTop + document.documentElement.scrollTop
			}

			x -= element.scrollLeft
			y -= element.scrollTop

			mouse.x = x     
			mouse.y = y

		}, false)

		return mouse
	}

	const canvas = document.getElementById('canvas')
		   mouse = captureMouse(canvas)

	canvas.addEventListener('mousemove', function () {
		console.log(mouse.x, mouse.y)
	}, false)
	</script>
</html>
)
}



if (v == "鼠标事件大全一次到位：onMouseEvent") {
Var = 
(
const app = document.getElementById('app')

const onMouseEvent = e => {
	console.log(e.type)
}

app.addEventListener('mousedown', onMouseEvent, false)
app.addEventListener('mouseup', onMouseEvent, false)
app.addEventListener('click', onMouseEvent, false)
app.addEventListener('dblclick', onMouseEvent, false)
app.addEventListener('mousewheel', onMouseEvent, false)
app.addEventListener('mousemove', onMouseEvent, false)
app.addEventListener('mouseover', onMouseEvent, false)
app.addEventListener('mouseout', onMouseEvent, false)

app.addEventListener('touchstart', onMouseEvent, false)
app.addEventListener('touchend', onMouseEvent, false)
app.addEventListener('touchmove', onMouseEvent, false)
)
}



if (v == "echarts + vue Mixins 摧毁方案") {
Var = 
(
// mixins/clearEcharts.js
export default {
  beforeRouteLeave(to, from, next) {
    // 获取页面中所有echarts的示例宿主
    const _echarts_instance_ = document.querySelectorAll(
      "[_echarts_instance_]"
    `)
    // 遍历所有的宿主元素
    _echarts_instance_.forEach(function(e, i) {
      // 通过宿主进而获取对应的echarts，并且重置大小
      echarts.getInstanceByDom(e).clear()
    })
    放行
    next()
  }
}

// App.vue
import Mixin from '@/mixins/clearEcharts.js'
export default {
    mixins: [Mixin],
}
)
}

if (v == "getRangeRBG：专门用于生成 echarts 的渐变色") {
_send("getEchartscolor", true, true)
return
}



if (v == "echarts.dataSet") {
_send("echarts.dataSet", true, true)
return
}

if (v == "window.addEventListener('load')") {
_send("onload", true, true)
return
}

if (v == "轮询监听URL变化：onUrlChange") {
_send("onurl", true, true)
return
}

if (v == "监听 history API 变化") {
Var = 
(
const regHistoryEvent = (EVENT_NAME = 'history') => {
	// 获取 history.pushState 函数引用（这里的bind是history.pushState的特性决定的）
	const PUSH_STATE =  history.pushState.bind(history)

	// 获取 history.replaceState 函数引用（这里的bind是history.replaceState的特性决定的）
	const REPLACE_STATE =  history.replaceState.bind(history)

	// 为函数注册事件，返回一个函数，需要手动替换。
	const regEvent = (origin, name) => (...args) => {
		// 执行原函数
		const result = origin(...args)
		// 新建一个事件
		const event = new Event(name)
		// （可选）注入参数，爱用不用
		event.args = args
		// 推送事件
		window.dispatchEvent(event)
		// 返回原函数结果
		return result
	}

	// 手动替换history.pushState
	history.pushState = regEvent(PUSH_STATE, EVENT_NAME)

	// 手动替换history.replaceState
	history.replaceState = regEvent(REPLACE_STATE, EVENT_NAME)
}

// 注册 history 事件
regHistoryEvent()

window.addEventListener('history', e => {
	console.log(20190721121908, e.args)
})

history.pushState(null, null, '123')
)
}


if (v == "哈希变化hashchange") {
_send("onhash", true, true)
return
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



if (v == "echarts 通过dom获取echarts实例，批量监听clear") {
Var = 
(
export default {
  beforeRouteLeave(to, from, next) {
    // 获取页面中所有echarts的示例宿主
    const _echarts_instance_ = document.querySelectorAll("[_echarts_instance_]")
    // 遍历所有的宿主元素
    _echarts_instance_.forEach(function(e, i) {
      // 通过宿主进而获取对应的echarts，并且重置大小
      echarts.getInstanceByDom(e).clear()
    })
    // 放行
    next()
  }
}
)
}


if (v == "echarts 通过dom获取echarts实例，批量监听resize") {
Var = 
(
beforeMount() {
    // 懒加载优化：滚动节流策略
    var __SCROLLTIMER__ = null

    // 重新设置 echarts 的宽高
    // 其实 v-cahrt 加入 autoresize 也可以。但算了吧，为了方便还是这里统一处理
    var resizeEcharts = () => {
        document.querySelectorAll('[_echarts_instance_]').forEach(e => {
          echarts.getInstanceByDom(e).resize()
        })
    }

    // 绑定事件
    window.onresize = function() {
        clearTimeout(__SCROLLTIMER__)
        __SCROLLTIMER__ = setTimeout(resizeEcharts, 150)
    }
},
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
function isMobile(ua) {
    if (!ua && typeof navigator != 'undefined') ua = navigator.userAgent;
    if (ua && ua.headers && typeof ua.headers['user-agent'] == 'string') {
        ua = ua.headers['user-agent'];
    }
    if (typeof ua != 'string') return false;

    return /(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(ua) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(ua.substr(0, 4));
}

/**
 * 绑定长按事件，同时支持绑定点击事件
 * @param {dom} dom 需要绑定的dom元素
 * @param {fn} longPressCallBack 长按事件执行的方法
 * @param {fn} touchCallBack 点击事件执行的方法
 */
var longPress = function(dom, longPressCallBack, touchCallBack) {
    var timer = undefined;
    var isLongPress = false;
    var _isMobile = isMobile();

    var setEvent = function(e) {
        e.addEventListener(_isMobile ? 'touchstart' : 'mousedown', function(event) {
            timer = setTimeout(function() {
                isLongPress = true
                longPressCallBack && longPressCallBack(e);
            }, 250);
        }, false);

        // 如果是PC端，就不需要判断滑动
        _isMobile && e.addEventListener('touchmove', function(event) {
            clearTimeout(timer);
        }, false);

        e.addEventListener(_isMobile ? 'touchend' : 'mouseup', function(event) {
            if (!isLongPress) 
                touchCallBack && touchCallBack()

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

longPress(document.getElementById('longPress'), function() {
    console.log('longPress')
}, function() {
    console.log('touch');
});

[...document.querySelectorAll('.longPress')].forEach(function(e, i) {
    longPress(e, function() {
        console.log('longPress')
    }, function() {
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
_send("echarts.lunbo", true, true)
return
}

if (v == "aspectScale: 1") {
Var = 
(
aspectScale: 1
)
}


if (v == "echarts.init") {
_send("echarts.init", true, true)
return
}

if (v == "echarts.options") {
_send("echarts.options", true, true)
return
}

if (v == "echarts.loading") {
_send("echarts.loading", true, true)
return
}

if (v == "echarts.pin（饼图）") {
_send("echarts.pin", true, true)
return
}

if (v == "echarts.bar（柱状图）") {
_send("echarts.bar", true, true)
return
}

if (v == "echarts.line（折线图）") {
_send("echarts.line", true, true)
return
}

if (v == "echarts.rose（玫瑰图）") {
_send("echarts.rose", true, true)
return
}

if (v == "echarts.label") {
_send("echarts.label", true, true)
return
}

if (v == "echarts.title") {
_send("echarts.title", true, true)
return
}

if (v == "echarts.legend") {
_send("echarts.legend", true, true)
return
}

if (v == "echarts.visualMap") {
_send("echarts.visualMap", true, true)
return
}

if (v == "echarts.tooltip") {
_send("echarts.tooltip", true, true)
return
}

if (v == "echarts.3dmap") {
_send("echarts.3dmap", true, true)
return
}

if (v == "echarts.effectScatter（2d地图散点）") {
_send("sandian")
return
}

if (v == "echarts.scatter（2d地图气泡）") {
_send("echarts.qipao", true, true)
return
}

if (v == "getPointCenter获取镇区中心点") {
_send("getPointCenter", true, true)
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
_send("eclick", true, true)
return
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

txtit(Var)
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


::code::
::eventcode::
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
code(gistByName("c561adde0d422862cd18a20a0e435b43", "map.js"))
return

::onhash::
Var =
(
window.addEventListener('hashchange', function () {
	console.log(20190721153615, 123)
})
)
code(Var)
return

::onurl::
::onurlchange::
::onurlupdate::
::urlchange::
::urlupdate::
Var =
(
/**
 * url变化轮询监听器。 为了同时处理hash和history
 *
 */
const onUrlChange = (function() {
    // 获取当前url
    let url = window.location.href
    // 消息队列
    let queue = []
    // 计时器
    let timer = null
    // 开始
    const start = () => {
        // 轮询
        timer = setInterval(() => {
            // 获取当前url
            const _url = window.location.href
            // 如果不一致的话，说明更新了
            if (url != _url) {
                // 存储最新的url
                url = _url
                // 通知消息队列
                queue.forEach(fn => fn && fn(window.location))
            }
        }, 100)
    }
    // 返回一个函数，用于加入队列
    return fn => {
        // 推入队列
        queue.push(fn)
        // 开始轮询
        !timer && start()
    }
}())


// history.replaceState(null, null, '123')
// window.location.hash = 123
onUrlChange(location => {
	console.log(20190721203153, location)
})
)
code(Var)
return

::onload::
Var =
(
window.addEventListener('load', (event) => {
    window.alert([20190721211756, ].join('  '));
})
)
code(Var)
return


::eclick::
Var =
(
this.myChart.on('click', params => {
    const { componentSubType, name, value } = params

    if (componentSubType === 'pie') {
        // 第二个参数，我记录了是整个数据。
        const id = value[1].id
        // 设置参数
        this.$store.dispatch('MapDetails/setParam', { matterSelect: id })
        // 跳转到详情页
        this.$router.push({ name: 'mapDetails'})
    }
})
)
code(Var)
return

::getEchartscolor::
Var =
(
/**
 * 专门用于生成 echarts 的渐变色：color: new echarts.graphic.LinearGradient( ... )
 * 返回值类似这样：
 * [
        { offset: 0, color: 'rgba(89, 255, 219, 1)' },
        { offset: 0.1, color: 'rgba(89, 255, 219, .9)' },
        { offset: 0.2, color: 'rgba(89, 255, 219, .8)' },
        { offset: 0.3, color: 'rgba(89, 255, 219, .7)' },
        { offset: 0.4, color: 'rgba(89, 255, 219, .6)' },
        { offset: 0.5, color: 'rgba(89, 255, 219, .5)' },
        { offset: 0.6, color: 'rgba(89, 255, 219, .4)' },
        { offset: 0.7, color: 'rgba(89, 255, 219, .3)' },
        { offset: 0.8, color: 'rgba(89, 255, 219, .2)' },
        { offset: 0.9, color: 'rgba(89, 255, 219, .1)' },
        { offset: 1, color: 'rgba(89, 255, 219, 0)' },
    ]
 * 
 * 使用说明： getRangeColor('89, 255, 219')
 * 只能传入rgb，不能是rgba或者其他类型。
 */
export const getRangeRBG = rgbColorStr => [...Array(11)].map((_, index) => ({
    offset: index / 10, 
    color: `rgba(${rgbColorStr}, ${ 1 - index / 10 })`,
}))
)
code(Var)
return

::mousee::
::mousevent::
::mouseevent::
Var =
(
const app = document.getElementById('app')

const onMouseEvent = e => {
	console.log(e.type)
}

app.addEventListener('mousedown', onMouseEvent, false)
app.addEventListener('mouseup', onMouseEvent, false)
app.addEventListener('click', onMouseEvent, false)
app.addEventListener('dblclick', onMouseEvent, false)
app.addEventListener('mousewheel', onMouseEvent, false)
app.addEventListener('mousemove', onMouseEvent, false)
app.addEventListener('mouseover', onMouseEvent, false)
app.addEventListener('mouseout', onMouseEvent, false)
)
code(Var)
return



::ehcarts.rich::
Var =
(
formatter: (value) => {
    return ``
        {a|${value}} 
        \n
        {b|${value}}
    ``
},
rich: {
    a: {
        color: 'red',
        height:100,
        fontSize: 40,
    },  
    b: {
        color: 'yellow',
    },  
},
)
txtit(Var)
return

::customevent::
Var =
(
const headerTag = document.getElementById('number');

headerTag.addEventListener('numberChanged', function(e) {
   headerTag.textContent = e.detail.number;
   headerTag.style.color = e.detail.textColor;
});

function changeNumber(n, c) {
   const event = new CustomEvent('numberChanged', {
      detail: {
         number: n,
         textColor: c
      }
   });
   headerTag.dispatchEvent(event);
}
)
txtit(Var)
return