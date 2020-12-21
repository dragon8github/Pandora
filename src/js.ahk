::state::
::statemodel::
::zhuangtaiji::
Var =
(   
// https://kentcdodds.com/blog/implementing-a-simple-state-machine-library-in-javascript
function createMachine(stateMachineDefinition) {
    const machine = {
        value: stateMachineDefinition.initialState,
        transition(currentState, event) {
            const currentStateDefinition = stateMachineDefinition[currentState]
            const destinationTransition = currentStateDefinition.transitions[event]
            if (!destinationTransition) {
                return
            }
            const destinationState = destinationTransition.target
            const destinationStateDefinition =
                stateMachineDefinition[destinationState]
            destinationTransition.action()
            currentStateDefinition.actions.onExit()
            destinationStateDefinition.actions.onEnter()
            machine.value = destinationState
            return machine.value
        },
    }
    return machine
}

const machine = createMachine({
    initialState: 'off',
    off: {
        actions: {
            onEnter() {
                console.log('off: onEnter')
            },
            onExit() {
                console.log('off: onExit')
            },
        },
        transitions: {
            switch: {
                target: 'on',
                action() {
                    console.log('transition action for "switch" in "off" state')
                },
            },
        },
    },
    on: {
        actions: {
            onEnter() {
                console.log('on: onEnter')
            },
            onExit() {
                console.log('on: onExit')
            },
        },
        transitions: {
            switch: {
                target: 'off',
                action() {
                    console.log('transition action for "switch" in "on" state')
                },
            },
        },
    },
})

let state = machine.value
console.log(`current state: ${state}`)
state = machine.transition(state, 'switch')
console.log(`current state: ${state}`)
state = machine.transition(state, 'switch')
console.log(`current state: ${state}`)
)
txtit(Var)
return


::hover::
Var =
(
https://emilkowalski.github.io/css-effects-snippets/
---
.pulseBtn {
    padding: 12px 24px;
    background-color: hsl(222, 100`%, 95`%);
    color: hsl(243, 80`%, 62`%);
    border-radius: 6px;
    box-shadow: 0 0 0 0 rgba(230, 237, 255, 0.7);
    animation: pulse 1.75s infinite cubic-bezier(0.66, 0, 0, 1);
}

@keyframes pulse {
    to {
      box-shadow: 0 0 0 30px rgba(230, 237, 255, 0);
    }
}
---
.borderLeftRight {
    display: inline-block;
    position: relative;
    color: hsl(222, 25`%, 14`%);
  }
  
  .borderLeftRight::after {
    content: '';
    position: absolute;
    width: 100`%;
    transform: scaleX(0);
    height: 2px;
    bottom: 0;
    left: 0;
    background-color: hsl(243, 80`%, 62`%);
    transform-origin: bottom right;
    transition: transform 0.4s cubic-bezier(0.86, 0, 0.07, 1);
  }
  
  .borderLeftRight:hover::after {
    transform: scaleX(1);
    transform-origin: bottom left;
  }
---
.circleScaleBtn {
    padding: 12px 24px;
    background-color: hsl(222, 100`%, 95`%);
    color: hsl(243, 80`%, 62`%);
    position: relative;
    border-radius: 6px;
    overflow: hidden;
    z-index: 1;
}

.circleScaleBtn span {
    z-index: 1;
    position: relative;
}

.circleScaleBtn::before {
    content: '';
    position: absolute;
    top: 50`%;
    left: 50`%;
    width: 140px;
    height: 140px;
    border-radius: 50`%;
    transform: translate3d(-50`%,-50`%,0) scale3d(0,0,0);
    transition: opacity .4s cubic-bezier(.19,1,.22,1),transform .75s cubic-bezier(.19,1,.22,1);
    background-color: hsl(243, 80`%, 62`%);
    opacity: 0;
}

.circleScaleBtn:hover span {
    color: hsl(222, 100`%, 95`%);
}

.circleScaleBtn:hover::before {
    opacity: 1;
    transition-duration: .85s;
    transform: translate3d(-50`%,-50`%,0) scale3d(1,1,1)
}
---
.pushUpBtn {
    padding: 12px 24px;
    background-color: hsl(222, 100`%, 95`%);
    color: hsl(243, 80`%, 62`%);
    border-radius: 6px;
    transition: transform 0.25s ease, box-shadow 0.25s ease, background-color 0.25s ease;
    box-shadow: 0 4px 6px rgba(50,50,93,.11), 0 1px 3px rgba(0,0,0,.08);
}

.pushUpBtn:hover {
    transform: translate3d(0px,-1px,0px);
    background-color: hsl(222, 100`%, 92`%);
    box-shadow: 0 7px 14px rgba(50,50,93,.1), 0 3px 6px rgba(0,0,0,.08);
}
)
txtit(Var)
return

::yaosu::
Var =
(
features
)
code(Var)
return


::ol::
::ol.html::
::ol.base::
::ol.init::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v5.3.0/build/ol.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v5.3.0/css/ol.css" />
    <style>
    html, body{
        margin: 0;
        padding: 0;
        height: 100`%;
    }

    #map {
        width: 100`%;
        height: 100`%;
    }
    </style>
</head>

<body>
    <div id="map"></div>
</body>
<script>
// ol.Map 三部曲: target/layer/view
const map = new ol.Map({
    // 挂載 DOM
    target: document.getElementById('map'),
    // layer
    layers: [
        new ol.layer.Tile({ 
            source: new ol.source.OSM()
        })
    ],
    // view
    view: new ol.View({
        center: [0, 0],
        zoom: 2
    })
})
</script>
</html>
)
txtit(Var)
return


::getpos::
::getpositon::
Var =
(
// 瘦身对象（只留部分） ▶ slim({ name: 'Benjy', age: 18 }, ['age']) // => { age: 18 }
const slim = (obj, properties = []) => properties.reduce((p, c) => (p[c] = obj[c], p), {})

const getPosByEvent = e => {
  const properties = slim(e, ['clientX', 'clientY', 'layerX', 'layerY', 'offsetX', 'offsetY', 'pageX', 'pageY', 'screenX', 'screenY', 'x', 'y'])
    return Object.assign({}, properties, { rect: e.target.getBoundingClientRect() })
}

const getPosByDom = el => {
  const properties = slim(el, ['clientHeight', 'clientLeft', 'clientTop', 'clientWidth', 'offsetHeight', 'offsetLeft', 'offsetTop', 'offsetWidth', 'scrollHeight', 'scrollLeft', 'scrollTop', 'scrollWidth',])
    return Object.assign({}, properties, { rect: el.getBoundingClientRect() })
}
)
code(Var)
return

::pdfjs::
::pdf::
::pdf.js::
::pdftoimg::
::pdf2img::
::pdf2image::
Var =
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>PDF文件转图片</title>
    <script src="https://cdn.bootcdn.net/ajax/libs/pdf.js/2.6.347/pdf.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/pdf.js/2.6.347/pdf.worker.min.js"></script>
</head>

<body>
    <div id='app'>
        <input id='pdfFile' type='file' accept="application/pdf">
    </div>
</body>

<script>
// https://mozilla.github.io/pdf.js/examples/
document.getElementById('pdfFile').addEventListener('change', e => {
    const val = e.target.value

    if (val) {
        // stream
        const filesdata = e.target.files
        // size
        const fileSize = filesdata[0].size
        // name
        const fileName = filesdata[0].name

        const reader = new FileReader()

        // 将文件读取为 DataURL
        reader.readAsDataURL(filesdata[0])

        reader.onload = e => { 
          const result = e.target.result
          // 调用pdf.js获取文件
            pdfjsLib.getDocument(result).promise.then(pdf => { 
                if (pdf) {
                  // 获取pdf文件总页数
                    const totalPages = pdf.numPages

                    // 遍历动态创建canvas
                    for (let i = 1; i <= totalPages; i++) {
                        const canvas = document.createElement('canvas')
                        canvas.id = 'canvas-' + i
                        document.getElementById('app').append(canvas)
                        const ctx = canvas.getContext('2d')
                        renderImg(pdf, i, ctx)
                    }
                }
            })
        }
    }
})

// 渲染生成图片
function renderImg(pdfFile, pageNumber, canvasContext) {
  // 逐页解析PDF
    pdfFile.getPage(pageNumber).then(page => { 
      // 页面缩放比例
        const viewport = page.getViewport({ scale: 1 })

        // 设置 canvas 
        const newcanvas = canvasContext.canvas
        newcanvas.width = viewport.width
        newcanvas.height = viewport.height
        newcanvas.style.width = '100`%'
        newcanvas.style.height = '100`%'

        const renderContext = { canvasContext: canvasContext, viewport: viewport }

        // 渲染生成
        page.render(renderContext)
    })
}
</script>
</html>
---
<template>
    <div id="app">
        <input id="pdfFile" type="file" accept="application/pdf" @change="changeHandler" />
    </div>
</template>

<script>
// cnpm i pdfjs-dist -S
const pdfjsLib = require('pdfjs-dist/build/pdf.min')
require('pdfjs-dist/build/pdf.worker.entry.js')

// 渲染生成图片
function renderImg(pdfFile, pageNumber, canvasContext) {
  // 逐页解析PDF
    pdfFile.getPage(pageNumber).then(page => {
      // 页面缩放比例
        const viewport = page.getViewport({ scale: 1 })

        // 设置 canvas
        const newcanvas = canvasContext.canvas
        newcanvas.width = viewport.width
        newcanvas.height = viewport.height
        newcanvas.style.width = '100`%'
        newcanvas.style.height = '100`%'

        const renderContext = { canvasContext: canvasContext, viewport: viewport }

        // 渲染生成
        page.render(renderContext)
    })
}

export default {
    data() {
        return {}
    },
    methods: {
        changeHandler(e) {
            const val = e.target.value

            console.log(20201209201523, e)

            if (val) {
                // stream
                const filesdata = e.target.files
                // size
                const fileSize = filesdata[0].size
                // name
                const fileName = filesdata[0].name

                const reader = new FileReader()

                // 将文件读取为 DataURL
                reader.readAsDataURL(filesdata[0])

                reader.onload = e => {
                    const result = e.target.result
                    // 调用pdf.js获取文件
                    pdfjsLib.getDocument(result).promise.then(pdf => {
                        if (pdf) {
                            // 获取pdf文件总页数
                            const totalPages = pdf.numPages

                            // 遍历动态创建canvas
                            for (let i = 1; i <= totalPages; i++) {
                                const canvas = document.createElement('canvas')
                                canvas.id = 'canvas-' + i
                                document.getElementById('app').append(canvas)
                                const ctx = canvas.getContext('2d')
                                renderImg(pdf, i, ctx)
                            }
                        }
                    })
                }
            }
        },
    },
}
</script>
)
txtit(Var)
return


::visi::
Var =
(
vue-observe-visibility
)
code(Var)
return

::io::
Var =
(
const animatedScrollObserver = new IntersectionObserver(
  (entries, animatedScrollObserver) => {
    entries.forEach((entry) => {
      if(entry.isIntersecting) {
        entry.target.classList.add('enter')
        animatedScrollObserver.unobserve(entry.target)
      }
    })
  }
`)

export default {
  bind(el) {
    el.classList.add('before-enter')
    animatedScrollObserver.observe(el)
  }
}
---
// http://www.ruanyifeng.com/blog/2016/11/intersectionobserver_api.html
var io = new IntersectionObserver(elements => {
  // 所有的监听对象
  console.log(elements)

  // 打印对象的所处情况
    elements.forEach(e => {
        console.log(e.target, e)
    })
}, {
    // 属性决定了什么时候触发回调函数
    threshold: [0, 0.25, 0.5, 0.75, 1],
    // 设置相对根节点（其实按照默认即可，除非有特殊情况才需要设置，譬如 iframe 的场景）
    // root: document.querySelector('#app'),
})

io.observe(document.querySelector('#a'))
io.observe(document.querySelector('#b'))

// 停止观察
// io.unobserve(document.querySelector('#a'));

// 关闭观察器
// io.disconnect();
---
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <style>

    img {
        width: 100`%;
        height: 100`%;
    }

    p {
        height: 500px;
    }
    </style>
</head>

<body>
    <div id="app">
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
        <p class='lazy-load'><template><img src="https://iph.href.lu/400x400" alt="..." /></template></p>
    </div>
</body>

<script>
const io = new IntersectionObserver(elements => {
    // 所有的监听对象
    console.log(elements)

    // 打印对象的所处情况
    elements.forEach(e => {
        // 如果显示了
        if (e.isIntersecting) {
            // 获取显示的dom
            const target = e.target;
            // 获取 dom 下面 <template> 的内容
            const content = target.querySelector('template').content;
            // 插入到真实内容
            target.appendChild(content);
            // 取消监听
            io.unobserve(target)
        }
    })
}, {
    // 属性决定了什么时候触发回调函数
    threshold: [0, 0.25, 0.5, 0.75, 1],
})

document.querySelectorAll('.lazy-load').forEach((el, key) => {
    io.observe(el)
})

</script>
</html>
---
<!DOCTYPE html>
<html lang='en'>

<head>
    <meta charset='UTF-8'>
    <!-- mockjs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Mock.js/1.0.0/mock-min.js"></script>
    <!-- axios -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js"></script>

    <style>
        li { display: block; height: 100px; }
        footer { height: 100px; background-color: #000; }
    </style>
</head>

<body>
    <ul id='app'>
        <li>英国发生捅人事件新</li>
        <li>周琦首次回应指责新</li>
        <li>北京地铁临时封闭</li>
        <li>高晓松闹笑话</li>
        <li>郑州彩虹桥拆除新</li>
        <li>复盘最强医保谈判</li>
        <li>北京初雪</li>
        <li>网曝张亮假离婚</li>
        <li>滴滴美团严重失信</li>
        <li>网易又一员工被逼</li>
        <li>呼伦贝尔五彩光柱</li>
        <li>悍匪冯学华判死刑</li>
        <li>曹阳退役</li>
        <li>网银回应罚2943万</li>
        <li>苹果设计师离职</li>
    </ul>
    <footer></footer>
</body>

<script>
Mock.mock("/news/list", "get", {
    "newslist|10": [
        { "news_id|+1": 101, "news_name": "@ctitle", "news_price|50-100.1-2": 0, "news_time": "@date('yyyy-mm-dd')" }
    ]
}).setup({
    timeout: '1000-3000'
})

// loading 装饰器
var loadingDec = (fn, loading = false) => [_ => loading, async (...args) => {
    // 开启Loading
    loading = true
    // 等待函数执行结果
    const result = await fn(...args)
    // 关闭loading
    loading = false
    // 返回结果
    return result
}]

// 模拟请求后端
const loadData = () => axios.get("/news/list")

// 装饰函数
const [isLoading, _loadData] = loadingDec(loadData)

// 渲染列表
const render = items => items.forEach(item => {
    let node = document.createElement('li')
    node.innerText = item.news_name
    document.getElementById('app').appendChild(node)
})

const io = new IntersectionObserver(async elements => {
    // 当前演示只有一个监听对象 footer
    const footer = elements[0]

    // 如果可见，就插入新的内容
    if (footer.isIntersecting && !isLoading()) {
        // 加载十条数据
        const { data } = await _loadData(10)
        // 渲染
        render(data.newslist)
    }
}, {
    /* opts */
})

// 只监听 footer 是否显示即可
io.observe(document.querySelector('footer'))
</script>
</html>
---
/**
 * MutationObserver： 监听DOM变化的神器
 * mutations：节点变化记录列表（sequence<MutationRecord>）
 * observer：构造MutationObserver对象。
 * 
 * 『MutationObserver对象的三个方法』
 * observe：设置观察目标，接受两个参数，target：观察目标，options：通过对象成员来设置观察选项
 * disconnect：阻止观察者观察任何改变
 * takeRecords：清空记录队列并返回里面的内容
 *
 * 『observe方法中options参数』
 * childList：设置true，表示观察目标子节点的变化，比如添加或者删除目标子节点，不包括修改子节点以及子节点后代的变化
 * attributes：设置true，表示观察目标属性的改变
 * characterData：设置true，表示观察目标数据的改变
 * subtree：设置为true，目标以及目标的后代改变都会观察
 * attributeOldValue：如果属性为true或者省略，则相当于设置为true，表示需要记录改变前的目标属性值，设置了attributeOldValue可以省略attributes设置
 * characterDataOldValue：如果characterData为true或省略，则相当于设置为true,表示需要记录改变之前的目标数据，设置了characterDataOldValue可以省略characterData设置
 * attributeFilter：如果不是所有的属性改变都需要被观察，并且attributes设置为true或者被忽略，那么设置一个需要观察的属性本地名称（不需要命名空间）的列表
 */
const observe = new MutationObserver(function(mutations, observer) {
  // ⚠️ 只有在全部DOM操作完成之后才会调用callback
  // 📝 所以就算你进行进行 N 次操作，但实际上也只会执行一次本回调。
    console.log('hello world')
})

// 示例 1：观察节点树变化
observe.observe(target,{ childList: true, subtree: true })
target.appendChild(docuemnt.createTextNode('1'))

// 示例 2：观察值变化
observe.observe(target,{ characterData: true, childList: true, subtree: true })
target.childNodes[0].textContent = '改变文本值'

// 示例 3: 观察属性变化
observe.observe(target,{ attributeFilter: ['style'], subtree: true })
target.style = 'color:red'      // 可以观察到
target.removeAttribute('style') // 删除属性名也会观察到

// 示例 4: 停止监听
observe.disconnect()

// 示例 5: takeRecords() 获取操作历史
observe.observe(target, { childList: true })
target.appendChild(document.createTextNode('新增Text节点1'))
target.appendChild(document.createTextNode('新增Text节点2'))
target.appendChild(document.createTextNode('新增Text节点3'))
const record = observe.takeRecords()
console.log(record)

/**
 * 变动记录中的属性如下：
 *
 * type：如果是属性变化，返回"attributes"，如果是一个CharacterData节点（Text节点、Comment节点）变化，返回"characterData"，节点树变化返回"childList"
 * target：返回影响改变的节点
 * addedNodes：返回添加的节点列表
 * removedNodes：返回删除的节点列表
 * previousSibling：返回分别添加或删除的节点的上一个兄弟节点，否则返回null
 * nextSibling：返回分别添加或删除的节点的下一个兄弟节点，否则返回null
 * attributeName：返回已更改属性的本地名称，否则返回null
 * attributeNamespace：返回已更改属性的名称空间，否则返回null
 * oldValue：返回值取决于type。对于"attributes"，它是更改之前的属性的值。对于"characterData"，它是改变之前节点的数据。对于"childList"，它是null
 */
---
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
    <script src="https://unpkg.com/vue-observe-visibility/dist/vue-observe-visibility.min.js"></script>
    <style>
    img { width: 100`%; height: 100`%; }
    p { height: 500px; }
    </style>
</head>

<body>
    <div id="app">
        <p class='item' v-observe-visibility="visibilityChanged"><img src="https://iph.href.lu/400x400" alt="..." /></p>
    </div>
</body>

<script>
/*
Vue.directive('observe-visibility', VueObserveVisibility.ObserveVisibility)
var vue = new Vue({
    el: '#app',
    methods: {
        visibilityChanged (...args) {
            console.log(20201203143441, ...args)
        }
    },
})
*/

const io = new IntersectionObserver(entries => {
    console.log(`
        【触发时机】
        1、 首次
        2、 隐藏（display:none; v-show）
        3、 显示（受 threshold 配置影响）
        4、 删除（v-if）
    `, entries)

    // https://github.com/Akryum/vue-observe-visibility/blob/master/src/directives/observe-visibility.js#L55
    const entry = entries.find(e => e.isIntersecting)
    const isVisibility = !!entry
    console.log('🌈', isVisibility)

}, {
    // 属性决定了什么时候触发回调函数
    // threshold: [0, 0.25, 0.5, 0.75, 1],
})

document.querySelectorAll('.item').forEach(el => io.observe(el))
</script>
</html>

)
txtit(Var)
return

::hit::
::yundong::
::jianxieyundong::
Var =
(
/**
 * 间歇性运动
 * 
 * @param  {Number} 持续45s
 * @param  {Number} 休息10s
 * @param  {Number} 进行10次
 */
const hit = (s = 45, m = 10, t = 1) => {
  // 是否暫停？
  let isStop = false
  // 是否結束？
  let isEnd = false

  // 当前回合
  let curTime = 1
  // 当前运动读秒
  let startTime = s
  // 当前休息读秒
  let midfieldTime = m

  // 开始（可传入开始时间，或者使用默认时间）
  const start = () => {
    console.log('开始运动!还剩下', t - curTime + '轮')

    // 运动倒计时
    ;(function poll() {
      setTimeout(() => {
        if (isEnd) return console.log('🔔 已终止')
        if (isStop) return console.log('🔴 暂停中')

        if (startTime) {
          console.log('☀️di~', startTime)
          startTime--
          return poll()
        } else {
          console.log('休息时间')
          return restPoll()
        }
      }, 1000);
    })();

    // 休息倒计时
    // TODO: 最后一轮休息是不是应该跳过？
    function restPoll() {
      setTimeout(() => {
        if (isEnd) return console.log('🔔 已终止')
        if (isStop) return console.log('🔴 暂停中')

        if (midfieldTime) {
          console.log('🐤da~', midfieldTime)
          midfieldTime--
          return restPoll()
        } else {
          // 消耗回合数
          curTime++

          // 如果回合还有剩余，重新开始
          if (curTime <= t) {
            // 重置运动时间和休息时间
            startTime = s, midfieldTime = m
            // 重新开始运动
            return start()                  
          }

          // 运动结束
          return finish()
        }
      }, 1000);
    }
  }

  // 运动结束
  const finish = () => {
    console.log('🎉 运动结束!')
    // 重置
    isStop = false, isEnd = false, curTime = 0, startTime = s, midfieldTime = m
  }

  const end = () => isEnd = true
  const stop = () => isStop = true
  const goon = () => { isStop = false; start() }

  return { start, end, stop, goon }
}

const { start, end, stop, goon } = hit(45, 15, 2)
start()
)
txtit(Var)
return

::infi::
::wuxian::
::wuxianda::
Var =
(
Infinity
)
code(Var)
return

::lean::
::leancloud::
Var =
(
<!DOCTYPE html>
<html lang="en">
  <head>
    <script src="https://cdn.jsdelivr.net/npm/leancloud-storage@4.6.1/dist/av-live-query-min.js"></script>
  </head>
  <body>
    <div id="app"></div>
  </body>
</html>
---
// https://leancloud.cn/dashboard/data.html?appid=EdCry9HgfXy7Ao7SKYuFR7dQ-gzGzoHsz#/
// 监听方
<script>
export default {
  data() {
    return {

    }
  },
  async created() {
    AV.init({
      appId: 'EdCry9HgfXy7Ao7SKYuFR7dQ-gzGzoHsz',
      appKey: 'emqtV9sjggqp5l7GWU8OpOv0',
      serverURL: 'https://ozewwcws.lc-cn-n1-shared.com',
    })

    // AV.debug.enable()
    AV.debug.disable()

    // 需要先去后台创建
    const query = new AV.Query('cmd')

    query.subscribe().then((liveQuery) => {
      // 订阅成功
      console.log('订阅成功')

      // 监听数据创建事件
      liveQuery.on('create', (newCmd) => {
        // 获取最新的指令
        /* console.log('🔔 数据创建触发', newCmd, newCmd.attributes) */
        console.log('🎉 收到最新的指令', newCmd)

        // 获取约定的数据
        const name = newCmd.get('name')
        const type = newCmd.get('type')
        const cmd = newCmd.get('cmd')
        
        // 执行指令
        if (type === 'code') {
          try {
            // 类似 eval 语法
            Function(cmd)(this)
          } catch (err) {
            console.error('🔴 执行指令错误', err)
          }
        }
      })
    })
  },
}
</script>
---
<template>
  <div class="cmd">
    <button class="button" @click="go">点击「数据治理」</button>
  </div>
</template>

<script>
export default {
  name: 'cmd',
  data() {
    return {
      __CMD__: null,
    }
  },
  methods: {
    go(v) {
      const _cmd = new this.__CMD__()
      _cmd.set('type', 'code')
      _cmd.set('cmd', `document.querySelector('.governmentData_icon').click()`)
      _cmd.set('name', '点击「数据治理」')
      _cmd.save().then((result) => console.log('🚀', result))
    },
  },
  async created() {
    AV.init({
      appId: 'EdCry9HgfXy7Ao7SKYuFR7dQ-gzGzoHsz',
      appKey: 'emqtV9sjggqp5l7GWU8OpOv0',
      serverURL: 'https://ozewwcws.lc-cn-n1-shared.com',
    })

    // AV.debug.enable()
    AV.debug.disable()

    // 当前操作的 class
    this.__CMD__ = AV.Object.extend('cmd')
  },
}
</script>

<style lang="scss" scoped>
.cmd {
}
</style>
---
import AV from 'leancloud-storage/live-query'

// 是否初始化过 AV
let isInit = false

// cmd class 的实体
let __CMD__ = null

// 初始化 AV（只会进行一次，虽然我觉得进行多次他也会帮我忽略）
const AVinit = () => {
    if (isInit === false) {
        AV.init({ appId: 'EdCry9HgfXy7Ao7SKYuFR7dQ-gzGzoHsz', appKey: 'emqtV9sjggqp5l7GWU8OpOv0', serverURL: 'https://ozewwcws.lc-cn-n1-shared.com', })

        // AV.debug.enable()
        AV.debug.disable()

        // 单向锁
        isInit = true
    }
}

export const subscribe = () => {
    // 初始化 AV
    AVinit()

    // 需要先去后台创建 cmd
    const query = new AV.Query('cmd')

    query.subscribe().then((liveQuery) => {
        // 订阅成功
        console.log('订阅成功')

        // 监听数据创建事件
        liveQuery.on('create', (newCmd) => {
            // 获取最新的指令
            /* console.log('🔔 数据创建触发', newCmd, newCmd.attributes) */
            console.log('🎉 收到最新的指令', newCmd)

            // 获取约定的数据
            const name = newCmd.get('name')
            const type = newCmd.get('type')
            const cmd = newCmd.get('cmd')
            
            // 执行指令
            if (type === 'code') {
                try {
                    // 类似 eval 语法
                    Function(cmd)(this)
                } catch (err) {
                    console.error('🔴 执行指令错误', err)
                }
            }
        })
    })
}

export const emit = (type = 'code', cmd = 'console.log', name = 'test') => {
    // 初始化
    AVinit()

    // 实例化 cmd class（只进行一次）
    __CMD__ = __CMD__ || AV.Object.extend('cmd')

    // 插入一条数据
    const _cmd = new __CMD__()
    _cmd.set('type', type)
    _cmd.set('cmd', cmd)
    _cmd.set('name', name)
    _cmd.save().then((result) => console.log('🚀', result))
}
---
// cmd 控制台
import { subscribe } from '@/utils/cmd'

export default {
    created() {
        // 订阅控制台的更新
        subscribe()
    },
}
</script>
---
<template>
    <div class="cmd">
        <button class="button" @click="go">触发「数据治理」弹窗</button>
    </div>
</template>

<script>
import { emit } from '@/utils/cmd'

export default {
    name: 'cmd',
    methods: {
        go(v) {
            const type = 'code'
            const cmd = `document.querySelector('.governmentData_icon').click()`
            const name = '触发「数据治理」弹窗'
            emit(type, cmd, name)
        },
    },
}
</script>
)
txtit(Var)
return

::impq::
Var =
(
const { default: template } = require('@babel/template')
)
code(Var)
return

::ast::
::yufashu::
Var =
(
// https://www.youtube.com/watch?v=UnSXXorQv1Y
// https://astexplorer.net
// cnpm install @babel/{parser,traverse,types,generator}
const t =  require('@babel/types')
const parser = require('@babel/parser')
const { default: traverse } =  require('@babel/traverse')
const { default: generate } =  require('@babel/generator')

// 编译分为三步：parse + traverse + generate
function compile(code) {
    // 1. parse（将代码字符串转化为 AST 语法树）    
    const ast = parser.parse(code)

    // 2. traverse（遍历语法树的节点，并且进行增删改查）
    traverse(ast, {
        // visitor: 访问者
        CallExpression(path) {
            // 获取当前节点的信息
            const { callee } = path.node

            // 判断是否为 console.log
            const isConsoleLog = callee.object.name === 'console' && callee.property.name === 'log'

            // 如果是的话
            if (t.isMemberExpression(callee) && isConsoleLog) {
                // 找到该函数节点的名字
                const functionName = path.findParent(p => p.isFunctionDeclaration()).node.id.name

                // 对函数的参数 arguments 插入新参数 'foo'
                const newArgs = t.stringLiteral(functionName)
                
                // console.log('bar') => console.log('foo', 'bar')
                path.node.arguments.unshift(newArgs)
            }
        }
    })

    // 3. generator（将 AST 语法树重新转化为字符串代码）
    return generate(ast, {}, code)
}

const code = `
function foo () {
    console.log('bar');
}
`

const result = compile(code)

console.log(result.code)
)
txtit(Var)
return

::chrometip::
::chrometongzhi::
::tongzhi::
::tixing::
::chrometixing::
::chromealert::
::chromesay::
Var =
(
/**
 * （推荐）say something ...

 ;(async function(){
    const a = await waitWhen(_ => document.getElementById('1234'))
    console.log(20191212102924, a)
 }())
 */
var waitWhen = (conditionFn = () => false, wait = Infinity, interval = 10, startTime = Date.now()) => new Promise((resolve, reject) => {
    (function poll() {
        // 获取回调结果
        const result = conditionFn()

        // 获取是否超时
        const isTimeout = Date.now() - startTime > wait

        // 如果条件成立，那么立刻 resolve
        if (result) return resolve(result)

        // 如果时间超时，立刻 reject
        if (isTimeout) return reject(result)

        // 否则继续轮询
        setTimeout(poll, interval)
    }())
})

var chan = (when = () => false, { title = 'New message incoming', body = 'Hi there. How are you doing?', repeat = false } = {}) => {
  // 获取当前 「通知权限」
  const permission = Notification.permission

  // 核心函数
  const showNotification = (title, body) => {
    // 向系统发送通知
      const notification = new Notification(title, { body: body })

      // 点击通知栏触发
      notification.onclick = event => {
        // 默认只通知一次，repeat的时候可以重复通知，但需要点击通知栏，才会进行下一轮监听
        repeat && start()
      }
  }

  // 任务启动器
  const start = () => {
    // 等待条件成立，最多等待 30s，搓搓有余了
    waitWhen(when, 30 * 1000).then(() => {
      // 条件完成，开启通知
      showNotification(title, body)
    }).catch(err => {
      // 超时或者报错了，打印错误即可
      console.wran(err)
    })
  }
  
  // granted - 如果已经「允许」了，那么直接开始任务
  if (permission === 'granted') start()

  // default - 如果是默认情况，则需要「询问」才可以知道用户意愿
  // denied  - 如果拒绝了，那么提示用户必须开启
  if (permission === 'default' || permission === 'denied') {
    // 询问权限
      Notification.requestPermission().then(p => {
        // 接受
          if (p === 'granted') start()
          // 拒绝
          if (p === 'denied') console.warn('🔴', '只有允许权限才可以使用通知功能，请点击左上角的锁头手动开启通知权限')
      })
  }
}

chan(() => true, { title: 'title', body: 'body' })
---
<script>
   function showNotification() {
     const notification = new Notification("New message incoming", {
        body: "Hi there. How are you doing?",
        icon: "yourimageurl.png"
     })
     
     notification.onclick = (e) => {
       window.location.href = "https://google.com";
     };
  }

   console.log(Notification.permission);
   if (Notification.permission === "granted") {
      showNotification()
   } else if (Notification.permission !== "denied") {
      Notification.requestPermission().then(permission => {
         console.log(permission);
      });
   }
</script>
)
txtit(Var)
return

::bilibili::
::blbl::
::$bb::
::bb::
::kugou::
::music::
Var =
(
/**
 * 参考资料
 * https://www.cnblogs.com/yuan-luo/p/8330176.html
 * https://developer.mozilla.org/zh-CN/docs/Web/Guide/HTML/Using_HTML5_audio_and_video
 */
;(function(){
  // 检测当前 url 是否为 bilibili
  const isBilibili = () => new RegExp('http(s)://www.bilibili.com/video/').test(window.location.href)

  // 是否为字符串
  const isString = input => Object.prototype.toString.call(input) === '[object String]'

  // 是否为数字（支持字符串数字）
  const isNumber = input => !isNaN(+input)

  // 防错机制
  const maybe = (fn, n = '') => {
     try {
        const result = fn()
        return (result && result === result && result !== 'NaN' && result !== 'Invalid date') ? result : n
     } catch (err) { return n }
  }

  // 将时间转化为秒
  const time2second = t => {
    // 如果是数字类型，直接返回
    if (isNumber(t)) return +t

    // 如果是字符串, 并且字符串中包含 ":"
    if (isString(t) && t.includes(':')) {
      // 切割为分秒，并且转化为数字类型
        const [h, m] = t.split(':').map(n => maybe(_ => parseInt(n), 0))
        // 转化为秒
        return h * 60 + m
    }

    // 啥都不是就返回 0 
    return 0
  }

  const bilibili = () => {
    // 获取页面唯一的播放器
      const video = document.querySelector('video')

      if (!isBilibili()) return console.warn('🔔 当前页面不是B站播放页')

      if (!video) return console.warn('🔔 找不到播放器')

      // 获取播放时长（有可能获取失败）
      let timeLength = maybe(_ => video.duration, 0)

      // 存储区间列表
      let __POLL__ = []

      // 区间轮播功能
      const poll = (a, b) => {
          // loop
        video.loop = true

        // 转化为秒格式
        let start = time2second(a), end = time2second(b)

        // fix start
        if (start < 0) start = 0

        // fix end
        if (end > timeLength) end = timeLength

        // set poll
        __POLL__ = [ start, end ]
      }

      // 清空区间轮播
      const clearPoll = () => __POLL__ = []

      // 监听播放进度
      video.ontimeupdate = e => {
        // 获取当前进度
        const currentTime = e.target.currentTime 

        // 获取轮播区间
        const [a, b] = __POLL__

        // 如果时间不存在，那么不进行任何操作
        // 如果结束时间是 0，那么也不进行任何操作
        if (a == null || b == null || b == 0) return

        // 如果当前进度在区间内，那么无事发生
        if (currentTime > a && currentTime < b) {
          // ...
          return
        }

        // 否则，将进度条变更为区间起始位置
        video.currentTime = a
    }

    // 获取资源成功，这时候肯定能获取播放时长
    video.onloadedmetadata = e => {
      timeLength = video.duration
    }

    // 返回相关辅助方法
      return { poll, clearPoll }
  }

  window.$bb = bilibili()
}());

// 设置轮播区间
$bb.poll('17:00', '17:50')
---
/**
 * 参考资料
 * https://www.cnblogs.com/yuan-luo/p/8330176.html
 * https://developer.mozilla.org/zh-CN/docs/Web/Guide/HTML/Using_HTML5_audio_and_video
 */
;(function(){
  // 是否为字符串
  const isString = input => Object.prototype.toString.call(input) === '[object String]'

  // 是否为数字（支持字符串数字）
  const isNumber = input => !isNaN(+input)

  // 防错机制
  const maybe = (fn, n = '') => {
     try {
        const result = fn()
        return (result && result === result && result !== 'NaN' && result !== 'Invalid date') ? result : n
     } catch (err) { return n }
  }

  // 将时间转化为秒
  const time2second = t => {
    // 如果是数字类型，直接返回
    if (isNumber(t)) return +t

    // 如果是字符串, 并且字符串中包含 ":"
    if (isString(t) && t.includes(':')) {
      // 切割为分秒，并且转化为数字类型
        const [h, m] = t.split(':').map(n => maybe(_ => parseInt(n), 0))
        // 转化为秒
        return h * 60 + m
    }

    // 啥都不是就返回 0
    return 0
  }

  const music = () => {
    // 获取页面唯一的播放器
      const video = document.querySelector('audio')

      if (!video) return console.warn('🔔 找不到播放器')

      // 获取播放时长（有可能获取失败）
      let timeLength = maybe(_ => video.duration, 0)

      // 存储区间列表
      let __POLL__ = []

      // 区间轮播功能
      const poll = (a, b) => {
          // loop
        video.loop = true

        // 转化为秒格式
        let start = time2second(a), end = time2second(b)

        // fix start
        if (start < 0) start = 0

        // fix end
        if (end > timeLength) end = timeLength

        // set poll
        __POLL__ = [ start, end ]
      }

      // 清空区间轮播
      const clearPoll = () => __POLL__ = []

      // 监听播放进度
      video.ontimeupdate = e => {
        // 获取当前进度
        const currentTime = e.target.currentTime

        // 获取轮播区间
        const [a, b] = __POLL__

        // 如果时间不存在，那么不进行任何操作
        // 如果结束时间是 0，那么也不进行任何操作
        if (a == null || b == null || b == 0) return

        // 如果当前进度在区间内，那么无事发生
        if (currentTime > a && currentTime < b) {
          // ...
          return
        }

        // 否则，将进度条变更为区间起始位置
        video.currentTime = a
    }

    // 获取资源成功，这时候肯定能获取播放时长
    video.onloadedmetadata = e => {
      timeLength = video.duration
    }

    // 返回相关辅助方法
      return { poll, clearPoll }
  }

  window.$music = music()
}());

// 设置轮播区间
$music.poll('02:54', '03:28')
)
txtit(Var)
return

::feiniao::
::bird::
::feiniaoyuc::
Var =
(
/**
 * 《飞鸟与蝉》 - 获取数组的第一位和最后一位
 * 你骄傲地飞远 我栖息的夏天
 * 听不见的宣言 重复过很多年
 * 北纬线的思念被季风吹远
 * 沧海月的想念 羽化我昨天
 * 吹远默念的侧脸 吹远鸣唱的诗篇
 * 你骄傲地飞远 我栖息的叶片
 * 去不同的世界 却从不曾告别
 * 沧海月的想念羽化我昨天
 * 在我成熟的笑脸 你却未看过一眼
 */
const birdAndCicada = (target, last = target.length - 1) => [target[0], target[last]]
)
code(Var)
return

::getchart::
::getechart::
::getcharts::
::getecharts::
Var =
(
 <script>
  // 监听 window.echarts 的定义（当 echarts 引入注册时会触发）
  Object.defineProperty(window, "echarts", {
      get() {
        return this.__echarts
      },
      set (value) {
        this.__echarts = value

        // 监听 echarts.init 赋值时
          Object.defineProperty(this.__echarts, "init", {
            get() {
              return this.__init
            },
            set (init) {
              // 代理 init 以及 setOption 
              this.__init = function (...args) {
                  // origin function init
                  const myChart = init(...args)

                  // 复制一份 setOption 引用
                const setOption = myChart.setOption.bind(myChart)

                // 修改引用、 进行代理
                myChart.setOption = function(opts, ...args) {
                    // 备份初代配置
                    myChart.INIT_OPTS = opts

                    // origin function setOption
                    return setOption(opts, ...args)
                }

                // 添加点击事件（放心，不会被覆盖）
                myChart.on('click', () => {
                      console.log('🦄', myChart.INIT_OPTS)
                })

                // 照常返回 charts
                return myChart
              }
          },
          configurable: true
        })
      }
  })
</script>
---
//////////////////////////////////////////////
// echarts hack inject
//////////////////////////////////////////////
const init = echarts.init.bind(echarts)

echarts.init = function(...args) {
  const myChart = init(...args)

  const setOption = myChart.setOption.bind(myChart)

  myChart.setOption = function(opts, ...args) {

      myChart.INIT_OPTS = opts

      return setOption(opts, ...args)
  }

  myChart.on('click', () => console.log('🦄', myChart.INIT_OPTS))

  return myChart
}
---
;(function(chromeCopy) {
    // 最常用且关注的属性
    const properties = ['color', 'grid', 'legend', 'series', 'tooltip', 'visualMap', 'xAxis', 'yAxis']

    // 瘦身对象（只留部分） ▶ slim({ name: 'Benjy', age: 18 }, ['age']) // => { age: 18 }
    const slim = (obj, properties = []) => properties.reduce((p, c) => (p[c] = obj[c], p), {})

    // 是否为函数
    const isFunction = input => Object.prototype.toString.call(input) === '[object Function]'

    // 深度拷贝对象，如果属性是函数类型，那么尝试 toString 转化为字符串（如果是生产环境则会是加密的代码）
    // deepCopy({ a: 123, c: () => console.log(123) }) // ▶ {a: 123, c: "() => console.log(123)"}
    function deepCopyFunction(obj, cache = []) {
        if (obj === null || typeof obj !== 'object') {
            return obj
        }

        const hit = cache.find(c => c.original === obj)

        if (hit) {
            return hit.copy
        }

        const copy = Array.isArray(obj) ? [] : {}

        cache.push({ original: obj, copy })

        Object.keys(obj).forEach(key => {
            const target = isFunction(obj[key]) ? obj[key].toString() : obj[key]
            copy[key] = deepCopyFunction(target, cache)
        })

        return copy
    }


    // 1、 判断全局是否有 echarts 存在。
    if (typeof window.echarts != 'undefined') {
        // 2、 找到所有的 _echarts_instance_
        document.querySelectorAll('[_echarts_instance_]').forEach((el, key) => {
            //  3、 canvas 添加点击事件
            el.querySelector('canvas').addEventListener('click', (event) => {
                // 4、 点击的时候，使用父集的 _echarts_instance_ 获取 echarts 实例
                const myChart = window.echarts.getInstanceByDom(el)

                // 5、获取全部配置
                const opts = myChart.getOption()

                // 6、 筛选出我关心的样式
                const myOpts = slim(opts, properties)

                // 7、 打印出所有样式和我关心的样式
                console.log('🌈', opts, myOpts)

                // 8、 将 formatter 类的函数属性，转化为字符串
                const _myOpts = deepCopyFunction(myOpts)

                // 9、加入剪切板
                chromeCopy(myOpts)

                // 10、 阻止冒泡
                event.preventDefault(); event.stopPropagation();
            })
        })
    }
}(globalThis.copy));
)
txtit(Var)
return

::jianqieban::
::fuzhi::
Var =
(
export const copyToClipboard = text => {
  const el = document.createElement('textarea')
  el.value = text
  el.setAttribute('readonly', '')
  el.style.position = 'absolute'
  el.style.left = '-9999px'
  document.body.appendChild(el)
  const selected = document.getSelection().rangeCount > 0 ? document.getSelection().getRangeAt(0) : false
  el.select()
  document.execCommand('copy')
  document.body.removeChild(el)
  if (selected) {
    document.getSelection().removeAllRanges()
    document.getSelection().addRange(selected)
  }
}
)
code(Var)
return

::prefetch::
::perfetch::
Var =
(
<!-- prefetch : https://www.youtube.com/watch?v=R_D0rL094F4-->
<!-- https://gist.github.com/prof3ssorSt3v3/af591f2ec6666b665f3d266d5ccce8e2-->
<link rel="preload" as="image" href="./layer/bg.png" type="image/png" crossorigin="anonymous" /> 
)
code(Var)
return

::jianjinshi::
Var =
(
const cache = new Set()

export default {
    install(Vue) {
        Vue.directive('progressiveBGImage', {
            bind(el, { value }) {
                // 外部传入两个变量，第一个变量是占位图，第二个是真图
                const [placeholder, src] = value

                // fixbug: 如果已经加载过了，那么不需要重复
                if (cache.has(src)) {
                    el.style.backgroundImage = `url(${src})`
                } else {
                    // 先用用占位图作背景图
                    el.style.backgroundImage = `url(${placeholder})`

                    // 老三样
                    const img = new Image()
                    img.src = src
                    img.onload = () => (el.style.backgroundImage = `url(${src})`)
                }
                
                // 加入缓存
                cache.add(src)
            },
        })
    },
}
)
txtit(Var)
return

::tree::
::gentree::
Var =
(
const api_datas = {"id": "202010200704", "remark": "汇聚方式委办局", "data": [{"ID": 0, "DEPARTMENT": "东莞市", "PID": -1 }, {"ID": 1, "DEPARTMENT": "政数局", "PID": 0 }, {"ID": 2, "DEPARTMENT": "卫生局", "PID": 0 }, {"ID": 3, "DEPARTMENT": "交通运输局", "PID": 0 }, {"ID": 4, "DEPARTMENT": "教育局", "PID": 0 }, {"ID": 5, "DEPARTMENT": "生态环境局", "PID": 0 }, {"ID": 6, "DEPARTMENT": "民政局", "PID": 0 } ], "pageSize": 10, "pageNum": 1, "total": 7, "totalPage": 1, "startIndex": 1, "endIndex": 10 }
const api_datas2 = {"id": "202010200707", "remark": "入湖数据菜单树", "data": [{"ID": 1, "NAME": "分平台", "PID": 0, "CHILDNODE": 6 }, {"ID": 2, "NAME": "租户", "PID": 0, "CHILDNODE": 4 }, {"ID": 101, "NAME": "城管局分平台", "PID": 1, "CHILDNODE": 0 }, {"ID": 102, "NAME": "卫健局分平台", "PID": 1, "CHILDNODE": 0 }, {"ID": 103, "NAME": "教育局分平台", "PID": 1, "CHILDNODE": 0 }, {"ID": 201, "NAME": "工商局租户", "PID": 2, "CHILDNODE": 0 }, {"ID": 202, "NAME": "市监局租户", "PID": 2, "CHILDNODE": 0 } ], "pageSize": 10, "pageNum": 1, "total": 7, "totalPage": 1, "startIndex": 1, "endIndex": 10 }

// 把一维的数据，按照规则转换成树结构
const genTree = (data = []) => {
    // 记录当前的数组长度
    const len = data.length

    data.forEach((val, key) => {
        // 尝试找到父集引用
        const father = data.find(_ => _.id === val.pid)

        if (father) {
            // 父集引用插入数据
            father.children.push(val)
            // 标记删除
            val.KILL = true
        }

        return father
    })

    // 杀死标记的数据
    const newData = data.filter(_ => !_.KILL)

    // 毫无变化，说明所有的一维数组元素，都已经没有父集需要映射了
    const isEnd = len === newData.length

    // 如果已经结束了，那么返回数据本身，否则
    return isEnd ? newData : genTree(newData)
}

let data = api_datas.data.map(_ => ({ id: _.ID, label: _.DEPARTMENT, children: [], pid: _.PID }))
console.log(1, genTree(data))


let data2 = api_datas2.data.map(_ => ({ id: _.ID, label: _.NAME, children: [], pid: _.PID }))
console.log(2, genTree(data2))
)
txtit(Var)
return



::table.js::
::model.js::
Var =
(
/**
 * 「Event 基础示例」 
 * const obj = new Event()
 * obj.$on('fuck', (...args) => console.log('fuck', ...args))
 * obj.$emit('fuck', 123)
 * 
 * 
 * 「无缝对接 Event 的接口示例」
 * const obj = { a: 123, b: 321 }
 * Object.assign(obj, (new Event()).$interface)
 * obj.$on('fuck', (...args) => console.log('fuck', ...args))
 * obj.$emit('fuck', 123)
 */
export default class Event {
    constructor(props) {
        this.$event = []
    }

    $on(name, fn, id = Date.now()) {
        this.$event.push({ name, fn, id })
        
        return () => {
            const index = this.$event.findIndex(_ => _.id === id)
            this.$event.splice(index, 1)
        }
    }

    $emit(name, ...args) {
        // 获取任务
        const target = this.$event.filter(_ => _.name === name)

        // 是否存在任务
        if (target) {
            // 对每个任务进行执行
            const pendding = target.map(_ => _.fn(...args))
            // 如果任务返回的是promise，也可以方便外部 await
            return Promise.allSettled(pendding)
        }
    }

    $clear(name = '') {
        this.$event = this.$event.filter(_ => _.name != name)
    }

    get $interface() {
        return { 
            $on: this.$on.bind(this), 
            $emit: this.$emit.bind(this), 
            $clear: this.$clear.bind(this),
        }
    }
}
---
import { killerQueen2 } from '@/utils/utils'

const defaultCfg = { loading: false, data: null, ajax: () => {} }

export default class Model {
  constructor(cfg) {
      Object.assign(this, defaultCfg, cfg)
  }

  async getData(...args) {
    const result = await killerQueen2(
      () => this.loading = true,
      () => this.ajax(...args),
      () => this.loading = false,
      5000,
    `)

    return this.data = result
  } 
}
---
import { POST } from '@/utils/request'
import Event from './Event'
import { deepCopy, killerQueen2 } from '@/utils/utils'

// 配置模板
const defaultCfg = { id: 0, data: null, pageNum: 1, pageSize: 10, totalPage: null, loading: false, url: null }

export default class Table {
    constructor(cfg = {}) {
        // 备份初始配置
        this.initData = Object.assign({}, defaultCfg, cfg)

        // 融合上下文
    Object.assign(this, this.initData, new Event().$interface)
    }

    async getData(params) {
        this.reset()

        // 请求数据
        const result = await killerQueen2(
            () => (this.loading = true),
            () => POST(this.url, { id: this.id, params: Object.assign({}, { pageNum: this.pageNum, pageSize: this.pageSize }, params) }),
            () => (this.loading = false),
            5000
        `)

        if (!result) {
      this.data = null
      this.totalPage = null
      return console.warn('🔥 数据请求异常', result)
    }

        this.data = result.data
    this.totalPage = result.totalPage
    this.$emit('getData', result, params)

        return result
    }

    // 先冗余，再紧缩
    async getScrollData(params) {
        // 是否还有更多可以请求
        if (this.pageNum < this.totalPage) {
            // 请求数据
            const result = await killerQueen2(
                () => (this.loading = true),
                () => POST(this.url, { id: this.id, params: Object.assign({}, { pageNum: this.pageNum + 1, pageSize: this.pageSize }, params) }),
                () => (this.loading = false),
                5000
            `)

      if (!result) {
        this.data = null
        this.totalPage = null
        return console.warn('🔥 数据请求异常', result)
      }

            this.data.push(...result.data)
            this.totalPage = result.totalPage

            // 只有请求成功了我才加
            this.pageNum++

            return result
        }

        console.warn('没有更多数据了')
    }

    reset() {
        this.data = deepCopy(this.initData.data)
        this.pageNum = this.initData.pageNum
        this.pageSize = this.initData.pageSize
        this.loading = this.initData.loading
    }
}
)
code(Var)
return

::imgerr::
::imgerror::
::img.err::
::img.error::
::errimg::
::errorimg::
Var =
(
<img src="1.png" alt="CSS新世界封面" onerror="this.classList.add('error');">
---
img.error {
  display: inline-block;
  transform: scale(1);
  content: '';
  color: transparent;
}
img.error::before {
  content: '';
  position: absolute;
  left: 0; top: 0;
  width: 100`%; height: 100`%;
  background: #f5f5f5 url(break.svg) no-repeat center / 50`% 50`%;
}
img.error::after {
  content: attr(alt);
  position: absolute;
  left: 0; bottom: 0;
  width: 100`%;
  line-height: 2;
  background-color: rgba(0,0,0,.5);
  color: white;
  font-size: 12px;
  text-align: center;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
---
img.error::before {
  background: #f5f5f5 url("data:image/svg+xml,`%3Csvg class='icon' viewBox='0 0 1024 1024' xmlns='http://www.w3.org/2000/svg' width='200' height='200'`%3E`%3Cpath d='M304.128 456.192c48.64 0 88.064-39.424 88.064-88.064s-39.424-88.064-88.064-88.064-88.064 39.424-88.064 88.064 39.424 88.064 88.064 88.064zm0-116.224c15.36 0 28.16 12.288 28.16 28.16s-12.288 28.16-28.16 28.16-28.16-12.288-28.16-28.16 12.288-28.16 28.16-28.16z' fill='`%23e6e6e6'/`%3E`%3Cpath d='M887.296 159.744H136.704C96.768 159.744 64 192 64 232.448v559.104c0 39.936 32.256 72.704 72.704 72.704h198.144L500.224 688.64l-36.352-222.72 162.304-130.56-61.44 143.872 92.672 214.016-105.472 171.008h335.36C927.232 864.256 960 832 960 791.552V232.448c0-39.936-32.256-72.704-72.704-72.704zm-138.752 71.68v.512H857.6c16.384 0 30.208 13.312 30.208 30.208v399.872L673.28 408.064l75.264-176.64zM304.64 792.064H165.888c-16.384 0-30.208-13.312-30.208-30.208v-9.728l138.752-164.352 104.96 124.416-74.752 79.872zm81.92-355.84l37.376 228.864-.512.512-142.848-169.984c-3.072-3.584-9.216-3.584-12.288 0L135.68 652.8V262.144c0-16.384 13.312-30.208 30.208-30.208h474.624L386.56 436.224zm501.248 325.632c0 16.896-13.312 30.208-29.696 30.208H680.96l57.344-93.184-87.552-202.24 7.168-7.68 229.888 272.896z' fill='`%23e6e6e6'/`%3E`%3C/svg`%3E") no-repeat center / 50`% 50`%;
}
)
code(Var)
return

::toyiwan::
::yiwan::
Var =
(
// 传入的就是万条了，所以 24415，就等于 2亿 4415万
/**
 var result = toYiWan(24415)
 console.log(result[0], result[1]) // => 2 4415

 var result = toYiWan(70226)
 console.log(result[0], result[1]) // =>  226
*/
export const toYiWan = n => {
    const result = []
    // 亿
  result[0] = parseInt((n / 10000))
    // 万
    result[1] = toNumber((n `% 10000).toFixed())
    return result
}
)
code(Var)
return

::yixiaodaida::
Var =
(
// 以大带小
export const drive = (ary, fn) => {
    // 数组长度
    const len = ary.length
    // 偶数长度
    const isEven = len `% 2 === 0
    // 从大到小排序
    const _ary = ary.sort(fn)
    // 循环的次数
    const time = isEven ? len / 2 : Math.floor(len / 2) + 1
    // 返回新的数组
    return [...Array(time)].reduce((previousValue, currentValue, index) => {
        // 是否循环的最后一次
        const isLastTime = index === time - 1
        // 如果是奇数的，且最后一次的情况下
        if (!isEven && isLastTime) {
            // 没人可带，带我自己就够了
            return [...previousValue, _ary[index]]
        // 默认都带一个小弟
        } else {
            // 带上小弟
            return [...previousValue, _ary[index], _ary[len - 1 - index]]
        }
    }, [])
}
)
code(Var)
return

::map100::
Var =
(
[...Array(100)].map((v, index, array) => {
    return index
})
)
code(Var)
return

::map10::
Var =
(
[...Array(10)].map((v, index, array) => {
    return index
})
)
code(Var)
return

::immer::
Var =
(
const nextState = immer(baseState, draftState => {
    draftState.push({todo: "Tweet about it"})
    draftState[1].done = true
})
)
code(Var)
return

::isarr::
::isarray::
::isary::
Var =
(
export const isArray = input => input instanceof Array || Object.prototype.toString.call(input) === '[object Array]'
)
code(Var)
return

::cyinit::
::cy.init::
::cy::
Var =
(
// cypress\integration\examples\actions.spec.js
// https://on.cypress.io/interacting-with-elements
context('Actions', () => {
    beforeEach(() => {
        cy.visit('http://localhost:8099/#/Login')
    })

    // https://on.cypress.io/interacting-with-elements
    it('页面可访问测试', () => {
        
    })
})
)
code(Var)
return

::mongodb::
::mongo::
::mongoose::
Var =
(
const { connect } = require('mongodb')

const MongoClient = require('mongodb').MongoClient

// 请注意，将你的 <password>sb 和 <dbname> test 修改
const uri = 'mongodb+srv://lee:<password>@cluster0.dqy2h.azure.mongodb.net/<dbname>?retryWrites=true&w=majority'
const client = new MongoClient(uri, { useNewUrlParser: true })
client.connect((err) => {
    if (!err) {
        console.log('连接成功')
    }

    const collection = client.db('test').collection('devices')

    collection.insertOne({ devId: 1, 'name': 'hello world', time: '2020-10-01' }, function (err) {
        if (!err) {
            console.log('插入成功')
        }
    })

  client.close()
})
---
const Joi = require('joi')
const express = require('express')
const db = require('monk')(process.env.MONGO_URI)

const router = express.Router()
const faqs = db.get('faqs')

const schema = Joi.object({
    question: Joi.string().trim().required(),
    answer: Joi.string().trim().required(),
    vedio_url: Joi.string().uri(),
})

router.get('/', async (req, res, next) => {
    try {
        const items = await faqs.find({})
        res.json(items)
    } catch (error) {
        next(error)
    }
})

router.get('/:id', async (req, res, next) => {
    try {
        const { id } = req.params
        const item = await faqs.findOne({ _id: id })
        if (!item) {
            return next()
        }

        res.json(item)
    } catch (error) {
        next(error)
    }
})

router.post('/', async (req, res, next) => {
    try {
        const value = await schema.validateAsync(req.body)
        const result = await faqs.insert(value)
        res.json(result)
    } catch (error) {
        next(error)
    }
})

router.put('/:id', async (req, res, next) => {
    try {
        const { id } = req.params
        const item = await faqs.findOne({ _id: id })
        if (!item) {
            return next()
        }
        
        const value = await schema.validateAsync(req.body)

        const result = await faqs.update({ _id: id }, { $set: value })
        res.json(result)

    } catch (error) {
        next(error)
    }
})

router.delete('/:id', async (req, res, next) => {
    try {
        const { id } = req.params
        const result = await faqs.remove({ _id: id })
        res.json(result)
    } catch (error) {
        next(error)
    }
})

module.exports = router;
---
// https://mongoosejs.com/docs/api.html#model_Model.remove
const mongoose = require('mongoose')

// mongodb: //127.0.0.1:27017/eggcms
const uri = 'mongodb+srv://lee:202063sb@cluster0.dqy2h.azure.mongodb.net/test?retryWrites=true&w=majority'

mongoose.connect(uri, { useNewUrlParser: true, useUnifiedTopology: true, }, err => {
    if (err) {
        console.log('> error occurred from the database')
    } else {
        console.log('> successfully opened the database')
    }
})

// @fake.md
// 操作 users 表（集合），Schame 里面的对象和数据库里面的字段要对应
const usersSchame = mongoose.Schema({
    name: String,
    age: Number,
    status: Number,
})

// 模型映射 「users」 表这个集合（注意映射是复数形式，而且必须是首字母大写），可以通过第三个参数强指定
const User = mongoose.model('User', usersSchame, 'users')

;(async () => {
    // @@新增
    const u = new User({ name: 'Audra', age: 18, status: 0 })
    u.save()

    // @@更新
    await User.updateOne({ name: 'Audra' }, { status: 1 })

    // @@查找
    const userLists = await User.find({})
    console.log(userLists)

    // @@删除
    // （deleteMany/deleteOne）
    const res = await User.deleteMany({ name: 'Audra' })
    console.log('删除行数', res.deletedCount)

    // 结束进程
    process.exit(0)
})();

// 模块化的话，就将其导出
module.exports = User
)
txtit(Var)
return

::dufenmiao::
::dufenm::
::dfm::
Var =
(
var gps = [{"lng": "114°134′3536", "lat": "22°430′3132"}, {"lng": "114°034′3536", "lat": "22°530′3132"}, {"lng": "114°134′3536", "lat": "22°330′3132"}, {"lng": "114°034′3536", "lat": "22°430′3132"} ]

function myChangeToDu(d, f, m) {
    var f = parseFloat(f) + parseFloat(m / 60)
    var du = parseFloat(f / 60) + parseFloat(d)
    return du
}

var _gps = gps.map(_ => ({
    lng: myChangeToDu(..._.lng.match(/(\d+)°(\d+)′(\d+)/).slice(1)),
    lat: myChangeToDu(..._.lat.match(/(\d+)°(\d+)′(\d+)/).slice(1)),
}))

console.log(20200921145849, gps, _gps)
/**
http://www.minigps.net/fc.html

[{"lng": "114°134′3536", "lat": "22°430′3132"}, {"lng": "114°034′3536", "lat": "22°530′3132"}, {"lng": "114°134′3536", "lat": "22°330′3132"}, {"lng": "114°034′3536", "lat": "22°430′3132"} ]
[{ lng: 117.21555555555555, lat: 30.03666666666667 }, { lng: 115.54888888888888, lat: 31.703333333333333 }, { lng: 117.21555555555555, lat: 28.37 }, { lng: 115.54888888888888, lat: 30.03666666666667 } ]
 */
)
code(Var)
return

::isobj::
Var =
(
export const isObject = input => input != null && Object.prototype.toString.call(input) === '[object Object]'
)
code(Var)
return

::idmasker::
::idmask::
::dama::
::phonemask::
::phone::
::shoujituomin::
::tuomin::
::shouji::
Var =
(
// 查找到字符串中的手机号码，并且脱敏处理
// https://blog.csdn.net/yeshizhu/article/details/78354058
// https://blog.csdn.net/u010201575/article/details/90024828
export function matchPhoneNum(str, reg = /(1[3|4|5|7|8|9][\d]{9}|0[\d]{2,3}-[\d]{7,8}|400[-]?[\d]{3}[-]?[\d]{4})/g) {
    let phoneNums = str.match(reg)

    let _str = str

    // 字符串中如果有多个手机号码，需要批量处理
    for (let i = 0; i < phoneNums.length; i++) {
        let phone = phoneNums[i]

        //隐藏手机号中间4位(例如:12300102020,隐藏后为132****2020)
        const result = phone.replace(/(\d{3})\d{4}(\d{4})/, '$1****$2')

        _str = str.replace(phone, result)
    }

    if (_str === str) {
      const left = str.slice(0, 3)
      const l = str.slice(3, -3).length
      const fstr = l > 3 ? '*'.repeat(l) : '***'
      const star = str.slice(3, -3).replace(/.+/, fstr)
      const right = str.slice(-3)
      _str = left + star + right
    }

    return _str
}

let test1 = '罗兵13825296262'
var test2 = 'ka13213213211323213213213213213213213213213213213212ndsajkjksad113200102222sdas13500000000adsadsadsa'

let result1 = matchPhoneNum(test1)
let result2 = matchPhoneNum(test2)

console.log(result1)
console.log(result2)
---
idMask(type, n) {
    if (type === '内地身份证') {
        return n.toString().replace(/^(.{6})(?:\d+)(.{4})$/, "$1****$2")
    } else {
        const left = n.slice(0, 3)
        const l = n.slice(3, -3).length
        const str = l > 3 ? '*'.repeat(l) : '***'
        const star = n.slice(3, -3).replace(/.+/, str)
        const right = n.slice(-3)
        return left + star + right
    }
},
---
idMask(type, n) {
    console.log(20201021174323, type, n)
    if (type === '内地身份证') {
        return n.toString().replace(/^(.{6})(?:\d+)(.{4})$/, "$1****$2")
    } else {
        const left = n.slice(0, 3)
        const l = n.slice(3, -3).length
        // const str = l > 3 ? '*'.repeat(l) : '***'
        const str = '********'
        const star = n.slice(3, -3).replace(/.+/, str)
        const right = n.slice(-3)
        return left + star + right
    }
},
)
code(Var)
return


::tests::
::testt::
::testj::
::jestt::
::jest.test::
::jesttest::
Var =
(
test('first test', () => {
    expect(2).toBe(2)
})
)
code(Var)
return

::testd::
::jestd::
::jestdesc::
::jest.d::
::jest.desc::
Var =
(
import MainTask from '@/MainTask'

describe('任务类', () => {
  test('任务类 - 任务名', () => {
    const cfg = { name: '小试牛刀' }
    const m = new MainTask(cfg)
    expect(m.name).toBe(cfg.name)
  })
})

)
code(Var)
return

::wuxing::
Var =
(
// 五行列表
const wx = a => ['金', '木', '水', '火', '土'].includes(a)

// 五行相克
const restraint = { '金': '木', '木': '土', '水': '火', '火': '金', '土': '水' }

// 五行相生
const generation = { '金': '水', '木': '火', '水': '木', '火': '土', '土': '金', }

// 相克验证
export const isRestraint = (a, b) => (wx(a) && wx(b)) ? restraint[a] === b : false

// 相生验证
export const isGeneration = (a, b) => (wx(a) && wx(b)) ? generation[a] === b : false

// 获取相克方
export const getRestraint = a => wx(a) && restraint[a]

// 获取相生方
export const getGeneration = a => wx(a) && generation[a]

// 获取克我的五行
export const beRestraint = a => wx(a) && Object.entries(restraint).find(([k, v]) => v === a)[0]

// 获取生我的五行
export const beGeneration = a => wx(a) && Object.entries(generation).find(([k, v]) => v === a)[0]
)
code(Var)
return

::pachong::
Var =
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
---
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
---
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
---
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
)
txtit(Var)
return

::waiguan::
::waiguanzhemoshi::
::module::
::__module__::
::__module::
Var =
(
const __module__ = (function() {
    const _private = {
        i: 5,
        get() {
            console.log("current value:" + this.i)
        },
        set(val) {
            this.i = val
        },
        run() {
            console.log("running")
        },
        jump() {
            console.log("jumping")
        }
    }

    return {
        facade(args) {
            _private.set(args.val)

            _private.get()

            if (args.run) {
                _private.run()
            }
        }
    }
}())


// Outputs: "current value: 10" and "running"
__module__.facade({ run: true, val: 10 })
---
const __module__ = (function() {
    const __private = {
        run(...args) {
            console.log('running', ...args)
        },
        jump(...args) {
            console.log('jumping', ...args)
        },
        attack(...args) {
            console.log('attack', ...args)
        },
        defense (...args) {
            console.log('defense', ...args)
        },
    }

    return {
        facade(commander, ...args) {
            __private[commander](...args)
        }
    }
}())


__module__.facade('run', { val: 10 })
__module__.facade('jump', { val: 2 })
__module__.facade('attack', { val: 20 })
__module__.facade('defense', { val: 5 })
)
txtit(Var)
return

::chain::
::chai::
::kexuanlian::
Var =
(
// https://twitter.com/jchiatt/status/1140603584914055168
function Calculator(val = 0) {
  this.val = val
}

Calculator.prototype.add = function (x) {
  this.val += x
  return this
}

Calculator.prototype.multiply = function (x) {
  this.val *= x
  return this
}

Calculator.prototype.divide = function (x) {
  this.val /= x
  return this
}

Calculator.prototype.result = function (x) {
  return this.val
}

var calc = new Calculator()

const result = calc.add(5).multiply(5).add(5).multiply(5).divide(3).result()

console.log(20200919211223, result)
)
txtit(Var)
return

::jsdom::
Var =
(
const jsdom = require("jsdom")
const { JSDOM } = jsdom


const { window } = new JSDOM(``, { runScripts: "outside-only" })

const DOMParser = window.DOMParser

// string html
const html = `<div>test</div>`
// DOM 解析器
const parser = new DOMParser()
// 将字符串解析为 DOM 元素（cool）
const doc = parser.parseFromString(html, 'text/html' )
// 解析出来的结果，类似一个 document 网页对象
console.log(doc, doc.body.innerHTML)
)
code(Var)
return

::webworker::
::worker.js::
::work.js::
::worker::
::worker.js::
::duoxianc::
::duoxiancheng::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>webworker 基本示例</title>
</head>

<body>
</body>
<script>
    const worker = new Worker('fuck.js')
    worker.onmessage = event => document.body.innerHTML += `${ event.data }<br/>`
</script>
</html>
---
// http://localhost/fuck.js
while (true) {
    postMessage(Math.random())
}
)
txtit(Var)
return

::pollpost::
::poll_post::
::post_poll::
::postpoll::
Var =
(
const isFunction = input => input instanceof Function || Object.prototype.toString.call(input) === '[object Function]'
const isNumber = input => (typeof input === 'number' || Object.prototype.toString.call(input) === '[object Number]') && input === input

/**
 * 轮询POST请求 ...
 *
 */
const POLL_POST = opts => {
    // 获取核心参数
    const { url = '', data = {}, time = 1000, success = () => {}, error = () => {} } = opts

    // 轮询开关
    let isPoll = true

    // 轮询间隔只支持函数或者 number
    const timer = isFunction(time) ? time() : isNumber(time) ? time : 1000

    // 轮询任务
    async function poll () {
        // 开始请求
        await axios({ method: 'POST', url, data }).then(success).catch(error)

        // 是否继续轮询
        if (isPoll) {
            // isPoll 还作为定时器存在
            isPoll = setTimeout(poll, timer)
        }
    }

    // 开始轮询
    poll()

    // 返回开关 
    return () => {
        // 关闭开关
        clearTimeout(isPoll)
        // 关闭逻辑
        isPoll = null
    }

}

const cancel = POLL_POST({
    url: '/',
    data: {},
    success (data) {
        console.log(20200905113649, data)
    },
    error(err) {
        console.log(20200905113651, err)
    }
})
)
code(Var)
return


::isfn::
Var =
(
export const isFunction = input => input instanceof Function || Object.prototype.toString.call(input) === '[object Function]'
)
code(Var)
return

::isnum::
Var =
(
export const isNumber = input => (typeof input === 'number' || Object.prototype.toString.call(input) === '[object Number]') && input === input
)
code(Var)
return


::express::
::express.init::
Var =
(
const express = require('express')
const cors = require('cors')

let app = express()
app.use(cors())
app.use(express.json())

app.all('/', (req, res) => {
  const { method,  url, headers, body, query /* ,params */ } = req

  console.log('🦄🦄🦄🦄', body)

  res.send({ msg: 'hello world!' })
})

app.listen(8080, () => console.log("Server is running on port http://localhost:8080"))
---
### 安装全局依赖

记得用 cmd 管理员运行安装

```
$ cnpm i express-generator -g && express -h
```

### 初始化 express

```javascript
$ express --view=ejs myapp
$ cd myapp & cnpm i
$ npm start
```

访问地址：http://localhost:3000/
)
txtit(Var)
return

::js.media::
::media.js::
Var =
(
var mediaQuery = window.matchMedia('(max-width: 500px)');
)
code(Var)
return

::map.px::
::mappx::
::pxtopoint::
::pointtopx::
::px2point::
::point2px::
Var =
(
// 页面坐标转经纬度
const { lng, lat } = map.pixelToPoint(new BMap.Pixel(movex, movey))

// 经纬度转页面坐标
let {x, y} = this.myMap.pointToPixel(new BMap.Point(...point))
)
code(Var)
return

::deepEQ::
Var =
(
export const deepEQ = function (x, y) {
  // 指向同一内存时
  if (x === y) 
    return true

  else if ((typeof x == "object" && x != null) && (typeof y == "object" && y != null)) {
    if (Object.keys(x).length != Object.keys(y).length)
      return false
 
    for (var prop in x) {
      if (y.hasOwnProperty(prop))
      {  
        if (! deepEQ(x[prop], y[prop]))
          return false
      }
      else
        return false
    }
 
    return true
  }
  else 
    return false
}
)
code(Var)
return

::nginx::
Var =
(
events {
    worker_connections 1024;
}

http {
    log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
                      '$status $body_bytes_sent "$http_referer" '
                      '"$http_user_agent" "$http_x_forwarded_for"';

    access_log  /var/log/nginx/access.log  main;

    sendfile            on;
    tcp_nopush          on;
    tcp_nodelay         on;
    keepalive_timeout   65;
    types_hash_max_size 2048;

    include             /etc/nginx/mime.types;
    default_type        application/octet-stream;

    # Load modular configuration files from the /etc/nginx/conf.d directory.
    # See http://nginx.org/en/docs/ngx_core_module.html#include    
    # for more information.
    include /etc/nginx/conf.d/*.conf;
    client_max_body_size 50m;
    
    map $http_upgrade $connection_upgrade {
        default upgrade;
        '' close;
    }
    server {
        listen 8080;
        # gzip config
        gzip on;
        gzip_min_length 2k;
        gzip_comp_level 9;
        gzip_types text/plain application/javascript application/x-javascript text/css application/xml text/javascript application/x-httpd-php image/jpeg image/gifimage/png;
        gzip_vary on;
        gzip_disable "MSIE [1-6]\.";
        client_max_body_size 200m;

        location ^~ /driver {
                  alias  /usr/share/nginx/html/;
                  index  index.html index.htm;
                  try_files $uri $uri/ /driver/index.html;
                }
    
        location ^~ /driver/visual {
            proxy_pass http://ioc-visual-svc:8080/;
            proxy_set_header   X-Forwarded-Proto $scheme;
            proxy_set_header   X-Forwarded-For $remote_addr;
            proxy_set_header   Host              $http_host;
            proxy_set_header   X-Real-IP         $remote_addr;
            #配置---------websocket--------
            proxy_http_version 1.1;
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection $connection_upgrade;
            proxy_connect_timeout 10s; 
            proxy_read_timeout 7200s; 
            proxy_send_timeout 20s; 
        }
        location ^~ /driver/admin {
            proxy_pass http://ioc-admin-svc:8080/admin;
            proxy_set_header   X-Forwarded-Proto $scheme;
            proxy_set_header   X-Forwarded-For $remote_addr;
            proxy_set_header   Host              $http_host;
            proxy_set_header   X-Real-IP         $remote_addr;
        }
        location ^~ /driver/ljdp {
            proxy_pass http://ioc-admin-svc:8080/ljdp;
            proxy_set_header   X-Forwarded-Proto $scheme;
            proxy_set_header   X-Forwarded-For $remote_addr;
            proxy_set_header   Host              $http_host;
            proxy_set_header   X-Real-IP         $remote_addr;
        }
        location ^~ /driver/framework {
            proxy_pass http://ioc-admin-svc:8080/framework;
            proxy_set_header   X-Forwarded-Proto $scheme;
            proxy_set_header   X-Forwarded-For $remote_addr;
            proxy_set_header   Host              $http_host;
            proxy_set_header   X-Real-IP         $remote_addr;
        }

    }
}
)
txtit(Var, "@@@")
return

::baidu.zidingyi::
::bdzidingyi::
::bd.create::
::bdfugaiwu::
::fugaiwu::
Var =
(
function CustomOverlay(point) {
  this._point = point
}

CustomOverlay.prototype = new BMap.Overlay()

CustomOverlay.prototype.initialize = function(map){
  var div = this._div = document.createElement("div")
  div.style.position = "absolute"
  div.style.zIndex = BMap.Overlay.getZIndex(this._point.lat)
  div.style.top = 0
  div.style.left = 0
  div.style.transform = "scale(0.5)"
 
  div.onmouseover = e => console.log('onmouseover', e)
  div.onmouseout = e => console.log('onmouseout', e)
  div.onclick = e => console.log('onclick', e)

  map.getPanes().labelPane.appendChild(div)
  
  return div
}

CustomOverlay.prototype.draw = function(){
  var map = this._map
  var pixel = map.pointToOverlayPixel(this._point)
  this._div.style.left = pixel.x - parseInt(this._arrow.style.left) + "px"
  this._div.style.top  = pixel.y - 30 + "px"
}
    
var myCompOverlay = new CustomOverlay(new BMap.Point(116.407845,39.914101))

map.addOverlay(myCompOverlay)
)
code(Var)
return

::https::
::cdn-https::
::cdn-http::
::meta-https::
::meta-http::
Var =
(
<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests" />
---
proxyTable: {
    '/api': {
        secure: false,
        target: 'https://19.104.40.37:6080',
        changeOrigin: true, 
        pathRewrite: {
          '^/api': '/api'
        }
    }
},
---
先请求该 https 地址，让浏览器允许证书通过
先请求该 https 地址，让浏览器允许证书通过
先请求该 https 地址，让浏览器允许证书通过
先请求该 https 地址，让浏览器允许证书通过
先请求该 https 地址，让浏览器允许证书通过
先请求该 https 地址，让浏览器允许证书通过
)
txtit(Var)
return

::ext::
::lastpath::
Var =
(
const lastpath = path => path.substr(path.lastIndexOf('.') + 1)
)
code(Var)
return

::xiazai::
::daochu::
Var =
(
function base64ToArrayBuffer(base64) {
  var binary_string = window.atob(base64)
  var len = binary_string.length
  var bytes = new Uint8Array( len )
  for (var i = 0; i < len; i++) { bytes[i] = binary_string.charCodeAt(i) }
  return bytes.buffer
}

// your base64 code => window.btoa(JSON.stringify({ password: 123456 }))
var file ='eyJwYXNzd29yZCI6MTIzNDU2fQ=='
var data = base64ToArrayBuffer(file)
var blob = new Blob([data], {type: 'octet/stream'})
var fileName = 'fuckyou.js' // => .doc 也是可以的

// microsoft ie
if (window.navigator.msSaveOrOpenBlob) {
   window.navigator.msSaveBlob(blob,fileName)
} else {
    var a = document.createElement('a')
    document.body.appendChild(a)
    a.style = 'display: none'
    var url = window.URL.createObjectURL(blob)
    a.href = url
    a.download = fileName
    a.click()
    window.URL.revokeObjectURL(url)
}
)
code(Var)
return


::shengshou::
::sifang::
::dgzhenjie::
::zhenjie::
::city::
::dg33::
::dgcity::
::city33::
::dgrect::
::cityrect::
::rect::
::sidaquyu::
::dongxinanb::
::dongxinanbei::
::sifangwudi::
::simianbafang::
::simianbaf::
::simianchuge::
Var =
(
export const filterCity = (v = '') => v.replace(/街道|镇/g, '')
---
{
  "东城":[113.781803,23.018795],
  "莞城":[113.751333,23.055512],
  "虎门":[113.671419,22.829733],
  "长安":[113.751333,22.80255],
  "厚街":[113.695137,22.928664],
  "南城":[113.722012,22.991651],
  "寮步":[113.863613,23.012407],
  "塘厦":[114.083799,22.815639],
  "常平":[114.019622,22.976357],
  "凤岗":[114.156073,22.743368],
  "清溪":[114.172171,22.858509],
  "大朗":[113.953929,22.927227],
  "万江":[113.697865,23.057108],
  "大岭山":[113.820775,22.911782],
  "沙田":[113.590931,22.902194],
  "石碣":[113.794451,23.114556],
  "横沥":[113.982863,23.038418],
  "黄江":[114.006169,22.873877],
  "松山湖":[113.869765,22.922434],
  "樟木头":[114.092257,22.930422],
  "企石":[114.053139,23.077823],
  "麻涌":[113.561772,23.044478],
  "茶山":[113.888136,23.073522],
  "中堂":[113.655897,23.110833],
  "高埗":[113.728911,23.106046],
  "桥头":[114.078459,23.027842],
  "东坑":[113.930131,23.009216],
  "道滘":[113.646123,23.002296],
  "石排":[113.949558,23.096017],
  "谢岗":[114.177422,22.978865],
  "石龙":[113.857692,23.119342],
  "望牛墩":[113.624851,23.056576],
  "洪梅":[113.593806,22.989521]
---
const fuckdata = [
     { text: '东城', geometry: { type: 'Point', coordinates: [113.781803, 23.018795] }},
     { text: '莞城', geometry: { type: 'Point', coordinates: [113.751333, 23.055512] }},
     { text: '虎门', geometry: { type: 'Point', coordinates: [113.671419, 22.829733] }},
     { text: '长安', geometry: { type: 'Point', coordinates: [113.751333, 22.80255] }},
     { text: '厚街', geometry: { type: 'Point', coordinates: [113.695137, 22.928664] }},
     { text: '南城', geometry: { type: 'Point', coordinates: [113.722012, 22.991651] }},
     { text: '寮步', geometry: { type: 'Point', coordinates: [113.863613, 23.012407] }},
     { text: '塘厦', geometry: { type: 'Point', coordinates: [114.083799, 22.815639] }},
     { text: '常平', geometry: { type: 'Point', coordinates: [114.019622, 22.976357] }},
     { text: '凤岗', geometry: { type: 'Point', coordinates: [114.156073, 22.743368] }},
     { text: '清溪', geometry: { type: 'Point', coordinates: [114.172171, 22.858509] }},
     { text: '大朗', geometry: { type: 'Point', coordinates: [113.953929, 22.927227] }},
     { text: '万江', geometry: { type: 'Point', coordinates: [113.697865, 23.057108] }},
     { text: '沙田', geometry: { type: 'Point', coordinates: [113.590931, 22.902194] }},
     { text: '石碣', geometry: { type: 'Point', coordinates: [113.794451, 23.114556] }},
     { text: '横沥', geometry: { type: 'Point', coordinates: [113.982863, 23.038418] }},
     { text: '黄江', geometry: { type: 'Point', coordinates: [114.006169, 22.873877] }},
     { text: '企石', geometry: { type: 'Point', coordinates: [114.053139, 23.077823] }},
     { text: '麻涌', geometry: { type: 'Point', coordinates: [113.561772, 23.044478] }},
     { text: '茶山', geometry: { type: 'Point', coordinates: [113.888136, 23.073522] }},
     { text: '中堂', geometry: { type: 'Point', coordinates: [113.655897, 23.110833] }},
     { text: '高埗', geometry: { type: 'Point', coordinates: [113.728911, 23.106046] }},
     { text: '桥头', geometry: { type: 'Point', coordinates: [114.078459, 23.027842] }},
     { text: '东坑', geometry: { type: 'Point', coordinates: [113.930131, 23.009216] }},
     { text: '道滘', geometry: { type: 'Point', coordinates: [113.646123, 23.002296] }},
     { text: '石排', geometry: { type: 'Point', coordinates: [113.949558, 23.096017] }},
     { text: '谢岗', geometry: { type: 'Point', coordinates: [114.177422, 22.978865] }},
     { text: '石龙', geometry: { type: 'Point', coordinates: [113.857692, 23.119342] }},
     { text: '洪梅', geometry: { type: 'Point', coordinates: [113.593806, 22.98952] }},
     { text: '松山湖', geometry: { type: 'Point', coordinates: [113.869765, 22.922434] }},
     { text: '大岭山', geometry: { type: 'Point', coordinates: [113.820775, 22.911782] }},
     { text: '樟木头', geometry: { type: 'Point', coordinates: [114.092257, 22.930422] }},
     { text: '望牛墩', geometry: { type: 'Point', coordinates: [113.624851, 23.056576] }},
]
---
// 获取一个镇区的四大圣区
/* 经度越往左边越小，纬度越往上越大 */
const getFB = (polygon = []) => {
  // 经度集
  const longitude = polygon.map(_ => _[0])
  // 纬度集
  const latitude = polygon.map(_ => _[1])

  // 获取最小经度
  const minLng = Math.min(...longitude)
  // 获取最小纬度
  const minLat = Math.min(...latitude)
  // 获取最大经度
  const maxLng = Math.max(...longitude)
  // 获取最大纬度
  const maxLat = Math.max(...latitude)

  return {
    // 左上角 = 最小经度 + 最大纬度
    LT: [minLng, maxLat], 
    // 右上角 = 最大经度 + 最大纬度
    RT: [maxLng, maxLat],
    // 右下角 = 最大经度 + 最小纬度
    RB: [maxLng, minLat],
    // 左下角 = 最小经度 + 最小纬度
    LB: [minLng, minLat],
  }
}

function getDeepth(array) {
    function sum(arr, flag) {
        return arr.reduce(function (total, item) {
            var totalDeepth ;
            if (Array.isArray(item)) {
                totalDeepth = sum(item, flag + 1);
            }
            return totalDeepth > total ? totalDeepth : total;
        }, flag)
    }
    return sum(array, 1);
}

const fb = dongguan.features.map(_ => {
  // 获取城镇名称
  const name = _.properties.name

  // 获取所有的围城
  const coordinates = _.geometry.coordinates

  const level = getDeepth(coordinates)

  // 获取四圣区
  const rect = getFB(coordinates.flat(level - 2))

  return { [name]: rect }
})

console.log(20200814162435, fb)

/*
const cityRect = {
  "莞城": { "topLeft": [113.72534417100007, 23.059802283000067], "topRight": [113.77809167100008, 23.059802283000067], "bottomRight": [113.77809167100008, 23.02324868900007], "bottomLeft": [113.72534417100007, 23.02324868900007] },
  "东城": { "topLeft": [113.74062409400005, 23.099869160000026], "topRight": [113.84056794900005, 23.099869160000026], "bottomRight": [113.84056794900005, 22.93594342800003], "bottomLeft": [113.74062409400005, 22.93594342800003] },
  "南城": { "topLeft": [113.68101026300008, 23.035692511000036], "topRight": [113.78258988800008, 23.035692511000036], "bottomRight": [113.78258988800008, 22.92220750000007], "bottomLeft": [113.68101026300008, 22.92220750000007] },
  "万江": { "topLeft": [113.64774155300006, 23.09491767700007], "topRight": [113.74218498300002, 23.09491767700007], "bottomRight": [113.74218498300002, 22.98665709900007], "bottomLeft": [113.64774155300006, 22.98665709900007] },
  "石碣": { "topLeft": [113.74529415000006, 23.13385894700008], "topRight": [113.84219683200001, 23.13385894700008], "bottomRight": [113.84219683200001, 23.071080616000074], "bottomLeft": [113.74529415000006, 23.071080616000074] },
  "石龙": { "topLeft": [113.83106541900008, 23.128462639000077], "topRight": [113.89003141800004, 23.128462639000077], "bottomRight": [113.89003141800004, 23.084356323000065], "bottomLeft": [113.83106541900008, 23.084356323000065] },
  "茶山": { "topLeft": [113.8305676220001, 23.10529249600006], "topRight": [113.92727604000004, 23.10529249600006], "bottomRight": [113.92727604000004, 23.02543406700005], "bottomLeft": [113.8305676220001, 23.02543406700005] },
  "石排": { "topLeft": [113.876752022, 23.118663253000022], "topRight": [114.00371086400003, 23.118663253000022], "bottomRight": [114.00371086400003, 23.051683239000056], "bottomLeft": [113.876752022, 23.051683239000056] },
  "企石": { "topLeft": [113.97475719300007, 23.10270273200007], "topRight": [114.10000582200007, 23.10270273200007], "bottomRight": [114.10000582200007, 23.031298329000037], "bottomLeft": [113.97475719300007, 23.031298329000037] },
  "横沥": { "topLeft": [113.92182839200007, 23.059576939000067], "topRight": [114.02720886500003, 23.059576939000067], "bottomRight": [114.02720886500003, 22.989443523000034], "bottomLeft": [113.92182839200007, 22.989443523000034] },
  "桥头": { "topLeft": [114.02708054400011, 23.063437608000072], "topRight": [114.1458752100001, 23.063437608000072], "bottomRight": [114.1458752100001, 22.985306036000054], "bottomLeft": [114.02708054400011, 22.985306036000054] },
  "谢岗": { "topLeft": [114.07594078800003, 23.003537189000042], "topRight": [114.25547799000003, 23.003537189000042], "bottomRight": [114.25547799000003, 22.883335517000035], "bottomLeft": [114.07594078800003, 22.883335517000035] },
  "东坑": { "topLeft": [113.90904697400003, 23.02864678800006], "topRight": [113.97309083100004, 23.02864678800006], "bottomRight": [113.97309083100004, 22.96544506600003], "bottomLeft": [113.90904697400003, 22.96544506600003] },
  "常平": { "topLeft": [113.94133085700003, 23.033463495000035], "topRight": [114.09231639100005, 23.033463495000035], "bottomRight": [114.09231639100005, 22.91680033600005], "bottomLeft": [113.94133085700003, 22.91680033600005] },
  "寮步": { "topLeft": [113.7964138320001, 23.045240309000064], "topRight": [113.91880515800005, 23.045240309000064], "bottomRight": [113.91880515800005, 22.948073476000047], "bottomLeft": [113.7964138320001, 22.948073476000047] },
  "樟木头": { "topLeft": [114.00799015100006, 22.96507491400007], "topRight": [114.17720956000005, 22.96507491400007], "bottomRight": [114.17720956000005, 22.81426424400007], "bottomLeft": [114.00799015100006, 22.81426424400007] },
  "大朗": { "topLeft": [113.85537632500007, 22.978252535000024], "topRight": [113.99133261600002, 22.978252535000024], "bottomRight": [113.99133261600002, 22.833024026000032], "bottomLeft": [113.85537632500007, 22.833024026000032] },
  "黄江": { "topLeft": [113.92776977300002, 22.938362253000037], "topRight": [114.0561889920001, 22.938362253000037], "bottomRight": [114.0561889920001, 22.80032996400007], "bottomLeft": [113.92776977300002, 22.80032996400007] },
  "清溪": { "topLeft": [114.097909748, 22.906924667000055], "topRight": [114.23132949600006, 22.906924667000055], "bottomRight": [114.23132949600006, 22.770083528000043], "bottomLeft": [114.097909748, 22.770083528000043] },
  "塘厦": { "topLeft": [113.985983755, 22.865157946000068], "topRight": [114.14293918900012, 22.865157946000068], "bottomRight": [114.14293918900012, 22.733530570000028], "bottomLeft": [113.985983755, 22.733530570000028] },
  "凤岗": { "topLeft": [114.10012897900003, 22.78198179900005], "topRight": [114.21079937400009, 22.78198179900005], "bottomRight": [114.21079937400009, 22.656461396000054], "bottomLeft": [114.10012897900003, 22.656461396000054] },
  "大岭山": { "topLeft": [113.76761523300001, 22.964888603000077], "topRight": [113.87350563500001, 22.964888603000077], "bottomRight": [113.87350563500001, 22.835581782000077], "bottomLeft": [113.76761523300001, 22.835581782000077] },
  "厚街": { "topLeft": [113.6171564760001, 22.979852575000052], "topRight": [113.782251771, 22.979852575000052], "bottomRight": [113.782251771, 22.858006592000038], "bottomLeft": [113.6171564760001, 22.858006592000038] },
  "沙田": { "topLeft": [113.53515655900003, 23.003319024000064], "topRight": [113.65104554000004, 23.003319024000064], "bottomRight": [113.65104554000004, 22.809416443000032], "bottomLeft": [113.53515655900003, 22.809416443000032] },
  "道滘": { "topLeft": [113.58993915000008, 23.038531989000035], "topRight": [113.69872279800006, 23.038531989000035], "bottomRight": [113.69872279800006, 22.91782633100007], "bottomLeft": [113.58993915000008, 22.91782633100007] },
  "洪梅": { "topLeft": [113.57568947000004, 23.027567900000065], "topRight": [113.63017141900002, 23.027567900000065], "bottomRight": [113.63017141900002, 22.921824099000048], "bottomLeft": [113.57568947000004, 22.921824099000048] },
  "麻涌": { "topLeft": [113.51588711700003, 23.103970228000037], "topRight": [113.61333369300007, 23.103970228000037], "bottomRight": [113.61333369300007, 22.963288657000078], "bottomLeft": [113.51588711700003, 22.963288657000078] },
  "望牛墩": { "topLeft": [113.58891878700001, 23.079489557000045], "topRight": [113.67119073300012, 23.079489557000045], "bottomRight": [113.67119073300012, 23.00941414400006], "bottomLeft": [113.58891878700001, 23.00941414400006] },
  "中堂": { "topLeft": [113.59567296400007, 23.14488440300005], "topRight": [113.7498358790001, 23.14488440300005], "bottomRight": [113.7498358790001, 23.042030622000027], "bottomLeft": [113.59567296400007, 23.042030622000027] },
  "高埗": { "topLeft": [113.68813344500006, 23.133319077000067], "topRight": [113.7710529530001, 23.133319077000067], "bottomRight": [113.7710529530001, 23.061946420000027], "bottomLeft": [113.68813344500006, 23.061946420000027] },
  "松山湖": { "topLeft": [113.83838653700002, 22.981537], "topRight": [113.936455, 22.981537], "bottomRight": [113.936455, 22.863689548000025], "bottomLeft": [113.83838653700002, 22.863689548000025] },
  "虎门": { "topLeft": [113.64411162700003, 22.88629615700006], "topRight": [113.80668843800004, 22.88629615700006], "bottomRight": [113.80668843800004, 22.775879454000062], "bottomLeft": [113.64411162700003, 22.775879454000062] },
  "长安": { "topLeft": [113.69767490700008, 22.849184328000035], "topRight": [113.83652530800009, 22.849184328000035], "bottomRight": [113.83652530800009, 22.72936515400005], "bottomLeft": [113.69767490700008, 22.72936515400005] },
  "滨海湾": { "topLeft": [113.60552826700007, 22.836202237000066], "topRight": [113.76778142800003, 22.836202237000066], "bottomRight": [113.76778142800003, 22.71798088500003], "bottomLeft": [113.60552826700007, 22.71798088500003] },
}
*/
)
txtit(Var)
return

::request2::
::request2.js::
::req2.js::
::req2::
Var =
(
// store.state.AppData.token
import store from '@/store'
import router from '@/router'
import Qs from 'qs'
import axios from 'axios'
import { dateYYYYMMDDHHmmss, logs, waitWhen, encryption, throttle } from './utils.js'
import { Message } from 'element-ui'
import { removeCookie } from "@/utils/cookie";

// 请求地址
const __API__ = process.env.NODE_ENV === 'development' ? '/api/' : '/mapvis/visual/'

// 请求队列
let pending = []

// 登陆状态失效，弹出错误提示并且跳转到登陆页面
const tokenError = () => {
    removeCookie('token')
    router.push('/login')
    Message('请先登录')
    throw new Error('请先登录')
}

// 函数节流，3秒之内只会执行一次。不会重复执行。
// leading 为 true时，第一次执行立即触发，这比setTimeout好多了
// trailing 为 fasle时，不会触发最后一次。这样比较符合直觉。
const _tokenError = throttle(tokenError, 3000, { leading: true, trailing: false })

// 添加请求拦截器，动态设置参数
axios.interceptors.request.use(async config => {
    // 判断是否登录（登录接口本身除外）
    if (!config.url.includes('login') && !store.state.AppData.token) {
        // 登陆状态失效，弹出错误提示并且跳转到登陆页面
        _tokenError()
    }

    // 合并请求头 authority-token
    config.headers = Object.assign({}, config.headers, { 'User-Agent': navigator.userAgent, 'authority-token': store.state.AppData.token || '' })

    // 获取参数详情
    const { method, params, data, lazy, noRepeat = true } = config

    // 加密（url + params + data）（用来标识请求的唯一性，用来判断是否重复请求）
    const id = encryption({ url, params, data })

    // 获取索引
    const [url, note] = config.url.split('|')

    // 以防万一，记录一下带有注释的 url
    config.noteURL = config.url

    // 过滤url的文本注释
    config.url = url

    // 加入备注
    config.note = note

    // 加入 id（用来标识请求的唯一性，用来判断是否重复请求）
    config.id = id

    // 🔴 懒模式 - 10 分钟内等待队列为空才进行，查询的间隔是 100ms 一次，每次只能进行一条。
    if (lazy) await waitWhen(_ => pending.length === 0, 60 * 10 * 1000, 100)

    // （默认开启「去重」）如果需要去重复, 则中止队列中所有相同请求地址的 xhr
    noRepeat && pending.forEach(_ => _.id === id && _.cancel('⚔️ kill repeat xhr：' + config.noteURL))

    // 配置 CancelToken
    config.cancelToken = new axios.CancelToken(cancel => {
        const newPeding = { id, cancel }
        // 移除所有中止的请求，并且将新的请求推入缓存
        pending = [...pending.filter(_ => _.id != id), newPeding]
    })

    // 返回最终配置
    return config
})

// 响应拦截器
axios.interceptors.response.use(res => {
    // 获取请求配置
    const { method, url, params, data, status, note, noteURL, id } = res.config

    // 如果需要打印日志的话
    if (true) {
        // 获取参数
        const p = JSON.stringify(method === 'get' ? params : data)
        // 获取请求时间
        const date = dateYYYYMMDDHHmmss(Date.now())
        // 打印请求结果和详情
        logs(`${note}${method.toUpperCase()}：${url}`, res.data, JSON.stringify({params: method === 'get' ? params : data , result: data, status }, null, '\t'))
    }

    // 成功响应之后清空队列中所有相同 Url 的请求
    pending = pending.filter(_ => _.id != id)

    // 只返回 data 即可
    return res.data
}, error => {
    // 获取报文
    const res = error.response

    // token 失效，请求失败 20019
    if (res && res.status === 500 && res.data && res.data.code === 20019) {
        // 取消所有接口的请求
        pending.forEach(_ => _.cancel('⚠️登录状态失效'))
        // 清空接口
        pending = []
        // 主动报错，回到登录页
        return _tokenError()
    }

    // 如果存在报文，才进行清空。
    if (res) {
        // 直接清空列表
        pending = pending.filter(_ => _.id != res.config.id)
    }

    // 可以输出：error.response
    return Promise.reject(error)
})

export const GET = (url = '', params = {}, config = {}) => axios({ method: 'GET', url: __API__ + url, params, ...config })

export const POST = (url = '', data = {}, config = {}) => axios({ method: 'POST', url: __API__ + url, data, ...config })

export const FORM_POST = (url = '', data = {}, config = {}) => axios({ method: 'POST', url: __API__ + url, data: Qs.stringify(data), headers: { 'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'}, ...config })
)
txtit(Var)
return

::e.pro::
::e.pre::
Var =
(
e.preventDefault()
)
code(Var)
return

::domjianting::
::domjt::
::domlisten::
::domon::
::obs::
Var =
(
const observer = new IntersectionObserver((entries) => {
    console.log(entries)
}, {
    root: document.querySelector("#app"),
    threshold: 1.0,
})

document.querySelectorAll(".item").forEach((el) => observer.observe(el))
)
code(Var)
return

:?:window.a2::
:?:window.ani2::
:?:winquest2::
:?:wina2::
:?:winq2::
:?:window.req2::
:?:window.animate2::
:?:win.ani2::
::window.request2::
::window.r2::
::window.req2::
Var =
(
window.requestAnimFrame = (function(){
    return  window.requestAnimationFrame       ||
            window.webkitRequestAnimationFrame ||
            window.mozRequestAnimationFrame    ||
            window.oRequestAnimationFrame      ||
            window.msRequestAnimationFrame     ||
            function(/* function */ callback, /* DOMElement */ element){
                window.setTimeout(callback, 1000 / 60);
            };
})();

window.cancelAnimationFrame=window.cancelAnimationFrame ||
    Window.webkitCancelAnimationFrame ||
    window.mozCancelAnimationFrame ||
    window.msCancelAnimationFrame ||
    window.oCancelAnimationFrame ||
    function( id ){
        //为了使setTimteout的尽可能的接近每秒60帧的效果
        window.clearTimeout( id );
    }
)
code(Var)
return



:?:window.a::
:?:window.ani::
:?:winquest::
:?:wina::
:?:winq::
:?:window.req::
:?:window.animate::
:?:win.ani::
::window.request::
::window.r::
::window.req::
Var =
(
window.requestAnimationFrame
)
code(Var)
return

::youjian::
Var =
(
// 这就是核心的拦截事件
document.oncontextmenu = (e) => {
    // 拦截浏览器默认右键行为
    e.preventDefault()
}
)
code(Var)
return

::console.red::
::console.r::
::console.warn::
::console.error::
::console.waring::
::console.fbi::
InputBox, OutputVar, title, enter a name?,,,,,,,,WARNING: you will be obsessed with folklore
Var =
(
console.log("`%cWARNING: you will be obsessed with folklore", "font: 2em sans-serif; color: yellow; background-color: red;");
)
code(Var)
return

::jiami::
Var =
(
import hash from 'hash.js'

// 加密工具
export const encryption = v => {
  // 指纹
  const fingerprint = JSON.stringify(v)
  // 加密指纹
  const hashcode = hash.sha256().update(fingerprint).digest('hex')
  // 返回加密指纹
  return hashcode
}
)
code(Var)
return

::group::
::groupby::
Var =
(
const groupby = (ary = [], key = '', obj = {}) => ary.reduce((p, c) => {
  const g = c[key]

  if (!p[g]) { 
    p[g] = [c]
  } else {
    p[g].push(c)
  }

  return p
}, {})

const data = [{"ID":1651,"JGMC":"东莞市春田新绿农业科技有限公司","LNG":113.57144898821936,"LAT":23.076226647134813,"TOWN_NAME":"麻涌镇"},{"ID":2440,"JGMC":"东莞广垦绿色蔬菜有限公司","LNG":113.75290412208857,"LAT":23.094390710699333,"TOWN_NAME":"高埗镇"},{"ID":2647,"JGMC":"东莞市立成害虫防治有限公司","LNG":113.76941109697425,"LAT":22.956781026918655,"TOWN_NAME":"东城街道"},{"ID":2770,"JGMC":"广东我家生态农业发展有限公司","LNG":113.88534589747307,"LAT":22.967790561532695,"TOWN_NAME":"松山湖高新技术产业开发区"},{"ID":2771,"JGMC":"广东我家生态农业发展有限公司","LNG":113.88534589747307,"LAT":22.967790561532695,"TOWN_NAME":"松山湖高新技术产业开发区"},{"ID":2931,"JGMC":"东莞市延尚景观工程有限公司","LNG":113.81550675965211,"LAT":22.809715348645184,"TOWN_NAME":"长安镇"},{"ID":3071,"JGMC":"东莞市中泰润龟养殖有限公司","LNG":113.9068035981228,"LAT":23.052651244903565,"TOWN_NAME":"茶山镇"},{"ID":3147,"JGMC":"东莞市绿网航达农业科技有限公司","LNG":113.65306490119538,"LAT":23.05520926111267,"TOWN_NAME":"望牛墩镇"},{"ID":3314,"JGMC":"东莞市科霸害虫防治有限公司","LNG":114.0176419549202,"LAT":22.969013629072617,"TOWN_NAME":"常平镇"},{"ID":5759,"JGMC":"东莞市恒基电子塑料厂","LNG":113.85699939238123,"LAT":23.084670145563344,"TOWN_NAME":"茶山镇"},{"ID":5825,"JGMC":"东莞市东城嘉文制衣厂","LNG":113.822519006289,"LAT":23.04626065622825,"TOWN_NAME":"东城街道"},{"ID":6240,"JGMC":"东莞市寮步华兴制衣厂","LNG":113.82456080196913,"LAT":23.03434405701129,"TOWN_NAME":"寮步镇"},{"ID":6302,"JGMC":"东莞市寮步顺兴纸品印刷厂（普通合伙）","LNG":113.85036871432335,"LAT":23.030239014300157,"TOWN_NAME":"寮步镇"},{"ID":6571,"JGMC":"东莞市绿资原野园林景观有限公司","LNG":113.66722202542871,"LAT":22.79624268287231,"TOWN_NAME":"虎门镇"},{"ID":7192,"JGMC":"东莞市康地源食品有限公司","LNG":113.8218851003555,"LAT":23.108377552659572,"TOWN_NAME":"石碣镇"},{"ID":7937,"JGMC":"东莞市丰桦源农业科技有限公司","LNG":113.5979573296063,"LAT":22.895214933174664,"TOWN_NAME":"沙田镇"},{"ID":8026,"JGMC":"东莞市国盈农业科技有限公司","LNG":113.65155613347173,"LAT":23.02626708417263,"TOWN_NAME":"道滘镇"},{"ID":8315,"JGMC":"东莞市大众蔬菜科技种植有限公司","LNG":113.59815619464482,"LAT":22.974335126329965,"TOWN_NAME":"洪梅镇"},{"ID":9365,"JGMC":"东莞市葡萄当家农业发展有限公司","LNG":113.67200843209906,"LAT":23.04198487748504,"TOWN_NAME":"万江街道"},{"ID":9874,"JGMC":"东莞市广正丰养殖有限公司","LNG":113.84512373563027,"LAT":23.032064066987363,"TOWN_NAME":"寮步镇"},{"ID":10271,"JGMC":"东莞市逸颐生态农业发展有限公司","LNG":113.95703125002679,"LAT":23.004149782852426,"TOWN_NAME":"东坑镇"},{"ID":10699,"JGMC":"广东盘厢硒生态农业发展有限公司","LNG":113.58401883212123,"LAT":23.065275950155076,"TOWN_NAME":"麻涌镇"},{"ID":12136,"JGMC":"东莞市瑞容成生态农业有限公司","LNG":113.73875954225373,"LAT":23.008999472496594,"TOWN_NAME":"南城街道"},{"ID":12680,"JGMC":"东莞市永诚农业种植有限公司","LNG":114.00190412693831,"LAT":22.83444475149011,"TOWN_NAME":"黄江镇"},{"ID":18023,"JGMC":"东莞市大朗澳龙水产专业合作社","LNG":113.96325699027706,"LAT":22.924824887385597,"TOWN_NAME":"大朗镇"},{"ID":18026,"JGMC":"东莞市晋晖兰花专业合作社","LNG":113.80101686778268,"LAT":22.993773342238935,"TOWN_NAME":"东城街道"},{"ID":18028,"JGMC":"东莞市桂珠蔬菜专业合作社望牛墩八坊分社","LNG":113.65306490119538,"LAT":23.05520926111267,"TOWN_NAME":"望牛墩镇"},{"ID":18148,"JGMC":"东莞市利源农业科技有限公司","LNG":114.00423583413175,"LAT":22.947034749549097,"TOWN_NAME":"常平镇"},{"ID":19021,"JGMC":"东莞市胜田生态农业科技有限公司","LNG":113.801706467053,"LAT":23.048049290681245,"TOWN_NAME":"东城街道"},{"ID":20050,"JGMC":"东莞市天丰农林科技发展有限公司","LNG":113.75602433160786,"LAT":23.02886235419624,"TOWN_NAME":"莞城街道"},{"ID":20110,"JGMC":"东莞市盈景园林有限公司","LNG":113.71964675879299,"LAT":22.850643159352728,"TOWN_NAME":"虎门镇"},{"ID":20955,"JGMC":"东莞市益海生物科技有限公司","LNG":113.56211270198096,"LAT":23.03637806211709,"TOWN_NAME":"麻涌镇"},{"ID":21276,"JGMC":"东莞市金源龟业养殖有限公司","LNG":113.73895411683162,"LAT":23.109294287861747,"TOWN_NAME":"高埗镇"},{"ID":21347,"JGMC":"东莞市丰裕农业有限公司","LNG":114.0890951088287,"LAT":22.841378620000743,"TOWN_NAME":"塘厦镇"},{"ID":22172,"JGMC":"东莞市新骏园林绿化工程有限公司","LNG":113.84695660827016,"LAT":22.981227100426104,"TOWN_NAME":"寮步镇"},{"ID":22407,"JGMC":"东莞市常平沙湖口锦鲤养殖有限公司","LNG":114.01339282517333,"LAT":23.01762810573023,"TOWN_NAME":"常平镇"},{"ID":23175,"JGMC":"东莞市春雅园艺有限公司","LNG":113.79864562917713,"LAT":23.030730696143433,"TOWN_NAME":"寮步镇"},{"ID":23649,"JGMC":"东莞市中汇园林环卫有限公司","LNG":113.73184620918599,"LAT":23.009071978367864,"TOWN_NAME":"南城街道"},{"ID":23930,"JGMC":"东莞市塘厦超亿胶袋厂","LNG":114.10146554271861,"LAT":22.758140068183234,"TOWN_NAME":"塘厦镇"},{"ID":24179,"JGMC":"东莞市新源机械厂（普通合伙）","LNG":113.6682453580918,"LAT":23.042126299750354,"TOWN_NAME":"万江街道"},{"ID":24199,"JGMC":"东莞市虎门伟华纸品厂","LNG":113.74281501902871,"LAT":22.83842986440404,"TOWN_NAME":"虎门镇"},{"ID":24409,"JGMC":"东莞市石排联丰织造厂","LNG":113.98055434907745,"LAT":23.093132552066095,"TOWN_NAME":"石排镇"},{"ID":24562,"JGMC":"东莞市长安源丰包装制品厂","LNG":113.74533963552634,"LAT":22.79799643604394,"TOWN_NAME":"长安镇"},{"ID":24992,"JGMC":"东莞市松盛农业科技有限公司","LNG":113.74810131784015,"LAT":22.93916021412555,"TOWN_NAME":"南城街道"},{"ID":25037,"JGMC":"东莞市桥头精溢高周波机械厂","LNG":114.07668723125418,"LAT":23.022021300847083,"TOWN_NAME":"桥头镇"},{"ID":25466,"JGMC":"东莞市求和园艺工程有限公司","LNG":114.10153741994532,"LAT":22.76873920476143,"TOWN_NAME":"南城街道"},{"ID":25937,"JGMC":"东莞市宏亚园林绿化有限公司","LNG":114.02840551350108,"LAT":23.055169858488487,"TOWN_NAME":"企石镇"},{"ID":26461,"JGMC":"东莞市克拉农场有限公司","LNG":113.56251949127419,"LAT":23.04990410447112,"TOWN_NAME":"麻涌镇"},{"ID":26473,"JGMC":"广东乡地农业发展有限公司","LNG":113.85162462206847,"LAT":23.11007198920084,"TOWN_NAME":"石龙镇"},{"ID":27376,"JGMC":"东莞绿满地蔬果有限责任公司","LNG":113.8708127021816,"LAT":22.9975382729483,"TOWN_NAME":"寮步镇"},{"ID":27832,"JGMC":"广东果源地农业贸易有限公司","LNG":113.65455242950401,"LAT":22.89471847573724,"TOWN_NAME":"厚街镇"},{"ID":28621,"JGMC":"深圳市中大合顺有害生物防治有限公司东莞分公司","LNG":113.77694085471812,"LAT":22.81873405502789,"TOWN_NAME":"长安镇"},{"ID":28648,"JGMC":"东莞市樟芝农业有限公司","LNG":114.07217993992306,"LAT":22.807052020901732,"TOWN_NAME":"塘厦镇"},{"ID":28649,"JGMC":"东莞市盛丰园林绿化有限公司","LNG":113.81544524184609,"LAT":23.03271401206344,"TOWN_NAME":"寮步镇"},{"ID":29625,"JGMC":"东莞市蓝风有害生物防治有限公司","LNG":114.0553187120461,"LAT":22.906499078776353,"TOWN_NAME":"樟木头镇"},{"ID":30537,"JGMC":"东莞市田田圈农业服务有限公司","LNG":113.69019273049393,"LAT":22.792308993561022,"TOWN_NAME":"虎门镇"},{"ID":30771,"JGMC":"东莞市中堂永盛硫酸铝厂","LNG":113.6653431022188,"LAT":23.100544815857752,"TOWN_NAME":"中堂镇"},{"ID":31273,"JGMC":"东莞市寮步旭明养殖场","LNG":113.86013864200822,"LAT":22.97821503105739,"TOWN_NAME":"寮步镇"},{"ID":31956,"JGMC":"东莞市洪梅洪福草皮种植场","LNG":113.59815619464482,"LAT":22.974335126329965,"TOWN_NAME":"洪梅镇"},{"ID":33535,"JGMC":"东莞市中堂宝树园花木场","LNG":113.6935058902018,"LAT":23.111463470173938,"TOWN_NAME":"中堂镇"},{"ID":34171,"JGMC":"东莞市茶山深记芽菜店","LNG":113.85879031952695,"LAT":23.054611964837292,"TOWN_NAME":"茶山镇"},{"ID":34462,"JGMC":"东莞市虎门小鲵图书出租店","LNG":113.68941854969944,"LAT":22.82769257131943,"TOWN_NAME":"虎门镇"},{"ID":34618,"JGMC":"东莞市凤岗文龙斋家庭农场","LNG":114.19182302716352,"LAT":22.762700471165633,"TOWN_NAME":"凤岗镇"},{"ID":35462,"JGMC":"东莞市常平培记花木种植场","LNG":114.02259036755878,"LAT":22.9746266310054,"TOWN_NAME":"常平镇"},{"ID":36061,"JGMC":"东莞市望牛墩望东蔬菜专业合作社","LNG":113.63145742404457,"LAT":23.045762624662146,"TOWN_NAME":"望牛墩镇"},{"ID":36062,"JGMC":"东莞市绿鑫水果专业合作社","LNG":113.6575293367701,"LAT":23.067748911494174,"TOWN_NAME":"望牛墩镇"},{"ID":36064,"JGMC":"东莞市中堂丰收园蔬菜专业合作社","LNG":113.70515704065848,"LAT":23.11311720379997,"TOWN_NAME":"中堂镇"},{"ID":36214,"JGMC":"东莞市千百匠园林景观工程有限公司","LNG":113.67474970008693,"LAT":22.83400560682177,"TOWN_NAME":"虎门镇"},{"ID":36855,"JGMC":"珠海经济特区园海绿化工程有限公司东莞分公司","LNG":113.86944021480615,"LAT":22.996843536695682,"TOWN_NAME":"寮步镇"},{"ID":37182,"JGMC":"东莞市东歌实业有限公司","LNG":114.15583691771151,"LAT":22.838409605552158,"TOWN_NAME":"清溪镇"},{"ID":37245,"JGMC":"东莞市翔雁害虫防治有限公司","LNG":113.78516370237142,"LAT":23.030739160110354,"TOWN_NAME":"大岭山镇"},{"ID":37723,"JGMC":"东莞市天鑫农业科技有限公司","LNG":113.88534589747307,"LAT":22.967790561532695,"TOWN_NAME":"松山湖高新技术产业开发区"},{"ID":37826,"JGMC":"广州中茂园林建设工程有限公司东莞分公司","LNG":null,"LAT":null,"TOWN_NAME":null},{"ID":39109,"JGMC":"东莞市一采灵芝有限公司","LNG":113.77694085471812,"LAT":22.81873405502789,"TOWN_NAME":"长安镇"},{"ID":39535,"JGMC":"东莞市三禾园林科技有限公司","LNG":113.86265178411773,"LAT":22.998791502094168,"TOWN_NAME":"寮步镇"},{"ID":40375,"JGMC":"东莞市圣茵农业有限公司","LNG":114.00949429762113,"LAT":23.036232520494288,"TOWN_NAME":"横沥镇"},{"ID":41075,"JGMC":"广东绿卡实业有限公司","LNG":113.66516877665029,"LAT":22.86446735972833,"TOWN_NAME":"虎门镇"},{"ID":41346,"JGMC":"东莞市嘉丰园林工程有限公司","LNG":113.6301793433342,"LAT":22.81584537357743,"TOWN_NAME":"虎门镇"},{"ID":41538,"JGMC":"东莞市早稻田农业科技有限公司","LNG":114.00947892107982,"LAT":23.034299742371132,"TOWN_NAME":"横沥镇"},{"ID":42030,"JGMC":"东莞市虎门镇武山沙农业发展有限公司","LNG":113.65364358504358,"LAT":22.818268056632405,"TOWN_NAME":"虎门镇"},{"ID":42132,"JGMC":"东莞市高埗礼成织造厂（普通合伙）","LNG":113.98836442529787,"LAT":22.97696228793775,"TOWN_NAME":"高埗镇"},{"ID":42315,"JGMC":"东莞市麻涌新稻碾米加工厂","LNG":113.56604070710706,"LAT":23.04871991884366,"TOWN_NAME":"麻涌镇"},{"ID":42415,"JGMC":"东莞市石排凯悦塑料制品厂","LNG":113.96403492623047,"LAT":23.07885665135097,"TOWN_NAME":"石排镇"},{"ID":42654,"JGMC":"东莞市鸿茂园林绿化工程有限公司","LNG":113.71635437191938,"LAT":22.82897075738765,"TOWN_NAME":"虎门镇"},{"ID":42901,"JGMC":"东莞市麻涌顺兴纸箱厂","LNG":113.59609867643589,"LAT":23.084281088629535,"TOWN_NAME":"麻涌镇"},{"ID":43654,"JGMC":"东莞市七号粮仓有机农业科技开发有限公司东城中惠丽阳分公司","LNG":113.78840211377133,"LAT":23.031327712540733,"TOWN_NAME":"东城街道"},{"ID":44184,"JGMC":"东莞市华商休闲农业开发有限公司","LNG":113.62857619837985,"LAT":23.058399504837684,"TOWN_NAME":"望牛墩镇"},{"ID":46377,"JGMC":"东莞市立地农业科技有限公司","LNG":113.65135680636067,"LAT":22.94264746219695,"TOWN_NAME":"厚街镇"},{"ID":47976,"JGMC":"东莞市湘农农副产品有限公司","LNG":113.6946169591449,"LAT":23.001526446499692,"TOWN_NAME":"万江街道"},{"ID":48016,"JGMC":"东莞市大来新材料有限公司","LNG":113.95073219907624,"LAT":23.025600570439032,"TOWN_NAME":"横沥镇"},{"ID":49290,"JGMC":"东莞市天宝利涂料厂","LNG":113.84145719542815,"LAT":22.988285348013047,"TOWN_NAME":"寮步镇"},{"ID":49376,"JGMC":"东莞市洪梅兴达花卉种植场","LNG":113.60871253926358,"LAT":23.014758975125616,"TOWN_NAME":"洪梅镇"},{"ID":49897,"JGMC":"东莞市望牛墩敦兴种植场","LNG":113.65306490119538,"LAT":23.05520926111267,"TOWN_NAME":"望牛墩镇"},{"ID":51588,"JGMC":"东莞市大岭山仲莲女儿香种植场","LNG":113.8437973601703,"LAT":22.940809508781943,"TOWN_NAME":"大岭山镇"},{"ID":51754,"JGMC":"东莞市黄江彬濠家庭农场","LNG":113.9909578724752,"LAT":22.814308771953797,"TOWN_NAME":"黄江镇"},{"ID":53224,"JGMC":"东莞市中堂明和堂农场","LNG":113.6653431022188,"LAT":23.100544815857752,"TOWN_NAME":"中堂镇"},{"ID":54051,"JGMC":"东莞市企石惠泽白蚁防治服务部","LNG":114.05282966762327,"LAT":23.09208089148013,"TOWN_NAME":"企石镇"},{"ID":54217,"JGMC":"东莞市大岭山鑫发蔬菜专业合作社","LNG":113.83796222479242,"LAT":22.862910071941798,"TOWN_NAME":"大岭山镇"},{"ID":54218,"JGMC":"东莞市塘厦星河食用菌专业合作社","LNG":114.08670557603546,"LAT":22.80742358026117,"TOWN_NAME":"塘厦镇"},{"ID":54220,"JGMC":"东莞市国林沉香种植专业合作社","LNG":113.85448047051375,"LAT":22.970125082338672,"TOWN_NAME":"寮步镇"}]

console.log(20200730192750, groupby(data, 'TOWN_NAME'))
)
code(Var)
return

::rule::
::allow::
::allow.js::
::validate::
::validate.js::
Var =
(
const is = { not: { empty: 1, negative: 0 }, positive: 1 }

const isAnObject = (value) => typeof value === 'object' && !Array.isArray(value) && value !== null;

class Allow {
    throwOnFailure = true;

    aBoolean = (value = false) => {
        if (typeof value !== 'boolean')
            this.fail(value, 'is not a Boolean');
        return this;
    };

    aFunction = (value = () => { }) => {
        if (typeof value !== 'function')
            this.fail(value, 'is not a function');
        return this;
    };

    anArray = (value = [], minLength = 0, maxLength = Number.MAX_SAFE_INTEGER) => {
        this.anInteger(minLength, is.not.negative).anInteger(maxLength, is.not.negative);
        if (!Array.isArray(value))
            this.fail(value, 'is not an array');
        this.checkLength(value, minLength, maxLength);
        return this;
    };

    anArrayOfArrays = (value = [], minLength = 0, maxLength = Number.MAX_SAFE_INTEGER) => {
        this.anArray(value).anInteger(minLength, is.not.negative).anInteger(maxLength, is.not.negative);
        value.forEach(item => this.anArray(item));
        this.checkLength(value, minLength, maxLength);
        return this;
    }

    anArrayOfInstances = (value = [], modelObject = {}, minLength = 0, maxLength = Number.MAX_SAFE_INTEGER) => {
        this.anArray(value).anObject(modelObject).anInteger(minLength, is.not.negative).anInteger(maxLength, is.not.negative);
        value.forEach(item => this.anInstanceOf(item, modelObject));
        this.checkLength(value, minLength, maxLength);
        return this;
    }

    anArrayOfIntegers = (value = [], minLength = 0, maxLength = Number.MAX_SAFE_INTEGER) => {
        this.anArray(value).anInteger(minLength, is.not.negative).anInteger(maxLength, is.not.negative);
        value.forEach(item => this.anInteger(item));
        this.checkLength(value, minLength, maxLength);
        return this;
    }

    anArrayOfNumbers = (value = [], minLength = 0, maxLength = Number.MAX_SAFE_INTEGER) => {
        this.anArray(value).anInteger(minLength, is.not.negative).anInteger(maxLength, is.not.negative);
        value.forEach(item => this.aNumber(item));
        this.checkLength(value, minLength, maxLength);
        return this;
    }

    anArrayOfObjects = (value = [], minLength = 0, maxLength = Number.MAX_SAFE_INTEGER) => {
        this.anArray(value).anInteger(minLength, is.not.negative).anInteger(maxLength, is.not.negative);
        value.forEach(item => this.anObject(item));
        this.checkLength(value, minLength, maxLength);
        return this;
    }

    anArrayOfStrings = (value = [], minLength = 0, maxLength = Number.MAX_SAFE_INTEGER) => {
        this.anArray(value).anInteger(minLength, is.not.negative).anInteger(maxLength, is.not.negative);
        value.forEach(item => this.aString(item));
        this.checkLength(value, minLength, maxLength);
        return this;
    }

    anInstanceOf = (suppliedObject = {}, modelObject = {}) => {
        this.anObject(suppliedObject).anObject(modelObject);
        const modelKeys = Object.keys(modelObject);
        let aKeyIsMissing = false;
        modelKeys.forEach(modelKey => {
            if (!suppliedObject.hasOwnProperty(modelKey))
                aKeyIsMissing = true;
            else {
                const suppliedValue = suppliedObject[modelKey];
                const modelValue = modelObject[modelKey];
                const isSuppliedValueAnObject = isAnObject(suppliedValue);
                const isSuppliedValueAnArray = Array.isArray(suppliedValue);
                const isModelValueAnObject = isAnObject(modelValue);
                const isModelValueAnArray = Array.isArray(modelValue);
                if (isSuppliedValueAnObject !== isModelValueAnObject || isSuppliedValueAnArray !== isModelValueAnArray)
                    this.fail(suppliedObject, 'does not match the model object');
                else if (isModelValueAnObject)
                    this.anInstanceOf(suppliedValue, modelValue);
            }
        });
        if (aKeyIsMissing)
            this.fail(suppliedObject, 'is missing a required key');
        return this;
    }

    anInteger = (value = 0, minValue = Number.MIN_SAFE_INTEGER, maxValue = Number.MAX_SAFE_INTEGER) => {
        if (!Number.isInteger(value))
            this.fail(value, 'is not an integer');
        this.checkRange(value, minValue, maxValue);
        return this;
    };

    anObject = (value = {}, minNumberOfKeys = 0, maxNumberOfKeys = Number.MAX_SAFE_INTEGER) => {
        this.anInteger(minNumberOfKeys, is.not.negative).anInteger(maxNumberOfKeys, is.not.negative);
        if ((typeof value !== 'object' || Array.isArray(value) || value === null))
            this.fail(value, 'is not an object');
        this.checkLength(Object.keys(value), minNumberOfKeys, maxNumberOfKeys);
        return this;
    };

    aNumber = (value = 0, minValue = Number.MIN_SAFE_INTEGER, maxValue = Number.MAX_SAFE_INTEGER) => {
        if (typeof value !== 'number')
            this.fail(value, 'is not a number');
        this.checkRange(value, minValue, maxValue);
        return this;
    };


    aString = (value = '', minLength = 0, maxLength = Number.MAX_SAFE_INTEGER) => {
        this.anInteger(minLength, is.not.negative).anInteger(maxLength, is.not.negative);
        if (typeof value !== 'string')
            this.fail(value, 'is not a string');
        this.checkLength(value, minLength, maxLength);
        return this;
    };

    checkLength = (value, minLength = 0, maxLength = Number.MAX_SAFE_INTEGER) => {
        if (value.length < minLength)
            this.fail(value, 'is too short');
        if (value.length > maxLength)
            this.fail(value, 'is too long');
    }

    checkRange = (value = 0, minValue = Number.MIN_SAFE_INTEGER, maxValue = Number.MAX_SAFE_INTEGER) => {
        if (value < minValue)
            this.fail(value, 'is too small');
        if (value > maxValue)
            this.fail(value, 'is too large');
    }

    fail = (value, message = '') => {
        if (!this.throwOnFailure)
            return;
        console.error(value);
        throw new Error(message);
    }

    oneOf = (value, allowedValues) => {
        if (typeof allowedValues !== 'object' || allowedValues === null) {
            this.fail(allowedValues, 'oneOf alloweValues must be an object or an array');
            return this;
        }
        if (Array.isArray(allowedValues)) {
            if (!allowedValues.some(allowedValue => value === allowedValue))
                this.fail(value, 'is not an allowed value');
            return this;
        }
        const entries = Object.entries(allowedValues);
        if (!entries.some(entry => entry[1] === value))
            this.fail(value, 'is not an allowed value');
        return this;
    }
}

const allow = new Allow()

export default allow 
)
code(Var)
return


::mbd::
::mdb::
::bdm::
::bdmark::
::marker::
::bdpoint::
::bdi::
::ibd::
::map.click::
::map.c::
::map.event::
::map.addev::
::map.adde::
::map.addevent::
::map.event::
::mapc::
Var =
(
// setTimeout(() => Object.values(fuck).map(_ => test(..._)), 1000)
const test = (x, y) => {
    var poi = new BMap.Point(x, y)
    var marker = new BMap.Marker(poi)
    map.addOverlay(marker)
}

map.addEventListener('click', function(e) {
    console.log(20200806173926, e.point)
    var marker = new BMap.Marker(e.point)
    this.addOverlay(marker)
})


)
code(Var)
return


::dongtaikuandu::
::dongtaiwidth::
::dongtaiw::
::echartsw::
::autow::
::autowidth::
::echartswidth::
::echartw::
::echartwidth::
Var =
(
var dynamicWidth = (min = 0, max = 1, minSize = 1, maxSize = 10) => (v = 0) => {
    const a = (maxSize - minSize) / (max - min)
    const b = maxSize - a * max
    return a * v + b
}
)
code(Var)
return

::tectcolor::
::textc::
::txtcolor::
Var =
(
/*
    If color has the following format:
    const rgbColor = { r: 100, g: 100, b: 100 }
*/

// Extracted from Polished
// Code is licensed with an MIT license
function getLuminance(rgbColor) {
 const [r, g, b] = Object.keys(rgbColor).map(key => {
    // Our color numbers represent a 8bit channel.
        // The formula requires a sRGB channel which is defined by
        // ColorChannelIn8bit / 255
    const channel = rgbColor[key] / 255
    return channel <= 0.03928
      ? channel / 12.92
      : ((channel + 0.055) / 1.055) ** 2.4
  })
  return parseFloat((0.2126 * r + 0.7152 * g + 0.0722 * b).toFixed(3))
}

)
code(Var)
return

::@fun::
::@f::
Var =
(
const foo = fn => {
  const ctx = {
    log() {
      console.log('🚀 loging...')
    }
  }

  fn(ctx)
}

foo(ctx => {
  ctx.log()
})
)
code(Var)
return

::lc::
::lc.init::
Var =
(
import LC from 'leancloud-storage';

LC.init({
    appId: '0KvWlkltBIPzm4R8GY3k04ew-gzGzoHsz',
    appKey: 'Fim9QldawgwPNEbPnwpc719K',
});

export default LC;

/**
 *
 * @登陆注册： lc.login/signup
 * @创建条目： lc.item/demo/new
 * @当前用户： lc.user
 * @查询数据： lc.find/query
 * @安全机制： lc.ACL
 */
)
code(Var)
return

::lc.anquan::
::lc.ACL::
Var =
(
/**
 * 恶意用户可以伪造读取或覆盖其他用户数据的请求。保护数据的机制是访问控制列表（ACL）
 * 创建数据时，我们需要考虑谁应该访问它，并将许可权与数据一起保存。
 * 例如： 除了条目的作者之外，任何人都不能访问该条目。
 * 因此我们要在调用 `entry.save()` 之前，添加以下行：
 */
const acl = new LC.ACL()
const me = LC.User.current()
acl.setPublicReadAccess(false)
acl.setPublicWriteAccess(false)
acl.setReadAccess(me, true)
acl.setWriteAccess(me, true)
entry.setACL(acl)
)
code(Var)
return

::lc.find::
::lc.fetch::
::lc.query::
Var =
(
// 获取条目
const fetchEntries = async () => {
    // 创建 Entry 实例
    const query = new LC.Query('Entry')

    // 查询条件：「user」字段 === 当前用户
    query.equalTo('user', LC.User.current())

    // 搜索排序：创建时间从大到小倒序返回。
    query.descending('createdAt')

    try {
        const fetchedEntries = await query.find()

        fetchedEntries.map(entry => ({
              id: entry.id!,
              content: entry.get('content'),
              date: entry.createdAt!
        }))
    } catch (e) {
        console.warn('fetchEntries', e.message)
    }
}
)
code(Var)
return

::lc.user::
Var =
(
LC.User.current()
)
code(Var)
return

::lc.new::
::lc.item::
::lc.demo::
Var =
(
// 创建
const Entry = LC.Object.extend('Entry')

const entry = new Entry()
try {
  const savedEntry = await entry.save({
    user: LC.User.current(),
    content: newEntry
  })

  setEntries([
    {
      id: savedEntry.id!,
      content: savedEntry.get('content'),
      date: savedEntry.createdAt!
    },
    ...entries
  ])
} catch (e) {
  consoe.warn('save', e.message)
}
)
code(Var)
return

::lc.login::
::lc.signup::
::lc.zhuce::
::lc.denglu::
Var =
(
// 注册
const user = new LC.User();
user.setUsername(username);
user.setPassword(password);
try {
  await user.signUp();
  setShowSuccessMsg(true);
} catch (e) {
  console.warn('注册', e.message);
}
---
// 登陆
try {
  await LC.User.logIn(username, password);
  history.push('/diary');
} catch (e) {
  console.warn('登陆', e.message);
}
)
txtit(Var)
return

::geo::
Var =
(
if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(position => {
        console.log(position)
    })
} else {
    console.warn('不支持地理信息')
}
)
code(Var)
return


::gulp::
Var =
(
import run from './run'

async function clean() {
  // ...
}

async function copy() {
  // ...
}

async function bundle() {
  // ...
}

;(async function(){
  await run(clean)
  await run(copy)
  await run(bundle)
}())
---
// https://medium.com/swlh/you-might-not-need-gulp-js-89a0220487dd
function format(time) {
  return time.toTimeString().replace(/.*(\d{2}:\d{2}:\d{2}).*/, '$1')
}

async function run(fn, options) {
  const start = new Date()
  console.log(`[${format(start)}] Starting '${fn.name}'...`)
  await fn(options)
  const end = new Date()
  const time = end.getTime() - start.getTime()
  console.log(`[${format(end)}] Finished '${fn.name}' after ${time} ms`)
}

if (process.mainModule.children.length === 0 && process.argv.length > 2) {
  delete require.cache[__filename]
  const module = process.argv[2]
  run(require('./' + module + '.js')).catch(err => console.error(err.stack))
}

export default run
---
{
  "name": "not-need-gulp",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "build": "node -r esm ./build.js"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "esm": "^3.2.25"
  }
}
)
txtit(Var)
return

::delay::
Var =
(
/**
 * 延迟工具，必须配合 async/await使用 ...
 *
    (async function(){
        await delay(1000)
        console.log('test')
    }())
 */
export const delay = t => new Promise((resolve, reject) => {
   setTimeout(() => {
        resolve(t)
   }, t)
})
)
code(Var)
return


::utils.js::
::utils::
Var =
(
import { Message } from 'element-ui'

export const isString = input => Object.prototype.toString.call(input) === '[object String]'

export const isNumber = input => (typeof input === 'number' || Object.prototype.toString.call(input) === '[object Number]') && input === input

export const isBoolean = input => Object.prototype.toString.call(input) === '[object Boolean]'

export const isArray = input => input instanceof Array || Object.prototype.toString.call(input) === '[object Array]'

export const isObject = input => input != null && Object.prototype.toString.call(input) === '[object Object]'


// 数值补全0
// 迭代：如果实际长度超出length，那么使用实际长度，否则使用lenght
// 比如： PrefixInteger(123456, 5); 实际长度是6，那么还是会返回123456.
export const PrefixInteger = (num, length) => {
    const n = (Array(length).join('0') + num)
    const len = num.toString().length
    const l = len > length ? len : length
    return n.slice(-l)
}

/**
 * 最简单且最安全的方法显示任意值，举个例子: 
 * var obj = {a: 123 }
   maybe(_=> obj.a, 0); // 123
   maybe(_=> obj.b, 0); // 0
   maybe(_=> obj.a.b.s.w.holy.shit.fuck.god, 0); // 0
 */
export const maybe = (fn, n = '') => {
    try {
        const result = fn()
        return (result && result === result && result !== 'NaN' && result !== 'undefined' && result !== 'Invalid date') ? result : n
    } catch (err) {
        return n
    }
}

/**
 * delay工具函数
 *
    (async function(){
        // 启动计时器
        console.time('🚀')
        // 测试专用函数
        const test = () => new Promise((resolve, reject) => setTimeout(_ => resolve('success'), 1000))
        // wait
        const result = await wait(test, 3000)
        // success
        console.log(result)
        // 停止计时，输出时间
        console.timeEnd('🚀') // => 🚀: 3002.038818359375ms
    }())
 */
export const wait = async (fn, t = 0) => {
    // 计时器（开始）
    const startTime = +new Date
    // 执行并等待该函数
    const result = await fn()
    // 计时器停止
    const endTime = +new Date
    // 获取请求消耗的时间
    const intervalTime = t - (endTime - startTime)
    // 返回
    return new Promise((resolve, reject) => setTimeout(() => resolve(result), intervalTime))
}


/**
 * 延迟工具，必须配合 async/await使用 ...
 *
    (async function(){
        await delay(1000)
        console.log('test')
    }())
 */
export const delay = t => new Promise((resolve, reject) => {
   setTimeout(() => {
        resolve(t)
   }, t)
})


/**
 * 获取数组最后一位
 */
Array.prototype.last = function() {
    return this[this.length - 1];
};

/**
 * 获取数组第一位
 */
Array.prototype.first = function() {
    return this[0];
};
/**
 * 获取对象的第N个属性的值 ...
 *
 */
export const objIndex = (obj, = {}, n = 0) => {
    // 如果 n 不是数字的话
    if (!isNaN(+n) === false) {
      return
    }

    // 获取所有的键
    const keys = Object.keys(this)

    // 获取指定的 k 
    const k = keys[n]

    return this[k]
}

/**
 * 获取对象的第N个属性的值 ...
 *
 */
export const objIndex = (obj = {}, n = 0) => {
    // 如果 n 不是数字的话
    if (!isNaN(+n) === false) {
      return
    }

    // 获取所有的键
    const keys = Object.keys(obj)

    // 获取指定的 k 
    const k = keys[n]

    return obj[k]
}

/**
 * 获取对象的第1个属性的值 ...
 *
 */
export const objFirst = obj => {
    // 获取所有的键
    const keys = Object.keys(obj)

    // 获取指定的 k 
    const k = keys[0]

    return obj[k]
}


/**
 * 将对象转化为formdata格式
 */
export const obj2formdata = (json) => {
    var data = new FormData()
    if (json) {
        Object.keys(json).forEach(function(key) {
            data.append(key, json[key])
        });
    }
    return data
}

/**
 * 移动dom元素到指定目标位置
 *
 * @source {DOM} 你要移动的DOM
 * @target {DOM} 你要移动的位置
 */
const mvDOM = function (source, target) {
    // 深度拷贝（含子元素）
    let _source = source.cloneNode(true)
    // 删除本身
    source.remove()
    // 默认插入到容器最前面，如果想在后面可以这样处理：target.append(source)
    target.insertBefore(_source, target.firstChild)
}

/**
 * 将对象转化为GET参数
 */
export const obj2formdatastr = (body) => {
    if (body) {
        let formparams = '';
        Object.keys(body).forEach(key => {
            if (formparams.length > 0) {
                formparams += '&';
            }
            formparams = formparams + key + '=' + body[key];
        });
        return formparams
    }
    return ''
}


/**
 * 函数节流（throttle）
 */
export var throttle = function(func, wait, options) {
  var timeout, context, args, result;
  // 标记时间戳
  var previous = 0;
  // options可选属性 leading: true/false 表示第一次事件马上触发回调/等待wait时间后触发
  // options可选属性 trailing: true/false 表示最后一次回调触发/最后一次回调不触发
  if (!options) options = {};

  var later = function() {
    previous = options.leading === false ? 0 : +(new Date());
    timeout = null;
    result = func.apply(context, args);
    if (!timeout) context = args = null;
  };

  var throttled = function() {
    // 记录当前时间戳
    var now = +(new Date());
    // 如果是第一次触发且选项设置不立即执行回调
    if (!previous && options.leading === false)
    // 将记录的上次执行的时间戳置为当前
    previous = now;
    // 距离下次触发回调还需等待的时间
    var remaining = wait - (now - previous);
    context = this;
    args = arguments;

    // 等待时间 <= 0或者不科学地 > wait（异常情况）
    if (remaining <= 0 || remaining > wait) {
      if (timeout) {
          // 清除定时器
        clearTimeout(timeout);
        // 解除引用
        timeout = null;
      }
      // 将记录的上次执行的时间戳置为当前
      previous = now;

      // 触发回调
      result = func.apply(context, args);
      if (!timeout) context = args = null;
    }
    // 在定时器不存在且选项设置最后一次触发需要执行回调的情况下
    // 设置定时器，间隔remaining时间后执行later
    else if (!timeout && options.trailing !== false)    {
      timeout = setTimeout(later, remaining);
    }
   return result;
  };

  throttled.cancel = function() {
    clearTimeout(timeout);
    previous = 0;
    timeout = context = args = null;
  };

  return throttled;
};


// Array Remove - By John Resig (MIT Licensed)
/**
 * // 移除数组中的第二项
 * array.remove(1);
 * // 移除数组中的倒数第二项
 * array.remove(-2);
 * // 移除数组中的第二项和第三项（从第二项开始，删除2个元素）
 * array.remove(1,2);
 * // 移除数组中的最后一项和倒数第二项（数组中的最后两项）
 * array.remove(-2,-1);
 *
 */
Array.prototype.remove = function(from, to) {
  var rest = this.slice((to || from) + 1 || this.length);
  this.length = from < 0 ? this.length + from : from;
  this.push.apply(this, rest);
  return this
};


 /**
 * 深度递归搜索
 * @param {Array} arr 你要搜索的数组
 * @param {Function} condition 回调函数，必须返回谓词，判断是否找到了。会传入(item, index, level)三个参数
 * @param {String} children 子数组的key
 */
export const deepFind = (arr, condition, children) => {
    // 即将返回的数组
    let main = []

    // 用try方案方便直接中止所有递归的程序
    try {
        // 开始轮询
        (function poll(arr, level, cb) {
            // 如果传入非数组
            if (!Array.isArray(arr)) return

            // 遍历数组
            for (let i = 0; i < arr.length; i++) {
                // 获取当前项
                const item = arr[i]

                // 先占位预设值
                main[level] = item

                // 扩展：如果是一个对象的话，添加一些标记属性
                if (Object.prototype.toString.call(item) === '[object Object]') {
                  item.__INDEX__ = i
                  item.__LEVEL__ = level
                }

                // 检验是否已经找到了
                const isFind = condition && condition(item, i, level) || false

                // 自杀函数
                const kill = () => {
                // 删除占位预设值
                  main.length = main.length - 1
                  // 触发回调
                  cb && cb()
                }

                // 如果已经找到了
                if (isFind) {
                    // 直接抛出错误中断所有轮询
                    throw Error
                // 如果存在children，那么深入递归
                } else if (children && item[children] && item[children].length) {
                    poll(item[children], level + 1,
                      // 如果本函数被触发，说明children还是找不到。
                      () => {
                      // 那么如果我是最后一条，那么我也自杀吧
                      if (i === arr.length - 1) {
                        kill()
                      }
                    })
                // 如果是最后一个且没有找到值，那么通过修改数组长度来删除当前项
                } else if (i === arr.length - 1) {
                  // 找不到，羞愧自杀
                  kill()
                }
            }
        })(arr, 0)
    // 使用try/catch是为了中止所有轮询中的任务
    } catch (err) {}

    // 返回最终数组
    return main
}

/**
 * 深度设置
 */
export const deepSet = (ary, path, cb) => {
  // （重要）保存引用
  let obj = ary
  // 不断轮询路径
  while (path.length) {
    // 从左往右取出路径
    const key = path.shift()
    // 获取当前路径的值
    obj = obj[key]
    // 判断路径，如果异常则直接中断循环
    if (!obj) break
  }
  // 回调，注入指定路径的ary引用
  cb && cb(obj)
  // （重点）返回被串改的数组
  return ary
}

/**
 * chunk 数组分块函数
 * 对数组进行分块，满足条件的分为hit组，不满足分到miss组
 *
 * const ary = [1, 2, 3, 4, 5, 6, 7, 8]
 * const result = chunk(ary, _ => _ > 1)
 * console.log(result)
 */
export const chunk = (ary, fn) => ary.reduce(({ hit, miss } = {}, v) => {
  fn(v) ? hit.push(v) : miss.push(v)
  return { hit, miss }
}, { hit: [], miss: [] })

export const poll = (conditionFn, callback, wait = 4, maxTimeout = 10, timeout = 0) => {
  // 请求是否超出阈值
  if (++timeout > maxTimeout * 1000 / wait) throw new Error('overtime')
  // 如果条件满足，那么执行，否则轮询
  conditionFn() ? callback() : setTimeout(() => {poll(conditionFn, callback, wait, maxTimeout, timeout) }, wait)
}


export const pureMap = (ary = [], validate = () => true, cb = () => undefined) => {
  // copy
  let _ary = JSON.parse(JSON.stringify(ary))

  // filter
  _ary = _ary.map(v => {
    // validate
      if (validate(v)) {
        // callback
        return cb(v) || v
      } else {
        // default
        return v
      }
  });

  // filter ary
  return _ary
}

export const addClass = (el, cls) => {
    if (el.classList) {
        el.classList.add(cls)
    } else {
        var cur = ' ' + getClassName(el) + ' '
        if (cur.indexOf(' ' + cls + ' ') < 0) {
            el.setAttribute('class', (cur + cls).trim())
        }
    }
}

export const hasClass = (el, className) => {
  if (el.classList)
    return el.classList.contains(className);
  else
    return new RegExp('(^| )' + className + '( |$)', 'gi').test(el.className);
}

export const getClassName = (el) => {
    return (el.className instanceof SVGAnimatedString ? el.className.baseVal : el.className)
}

export const removeClass = (el, cls) => {
    if (el.classList) {
        el.classList.remove(cls)
    } else {
        var cur = ' ' + getClassName(el) + ' ',
            tar = ' ' + cls + ' '
        while (cur.indexOf(tar) >= 0) {
            cur = cur.replace(tar, ' ')
        }
        el.setAttribute('class', cur.trim())
    }
}

export const exclude = (obj, ...attribute) =>  {
  // copy
  let _ = JSON.parse(JSON.stringify(obj))
    // 删除属性
  for (let i = 0, len = attribute.length; i < len; i++) {
    const attr = attribute[i]
      delete _[attr]
  }
  // pure obj
  return _
}


// 补全
export const pad = (target, n) => {
    var zero = new Array(n).join('0');
    var str = zero + target;
    var result = str.substr(-n);
    return result;
}

// 获取24小时，从指定的时间开始
export const get24hourfrom = (start, count = 24) => {
  return [...Array(count)].map((v, index, array) => {
      return pad((index + start) `% 24, 2)
  })
}


// 设置高亮 for point.css
export const point = dom => {
  if (hasClass(dom, 'changing')) {
     removeClass(dom, 'changing')
  } else {
     addClass(dom, 'changing')
     addClass(dom, 'point')
     dom.addEventListener("webkitAnimationEnd", function() {
       removeClass(dom, 'changing')
     })
  }
}


// 缓存器
export const memoized = function (fn) {
  // 缓存队列
  var cache = {}
  return function () {
    // 以入参为key（todo:最好作为可配置）
    var __KEY__ = Array.prototype.slice.call(arguments)
    // 记录缓存
    return cache[__KEY__] || (cache[__KEY__] = fn.apply(this, arguments))
  }
}

// 对象查找器
export const findObj = (obj = {}, condition = () => true) => {
  for (let [key, ele] of Object.entries(obj)) {
      if (condition(key, ele)) {
        return ele
      }
  }
}

// catch error 
export const catchErr = err => {
  Message(err.message || '数据异常')
  throw new Error(err.message)
}


/**
 *  Promise.prototype.before 补丁
 *
 *  new Promise((resolve, reject) => {
 *     setTimeout(function () {
 *        resolve('success') // reject('fail')
 *     }, 1000);
 *  }).before(() => {
 *    console.log(20190422151455, 'before')
 *  }).finally(() => {
 *    console.log(20190422145923, 'finally')
 *  })
 */
Promise.prototype.before = function (fn) {
  (fn instanceof Function || Object.prototype.toString.call(fn) === '[object Function]') && fn()
  return this
}

export const betterMap = (v, cb) => {
    let result = []
    for (var k in v) {
        if (v.hasOwnProperty(k)) {
            result.push(cb && cb(v[k], k, v, result))
        }
    }
    return result
}

export const handleClickOutSide = () => {
  var evmousedown = document.createEvent('HTMLEvents');
  evmousedown.initEvent('mousedown', false, true);
  var evmouseup = document.createEvent('HTMLEvents');
  evmouseup.initEvent('mouseup', false, true);
  document.dispatchEvent(evmousedown)
  document.dispatchEvent(evmouseup)
  var evmouseclick = document.createEvent('HTMLEvents');
  evmouseclick.initEvent('click', false, true);
  document.dispatchEvent(evmouseclick)
  document.dispatchEvent(evmouseclick)
}


/**
 * Deep diff between two object, using lodash - 找出两个对象不同的值
 * @param  {Object} object Object compared
 * @param  {Object} base   Object to compare with
 * @return {Object}        Return a new object who represent the diff
 */
export const _differenceObj = function (object, base) {
  function changes(object, base) {
    return _.transform(object, function(result, value, key) {
      if (!_.isEqual(value, base[key])) {
        result[key] = (_.isObject(value) && _.isObject(base[key])) ? changes(value, base[key]) : value;
      }
    });
  }

  return changes(object, base);
}

/**
 * 本地列表查询过滤
 * @param  {Array}  list     进行查询的数组
 * @param  {String} keyWord  查询的关键词
 * @return {Array}           查询的结果
 */
export const fuzzyQuery = function(list, keyWord) {
  let arr = []
  list.map(item => {
    if (item.columnName &&
      (item.columnName.toLowerCase().includes(keyWord) ||
        item.columnName.toUpperCase().includes(keyWord))) {
      arr.push(item)
    }
  })

  return arr
}

/**
 * 求同存异 ...辅助函数
 */
export const objAssign = (...args) => args.reduce((prev, curr) => {
  // 判断两个对象的属性是否重合？
  const isKeysRepeat = (a, b) => Object.keys(a).filter(_ => Object.keys(b).includes(_)).length
  // 如果不是对象，直接返回进入下一次
  if (!_.isObject(curr)) {
    return prev
  }

  // 判断属性是否重复，如果不重复的话，直接合并即可。
  if (!isKeysRepeat(prev, curr)) {
    return Object.assign({}, prev, curr)
  }

  // 如果是相同的属性，则相加（前提是需要是Number类型），但这里就不判断了。
  for (let key in curr) {
    // 如果包含key，那么这两个属性相加
    if (Object.keys(prev).includes(key)) {
      // ⚠️ 相加. 这里没有判断是否为Number类型
      prev[key] += curr[key]
      // 否则直接迭代
    } else {
      prev[key] = curr[key]
    }
  }

  // 返回修改后的 prev
  return prev
}, {})

/**
 * 仿 jQuery.parents('className')，更加灵活的版本。
 * 
 * 示例：
 * parents(event.target, _ => _.className.includes('vue-grid-item'))
 */
export const parents = (el = {}, exp = () => false, maxDeep = 100) => {
    // 获取父元素，这里就不验证了
    const parent = el.parentNode

    // 如果父元素存在
    if (parent && maxDeep) {
        // 如果找到了则返回，如果没有找到则继续找
        return exp(parent) ? parent : parents(parent, exp, --maxDeep)
    // 不满足遍历需求
    } else {
        return null
    }
}

/**
 * 超简易的 findIndex + find 合体。 同时返回了 item 和 index
 *
 * 示例：
 * find([1,2,3], _ => _ === 1) // => {index: 0, item: 1}
 */
export const find = (ary, exp) => {
  for (let i = 0, len = ary.length; i < len; i++) {
    if (exp(ary[i]))
      return { index: i, item: ary[i] }
  }
}
)
code(Var)
return



::deepset::
Var =
(
/**
 * （推荐）深度设置 ...
 *
 * var a = {}
 * deepSet(a, 'a.b.c.d.e.f.g.h.i.j.k', 123)
 */
var deepSet = (obj, path, v) => {
    // （重要）保存引用
    let o = obj

    // 分解路径
    const p = path.split('.')

    // 取出最后一位
    const last = p.pop()

    // 不断轮询路径
    while (p.length) {
        // 从左往右取出路径
        const k = p.shift()

        // ⚠️ 如果不存在则定义该对象
        if (!o[k]) o[k] = {}

        // 获取当前路径的值
        o = o[k]
    }

    o[last] = typeof v === 'function' ? v() : v

    // （重点）返回被串改的数组
    return obj
}

---
// this.$deepSet(this.items, 'a.b.c.d.e', '123')
// vue 专用深度 $set
$deepSet(ref, path, value) {
   // （重要）保存引用
   let obj = ref

   // 路径切割
   const _path = path.split('.')

   // 不断轮询路径
   while (_path.length) {
       // 从左往右取出路径
       const key = _path.shift()

       // 到最后一个了？
       if (_path.length === 0) {
          // 直接赋值
          this.$set(obj, key, value)
       // 补丁，如果不存在则定义该对象
       } else if (!obj[key]) {
          this.$set(obj, key, {})
       }

       // 获取当前路径的值
       obj = obj[key]
   }

   return obj
},
---
import Vue from 'vue'
// mixin专用
export const $deepSet = function (ref, path, value) {
   // （重要）保存引用
   let obj = ref

   // 路径切割
   const _path = path.split('.')

   // 不断轮询路径
   while (_path.length) {
       // 从左往右取出路径
       const key = _path.shift()

       // 到最后一个了？
       if (_path.length === 0) {
          // 直接赋值
          Vue.set(obj, key, value)
       // 补丁，如果不存在则定义该对象
       } else if (!obj[key]) {
          Vue.set(obj, key, {})
       }

       // 获取当前路径的值
       obj = obj[key]
   }

   return obj
}
)
txtit(Var)
return

::chunk::
Var =
(
/**
 * chunk 数组分块函数
 * 对数组进行分块，满足条件的分为hit组，不满足分到miss组
 *
 * 示例一：
 * const ary = [1, 2, 3, 4, 5, 6, 7, 8]
 * const result = chunk(ary, _ => _ > 1)
 * console.log(result) // { hit: [...], miss: [...] }
 *
 * 示例二： 
 * const ary = [1, 2, 3, 4, 5, 6, 7, 8]
 * const { hit, miss } = chunk(ary, _ => _ > 5)
 * console.log([...hit.map(_ => _), ...miss])
 */
const chunk = (ary, fn) => ary.reduce(({ hit, miss } = {}, v) => {
    fn(v) ? hit.push(v) : miss.push(v)
    return { hit, miss }
}, { hit: [], miss: [] })
)
code(Var)
return

::puremap::
Var =
(
const pureMap = (ary = [], validate = () => true, cb = () => undefined) => {
  // copy
  let _ary = JSON.parse(JSON.stringify(ary))

  // filter
  _ary = _ary.map(v => {
    // validate
      if (validate(v)) {
        // callback
        return cb(v) || v
      } else {
        // default
        return v
      }
  });

  // filter ary
  return _ary
}
)
code(Var)
return

::paichu::
::exclude::
Var =
(
export const exclude = (obj, ...attribute) =>  {
  // copy
  let _ = JSON.parse(JSON.stringify(obj))
    // 删除属性
  for (let i = 0, len = attribute.length; i < len; i++) {
    const attr = attribute[i]
      delete _[attr]
  }
  // pure obj
  return _
}
)
code(Var)
return

::fuckclickoutside::
::handleclickoutside::
Var =
(
var evmousedown = document.createEvent('HTMLEvents');
// evmousedown.clientX = 88
// evmousedown.clientY = 18

evmousedown.initEvent('mousedown', false, true);
var evmouseup = document.createEvent('HTMLEvents');
// evmouseup.clientX = 88
// evmouseup.clientY = 18

evmouseup.initEvent('mouseup', false, true);
document.dispatchEvent(evmousedown)
document.dispatchEvent(evmouseup)
var evmouseclick = document.createEvent('HTMLEvents');
// evmouseclick.clientX = 88
// evmouseclick.clientY = 18

evmouseclick.initEvent('click', false, true);
document.dispatchEvent(evmouseclick)
document.dispatchEvent(evmouseclick)
)
code(Var)
return

::fullpage::
::maxapge::
::f11::
::maxchrome::
Var =
(
let isFullScreen = false

const btn = document.getElementById('button')

btn.addEventListener('click', e => {
    // 如果不是全屏的话，那么进入全屏
    if (!isFullScreen) {
        var el = document.documentElement;
        var rfs = el.requestFullScreen || el.webkitRequestFullScreen || el.mozRequestFullScreen || el.msRequestFullScreen;
        if (typeof rfs != "undefined" && rfs) {
            rfs.call(el);
        } else if (typeof window.ActiveXObject != "undefined") {
            var wscript = new ActiveXObject("WScript.Shell");
            if (wscript != null) {
                wscript.SendKeys("{F11}");
            }
        }

        isFullScreen = true
    // 否则退出全屏
    } else {
        // 判断各种浏览器，找到正确的方法
        var exitMethod = document.exitFullscreen || document.mozCancelFullScreen || document.webkitExitFullscreen || document.webkitExitFullscreen;
        if (exitMethod) {
            exitMethod.call(document);
        } else if (typeof window.ActiveXObject !== "undefined") { //for Internet Explorer
            var wscript = new ActiveXObject("WScript.Shell");
            if (wscript !== null) {
                wscript.SendKeys("{F11}");
            }
        }

        isFullScreen = false
    }
})

)
code(Var)
return


::diff::
Var =
(
// 判断是否为数组/对象
const isObject = v => typeof v === 'object' && !!v

// 验证两个 json 是否一致
const diff = (a, b) => {
    // 不是对象，拒绝服务
    if (!isObject(a) || !isObject(b)) 
        throw new TypeError('params must be a json/object')

    // 获取所有 keys
    let keys = Object.keys(a)

    // 如果没有属性，那么直接判断b是否为空对象
    if (keys.length === 0) 
        return JSON.stringify(b) === '{}'

    // 顺着属性对比
    for (k of keys) {
        // 获取双方相同属性的值
        const _a = a[k], _b = b[k]

        // 如果都是对象，则递归继续判断
        if (isObject(_a) && isObject(_b)) 
            return diff(_a, _b)

        // 直接对比
        if (_a !== _b) 
            return false
    }

    return true
}
)
code(Var)
return

::fixpos::
Var =
(
/**
 * fixPos: 根据父层界限调整宽高和位置
 */
function fixPos ({height, width, top, left} = {}, {parentH, parentW} = {}) {
  // Checks if position + size gets out-of-bounds (TOO FAR), if so, reposition...
  if ((top + height) > parentH) 
    top -= (top + height) - parentH

  if ((left + width) > parentW)
    left -= (left + width) - parentW

  // Checks if position is out-of-bounds (NEGATIVE), if so reposition...
  if (top <= 0) 
    top = 0

  if (left <= 0) 
    left = 0

  // Checks if, with a 0 position, the element is still out-of-bounds (TOO BIG), if so, resize
  if (top === 0 && (height > parentH)) 
    height = parentH

  if (left === 0 && (width > parentW)) 
    width = parentW

  return { left, top, height, width }
}
)
code(Var)
return

::dr::
Var =
(
document.removeEventListener('mouseup', this.clickOutSide)
)
code(Var)
return

::log::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
const { log, warn, info, error, assert } = console
log(%t%, )

// 折叠日志
const logs = (info = '', ...args) => {
    console.groupCollapsed(info)
    args.forEach(_ => console.log(_))
    console.groupEnd()
}
)
code(Var)
SendInput, {left}
return

::asserts::
::assert::
Var =
(
console.assert(false, )
)
code(Var)
SendInput, {left}
return

::once::
Var =
(
/**
 * es6 版本
 *
 */
var once = f => {
    // 计数器，采用闭包来保护私有变量
    let count = 0
    // 保存闭包执行结果
    let cache
    return (...args) => {
      // once 执行逻辑
      if (++count === 1) {
        // 执行函数
        cache = f(...args)
      }
      // 返回函数执行结果
      return cache
    }
}
---
/**
 * es5 版本
 *
 */
var once = f => {
    // 计数器，采用闭包来保护私有变量
    let count = 0
    // 保存闭包执行结果
    let cache
    return function () {
      // once 执行逻辑
      if (++count === 1) {
        // 执行函数
        cache = f.apply(null, arguments)
      }
      // 返回函数执行结果
      return cache
    }
}
---
/**
 * es6 极限版本
 *
 */
var once = (f, cache, count = 0) => (...args) => ++count === 1 ? cache = f(...args) : cache
---
/**
 * Ensure a function is called only once.
 * https://github.com/vuejs/vue/blob/2.6/src/shared/util.js#L333
 */
export const once = fn => {
  let called = false
  return function () {
    if (!called) {
      called = true
      fn.apply(this, arguments)
    }
  }
}
)
txtit(Var)
return




::split::
::fenye::
::shuzufenye::
::shuzuqiepian::
::shuzufenge::
::shuzuqiege::
Var =
(
// 就像分页一样。
// 1、页码 page：从 0 开始
// 2、数量 num：3
// 3、次数：Math.ceil
// 4、使用Array.prototype.slice切割。不会改变原数组
// 公式：a.slice(page * num, page + 1 * num)

/*
var ary = [1,2,3,4,5,6,7,8,9,10]
var num = 3
var count = Math.ceil(ary.length / num)
for (var page = 0; page < count; page++) {
    console.log(ary.slice(page * num, (page + 1) * num))
}
*/

const ary = [1,2,3,4,5,6,7,8,9,10]
const num = 3
// 如果你的需求是：要分成N组，那么第二个参数可以换成： ary.length / N
const division = (ary, num, container = {}) => {
    for (let page = 0; page < Math.ceil(ary.length / num); page++) {
      container[page] = ary.slice(page * num, (page + 1) * num)
    }
    return container
}
// demo
division(ary, num, {}) // or division(ary, num, [])
)
code(Var)
return

::baoleimodel::
::baoleimoshi::
::baoleimodal::
Var =
(
var once = (f, cache, count = 0) => (...args) => ++count === 1 ? cache = f(...args) : cache

var getUser = () => {
    return new Promise((resolve, reject) => {
       setTimeout(function () {
            console.log(20190518201928, 'getUser success!')
            resolve('userName')
       }, 3000);
    })
}

var request = (user) => {
    return new Promise((resolve, reject) => {
       setTimeout(function () {
            resolve('request by ' + user)
       }, 3000);
    })
}

var once_getUser = once(getUser)

var test = async (num) => {
    // 假设这个是前提条件，且只执行一次
    const user = await once_getUser()
 
    // 这个是正式请求，要结合上面的值使用
    const data =  await request(user + num)

    return data
}

test('0').then(console.log)
test('1').then(console.log)
test('2').then(console.log)
test('3').then(console.log)
test('4').then(console.log)
test('5').then(console.log)
test('6').then(console.log)
)
code(Var)
Return

::dpr::
Var =
(
window.devicePixelRatio
)
code(Var)
return

::mvNode::
::mvDOM::
::dommove::
::movedom::
::copydom::
Var =
(
/**
 * 移动dom元素到指定目标位置
 *
 * @source {DOM} 你要移动的DOM
 * @target {DOM} 你要移动的位置
 */
const mvDOM = function (source, target) {
    // 深度拷贝（含子元素）
    let _source = source.cloneNode(true)
    // 删除本身
    source.remove()
    // 默认插入到容器最前面，如果想在后面可以这样处理：target.append(source)
    target.insertBefore(_source, target.firstChild)
}
)
code(Var)
return

::href::
Var =
(
window.location.href
)
code(Var)
return


::promiseall::
::promise.all::
::promise.a::
::Promise.all2::
Var =
(
const isPromise = val => val && typeof val.then === 'function'

/**
 * Promise.all 的升级版本，如果异常也会自动返回
 *
 * demo:

   const testA = new Promise((resolve, reject) => setTimeout(_ => resolve('success'), 3000))
   const testB = new Promise((resolve, reject) => setTimeout(_ => reject('fail'), 3500))

   ;(async function(){
       // ✖️
       // const result = await Promise.all([testA, testB])

       // ✔
       const result = await Promise.allSettled([testA, testB])
       console.log(20191215005254, result)
   }())
 */
Promise.allSettled = iterables => new Promise(resolve => {
    let result = []

    const callback = function (i, v) {
        // 模仿 Promise.all 对号入座原则
        result[i] = v

        // 是否全部执行完毕？
        // fixbug: empty 的问题
        if (result.filter(_ => _ != null).length === iterables.length)
            // 收工咯~
            resolve(result)
    }

    iterables.forEach((p, i) => {
        // 注入索引
        const _callback = callback.bind(null, i)

        // 如果是 promise，才执行操作
        if (isPromise(p)) {
            // 注入灵魂
            p.then(_callback).catch(_callback)
        // 如果是其他，直接调用即可
        } else {
            _callback(p)
        }
    })
})
)
code(Var)
return

::console.save::
Var =
(
(function(console) {
    console.save = function(data, filename) {
        if (!data) {
            console.error('Console.save: No data')
            return;
        }
        if (!filename) filename = (+new Date) + 'console.json'
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
)
code(Var)
return


::zhuangshiqi::
::@dec::
::dec::
Var =
(
// mixins.js
function mixins(...list) {
  return function (target) {
    Object.assign(target.prototype, ...list)
  }
}

const Foo = {
  foo() { 
    console.log(this.abc) // 123
    console.log(this.constructor.fuck) // shit
  }
};

@mixins(Foo) 
class MyClass {
    static fuck = 'shit'
    constructor() {
      this.abc = '123'
    }
}

let obj = new MyClass();
obj.foo()
---
// https://es6console.com/k1yivejb/
@testable
class MyTestableClass {
  // ...
}

function testable(target) {
  target.isTestable = true;
}

MyTestableClass.isTestable // true
---
class Math {
  @log
  add(a, b) {
    return a + b;
  }
}

function log(target, name, descriptor) {
  var oldValue = descriptor.value;

  descriptor.value = function() {
    console.log(`Calling ${name} with`, arguments);
    return oldValue.apply(this, arguments);
  };

  return descriptor;
}

const math = new Math();

// passed parameters should get logged now
math.add(2, 4);
)
txtit(Var)
return

::html2canvas::
::canvas2html::
Var =
(
 <img v-if='src' :src="src" class='thumbnail' />

// 截图工具
import html2canvas from 'html2canvas'

methods: {
    screenshot (v) {
      html2canvas(document.querySelector('.Stage')).then(canvas => {
            console.log(20190708095523, canvas.toDataURL("image/png"))
            this.src = canvas.toDataURL("image/png")
      })
    }
},
)
code(Var)
Return

::odf::
Var =
(
function defineReactive(obj, key, val) {
    Object.defineProperty(obj, key, {
        enumerable: true,
        configurable: true,
        get () {
            console.log('get hook')
            return val
        },
        set (newVal) {
            console.log('set hook')
            if (val === newVal) {
                return
            }
            val = newVal
        }
    })
}

// demo
var obj = {}

// 初始化对象的 foo 属性
defineReactive(obj, 'foo', 123)

// 访问对象的foo属性，触发 get 钩子
console.log(obj.foo)

// 设置 foo 属性，触发 set 钩子
obj.foo = '456'


//////////////////////////////////////////////
// 注意，js 无法监听对象属性的添加和删除
//////////////////////////////////////////////

defineReactive(obj, 'list', [1,2,3])

obj.list[0] = 'fuck' // 不会触发set hook，但居然还额外触发了 get hook。

obj.list = 123 // 触发 set hook
)
code(Var)
return


::color::
Var =
(
/*
    If color has the following format:
    const rgbColor = { r: 100, g: 100, b: 100 }
*/

// Extracted from Polished
// Code is licensed with an MIT license
function getLuminance(rgbColor) {
 const [r, g, b] = Object.keys(rgbColor).map(key => {
    // Our color numbers represent a 8bit channel.
        // The formula requires a sRGB channel which is defined by
        // ColorChannelIn8bit / 255
    const channel = rgbColor[key] / 255
    return channel <= 0.03928
      ? channel / 12.92
      : ((channel + 0.055) / 1.055) ** 2.4
  })
  return parseFloat((0.2126 * r + 0.7152 * g + 0.0722 * b).toFixed(3))
}
---
const colorRange = (colorList, min, max) => {
    // 初始化透明度 rgba
    // 虽然强制将 『透明度的单位』 和 『rgb颜色的255单位』 对齐很离谱
    // 但其实是可以的，因为原理都是通过两个数值『相减』 得出 『距离』，然后再根据距离进行演变。
    colorList = colorList.map(([r, g, b, a = 1]) => [r, g, b, a * 255])

    // 提前准备好还原 Opacity 的工具
    const restoreOpacity = ([r, g, b, a]) => [r, g, b, (a / 255).toFixed(2)]

    // 获取距离
    const distance = max - min

    // 获取 『每个颜色之间的距离』
    // 为什么要长度 -1 ？ 想想 『为什么说八岐大蛇是9个头？』 ,因为 『岐』 的意思是头与头之间的 『区间』
    // Orochi，即八岐大蛇（Yamata no Orochi）是日本神话中的著名怪物
    const Orochi = distance / (colorList.length - 1)

    // 初始化所有的 『数值区间』 和 『颜色区间』
    const { vSection, cSection } = colorList.reduce((p, c, i, a, next = a[i + 1]) => {
        // 没有下一个了，说明是最后一个了
        if (!next) return p

        // 颜色区间
        p.cSection.push([ c, next ])

        // 数值区间
        p.vSection.push([ min + Orochi * i, min + Orochi * (i + 1) ])

        return p
    }, { vSection: [], cSection: [] })


    // 获取颜色的单位距离
    const getUnitColor = ([r1, g1, b1, a1], [r2, g2, b2, a2], distance) => [
        Math.abs(r1 - r2) / distance,
        Math.abs(g1 - g2) / distance,
        Math.abs(b1 - b2) / distance,
        Math.abs(a1 - a2) / distance,
    ]

    return v => {
        // ...
        if (v <= min) return restoreOpacity(colorList[0])

        // ...
        if (v >= max) return restoreOpacity(colorList[colorList.length - 1])

        // 获取 v 命中哪个 『数值区间』
        const index = vSection.findIndex(([a, b]) => (v === a || v === b) || (v > a && v < b))

        // 获取当前数值区间
        const [leftV, rightV] = vSection[index]

        // 获取当前颜色区间
        const [leftC, rightC] = cSection[index]

        // 获取该区间距离
        const _distance = rightV - leftV

        // 返回单位颜色
        const unit_rgba = getUnitColor(leftC, rightC, _distance)

        // 获得当前值与左界的距离（有点 margin/padding 的味道，命名参考 css grid 的 grid-gap）
        const gap = v - leftV

        // 步进的颜色 = 单位颜色 * 左界距离
        const stepColor = unit_rgba.map(c => parseInt(c * gap))

        // 最终颜色 = 左界颜色 + 步进颜色
        const color = leftC.map((c, i) => c + stepColor[i])

        // 还原 Opacity
        return restoreOpacity(color)
    }
}

// 颜色列表
const colorList = [[0, 4, 156, 0.25], [23, 0, 241, 0.3], [0, 90, 255, 0.65], [0, 114, 255, 1]]

// 数据
const data = [{ name:'万江', count: 400 }, { name:'东坑', count: 300 }, { name:'东城', count: 890 }, { name:'中堂', count: 270 }, { name:'企石', count: 170 }, { name:'凤岗', count: 700 }, { name:'南城', count: 650 }, { name:'厚街', count: 950 }, { name:'塘厦', count: 810 }, { name:'大岭山', count: 425 }, { name:'大朗', count: 1200 }, { name:'寮步', count: 560 }, { name:'常平', count: 640 }, { name:'望牛墩', count: 200 }, { name:'松山湖', count: 220 }, { name:'桥头', count: 350 }, { name:'横沥', count: 380 }, { name:'沙田', count: 700 }, { name:'洪梅', count: 70 }, { name:'清溪', count: 450 }, { name:'石排', count: 400 }, { name:'石碣', count: 400 }, { name:'石龙', count: 170 }, { name:'茶山', count: 365 }, { name:'莞城', count: 330 }, { name:'虎门', count: 1300 }, { name:'谢岗', count: 170 }, { name:'道滘', count: 220 }, { name:'长安', count: 1345 }, { name:'高埗', count: 300 }, { name:'麻涌', count: 230 }, { name:'黄江', count: 330 }]

// ...
const _data =  data.map(_ => _.count)

// 最大值 / 最小值
const min = Math.min(..._data), max = Math.max(..._data)

// ...
const make = colorRange(colorList, min, max)

// ...
// const finalData = data.map(item => Object.assign({}, item, { fillStyle: ``rgba(${make(item.count).join(',')})`` }))
const finalData = data.map(item => Object.assign({}, item, { color: make(item.count) }))

// ...
console.log(finalData)
---
String.prototype.colorRgb = function() {
    var sColor = this.toLowerCase();
    if (sColor && /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/.test(sColor)) {
        if (sColor.length === 4) {
            var sColorNew = "#";
            for (var i = 1; i < 4; i += 1) {
                sColorNew += sColor.slice(i, i + 1).concat(sColor.slice(i, i + 1));
            }
            sColor = sColorNew;
        }
        var sColorChange = [];
        for (var i = 1; i < 7; i += 2) {
            sColorChange.push(parseInt("0x" + sColor.slice(i, i + 2)));
        }
        return { red: sColorChange[0], green: sColorChange[1], blue: sColorChange[2], alpha: null };
    } else {
        return sColor;
    }
}

var color = '#ffffff';
color.colorRgb()
---
function colorHex(value) {
    if (!value) return '#ffffff';
    if (!isObj(value) && value.includes('#')) return value;
    var sColor = [value.red.toString(), value.green.toString(), value.blue.toString()];
    value = '';
    sColor.map(v => {
        v = parseInt(v.replace(/[^\d]/gi, ''), 10).toString(16);
        console.log(v.length == 1 ? "0" + v : v);
        value += v.length == 1 ? '0' + v : v;
    }).join('');
    return '#' + value;
}

var obj = { red: 255, green: 255, blue: 255, alpha: null }
colorHex(obj) // #ffffff
---
function colorReverse(oldColor){
    var oldColor = '0x' + oldColor.replace(/#/g, '');
    var str = '000000' + (0xFFFFFF - oldColor).toString(16);
   return str.substring(str.length - 6, str.length);
}
colorReverse('#000000') // #ffffff
---
$target-colors: (green-color: #789d34, red-color: #ac3d39, blue-color: #236367, );

$tones: 10, 20, 30, 40, 50, 60, 70, 80, 90;

@mixin generate-color-var($key, $value) {
   --#{$key}: #{$value};
   --#{$key}-rgb: #{red($value)},#{green($value)},#{blue($value)};
   @each $tone in $tones {
       $scale-value: adjust-color($value, $lightness: $tone / 2 * 1`%);
       --#{$key}-#{$tone}: #{$scale-value};
       --#{$key}-#{$tone}-rgb: #{red($scale-value)},#{green($scale-value)},#{blue($scale-value)};
   }
}

:root {
   @each $key, $value in $target-colors {
       @include generate-color-var($key, $value);
   }
}

.green {background: var(--green-color); }
.green-10 {background: var(--green-color-10); }
.green-20 {background: var(--green-color-20); }
.green-30 {background: var(--green-color-30); }
.green-40 {background: var(--green-color-40); }
.green-50 {background: var(--green-color-50); }
.green-60 {background: var(--green-color-60); }
.green-70 {background: var(--green-color-70); }
.green-80 {background: var(--green-color-80); }
.green-80 {background: var(--green-color-90); }

.red {background: var(--red-color); }
.red-10 {background: var(--red-color-10); }
.red-20 {background: var(--red-color-20); }
.red-30 {background: var(--red-color-30); }
.red-40 {background: var(--red-color-40); }
.red-50 {background: var(--red-color-50); }
.red-60 {background: var(--red-color-60); }
.red-70 {background: var(--red-color-70); }
.red-80 {background: var(--red-color-80); }
.red-80 {background: var(--red-color-90); }

.blue {background: var(--blue-color); }
.blue-10 {background: var(--blue-color-10); }
.blue-20 {background: var(--blue-color-20); }
.blue-30 {background: var(--blue-color-30); }
.blue-40 {background: var(--blue-color-40); }
.blue-50 {background: var(--blue-color-50); }
.blue-60 {background: var(--blue-color-60); }
.blue-70 {background: var(--blue-color-70); }
.blue-80 {background: var(--blue-color-80); }
.blue-80 {background: var(--blue-color-90); }
)
txtit(Var)
return

::sub::
::substr::
::path::
Var =
(
function parsePath(obj, path) {
    const segments = path.split('.')
    for (let i = 0, len = segments.length; i < len; i++) {
        obj = obj[segments[i]]
    }
    return obj
}

var obj = {
    "a": {
        "b": {
            "c": {
                "d": 123
            }
        }
    }
}
parsePath(obj, 'a.b.c.d') // 123
---
const path = './BarChart/HorizontalBarChart.js'
const [name, ext] = path.substring(path.lastIndexOf('/') + 1).split('.')
console.log(20190711100013, name)
)
txtit(Var)
return

::wimp::
::wmp::
Var =
(
import(/* webpackChunkName: "fuckyou" */ './fuckyou.json').then(module => {
  var print = module.default
  print()
})
)
code(Var)
return


::deepfine::
::deepfind::
::objfind::
::arrfind::
::aryfind::
::deepfind::
::ObjectSearch::
::objsearch::
::searchObject::
::searchObj::
Var =
(
// 是否为对象
const isObject = input => input != null && Object.prototype.toString.call(input) === '[object Object]'

// 是否为数组
const isArray = input => input instanceof Array || Object.prototype.toString.call(input) === '[object Array]'

/**
 * 深度搜索对象/数组的key ...
 * @target           {Object}   要搜索的对象/数组
 * @searchExpression {Function} 搜索表达式
 * @targetHande      {Function} 命中后的回调函数
 * @maxDeep          {Number}   深入的层级
 *
 */
const ObjectSearch = (target, searchExpression, targetHande, maxDeep = 10) => {
    // 是否为一个对象或者数组
    if (isObject(target) || isArray(target)) {
        // 目标是否满足表达式，如果满足直接操作
        searchExpression(target) && targetHande(target)
        // 遍历
        for (let k in target) {
            // 递归
            ObjectSearch(target[k], searchExpression, targetHande, maxDeep)
        }
    }
}

// base demo
const demo1 = { a: {b: {c: {fuckyou: 'demo1'}}} }
const demo2 = [ { a: {b: {c: {fuckyou: 'demo2'}}} } ]
const demo3 = { a: { b: { c: [ { a: {b: {c: {fuckyou: 'demo3'}}} } ] } } }

ObjectSearch(demo1, target => 'fuckyou' in target, v => { console.log(20190716140318, v) })
ObjectSearch(demo2, target => 'fuckyou' in target, v => { console.log(20190716140319, v) })
ObjectSearch(demo3, target => 'fuckyou' in target, v => { console.log(20190716140319, v) })

// update demo
ObjectSearch(demo1, target => 'fuckyou' in target, v => {
    v.fuckyou = 'thinkyou'
    console.log(20190716140939, JSON.stringify(demo1))
})

// 陈成要的 demo
// 就是把这些id和树的数据匹配  如果匹配到就让 ischeck=true
const treeData = [{ "id": 1, "label": "一级 1", "ischeck": false, "children": [{ "id": 4, "label": "二级 1-1", "ischeck": false, "children": [{ "id": 9, "label": "三级 1-1-1", "ischeck": false, "children": [] }, { "id": 10, "label": "三级 1-1-2", "ischeck": false, "children": [] }] }] }, { "id": 2, "label": "一级 2", "ischeck": false, "children": [{ "id": 5, "label": "二级 2-1", "ischeck": false, "children": [] }, { "id": 6, "label": "二级 2-2", "ischeck": false, "children": [] }] }, { "id": 3, "label": "一级 3", "ischeck": false, "children": [{ "id": 7, "label": "二级 3-1", "ischeck": false, "children": [] }, { "id": 8, "label": "二级 3-2", "ischeck": false, "children": [] }] }]
const targets = [3, 4, 5, 6, 7]
ObjectSearch(treeData, target => targets.includes(target.id), v => v.ischeck = true)

console.log(20201014181035, treeData)
---
const fuck = [{"label": "占用道路问题", "value": 31, "children": [{"label": "经营占道", "value": 35, "children": [{"label": "店外经营占道", "value": 40, "children": null }, {"label": "流动摊贩占道", "value": 41, "children": null } ] }, {"label": "垃圾占道", "value": 36, "children": [{"label": "生活垃圾", "value": 42, "children": null }, {"label": "建筑垃圾", "value": 43, "children": null }, {"label": "工业垃圾", "value": 44, "children": null } ] }, {"label": "车辆占道", "value": 37, "children": [{"label": "机动车占道", "value": 45, "children": null }, {"label": "非机动车占道", "value": 46, "children": null } ] }, {"label": "霸占车位", "value": 38, "children": [] }, {"label": "其他占道", "value": 39, "children": [] } ]}, {"label": "“两违”问题", "value": 32, "children": [{"label": "违法建筑", "value": 58, "children": [{"label": "房屋违建", "value": 61, "children": null }, {"label": "小区违建", "value": 62, "children": null }, {"label": "违建棚架", "value": 63, "children": null } ] }, {"label": "违法用地", "value": 59, "children": [] }, {"label": "其他违建", "value": 60, "children": [] } ] }, {"label": "市容设施管理问题", "value": 33, "children": [{"label": "道路损坏", "value": 47, "children": [] }, {"label": "垃圾桶损坏", "value": 48, "children": [] }, {"label": "下水道堵塞", "value": 49, "children": [] }, {"label": "井盖损坏", "value": 50, "children": [] }, {"label": "路灯损坏", "value": 51, "children": [] }, {"label": "树木修剪", "value": 52, "children": [] }, {"label": "水电气", "value": 53, "children": [] }, {"label": "户外广告牌", "value": 54, "children": [] }, {"label": "隔音屏损坏", "value": 55, "children": [] }, {"label": "洒水车问题", "value": 56, "children": [] }, {"label": "其他", "value": 57, "children": [] } ] }, {"label": "其他问题", "value": 34, "children": [] } ]

/**
 * 深度递归搜索
 * @param {Array} arr 你要搜索的数组
 * @param {Function} condition 回调函数，必须返回谓词，判断是否找到了。会传入(item, index, level)三个参数
 * @param {String} children 子数组的key
 */
const deepFind = (arr, condition, children) => {
    // 即将返回的数组
    let main = []

    // 用try方案方便直接中止所有递归的程序
    try {
        // 开始轮询
        (function poll(arr, level, cb) {
            // 如果传入非数组
            if (!Array.isArray(arr)) return

            // 遍历数组
            for (let i = 0; i < arr.length; i++) {
                // 获取当前项
                const item = arr[i]

                // 先占位预设值
                main[level] = item

                // 扩展：如果是一个对象的话，添加一些标记属性
                if (Object.prototype.toString.call(item) === '[object Object]') {
                  item.__INDEX__ = i
                  item.__LEVEL__ = level
                }

                // 检验是否已经找到了
                const isFind = condition && condition(item, i, level) || false

                // 自杀函数
                const kill = () => {
                // 删除占位预设值
                  main.length = main.length - 1
                  // 触发回调
                  cb && cb()
                }

                // 如果已经找到了
                if (isFind) {
                    // 直接抛出错误中断所有轮询
                    throw Error
                // 如果存在children，那么深入递归
                } else if (children && item[children] && item[children].length) {
                    poll(item[children], level + 1,
                      // 如果本函数被触发，说明children还是找不到。
                      () => {
                      // 那么如果我是最后一条，那么我也自杀吧
                      if (i === arr.length - 1) {
                        kill()
                      }
                    })
                // 如果是最后一个且没有找到值，那么通过修改数组长度来删除当前项
                } else if (i === arr.length - 1) {
                  // 找不到，羞愧自杀
                  kill()
                }
            }
        })(arr, 0)
    // 使用try/catch是为了中止所有轮询中的任务
    } catch (err) {}

    // 返回最终数组
    return main
}

let myarr = deepFind(fuck, (item, index, level) => item.value === 63, 'children')
console.log(20181115092957, myarr)  // [{…}, {…}, {…}]
console.log(20181115092957, myarr.map(_ => _.value)) // [32, 58, 63]
)
txtit(Var)
return


::atob::
::btoa::
Var =
(
window.btoa(JSON.stringify({ password: 123456 }))
// "eyJwYXNzd29yZCI6MTIzNDU2fQ=="

window.atob("eyJwYXNzd29yZCI6MTIzNDU2fQ==")
// "{"password":123456}"
)
code(Var)
return


::xinbiao::
Var =
(
var data = JSON.stringify({
  name: 'Berwin'
});
navigator.sendBeacon('http://localhost:80/index.php', data)
---
<?php 
/**
 * 由于是信标发送的 POST 请求，并且是 "text/plain" 数据类型，所以适合用 $GLOBALS['HTTP_RAW_POST_DATA'] 接受。
 *
 */
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Headers:x-requested-with,content-type'); 

function WriteLog($msg,$module = null,$logLevel = "DEBUG")
{
    $filepath = "./log/";
    if(!is_dir($filepath)) mkdir($filepath,'0777');
    $MyLogFile = @fopen($filepath.date("Y-m-d").".txt",'a+');

    $time = date("Y-m-d H:i:s");
    if(isset($module)){$module =  sprintf("\r\n归属模块：".$module."\r\n");}
    $logLine = "\r\n-------------------------------  $time -------------------------------\r\n";
    $logLine .= $module;
    $logLine .= "\r\n异常信息：$msg\r\n";
    $logLine .= "\r\n错误等级：$logLevel\r\n";
    fwrite($MyLogFile,$logLine);
}

WriteLog($GLOBALS['HTTP_RAW_POST_DATA']);
)
txtit(Var)
Return

::regEvent::
Var =
(
/**
 * 为函数注册全局事件
 * https://stackoverflow.com/questions/4570093/how-to-get-notified-about-changes-of-the-history-via-history-pushstate
 * demo1:
       var fuck = () => {}
       regEvent('fuck')
       window.addEventListener('fuck', e => {
        console.log(20190721150339, e.args)
       })
       fuck()

 * demo2:
       regEvent.bind(history)('pushState')
       window.addEventListener('pushState', e => console.log(20190721150339, e.args))
       history.pushState(null, null, '123')

 * demo3:
       var obj = {a: 123, b () {console.log(20190721151400, this.a)}}
       regEvent.bind(obj)('b')
       window.addEventListener('b', _ => console.log(20190721151537, '123'))
       obj.b()
 */
const regEvent = function (name) {
    // 由于需要使用bind，所以最外围不能使用箭头函数
    // （可选）注入环境，解决 history.pushState 『Illegal invocation』 的问题
    const origin = this[name].bind(this)

    // 新建事件
    let event = new Event(name)

    // 替换函数引用
    this[name] = (...args) => {
        // 调用该函数
        const result = origin(...args)
        // （可选）注入参数
        event.args = args
        // 推送事件
        window.dispatchEvent(event)
        // 返回函数的调用结果
        return result
    }
}
)
code(Var)
return


::bibao::
Var =
(
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
)
code(Var)
return

::loadExec::
::execload::
::execloading::
::loadingexec::
Var =
(
/**
 * delay工具函数
 *
    (async function(){
        // 启动计时器
        console.time('🚀')
        // 测试专用函数
        const test = () => new Promise((resolve, reject) => setTimeout(_ => resolve('success'), 1000))
        // wait
        const result = await wait(test, 3000)
        // success
        console.log(result)
        // 停止计时，输出时间
        console.timeEnd('🚀') // => 🚀: 3002.038818359375ms
    }())
 */
export const wait = async (fn, t = 0) => {
    // 计时器（开始）
    const startTime = +new Date
    // 执行并等待该函数
    const result = await fn()
    // 计时器停止
    const endTime = +new Date
    // 获取请求消耗的时间
    const intervalTime = t - (endTime - startTime)
    // 返回
    return new Promise((resolve, reject) => setTimeout(() => resolve(result), intervalTime))
}


/**
 * 又是一个比较骚的工具函数
 *
 * @fn      {Function} 将要执行的函数 ...
 * @loading {String}   loading 字段 ...
 * @success {Function} 执行成功时会触发函数 ...
 * @error   {Function} 执行失败时会触发函数 ...
 * @time      {Number}   比如请求1秒完成，但我就是想2秒之后才回调 ...
 * @notRepeat {String}   是否重复，传入字符串作为key标志 ...
 * 示例1：
   var loading = false
   var test = () => {
      return new Promise((resolve, reject) => {
         setTimeout(function () {
              resolve('success')
         }, 1000);
      })
   }
   loadingExec('loading', test, {success: result => console.log(result) }, 2000)

   示例2：
   for (var i = 0; i < 10; i++) {
      // 只会执行最后一次。
      loadingExec('loading', test, {success: result => console.log(result) }, 2000, 'A')
   }  
 */
export const loadingExec = (function(){
  // 缓存
  let __CACHE__ = {}

  // 这才是 real 函数
  return async function (loadingName, fn, { success = () => {}, error = () => {}, complete = () => {} } = {}, time = 0, notRepeat = '') {

    // 生成一个固定id
    const MdUuid = Math.random().toString(36).slice(4)

    // 占位符
    __CACHE__[notRepeat] = MdUuid

    // 是否允许执行
    const isAllow = () => notRepeat ? __CACHE__[notRepeat] === MdUuid : true

    try {
      this[loadingName] = true
      const result = await wait(fn, time)
      this[loadingName] = false
      isAllow() && success(result)
    } catch (err) {
      this[loadingName] = false
      isAllow() && error(err)
    }

    isAllow() && complete()
  }
}())

)
code(Var)
return

::buji::
Var =
(
var arr1 = [{ id: 1 }, { id: 2 }, { id: 3 }, { id: 4 }, { id: 5 }]
var arr2 = [{ id: 1 }, { id: 2 }, { id: 3 }]
// 补集（在一个大集合 a 中，除了子集合b以外所有的集合）
const complement = (a, b, p) => a.reduce((result, c) => {
  // 先找出共同拥有的集合（交集）
  const _jiaoji = jiaoji(a, b, p)

  // 从大集合中，单方面找出差集
  return a.reduce((result, c) => {
    // 是否找到相同元素？
    const target = b.find(_ => _[p] === c[p])
    // 如果找到的话，插入数组
    return !target ? [...result, c] : result
  }, [])
}, [])
// [ { id: 4 }, { id: 5 } ]
console.log(complement(arr1, arr2, 'id'))
---
const xor = (a, b) => exclude(a, b).concat(exclude(b, a)) // 补
)
txtit(Var)
return

::chaji::
Var =
(
var arr1 = [{ id: 1 }, { id: 2 }, { id: 3 }]
var arr2 = [{ id: 2 }, { id: 3 }, { id: 4 }]
// 差集（两个元素互相没有的东西）
const chaji = (a, b, p) => {
  const ary1 = a.reduce((result, c) => {
    // 是否找到相同元素？
    const target = b.find(_ => _[p] === c[p])
    // 如果找到的话，插入数组
    return !target ? [...result, c] : result
  }, [])

  const ary2 = b.reduce((result, c) => {
    // 是否找到相同元素？
    const target = a.find(_ => _[p] === c[p])
    // 如果找到的话，插入数组
    return !target ? [...result, c] : result
  }, [])

  return [...ary1, ...ary2]
}

// [ { id: 1 }, { id: 4 } ]
console.log(chaji(arr1, arr2, 'id'))
---
const exclude = (a, b) => a.filter(i => !b.includes(i)) // 差
)
txtit(Var)
return

::arrbaohan::
::arybaohan::
::shuzubaohan::
::jiaoji::
::baohan::
::include::
Var =
(
/**
 * 百度地图其实也有官方工具支持：http://api.map.baidu.com/library/DrawingManager/1.4/docs/symbols/BMapLib.html
 * BMapLib.GeoUtils.isPointInPolygon(new BMap.Point(113.843319, 22.921901), map.getOverlays().filter(_ => _.city)[0])
 [JS]如何验证坐标点是否在多边形内
 * Verify if point of coordinates (longitude, latitude) is polygon of coordinates
 * https://github.com/substack/point-in-polygon/blob/master/index.js
 * @param Latitude   维度：22.921901
 * @param Longitude 经度：113.843319
 * @param array<[latitude,Latitude]>
 （温馨提示：计算消耗的时间有点久，最好是放在 web worker 里边计算）
 */
export function isPointInPolygon(latitude, longitude, polygon) {
  if (typeof latitude !== 'number' || typeof longitude !== 'number') {
    return false
    // throw new TypeError('Invalid latitude or longitude. Numbers are expected')
  } else if (!polygon || !Array.isArray(polygon)) {
    throw new TypeError('Invalid polygon. Array with locations expected')
  } else if (polygon.length === 0) {
    throw new TypeError('Invalid polygon. Non-empty Array expected')
  }

  const x = latitude
  const y = longitude

  let inside = false
  for (let i = 0, j = polygon.length - 1; i < polygon.length; j = i++) {
    const xi = polygon[i][0]
    const yi = polygon[i][1]
    const xj = polygon[j][0]
    const yj = polygon[j][1]

    const intersect = ((yi > y) !== (yj > y)) &&
      (x < (xj - xi) * (y - yi) / (yj - yi) + xi)
    if (intersect) inside = !inside
  }

  return inside
}
---
var arr1 = [{ id: 1 }, { id: 2 }, { id: 3 }]
var arr2 = [{ id: 2 }, { id: 3 }, { id: 4 }]
// 交集（返回两个数组都拥有的元素）
const jiaoji = (a, b, p) => a.reduce((result, c) => {
  // 是否找到相同元素？
  const target = b.find(_ => _[p] === c[p])
  // 如果找到的话，插入数组
  return target ? [...result, target] : result
}, [])

// [ { id: 2 }, { id: 3 } ]
console.log(jiaoji(arr1, arr2, 'id'))
---
// 对象交集
const intersection = (O1, O2) => Object.assign(...Object.keys(O1).map(k => {
    let temp

    if (!(k in O2)) {
        return {}
    }

    if (O1[k] && typeof O1[k] === 'object' && O2[k] && typeof O2[k] === 'object') {
        temp = intersection(O1[k], O2[k])
        return Object.keys(temp).length ? { [k]: temp } : {}
    }

    if (O1[k] === O2[k]) {
       return { [k]: O1[k] }
    }

    return {}
}))

const a = { name: 'Alice', features: { speed: 3, strength: 90, mind: { power: 42 } } }
const b = { name: 'Bob', features: { speed: 3, stamina: 1, mind: { power: 42, flexibility: 0, telekinesis: 42 } } }
console.log(intersection(a, b))
---
// 数组交集
ary1.filter(_ => ary2.includes(_))

// 数组差集
a.filter(_ => !b.includes(_))

---
// 多字符串包含判断
if (['after', 'around'].includes(value)) {
    // ...
}
)
txtit(Var)
return

::mobile::
::ismobile::
::is-mobile::
Var =
(
// 验证手机号码
const isMobile = mobile => /^[1][3,4,5,7,8,9][0-9]{9}$/.test(mobile)
---
const isMobile = () => navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i)

function isMobile (ua) {
  if (!ua && typeof navigator != 'undefined') ua = navigator.userAgent;
  if (ua && ua.headers && typeof ua.headers['user-agent'] == 'string') {
    ua = ua.headers['user-agent'];
  }
  if (typeof ua != 'string') return false;

  return /(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(ua) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(ua.substr(0,4));
}
)
txtit(Var)
return

::parent::
::parents::
Var =
(
/**
 * 仿 jQuery.parents('className')，更加灵活的版本。
 * 
 * 示例：
 * parents(event.target, _ => _.className.includes('vue-grid-item'))
 */
export const parents = (el = {}, exp = () => false, maxDeep = 100) => {
    // 获取父元素，这里就不验证了
    const parent = el.parentNode
    // 如果父元素存在
    if (parent && maxDeep) {
        // 如果找到了则返回，如果没有找到则继续找
        return exp(parent) ? parent : parents(parent, exp, --maxDeep)
    // 不满足遍历需求
    } else {
        return null
    }
}
)
code(Var)
return


::dialog::
::dialog.class::
Var =
(
class Dialog {
    constructor(text) {
        this.lastX = 0
        this.lastY = 0
        this.x
        this.y
        this.text = text || ''
        this.isMoving = false
        this.dialog
    }
    open() {
        const modal = document.createElement('div')
        modal.id = 'modal'
        modal.style = `
            position:absolute; top:0; left:0; bottom:0; right:0;
            background-color:rgba(0,0,0,.3);
            display:flex;
            justify-content: center;
            align-items: center;
        `
        modal.addEventListener('click', this.close.bind(this))
        document.body.appendChild(modal)

        this.dialog = document.createElement('div')
        this.dialog.style = ` padding:20px; background-color:white`
        this.dialog.innerText = this.text
        this.dialog.addEventListener('click', e => { e.stopPropagation() })
        this.dialog.addEventListener('mousedown', this.handleMousedown.bind(this))
        document.addEventListener('mousemove', this.handleMousemove.bind(this))
        document.addEventListener('mouseup', this.handleMouseup.bind(this))
        modal.appendChild(this.dialog)
    }
    close() {
        this.dialog.removeEventListener('mousedown', this.handleMousedown)
        document.removeEventListener('mousemove', this.handleMousemove)
        document.removeEventListener('mouseup', this.handleMouseup)
        document.body.removeChild(document.querySelector('#modal'))
    }
    handleMousedown(e) {
        this.isMoving = true
        this.x = e.clientX
        this.y = e.clientY
    }
    handleMousemove(e) {
        if (this.isMoving) {
            // 拖动的距离 = 鼠标拖动位置 - 鼠标点击位置
            const distanceX = e.clientX - this.x
            const distanceY = e.clientY - this.y
            
            // 最终位置 = 拖动距离 + 相对位置
            const posX = distanceX + this.lastX
            const posY = distanceY + this.lastY

            this.dialog.style.transform = `translate(${posX}px, ${posY}px)`
        }
    }
    handleMouseup(e) {
        // 拖动结束，重新标记相对位置
        this.lastX = e.clientX - this.x + this.lastX
        this.lastY = e.clientY - this.y + this.lastY
        this.isMoving = false
    }
}
let dialog = new Dialog('Hello')
dialog.open()
)
code(Var)
return

::socket.js::
::socket.class::
Var =
(
import store from "@/store";

export default class AppSocket {
  constructor(url, { onopen, onerror, onmessage, onclose } = {}) {
    this.websock = new WebSocket(url);
    this.websock.onopen = onopen || this.onopen;
    this.websock.onerror = onerror || this.onerror;
    this.websock.onmessage = onmessage || this.onmessage;
    this.websock.onclose = onclose || this.onclose;
  }

  onopen() {
    console.log("WebSocket连接成功");
  }

  onerror() {
    console.log("WebSocket连接发生错误");
  }

  onclose() {
    console.log("WebSocket已断开");
  }

  onmessage(message) {
    // 对象遍历
    for (let [key, val] of Object.entries(message)) {
      // 拆解 key = module/state
      const [module, state] = key.split("/");
      // 为模块中的 state 赋值
      store.state[module][state] = val;
    }
  }

  send(message) {
    this.websock.send(message);
  }

  close() {
    this.websock.close();
  }

  getSocket() {
    return this.websock;
  }
}

)
code(Var)
return

::fuck::
Var =
(
/**
 * 使用方式
 * const data = { NAME: 'lee' }
 * const p = fuck(data)
 * console.log(20200923091805, p.name)
 */
const fuck = obj => {
  // 1、 解决驼峰问题：所有都转换为小写
  // 2、 解决下划线问题：移除所有下划线
  const cleanStyle = key => key.replace('_', '').toLocaleLowerCase()

  return new Proxy(data, {
    get (target, name) {
      // 精准命中
      if (name in target) return target[name]

      // 模糊搜索
      const key = Object.keys(target).find(_ => cleanStyle(_) === cleanStyle(name))

      // target
      return key ? target[key] : undefined
    }
  })
}

)
code(Var)
return


::proxy::
::es.proxy::
::es6.proxy::
Var = 
(
// 🚀 认知：proxy可以模拟 PHP的 __get 魔术函数
/**
 * 使用方式
 * const data = { NAME: 'lee' }
 * const p = fuck(data)
 * console.log(20200923091805, p.name)
 */
const fuck = obj => {
  // 1、 解决驼峰问题：所有都转换为小写
  // 2、 解决下划线问题：移除所有下划线
  const cleanStyle = key => key.replace('_', '').toLocaleLowerCase()

  return new Proxy(data, {
    get (target, name) {
      // 精准命中
      if (name in target) return target[name]

      // 模糊搜索
      const key = Object.keys(target).find(_ => cleanStyle(_) === cleanStyle(name))

      // target
      return key ? target[key] : undefined
    }
  })
}


// Proxy 比 Object.defineProperty 优势
// 模拟 Vue 配置
var VueComponent = {
  data () {
    return {
        items: [],
        title: 'HelloWorld'
    }
  },
}

// 获取状态
var data = VueComponent.data()

// 🚀 使用 Proxy 代理 data
const p = new Proxy(data, {
  get (target, name) {
    console.log('get', target, name)
    if (name in target) {
      return target[name]
    }
  },
  set(target, name, value) {
    console.log('set', target, name, value)
    target[name] = value
  }
})


p.title     // => 触发 get
p.title = 123 // => 触发 set

// 🚀 这就是 Proxy 比 Object.defineProperty 优势的地方1：哪怕不存在的变量，也可以触发 set 
p.fuck = 'fuck'

// 🚀 这就是 Proxy 比 Object.defineProperty 优势的地方2：数组成员的修改，也可以被监听
p.items[0] = 123
---
/**
 * say something ...
 *
 * 调用示例
 * 
    pobj.a
    // getting a

    ++pobj.a
    //  getting a
    //  setting a
    //  2
 */
var obj = { a: 1 }
const pobj = new Proxy(obj, {
    get(target, key, context) {
        // 注意：target === obj
        // 注意：context === pobj 
        console.log('getting', key);

        // 几乎可以确定 Proxy 和 Reflect 总是协同工作的。
        return Reflect.get(target, key, context)
    },
    set(target, key, value, receiver) {
        console.log('setting', key);
        return Reflect.set(target, key, value, receiver);
     }
})
---
var hander = {
    get(target, name, context) {
        if (name === 'prototype') {
            return Object.prototype
        }
        return 'hello, ' + name
    },
    apply(target, thisBinding, args) {
        return args
    },
    construct(target, args) {
        return { value: args }
    }
}

var fproxy = new Proxy(function (x, y) {
    return x + y
}, hander)

// 触发 apply
fproxy(1, 2) // =>  [1, 2]

// 触发 construct
new fproxy(1, 2) // => {value: Array(2)}

// 触发 get 
fproxy.prototype === Object.prototype // true

// 触发 get 
fproxy.foo // => "hello, foo"
---
<!-- proxy 模拟双向数据绑定，更多精彩内容学习：https://muyiy.cn/question/program/74.html -->
<!DOCTYPE html>
<html lang='en'>

<head>
    <meta charset='UTF-8'>
    <title>Document</title>
</head>

<body>
    <input type='text' id='input'>
    <p id='word'></p>
</body>
<script>
const input = document.getElementById('input')
const word = document.getElementById('word')
const proxy = new Proxy({}, {
    get(target, key, context) {
        return Reflect.get(target, key, context);
    },
    set(target, key, value, context) {
        if (key === 'text') {
            word.innerHTML = value;
        }
        return Reflect.set(target, key, value, context);
    }
});

input.addEventListener('keyup', function (e) {
    proxy.text = this.value
})
</script>

</html>
---
/**
 * 可取消的代理 ...
 */
var obj = { a: 1 }
var handler = {
    get(target, key, context) {
        return target[key]
    }
}

const { proxy, revoke } = Proxy.revocable( obj, handler )

proxy.a // => 1

revoke()

proxy.a // => Uncaught TypeError
---
// 代理对象，解决对象大小写问题
// 1、 解决驼峰问题：所有都转换为小写
// 2、 解决下划线问题：移除所有下划线
const cleanStyle = key => key.replace('_', '').toLocaleLowerCase()

// 判断对象
const isObject = input => input != null && Object.prototype.toString.call(input) === '[object Object]'

// 判断数组
const isArray = input => input instanceof Array || Object.prototype.toString.call(input) === '[object Array]'

/**
 * 使用方式
 * const data = { NAME: 'lee' }
 * const p = fuck(data)
 * console.log(20200923091805, p.name)
 */
const fuck = obj => {
  // 递归
  const newObj = Object.entries(obj).reduce((p, [key, val]) => (p[key] = (isObject(val) || isArray(val)) ? fuck(val) : val, p), {})

  // 代理
  return new Proxy(newObj, {
    get (target, name) {
      // 精准命中
      if (name in target) return target[name]

      // 模糊搜索
      const key = Object.keys(target).find(_ => cleanStyle(_) === cleanStyle(name))

      // target
      return key ? target[key] : undefined
    }
  })
}

const data = { NAME: 'lee', type: [{label: '123', id: 1 }] }
const p = fuck(data)
console.log(20200923091805, p.name)
console.log(20200923091805, p.type[0].ID)
)
txtit(Var)
return

::rangeDate::
::randdate::
Var =
(
 */
const rangeDate = (start, end) => {
    let days = []
    const startTime = new Date(start)
    const endTime = new Date(end)

    while(startTime <= endTime) {
        days.push(startTime.getFullYear() + '/' + startTime.getMonth() + 1 + '/' + startTime.getDate())
        startTime.setDate(startTime.getDate() + 1)
    }   

    return days
}

rangeDate('2015/2/8', '2015/3/3')
)
code(Var)
return

::ex::
::shengbei::
::holy::
::holymodel::
Var =
(
function inherit = (function () {
    // 使用IIFE可以避免总是临时创建代理构造函数F
    var F = function () {}
    // 圣杯模式
    return function (C, P) {
        // 共享模式（代理构造函数作为桥梁，避免子类修改原型进而修改父类）
        F.prototype = P.prototype
        // 共享原型
        C.prototype = new F()
        
        // 存储父类
        C.__super__ = P.prototype
        
        // 重置 constructor，否则默认是父类的
        C.prototype.constructor = C
    }
}());
)
code(Var)
return

::bind::
Var =
(
if (typeof Function.prototype.bind === 'undefined') {
    Function.prototype.bind = function (context) {
        var fn = this,
            slice = Array.prototype.slice,
            args = slice.call(arguments, 1)

        // bind 总是返回一个新的函数。
        return function () {
            // 新参数
            var newArgs = slice.call(arguments)
            // 合并新旧参数
            var params = args.concat(newArgs)
            // 执行
            return fn.apply(context, params)
        };
    }
}

---

Function.prototype.bind = function () {
    var self = this

    // 获取第一个参数，也就是代替this的『上下文』
    var context = [].shift.call( arguments )

    // 参数集
    var args = [].slice.call( arguments )

    return function () {
        // 新参数
        var new_args = [].slice.call( arguments )

        // 最终参数 = 历史参数 + 新参数
        var finall_args = [].concat.call( args, new_args )

        // 调用自己，使用新的上下文
        return self.apply( context, finall_args )
    }
}

)
code(Var)
return

::mutationsob::
::mutations::
::mutation::
::mutatio::
::domob::
::domjianting::
Var =
(
/**
 * 『回调函数』
 * mutations：节点变化记录列表（sequence<MutationRecord>）
 * observer：构造MutationObserver对象。
 * 
 * 『MutationObserver对象的三个方法』
 * observe：设置观察目标，接受两个参数，target：观察目标，options：通过对象成员来设置观察选项
 * disconnect：阻止观察者观察任何改变
 * takeRecords：清空记录队列并返回里面的内容
 *
 * 『observe方法中options参数』
 * childList：设置true，表示观察目标子节点的变化，比如添加或者删除目标子节点，不包括修改子节点以及子节点后代的变化
 * attributes：设置true，表示观察目标属性的改变
 * characterData：设置true，表示观察目标数据的改变
 * subtree：设置为true，目标以及目标的后代改变都会观察
 * attributeOldValue：如果属性为true或者省略，则相当于设置为true，表示需要记录改变前的目标属性值，设置了attributeOldValue可以省略attributes设置
 * characterDataOldValue：如果characterData为true或省略，则相当于设置为true,表示需要记录改变之前的目标数据，设置了characterDataOldValue可以省略characterData设置
 * attributeFilter：如果不是所有的属性改变都需要被观察，并且attributes设置为true或者被忽略，那么设置一个需要观察的属性本地名称（不需要命名空间）的列表
 */
const observe = new MutationObserver(function(mutations, observer) {
    // ⚠️ 只有在全部DOM操作完成之后才会调用callback
    // 📝 所以就算你进行进行 N 次操作，但实际上也只会执行一次本回调。
    console.log('hello world')
})

// 示例 1：观察节点树变化
observe.observe(target,{ childList: true, subtree: true })
target.appendChild(docuemnt.createTextNode('1'))

// 示例 2：观察值变化
observe.observe(target,{ characterData: true, childList: true, subtree: true })
target.childNodes[0].textContent = '改变文本值'

// 示例 3: 观察属性变化
observe.observe(target,{ attributeFilter: ['style'], subtree: true })
target.style = 'color:red'      // 可以观察到
target.removeAttribute('style') // 删除属性名也会观察到

// 示例 4: 停止监听
observe.disconnect()

// 示例 5: takeRecords() 获取操作历史
observe.observe(target, { childList: true })
target.appendChild(document.createTextNode('新增Text节点1'))
target.appendChild(document.createTextNode('新增Text节点2'))
target.appendChild(document.createTextNode('新增Text节点3'))
const record = observe.takeRecords()
console.log(record)

/**
 * 变动记录中的属性如下：
 *
 * type：如果是属性变化，返回"attributes"，如果是一个CharacterData节点（Text节点、Comment节点）变化，返回"characterData"，节点树变化返回"childList"
 * target：返回影响改变的节点
 * addedNodes：返回添加的节点列表
 * removedNodes：返回删除的节点列表
 * previousSibling：返回分别添加或删除的节点的上一个兄弟节点，否则返回null
 * nextSibling：返回分别添加或删除的节点的下一个兄弟节点，否则返回null
 * attributeName：返回已更改属性的本地名称，否则返回null
 * attributeNamespace：返回已更改属性的名称空间，否则返回null
 * oldValue：返回值取决于type。对于"attributes"，它是更改之前的属性的值。对于"characterData"，它是改变之前节点的数据。对于"childList"，它是null
 */

)
code(Var)
return

::qiongju::
::qiongjufa::
::meijufa::
Var =
(
/**
 * 《百钱买鸡》
 *
 * 公鸡（gj）每只5元，母鸡（mj）每只3元，三只小鸡（xj）1元，用100元买100只鸡，问公鸡、母鸡、小鸡各多少只？
 * 5 * gj + 3 * mj + 1/3 * xj = 100
 */
var gj = 0, mj = 0, xj = 0

// 公鸡最多买20只
for (var gj = 0; gj <= 20; gj++) {

    // 母鸡最多买33只
    for (var mj = 0; mj <= 33; mj++) {

        // 小鸡能购买的数量 = 极限最多100只小鸡 - 公鸡的数量 - 母鸡的数量
        xj = 100 - gj - mj;

        // 共100元的组合
        if (5 * gj + 3 * mj + xj / 3 === 100) {
            console.log(`公鸡为${gj}, 母鸡为${mj}，小鸡为${xj}`)
        }
    }
}
/*
公鸡为0, 母鸡为25，小鸡为75
公鸡为4, 母鸡为18，小鸡为78
公鸡为8, 母鸡为11，小鸡为81
公鸡为12, 母鸡为4，小鸡为84 
 */


/**
 * 《百虫大战》
 *
 * 蜘蛛有8条腿；
 * 蜻蜓有6条腿和2对翅；
 * 蝉有6条腿和1对翅；
 * 笼子里共有虫子共18只，共有118条腿和20对翅。
 * 问每种虫子各几只？  
*/

// a是蜻蜓 b是蝉 c是蜘蛛
var a = 0, b = 0, c = 0
// 蜻蜓
for (var a = 0; a * 6 <= 118 && a * 2 <= 20; a++) {
    // 蝉
    for (var b = 0; b * 6 <= 118 && b <= 20; b++) {
        // 蜘蛛
        for (var c = 0; c * 8 <= 118; c++) {
            // 符合条件
            if (a + b + c === 18 && a * 6 + b * 6 + c * 8 === 118 && a * 2 + b === 20) {
                // 输出： 7 6 5
                console.log(a, b, c)
            }
        }
    }
}
)
code(Var)
return


::da::
Var =
(
document.activeElement.blur()
)
code(Var)
return


::rgba::
::color2rgba::
::color2rgb::
Var =
(
String.prototype.colorRgb = function() {
    var sColor = this.toLowerCase();
    if (sColor && /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/.test(sColor)) {
        if (sColor.length === 4) {
            var sColorNew = "#";
            for (var i = 1; i < 4; i += 1) {
                sColorNew += sColor.slice(i, i + 1).concat(sColor.slice(i, i + 1));
            }
            sColor = sColorNew;
        }
        var sColorChange = [];
        for (var i = 1; i < 7; i += 2) {
            sColorChange.push(parseInt("0x" + sColor.slice(i, i + 2)));
        }

        const [r, g, b] = sColorChange

        return ``rgba(${r}, ${g}, ${b}, 0)``;
    } else {
        return sColor;
    }
}

var color = '#072E51';
color.colorRgb()
)
code(Var)
return

::sjx::
::sanjiaox::
::ggdl::
::sanjiao::
Var =
(
/**
 * 正弦：对边/斜边 Math.sin(-30 * Math.PI / 180)
 * 余弦：邻边/斜边 Math.cos(-30 * Math.PI / 180)
 * 正切：对边/邻边 Math.tan(-30 * Math.PI / 180)
 */

// 角度转弧度
// 弧度 = 角度 * pi / 180
var radians = degrees * Math.PI / 180

// 弧度转角度
// 角度 = 弧度 * 180 / PI
var degrees = radians * 180 / Math.PI

// 勾股定理：a^2 + b^2 = c^2
var ggdl = (a, b) => Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2))

// 勾股定理：c^2 - b^2 = a^2
var ggdl2 = (c, b) => Math.sqrt(Math.pow(c, 2) - Math.pow(b, 2))

// 通过a,b算出弧度，再转角度
var rotate = Math.atan2(b, a) * 180 / Math.PI

/* 
getWidthAndRotation (left, right) {
    const left_rect = left.getBoundingClientRect()
    const right_rect = right.getBoundingClientRect()

    const x1 = left_rect.x + left_rect.width,
          y1 = left_rect.y + left_rect.height / 2;

    const x2 = right_rect.x,
          y2 = right_rect.y + right_rect.height / 2;

    const a = x2 - x1
    const b = y2 - y1
    const c = pythagoreanTheorem(a, b)
    const rotate = Math.atan2(b, a) * 180 / Math.PI

    return { c, rotate }
},
*/
)
code(Var)
return

::babel::
::babel-cli::
Var =
(
cnpm install --save-dev @babel/core \ 
@babel/cli \ 
@babel/plugin-proposal-decorators
---
.babelrc

{
    "plugins": [
        ["@babel/plugin-proposal-decorators",
        {
            "legacy": true
        }]
    ]
}
---
./node_modules/.bin/babel index.js
)
txtit(Var)
return

::flatobj::
Var =
(
const flattenObject = (obj, prefix = '') =>
  Object.keys(obj).reduce((acc, k) => {
    const pre = prefix.length ? prefix + '.' : '';
    if (typeof obj[k] === 'object') Object.assign(acc, flattenObject(obj[k], pre + k));
    else acc[pre + k] = obj[k];
    return acc;
  }, {});

flattenObject({ a: { b: { c: 1 } }, d: 1 }); // { 'a.b.c': 1, d: 1 }
)
code(Var)
return

::mockclick::
::fakerclick::
::fakeclick::
::monidianji::
::moniclick::
Var = 
(
var evmousedown = document.createEvent('HTMLEvents');
// evmousedown.clientX = 88
// evmousedown.clientY = 18

evmousedown.initEvent('mousedown', false, true);
var evmouseup = document.createEvent('HTMLEvents');
// evmouseup.clientX = 88
// evmouseup.clientY = 18

evmouseup.initEvent('mouseup', false, true);
document.dispatchEvent(evmousedown)
document.dispatchEvent(evmouseup)
var evmouseclick = document.createEvent('HTMLEvents');
// evmouseclick.clientX = 88
// evmouseclick.clientY = 18

evmouseclick.initEvent('click', false, true);
document.dispatchEvent(evmouseclick)
document.dispatchEvent(evmouseclick)
---
export const clickOutSideByHack = () => {
    var evmousedown = document.createEvent('HTMLEvents');
    evmousedown.initEvent('mousedown', false, true);
    document.dispatchEvent(evmousedown)

    var evmouseup = document.createEvent('HTMLEvents');
    evmouseup.initEvent('mouseup', false, true);
    document.dispatchEvent(evmouseup)
    
    var evmouseclick = document.createEvent('HTMLEvents');
    evmouseclick.initEvent('click', false, true);
    document.dispatchEvent(evmouseclick)
}
)
txtit(Var)
return

::yidadaixiao::
Var = 
(
/**
 * 以大带小
 *
 *  const data = drive(newV.data, (a, b) => +a.amount - +b.amount)
 *  this.render(data)
 */
var drive = (ary, fn) => {
    // 数组长度
    const len = ary.length
    // 偶数长度
    const isEven = len `% 2 === 0
    // 从大到小排序
    const _ary = ary.sort(fn)
    // 循环的次数
    const time = isEven ? len / 2 : Math.floor(len / 2) + 1
    // 返回新的数组
    return [...Array(time)].reduce((previousValue, currentValue, index) => {
        // 是否循环的最后一次
        const isLastTime = index === time - 1
        // 如果是奇数的，且最后一次的情况下
        if (!isEven && isLastTime) {
            // 没人可带，带我自己就够了
            return [...previousValue, _ary[index]]
        // 默认都带一个小弟
        } else {
            // 带上小弟
            return [...previousValue, _ary[index], _ary[len - 1 - index]]
        }
    }, [])
}
)
code(Var)
return

::ctx::
::require::
::context::
::webpack4::
:?:webpack.req::
:?:webpack.require::
:?:webpack.ctx::
:?:webpack.context::
::auto::
::zidong::
::dongtai::
::dongtaidaoru::
::dongtaiyinru::
::import::
Var =
(
<template>
    <div class='layout'>
        <component :is='tool' v-if='tool'></component>
    </div>
</template>

<script>

export default {
    name: 'Layout',
    watch: {
      '$route': {
          deep: true,
          immediate: true,
          handler (newV, oldV) {
            // 获取当前路由名称
            const name = newV.name || 'Index'
            // 设置当前工具栏
            this.tool = () => import(`@/components/tools/${name}`)
          }
      }
    },
}
</script>
---
import Vue from 'vue'

/**
 * 1. directory {String} -读取文件的路径
 * 2. useSubdirectories {Boolean} -是否遍历文件的子目录
 * 3. regExp {RegExp} -匹配文件的正则
 */
const VueComponent = require.context('.', true, /\.vue$/)

// 准备导出的模块
let __Material__ = {}

// 不包含，排除的模块列表
const exclude = _ => !['./Index.vue'].includes(_)

// 1. 必须使用 key() 获取所有路径
// 2. 使用 VueComponent(path).default 获取真实模块内容
VueComponent.keys().filter(exclude).forEach(path => {
    // 获取 『文件名』 和 『后缀名』
    const [name, ext] = path.substring(path.lastIndexOf('/') + 1).split('.')

    // 目标文件的输出内容
    const output = VueComponent(path).default

    // 以 『文件名』 为 key，模块内容为 value
    __Material__[name] = Vue.extend(output)

    // fixbug: Chart.name === "VueComponent" 是会出问题的，所以加入一个自定义变量来判断吧
    __Material__[name].isMaterial = true
})

export default __Material__
---
import Vue from 'vue'
/**
 * 1. directory {String} -读取文件的路径
 * 2. useSubdirectories {Boolean} -是否遍历文件的子目录
 * 3. regExp {RegExp} -匹配文件的正则
 */
const VueComponent = require.context('.', true, /\.vue$/)

// 准备导出的模块
let __Material__ = {}

// 1. 必须使用 key() 获取所有路径
// 3. 使用 VueComponent(path).default 获取真实模块内容
VueComponent.keys().forEach(path => {
    // 获取 『文件名』 和 『后缀名』
    const [name, ext] = path.substring(path.lastIndexOf('/') + 1).split('.')

    // 目标文件的输出内容
    const output = VueComponent(path).default

    // 以 『文件名』 为 key，模块内容为 value
    __Material__[name] = Vue.extend(output)
})

export default __Material__
---
/**
 * 1. directory {String} -读取文件的路径 
 * 2. useSubdirectories {Boolean} -是否遍历文件的子目录
 * 3. regExp {RegExp} -匹配文件的正则  
 */
const charts = require.context('.', true, /\.js$/)

// 准备导出的模块
let __CHARTS__ = {}

/**
 * 1. 必须使用 key() 获取所有路径
 * 2. 我获取了除了 ./Chart.js 和 ./index.js 以外所有模块js内容
 * 3. 使用 charts(path).default 获取真实模块内容
 */
charts.keys().filter(path => path.lastIndexOf('/') != 1).forEach(path => {
    // 获取 『文件名』 和 『后缀名』
    const [name, ext] = path.substring(path.lastIndexOf('/') + 1).split('.')

    // （重点）获取模块
    const module = charts(path)

    // 兼容 es6 import export 和 CMD require module.export 两种规范
    const __MODULE__ = module.default || module

    // 以 『文件名』 为 key，模块内容为 value
    __CHARTS__[name] = __MODULE__
})

export default __CHARTS__
---
/**
 * 1. directory {String} -读取文件的路径
 * 2. useSubdirectories {Boolean} -是否遍历文件的子目录
 * 3. regExp {RegExp} -匹配文件的正则
 */
const _store = require.context('@/pages', true, /store\.js$/)

/**
 * 1. 必须使用 key() 内置方法获取所有路径。
 */
const __STORE__ = _store.keys().reduce((obj, path) => {
    // 获取模块名: "./City/store.js" => City
    const name = path.substring(2, path.lastIndexOf('/'))

    // （重点）获取模块内容
    const module = _store(path)

    // 兼容 es6 import export 和 CMD require module.export 两种规范
    const __MODULE__ = module.default || module

    // 以 『文件名』 为 key，模块内容为 value
    obj[name] = __MODULE__

    return obj
}, {})
---
import Vue from 'vue'

// ✍️ 请无视这段代码，这是为了修复 jest 测试的补丁
// fixbug: jest => TypeError: require.context is not a function
// https://stackoverflow.com/questions/38332094/how-can-i-mock-webpacks-require-context-in-jest
// This condition actually should detect if it's an Node environment
if (typeof require.context === 'undefined' && process.env.NODE_ENV === 'test') {
    const fs = require('fs')
    const path = require('path')

    require.context = (base = '.', scanSubDirectories = false, regularExpression = /\.js$/) => {
        const files = {};

        function readDirectory(directory) {
            fs.readdirSync(directory).forEach((file) => {
                const fullPath = path.resolve(directory, file);

                if (fs.statSync(fullPath).isDirectory()) {
                    if (scanSubDirectories) readDirectory(fullPath);

                    return;
                }

                if (!regularExpression.test(fullPath)) return;

                files[fullPath] = true;
            });
        }

        readDirectory(path.resolve(__dirname, base));

        function Module(file) {
            return require(file);
        }

        Module.keys = () => Object.keys(files);

        return Module;
    };
}

/**
 * 1、点击的时候异步注册和异步加载。需要有个加载 loading。
 * 2、只注册一次。并且加入到 body，再次点击的时候需要判断是否已注册过。
 * 3、关闭不会摧毁。
 * 4、每一个 module 都有一个自己的 store.js。
 * 5、启动的时候自动去请求 store.js 里面的规则。所以最好是用 mixins 来使用。
 * 6、列表使用 class model
 * 
 * import modules from '@/modules'
 * Vue.properties.layer = window.layer = modules
 * 
 * layer.open('moduleName')
 * this.layer.open('moduleName')
 * window.layer.open('moduleName')
 */

/**
 * 1. directory {String} -读取文件的路径
 * 2. useSubdirectories {Boolean} -是否遍历文件的子目录
 * 3. regExp {RegExp} -匹配文件的正则
 */
const VueComponent = require.context('.', true, /\.vue$/)

// 导出的模块
let __Material__ = {}

// 1. 必须使用 key() 获取所有路径
// 2. 使用 VueComponent(path).default 获取真实模块内容
VueComponent.keys().forEach(path => {
    // fixbug: window 和 unix 路径符号的区别
    const p = path.replace(/\\/g, '/')

    // 获取「目录名」
    const name = p.match(/\/(\w+?)\/\w+.vue/)[1]

    // 目标文件的输出内容
    const component = VueComponent(p).default

    // 以 『文件名』 为 key
    __Material__[name] = { component, initInstance: null }
})

)
txtit(Var)
return

::pm::
::callhell::
Var =
(
/**
 * 将回调地狱转换为 Promise 形式
 * https://blog.csdn.net/SEAYEHIN/article/details/88663740
 * raw：
    wx.downloadFile({
        url: this.data.curImg,
        success: res => {
            console.log(20191121213856, res)
        }
    })

  now：
    async go() {
        const downloadFile = app.pm(wx.downloadFile)
        const res = await downloadFile({ url: this.data.curImg })
        console.log(20191121212742, res)
    }

  fixbug：  『this._invokeMethod is not a function』 —— 用.bind(ctx) 的方式解决
  const takePhoto = app.pm(this.ctx.takePhoto)
  await takePhoto() // this._invokeMethod is not a function

  原因其实也简单，执行的时候上下文不是实例本身，所以我们还给它即可。
  this.ctx = wx.createCameraContext()
  const takePhoto = app.pm(this.ctx.takePhoto.bind(this.ctx))
  await takePhoto()

  const wxlogin = app.pm(wx.login)
  const getImageInfo = app.pm(wx.getImageInfo)
  const canvasToTempFilePath = app.pm(wx.canvasToTempFilePath)
  const request = app.pm(wx.request)
  const getLocation = app.pm(wx.getLocation)
  const showModal = app.pm(wx.showModal)
  const chooseLocation = app.pm(wx.chooseLocation)
  const downloadFile = app.pm(wx.downloadFile)
  const chooseImage = app.pm(wx.chooseImage)
  const uploadFile = app.pm(wx.uploadFile)
  const requestPayment = app.pm(wx.requestPayment)
 */
const pm = api => (options, ...params) => new Promise((resolve, reject) => api({ ...options, success: resolve, fail: reject }, ...params))
)
code(Var)
return

::hook::
::hock::
Var =
(
/**
 * https://www.netlify.com/blog/2019/03/11/deep-dive-how-do-react-hooks-really-work/
 * raw: 
   function useState(initialValue) {
     var _val = initialValue 

     function state() {
       return _val 
     }

     function setState(newVal) {
       _val = newVal 
     }

     return [state, setState] 
   }
 */
const useState = (state) => [() => state, newV => state = newV]
const [foo, setFoo] = useState(0) 
console.log(foo()) 
setFoo(1)
console.log(foo()) 
)
txtit(Var)
return



::expl::
::explain::
::deepget::
Var =
(
function deepGet(obj, path) {
    // 分解路径
    const p = path.split('.')

    // 层层剖解
    while(p.length) {
        // 从左往右取出路径
        const k = p.shift()

        // 获取当前路径的值
        obj = obj[k]
    }
    
    // 返回最后一层
    return obj
}

var obj = {
    "a": {
        "b": {
            "c": {
                "d": 123
            }
        }
    }
}
deepGet(obj, 'a.b.c.d') // 123
)
code(Var)
return

::loadingdec::
Var =
(
// loading 装饰器
var loadingDec = (fn, loading = false) => [_ => loading, async (...args) => {
    // 开启Loading
    loading = true
    // 等待函数执行结果
    const result = await fn(...args)
    // 关闭loading
    loading = false
    // 返回结果
    return result
}]

// 测试函数
var test = () => new Promise(resolve => setTimeout(_ => resolve('success'), 5000))

// 装饰函数，返回loading查询器和装饰后的函数
var [isloading, _test] = loadingDec(test)

console.log(isloading()) // => false
_test()
console.log(isloading()) // => true
---
// loading 装饰器（推荐）
var loadingDec = (fn, loading = false) => {
    // 装饰函数
    const _fn = async (...args) => {
        // 开启Loading
        loading = true
        // 等待函数执行结果
        const result = await fn(...args)
        // 关闭loading
        loading = false
        // 返回结果
        return result
    }

    // 加入对 loading 属性的监听
    Object.defineProperty(_fn, 'loading', { enumerable: true, configurable: true,
        get() {
            return loading
        },
        set(newVal) {
            if (loading === newVal)
                return

            loading = newVal
        }
    })

    // 返回高阶函数
    return _fn
}

// 模拟后端请求
var test = () => new Promise((resolve, reject) => setTimeout(_ => resolve('success'), 3000))
// 装饰函数
const _test = loadingDec(test)

// 开始测试
console.log(_test.loading) // => false
_test()
console.log(_test.loading) // => true
)
txtit(Var)
return

::isVR::
::isvisual::
::iskeshi::
Var =
(
var pageY = e => {
    if (e.offsetParent) {
        return e.offsetTop + pageY(e.offsetParent)
    } else {
        return e.offsetTop
    }
}

var isVisualRange = e => {
    // 页面滚动条 Top 值
    var scrollTop = document.documentElement.scrollTop || document.body.scrollTop

    // 可视范围内底部高度
    var scrollBottom = scrollTop + document.documentElement.clientHeight

    // 顶部位置
    var eTop = pageY(e)

    // 底部位置
    var eBottom = eTop + e.offsetHeight

    // 判断元素是否在可视范围内：
    // 1. 元素底部高度大于可视视图顶部高度 && 元素底部高度小于可视视图底部高度
    // 2. 元素顶部高度大于可视视图顶部高度 && 元素顶部高度小于可视视图底部高度
    if ((eBottom > scrollTop && eBottom < scrollBottom) || (eTop > scrollTop && eTop < scrollBottom)) {
        return true
    }

    // 不满足条件则返回 false
    return false
}
)
code(Var)
return

::is-url::
::isurl::
Var =
(
export const isURL = str => /^(http(s?):)?\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?`%\-&_~`@[\]\’:+!]*([^<>\"\"])*$/.test(str)
)
code(Var)
return



::maps::
Var =
(
// 判断是否为函数
const isFunction = v => Object.prototype.toString.call(v) === '[object Function]'

// map 方法只能返回一个参数，这个方法是用来返回多个的。
Array.prototype.maps = function(...args) {
    // 初始化空数组，这是一个二维数组，长度与参数一致
    let ary = args.map(_ => [])

    // 开始遍历自身
    this.forEach((val, index, array) => {
        // 依次执行 fn
        for (let i = 0, len = args.length; i < len; i++) {
            // 获取当前函数
            const fn = args[i]
            // 调用函数，如果不是函数的话，就直接返回本身
            const result = isFunction(fn) ? fn(val, index, array) : fn
            // 插入第n个里边
            ary[i].push(result)
        }
    })

    // 返回最终结果
    return ary
}

const list = [{ a: 'a1', b: 'b1' }, { a: 'a2', b: 'b2' }, ]
const [a, b] = list.maps(_ => _.a, _ => _.b)
console.log(a, b)
)
code(Var)
return

::fanzhuan::
Var =
(
// 反转函数参数
const reverse_args = fn => (...args) => fn(...args.reverse())

// test1
const test = (a, b, c) => console.log(20191218110213, a, b, c)
test(1,2,3)

// test2
const _test = reverse_args(test)
_test(1,2,3)
)
code(Var)
return

::iecharts::
::iechart::
Var =
(
var o = document.createElement('script');
o.src = 'https://lib.baomitu.com/echarts/4.1.0/echarts.min.js';
document.documentElement.appendChild(o); // console.log(echarts.version)
)
code(Var)
return

::wish::
Var =
(
const wish = (v, t) => {
    // 数据类型
    if ([ String, Number, Boolean, Array, Object, Set, Map, WeakMap, WeakSet, Symbol ].includes(t)) {
        console.assert(v.constructor === t, v)  

    // 函数
    } else if (is(Function, v)) {
        console.assert(t(v), v)

    // 常量
    } else {
        console.assert(v === t, v)
    }
}
)
code(Var)
return

^+/::
Var = 
(
/**
 * say something ...
 *
 * @param  {Number}   say something ...
 * @param  {String}   say something ...
 * @param  {Object}   say something ...
 * @param  {Array}    say something ...
 * @param  {Boolean}  say something ...
 * @param  {Function} say something ...
 * @return {String}   say something ...
 */
)
code(Var)
return

>^/::
Var = 
(
/**
 * say something ...
 *
 */
)
code(Var)
return

::lstest::
::lgtest::
Var =
(
(function(sum = '') {
    // 1kb 
    const unit = (function poll(num) {
        return num.length == 10240 ? num : poll(num += num)
    }('0123456789'))
    // 轮询
    const timer = setInterval(function() {
        const prev = sum
        // 叠加字符串
        sum += unit
        // 开始
        try {
            // 先删除旧的缓存，这样会加快测试速度
            window.localStorage.removeItem('test')
            // 设置新缓存
            window.localStorage.setItem('test', sum)
            // 打印当前进度
            console.log(sum.length / 1024 + 'KB')
        } catch (e) {
            // （可选）保存最后一次可行的缓存
            window.localStorage.setItem('test', prev)
            // 打印出总缓存大小
            console.log(sum.length / 1024 + 'KB超出最大限制')
            // 清除定时器
            clearInterval(timer)
        }
    }, 1)
}())
)
code(Var)
Return

::methods::
Var =
(
methods: {
    handler (v) {
      console.log(20190627160125, v)
    }
},
)
code(Var)
return

::removedom::
Var =
(
el.parentNode.removeChild(el))
)
code(Var)
return

::sb::
InputBox, OutputVar, title, enter a name?,,,,,,,,test
Var =
(
// %OutputVar%
storiesOf('%OutputVar%', module).addParameters({
	readme: {
		sidebar: %OutputVar%.__docs
	}
}).add('%OutputVar%', () => ({
    components: { %OutputVar% },
    template: ``<%OutputVar%></%OutputVar%>``,
}))
)
code(Var)
return

::me::
Var =
(
module.exports = function ({ config }) {
    
}
)
code(Var)
Return

::wo::
Var =
(
window.onload = function () {
	
}
)
code(Var)
return

::findobj::
Var =
(
const findObj  = (obj, condition) => {
  for (let [key, ele] of Object.entries(obj)) {
      if (condition(key, ele)) {
        return ele
      }
  }
}
)
code(Var)
return

::mydata::
Var =
(
myData () {
    this.loading = true
    this.$store.dispatch('Collection/collectIndex', {
      queryType: 2,
      le_synStartTime: this.starttime,
      ge_synStartTime: this.endtime,
      size: 10,
      page: this.page,
    }).then(({ message, code, data } = {}) => {
      this.loading = false
      if (code === 200) {
        for (let [key, ele] of Object.entries(data)) {
            this.items[key].count = ele
        }
      } else {
        this.$message(message || '数据异常')
      }
    }).catch(err => {
      this.loading = false
    });
)
code(Var)
return

::IIFEi::
::iifet::
::iifetimer::
::iifetimeri::
Var =
(
const timer = (function(fn, t) {
	// 立即执行一次，这也是这个IIFE的目的：为了解决 setInterval 首次不执行的尴尬
	fn && fn()
	// 返回计时器timer
	return setInterval(fn, t)
})(f, 6000)
)
code(Var)
return

::request.js::
::req.js::
::requestjs::
::reqjs::
Var =
(
import Qs from 'qs'
import axios from 'axios'
import { dateYYYYMMDDHHmmss, logs, waitWhen, encryption } from './utils.js'
import isEqual from 'lodash/isEqual'

const __API__ = process.env.NODE_ENV === 'development' ? '/api/' : '/fyvis/visual/'

// 请求队列
let pending = []

// 添加请求拦截器，动态设置参数
axios.interceptors.request.use(async config => {
    // 获取参数详情
    const { method, params, data, lazy, noRepeat = true } = config

    // 加密（url + params + data）（用来标识请求的唯一性，用来判断是否重复请求）
    const id = encryption({ url, params, data })

    // 获取索引
    const [url, note] = config.url.split('|')

    // 以防万一，记录一下带有注释的 url
    config.noteURL = config.url

    // 过滤url的文本注释
    config.url = url

    // 加入备注
    config.note = note

    // 加入 id（用来标识请求的唯一性，用来判断是否重复请求）
    config.id = id

    // 🔴 懒模式 - 60s 内等待队列为空才进行，查询的间隔是 100ms 一次，每次只能进行一条。
    if (lazy) await waitWhen(_ => pending.length === 0, 60 * 1000, 100)

    // （默认开启「去重」）如果需要去重复, 则中止队列中所有相同请求地址的 xhr
    noRepeat && pending.forEach(_ => _.id === id && _.cancel('⚔️ kill repeat xhr：' + config.noteURL))

    // 配置 CancelToken
    config.cancelToken = new axios.CancelToken(cancel => {
        const newPeding = { id, cancel }
        // 移除所有中止的请求，并且将新的请求推入缓存
        pending = [...pending.filter(_ => _.id != id), newPeding]
    })

    // 返回最终配置
    return config
})

// 响应拦截器
axios.interceptors.response.use(res => {
    // 获取请求配置
    const { method, url, params, data, status, note, noteURL, id } = res.config

    // 如果需要打印日志的话
    if (true) {
        // 获取参数
        const p = JSON.stringify(method === 'get' ? params : data)
        // 获取请求时间
        const date = dateYYYYMMDDHHmmss(Date.now())
        // 打印请求结果和详情
        logs(``${note}${method.toUpperCase()}：${url}``, res.data, JSON.stringify({params: method === 'get' ? params : data , result: data, status }, null, '\t'))
    }

    // 成功响应之后清空队列中所有相同 Url 的请求
    pending = pending.filter(_ => _.id != id)

    // 只返回 data 即可
    return res.data
}, error => {
    // 获取报文
    const res = error.response
    // 如果存在报文，才进行清空。
    if (res) {
        // 直接清空列表
        pending = pending.filter(_ => _.id != res.config.id)
    }
    // 可以输出：error.response
    return Promise.reject(error)
})

export const GET = (url = '', params = {}, config = {}) => axios({ method: 'GET', url: __API__ + url, params, ...config })

export const POST = (url = '', data = {}, config = {}) => axios({ method: 'POST', url: __API__ + url, data, ...config })

export const FORM_POST = (url = '', data = {}, config = {}) => axios({ method: 'POST', url: __API__ + url, data: Qs.stringify(data), headers: { 'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'}, ...config })
---
import axios from 'axios'
import store from '../store'
import hash from 'hash.js'
import router from '@/router'
import fn_moment from 'moment'
import localforage from 'localforage'
import { Message } from 'element-ui'
import { maybe, isEmptyObject, throttle, catchErr } from '../utils/utils'


localforage.config({
    driver: [localforage.WEBSQL, localforage.INDEXEDDB, localforage.LOCALSTORAGE],
    name: 'WebSQL-Rox',
    size: 1024 * 1024
});

// 请求队列
let pending = []

// 登陆状态失效，弹出错误提示并且跳转到登陆页面
const tokenError = () => {
    router.push('/login')
    Message('请先登录')
    throw new Error('请先登录')
}

// 获取纯Url，不包含?后面的参数
const getPureUrl = (url, start = 0) => {
    const index = url.indexOf('?')
    const pureUrl = url.substr(0, ~index ? index : url.length)
    return pureUrl.substr(start)
}

const getCommonParams = () => {
    // 从vuex中获取当前日月报类型
    const reportType = store.state.reportType

    // 从vuex中取出数据，并根据当前日月报类型，取具体的日月报时间
    let moment = ''
    let startMoment = ''
    let endMoment = ''

    // （新）月报
    if (reportType === 'month') {
        moment = store.state.reportMonth
        startMoment = endMoment = fn_moment(moment).format('YYYYMM')
        // 日报
    } else if (reportType === 'day') {
        endMoment = startMoment = moment = store.state.reportDay
        // 区域月份
    } else if (reportType === 'range') {
        [startMoment, endMoment] = store.state.reportRangeMoment
    }

    // 获取当前的模式：ZW是智网，HL是热线
    const subId = store.state.title.includes('专题情况') === true ? '' : store.state.mode

    return { subId, reportType, moment, startMoment, endMoment }
}

// 函数节流，3秒之内只会执行一次。不会重复执行。
// leading 为 true时，第一次执行立即触发，这比setTimeout好多了
// trailing 为 fasle时，不会触发最后一次。这样比较符合直觉。
const _tokenError = throttle(tokenError, 3000, { leading: true, trailing: false })

// 添加请求拦截器，动态设置参数
axios.interceptors.request.use(config => {
    // 判断是否登录（登录接口本身除外）
    if (!config.url.includes('login') && !store.state.AppData.token) {
        // 登陆状态失效，弹出错误提示并且跳转到登陆页面
        _tokenError()
    }

    // 合并请求头 authority-token
    config.headers = Object.assign({}, config.headers, { 'authority-token': store.state.AppData.token || '' })

    // 中文转为decode编码
    config.url = encodeURI(config.url)

    // 设置公共URL http://12345v1.dgdatav.com:6080/api
    config.baseURL = '/api'

    // 设置公共GET参数(由于本项目的后端接口只有GET请求,所以只需要处理GET请求即可，如果需要POST则设置data参数)
    config.params = Object.assign({}, getCommonParams(), config.params)

    // 获取纯Url（不包含?后面的参数）(也不包含baseURL的前缀)
    const pureUrl = getPureUrl(config.url)

    // 如果需要去重复（默认noRepeat为 'on'，即开启去重复），则中止队列中所有相同请求地址的xhr
    config.noRepeat === 'on' && pending.forEach(_ => _.url === pureUrl && _.cancel('repeat abort' + pureUrl))

    // 配置 CancelToken
    config.cancelToken = new axios.CancelToken(cancel => {
        // 移除所有中止的请求，并且将新的请求推入缓存
        pending = [...pending.filter(_ => _.url != pureUrl), { url: pureUrl, cancel }]
    })

    // __FUCK__
    // 这是一种约定的标记，写在URL末尾，比如 http://www.baidu.com__A__?foo=bar
    // 你需要先理解我是如何去重复的，才能理解这个解决方案。
    // 在之前的去重复方案中，我是只取 ？ 之前的URL。 这样确保不管你什么参数，我都可以去重复。
    // 但随之而来又有问题了。如果我就是有两个地方使用相同的URL，但依然需要去重复怎么办呢？
    // 解决方案很单纯：另一个加一个标识，比如__FUCK__，这样就和另一个URL不相同了。而请求的时候，再移除 __FUCK__即可。
    config.url = config.url.replace(/__(.+?)__/g, '')

    // 返回最终配置
    return config
})

// 响应拦截器
axios.interceptors.response.use(res => {
    // 成功响应之后清空队列中所有相同Url的请求
    pending = pending.filter(_ => _.url != getPureUrl(res.config.url, res.config.baseURL.length))
    // 返回 response
    return res
}, error => {
    return Promise.reject(error)
});

// 错误处理
const _catchErr = err => {
    // 如果是重复请求的问题，这是我自己暴漏出来的，并不需要出现error。吓唬人。
    if (err.message.includes('repeat abort')) {
        // 提示一下即可
        console.warn(err.message)
    } else {
        // 弹出错误
        catchErr(err)
    }
}

// 检查状态码
const checkStatus = (response) => {
    // 判断请求状态
    if (response.status >= 200 && response.status < 300) {
        // 返回Promise 
        return response.data
    } else {
        // 服务器响应异常
        throw new Error(response.statusText)
    }
}

// 缓存到localforage
const cachedSave = (hashcode, content) => {
    // 返回code500是后端固定的报错反馈 && 不能为空对象 && 数据的小于2M
    // && (JSON.stringify(content).length / 1024).toFixed(2) < 2048
    // fixbug: 当天的数据不保存，否则会出现问题
    if (content.code != 500 && !isEmptyObject(content) && !store.getters.IS_TODAY) {
        // 设置缓存
        localforage.setItem(hashcode, JSON.stringify(content)).catch(err => {
            console.log('cache err', err)
            // 说明内存满了，直接清空
            if (err.message.includes('quota')) localforage.clear()
        })
        // 设置缓存时间
        localforage.setItem(``${hashcode}:timestamp``, Date.now()).catch(err => {
            console.log('cache err', err)
            // 说明内存满了，直接清空
            if (err.message.includes('quota')) localforage.clear()
        })
    }

    // 返回Promise
    return content
}

// 公共请求
export const request = async (url, options = {}) => {
    // 指纹（必须加入日月报来做区别。）
    const fingerprint = url + JSON.stringify(options) + JSON.stringify(getCommonParams())
    // 加密指纹
    const hashcode = hash.sha256().update(fingerprint).digest('hex')
    // 预设值指纹
    const _cachedSave = cachedSave.bind(null, hashcode)
    // 过期设置（默认一天缓存）
    const expirys = options.expirys || 60 * 60 * 24
    // fixbug: 如果是当天，需要不断的重复请求，如果你请求回来是缓存，那还玩个猫。所以，如果是当天的话，禁止使用缓存
    if (expirys !== false && !store.getters.IS_TODAY) {
        // 获取缓存
        const cached = await localforage.getItem(hashcode)
        // 获取该缓存的时间
        const whenCached = await localforage.getItem(`${hashcode}:timestamp`)
        // 如果缓存都存在（如果希望只有生产模式才开启那么就加入这个判断条件) && process.env.NODE_ENV === 'production'
        if (cached !== null && whenCached !== null) {
            // 判断缓存是否过期
            const age = (Date.now() - whenCached) / 1000
            // 如果不过期的话直接返回该内容
            if (age < expirys) {
                console.log('🚀 use cache')
                // fixbug: 就算我使用的是缓存，我也要杀死正在请求的同类。
                const pureUrl = getPureUrl(url)
                // 如果需要去重复（默认noRepeat为 'on'，即开启去重复），则中止队列中所有相同请求地址的xhr
                options.noRepeat !== 'off' && pending.forEach(_ => _.url === pureUrl && _.cancel('repeat abort even i just a cache：' + pureUrl))
                // 新建一个response
                const response = new Response(new Blob([cached]))
                // 返回promise式的缓存
                return new Promise((resolve, reject) => resolve(response.json()))
            }
            // 删除缓存内容
            localforage.removeItem(hashcode)
            // 删除缓存时间
            localforage.removeItem(`${hashcode}:timestamp`)
        }
    }
    // 设置 noRepeat 默认为 true，即默认是去重复的。
    options.noRepeat = options.noRepeat || 'on'
    // 正式开始请求
    return axios(url, options).then(checkStatus).then(_cachedSave).catch(_catchErr)
}
---
import Qs from 'qs'
import axios from 'axios'
import router from '@/router'
import store from '@/store'
import { Notify } from 'vant'
import { dateYYYYMMDDHHmmss, logs, throttle } from './utils.js'

// 是否需要打印请求日志
const LOG = true

const __API__ = process.env.NODE_ENV === 'development' ? '/api/' : '/h5/'

const __ADMIN__ = process.env.NODE_ENV === 'development' ? '/admin/' : '/h5/'

const isAdmin = () =>  window.location.href.includes('admin')

const isLogin = () =>  window.location.href.includes('login')

// 登陆状态失效，弹出错误提示并且跳转到登陆页面
const tokenError = () => {
    // 只有非登录页才需要这样提示
    if (isLogin() === false) {
        router.push('/login')
        Notify('请先登录')
        store.dispatch('REMOVE_TOKEN')
        throw new Error('请先登录')
    }
}

const _tokenError = throttle(tokenError, 500, { leading: true, trailing: false })

// 响应拦截器
axios.interceptors.response.use(res => {
    // 如果需要打印日志的话
    if (LOG) {
        // 获取请求配置
        const { method, url, params, data, status } = res.config
        // 获取请求时间
        const date = dateYYYYMMDDHHmmss(Date.now())
        // 打印请求结果和详情
        logs(`${method.toUpperCase()}：${url}`, res.data, JSON.stringify({ params: method === 'get' ? params : data, result: res.data, status }, null, '\t'))
    }
    // 只返回 data 即可
    return res.data
}, error => {
    const { status, data } = error.response

    // 登陆失效
    if (status === 500 && data.code === 20019) {
        _tokenError()
    }

    return Promise.reject(error.response)
})

// 添加请求拦截器，动态设置参数
axios.interceptors.request.use(config => {
    // 判断是否登录（登录接口本身除外）
    // fixbug: 只有 admin 页面才需要进行这个判断
    if (isAdmin() && !config.url.includes('login') && !store.state.tokenId) {
        // 登陆状态失效，弹出错误提示并且跳转到登陆页面
        _tokenError()
    }

    // 合并请求头 authority-token
    config.headers = Object.assign({}, config.headers, { 'authority-token': store.state.tokenId || '' })

    // 返回最终配置
    return config
})

export const POST = (url = '', data = {}) => axios({ method: 'POST', url: __API__ + url, data})

export const FORM_POST = (url = '', data = {}) => axios({ method: 'POST', url: __API__ + url, data: Qs.stringify(data), headers: { 'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'} })

export const GET = (url = '', params = {}) => axios({ method: 'GET', url: __API__ + url, params})

export const POST_ADMIN = (url = '', data = {}) => axios({ method: 'POST', url: __ADMIN__ + url, data})

export const FORM_POST_ADMIN = (url = '', data = {}) => axios({ method: 'POST', url: __ADMIN__ + url, data: Qs.stringify(data), headers: { 'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'} })

export const GET_ADMIN = (url = '', params = {}) => axios({ method: 'GET', url: __ADMIN__ + url, params})
---
import Qs from 'qs'
import axios from 'axios'
import { dateYYYYMMDDHHmmss, logs, diffSet } from './utils.js'

const __API__ = process.env.NODE_ENV === 'development' ? '/api/' : '/fyvis/visual/'

// 请求队列
let pending = []

// 添加请求拦截器，动态设置参数
axios.interceptors.request.use(config => {
    // 获取参数详情
    const { method, params, data, noRepeat = true } = config
    
    // 获取索引
    const [url, note] = config.url.split('|')

    // 以防万一，记录一下带有注释的 url
    config.noteURL = config.url

    // 过滤url的文本注释
    config.url = url

    // 加入备注
    config.__NOTE__ = note

    // （默认开启「去重」）如果需要去重复, 则中止队列中所有相同请求地址的 xhr
    // 🔔 请注意，我这里故意使用「config.noteURL」，因为我要利用 「"|" 注释」来区分相同的 api
    noRepeat && pending.forEach(_ => _.url === config.noteURL && _.cancel('⚔️ kill repeat xhr：' + config.noteURL))

    // 配置 CancelToken
    config.cancelToken = new axios.CancelToken(cancel => {
        // 移除所有中止的请求，并且将新的请求推入缓存
        pending = [...pending.filter(_ => _.url != config.noteURL), { url: config.noteURL, cancel }]
    })

    // 返回最终配置
    return config
})

// 响应拦截器
axios.interceptors.response.use(res => {
    // 如果需要打印日志的话
    if (true) {
        // 获取请求配置
        const { method, url, params, data, status, __NOTE__ } = res.config
        // 获取参数
        const p = JSON.stringify(method === 'get' ? params : data)
        // 获取请求时间
        const date = dateYYYYMMDDHHmmss(Date.now())
        // 打印请求结果和详情
        logs(`${__NOTE__}${method.toUpperCase()}：${url}`, res.data, JSON.stringify({params: method === 'get' ? params : data , result: res.data, status }, null, '\t'))
    }

    // 成功响应之后清空队列中所有相同Url的请求
    pending = pending.filter(_ => _.url != res.config.noteURL)

    // 只返回 data 即可
    return res.data
}, error => {
    // 可以输出：error.response
    return Promise.reject(error)
})

export const GET = (url = '', params = {}, config = {}) => axios({ method: 'GET', url: __API__ + url, params, ...config })

export const POST = (url = '', data = {}, config = {}) => axios({ method: 'POST', url: __API__ + url, data, ...config })

export const FORM_POST = (url = '', data = {}, config = {}) => axios({ method: 'POST', url: __API__ + url, data: Qs.stringify(data), headers: { 'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'}, ...config })

export const SET = diffSet
---
export const dateYYYYMMDDHHmmss =  t => {
    const date = new Date(t)
    const year = date.getFullYear()
    const month = date.getMonth() + 1
    const day = date.getDate()
    const hours = date.getHours()
    const minu = date.getMinutes()
    const second = date.getSeconds()
    const arr = [month, day, hours, minu, second].map((item, index) => item < 10 ? '0' + item : item)
    return year + '-' + arr[0] + '-' + arr[1] + ' ' + arr[2] + ':' + arr[3] + ':' + arr[4]
}
// 折叠日志
export const logs = (info = '', ...args) => {
    console.groupCollapsed(info)
    args.forEach(_ => console.log(_))
    console.groupEnd()
}
)
txtit(Var)
return

::showerr::
::showerror::
::errimg::
::errorimg::
Var =
(
<div style="text-align: center;">
    <img src="http://wx2.sinaimg.cn/mw690/006ar8zggy1g0jlcpykdsj30et0eut8t.jpg" width="100" alt="..."  />
    <p>服务器异常，请稍后<a href="javascript:;" style='color: blue;text-decoration: none;' onclick='retry()'>重试</a></p>    
</div>

<script>
function retry() {
    
}
</script>
)
code(Var)
return

::islocal::
Var =
(
const baseUrl = (function(){
	if (window.location.origin === 'file://' || ~window.location.host.indexOf("localhost") || ~window.location.host.indexOf("192.168")) {
		return 'http://12345v1.dgdatav.com:6080'
	} else {
		return '/api'
	}
}());
)
code(Var)
return

::TF::
::TF()::
::T()::
::F()::
Var =
(
const T = () => true
const F = () => false
)
code(Var)
return

::singeajax::
::singajax::
::singeajax::
Var =
(

// 获取纯Url，不包含?后面的参数
var getPureUrl = url => {
    const index = url.indexOf('?')
    return url.substr(0, ~index ? index : url.length)
}

//（核心）以url相同作为重复条件，你可以根据自己的情况编写自己的重复条件
var SingleAjax = function () {
    // 缓存的队列
    var pending = [];

    // 返回单例模式ajax
    return function (opts) {
        // 获取纯Url（不包含?后面的参数）
        const pureUrl = getPureUrl(opts.url)
        // 中止队列中所有相同请求地址的xhr
        pending.forEach(_ => _.url === pureUrl && _.xhr.abort());
        // 获取 success 回调函数
        const _success = opts.success
        // 装饰成功回调函数
        opts.success = function (...rest) {
            // 从队列过滤掉已经成功的请求
            pending = pending.filter(_ => _.url != pureUrl)
            // 继续执行它的成功
            _success && _success(...rest)
        }
        // 移除所有中止的请求，并且将新的请求推入缓存
        pending = [...pending.filter(_ => _.url != pureUrl), { url: pureUrl, xhr: $.ajax(opts) }]
    }
}

// 生成单例ajax
var singleAjax = new SingleAjax()

for (var i = 0; i < 10; i++) {
    singleAjax({
        url: "http://localhost",
        success: function (data) {
            // 其实在成功之后，可以考虑扩展把成功的xhr从队列中移除，但其实也不影响。已经成功的xhr就算再次被执行abort也不会怎么样，更不会从200变成cannel状态，更不会触发error。
            console.log('请求成功', data);
        },
        error: function(e, m){
           console.log('数据接口请求异常（请放心这是正常现象，由于请求被中止，所以会回调error。只需要判断一下m === "abort" 即可，你还可以在 abort() 时在 _.xhr 中加入任意属性来判断深入判断）', e, m, m === "abort");
        }
    })
}
)
code(Var)
return

>^t::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
// 启动计时器
console.time('20190219153729')

// your code...


// 停止计时，输出时间
console.timeEnd('20190219153729')
---
const startTime = new Date()
for (var i = 0; i < 100000; i++) {
    window.localStorage.setItem('key' + i, 'value' + i)
}
const __TIME__ = startTime - (new Date())
console.log(__TIME__)
---
function fuck() {
    window.performance.mark('fuck-start')

    for (var i = 0; i < 100000; i++) {
        window.localStorage.setItem('key' + i, 'value' + i)
    }

    window.performance.mark('fuck-end')
    window.performance.measure('fuck', 'fuck-start', 'fuck-end')
}

fuck()

console.log(window.performance.getEntriesByName('fuck'))
)
txtit(Var)
return

::autof::
Var =
(
autoprefixer
)
code(Var)
return

::oujilide::
Var =
(
/**
 * 欧几里得算法
 * 目标使土地分配最大化，不断让宽与高求余，直到整数倍为止。
 * @param {N} w 宽
 * @param {N} h 高
 */
var euclid = function (w, h) {
	// 获取基准线
	var benchmark = Math.max(w, h) `% Math.min(w, h)
	// 数据非法
	if (isNaN(benchmark)) {
		return 0
	// 如果是整数倍，说明满足条件
	} else if (benchmark == 0) {
		// 返回小的那个数就是了
		return Math.min(w, h)
	// 否则递归
	} else {
		return euclid(benchmark, Math.min(w, h))
	}
}

euclid(1680, 640)
)
code(Var)
return

::scrolltop::
Var =
(
var timer = null;
var goTop = function() {
    cancelAnimationFrame(timer);
    timer = requestAnimationFrame(function fn() {
        var oTop = document.body.scrollTop || document.documentElement.scrollTop;
        if (oTop > 0) {
            document.body.scrollTop = document.documentElement.scrollTop = oTop - 500;
            timer = requestAnimationFrame(fn);
        } else {
            cancelAnimationFrame(timer);
        }
    });
}
---
// es6
const scrollToTop = () => {
  const c = document.documentElement.scrollTop || document.body.scrollTop;
  if (c > 0) {
    window.requestAnimationFrame(scrollToTop);
    window.scrollTo(0, c - c / 8);
  }
};

// 有一些需要直接用scrollTop = 0来设置
document.querySelector(".page-loadmore-wrapper").scrollTop = 0

---
// 内置API
document.querySelector('body')
    .scrollIntoView({
        behavior: 'smooth',
        block: 'start',
    })
)
txtit(Var)
return

::timechunk::
Var =
(
var timeChunk = function ( ary, fn, count, wait) {
	var start = function () {
		// 每次循环count次数，如果长度不够count时，就取剩余长度。这是个不错的判断思维。用Main.min
		for (var i = 0; i < Math.min( count || 1, ary.length ); i++) {
			// 不断从数组取出内容进行操作
			var obj = ary.shift()
			fn(obj)
		}
	}

	return function () {
		var timer = setInterval(function () {
			if (ary.length === 0) {
				return clearInterval(timer);
			}
			start()
		}, wait || 200);
	}
}

var ary = [...Array(1000)].map((v, index, array) => index)

var render = timeChunk( ary, function ( n ) {
	var div = document.createElement('div')
	div.innerHTML = n;
	document.body.appendChild( div );
}, 8)

render();
)
code(Var)
return

::[]::
Var =
(
Array.prototype.
)
code(Var)
return

::singeaxios::
::singereq::
::singerequest::
::singaxios::
::singleaxios::
::pedingaxios::
Var =
(
// 请求队列
let pending = []

// 获取纯Url，不包含?后面的参数
const getPureUrl = (url, start = 0) => {
	const index = url.indexOf('?')
	const pureUrl = url.substr(0, ~index ? index : url.length)
  return pureUrl.substr(start)
}


// 请求拦截器
axios.interceptors.request.use(config => {
    // 获取纯Url（不包含?后面的参数）
    const pureUrl = getPureUrl(config.url)
    // 中止队列中所有相同请求地址的xhr
    pending.forEach(_ => _.url === pureUrl && _.cancel('repeat abort' + pureUrl))
    // 配置取消令牌
    config.cancelToken = new axios.CancelToken(cancel => {
       // 移除所有中止的请求，并且将新的请求推入缓存
       pending = [...pending.filter(_ => _.url != pureUrl), { url: pureUrl, cancel }]
    })
    return config
}, error => {
    return Promise.reject(error)
})

// 响应拦截器
axios.interceptors.response.use(res => {
  // 成功响应之后清空队列中所有相同Url的请求
  pending = pending.filter(_ => _.url != getPureUrl(res.config.url, res.config.baseURL.length))
  // 返回 response
  return res
}, error => {
   return Promise.reject(error)
});


for (var i = 0; i < 10; i++) {
    axios({url: 'http://localhost'}).then(console.log).catch(_ => {
        if (_.message === 'repeat abort') return console.info(_.message)
        // other error handler...
        // something code...
        throw new Error(_.message)
    })
}
)
code(Var)
return

::singajax::
::singleajax::
::pedingajax::
Var =
(

// 获取纯Url，不包含?后面的参数
var getPureUrl = url => {
	const index = url.indexOf('?')
	return url.substr(0, ~index ? index : url.length)
}

//（核心）以url相同作为重复条件，你可以根据自己的情况编写自己的重复条件
var SingleAjax = function () {
    // 缓存的队列
    var pending = [];

    // 返回单例模式ajax
    return function (opts) {
    	// 获取纯Url（不包含?后面的参数）
    	const pureUrl = getPureUrl(opts.url)
        // 中止队列中所有相同请求地址的xhr
        pending.forEach(_ => _.url === pureUrl && _.xhr.abort());
        // 获取 success 回调函数
        const _success = opts.success
        // 装饰成功回调函数
        opts.success = function (...rest) {
        	// 从队列过滤掉已经成功的请求
        	pending = pending.filter(_ => _.url != pureUrl)
        	// 继续执行它的成功
        	_success && _success(...rest)
        }
        // 移除所有中止的请求，并且将新的请求推入缓存
        pending = [...pending.filter(_ => _.url != pureUrl), { url: pureUrl, xhr: $.ajax(opts) }]
    }
}

// 生成单例ajax
var singleAjax = new SingleAjax()

for (var i = 0; i < 10; i++) {
    singleAjax({
        url: "http://localhost",
        success: function (data) {
            // 其实在成功之后，可以考虑扩展把成功的xhr从队列中移除，但其实也不影响。已经成功的xhr就算再次被执行abort也不会怎么样，更不会从200变成cannel状态，更不会触发error。
            console.log('请求成功', data);
        },
        error: function(e, m){
           console.log('数据接口请求异常（请放心这是正常现象，由于请求被中止，所以会回调error。只需要判断一下m === "abort" 即可，你还可以在 abort() 时在 _.xhr 中加入任意属性来判断深入判断）', e, m, m === "abort");
        }
    })
}
)
code(Var)
return



::imgonload::
::imgload::
::imageonload::
Var =
(
// js
var pic = new Image()
pic.src = require('@/assets/bg.png')
pic.onload = pic.onreadystatechange = () => {
    // 加载完成
    if (!this.readyState || this.readyState=='loaded' || this.readyState=='complete') {
        
    }
}
    
//jquery
$('<img/>').attr('src', 'http://caibaojian.com/a/a3.png').on('load', function() {
   $(this).remove(); // 防止内存泄露
   //图片加载完毕
});
)
code(Var)
return

::mask::
::showloading::
Var =
(
var Mask = function (cb) {
	var div = document.createElement('div')
	div.style = 'background-color: rgba(255, 255, 255, 0.7);position: fixed; top: 0; right: 0; bottom: 0; left: 0; z-index: 199307100337; display:none;'
	div.addEventListener('click', cb)
	document.body.append(div)

	var img = new Image()
	img.src = "http://wx3.sinaimg.cn/small/006ar8zggy1g0isbtuj2kg300w00wq2p.gif"
	img.style = 'position: absolute; top: 50`%; left: 50`%;'
	div.append(img)

	var show = function (showcb) {
		div.style.display = 'block'
		showcb && showcb()
	}

	var close = function (showcb) {
		div.style.display = 'none'
		showcb && showcb()
	}

	return { show, close }
}
const mask = new Mask()
mask.show()
mask.close()
)
code(Var)
return

::create::
::creatediv::
Var =
(
var div = document.createElement('div')
div.style = 'position: fixed; top: 0; right: 0; bottom: 0; left: 0; z-index: 199307100337; background-color: rgba(0,0,0,.3);'
// div.style.height = v.height + 'px'
// div.style.width = v.width + 'px'
// div.style.top = event.pageY + main.scrollTop - main.offsetTop - (v.height / 2) + 'px'
// div.style.left = event.pageX + main.scrollLeft - main.offsetLeft - (v.width / 2) + 'px'
// div.className = 'el'
// document.body.append(div)
document.body.insertBefore(div, document.body.firstChild)
)
code(Var)
return

::createimg::
::createimage::
::createimages::
Var =
(
var img = new Image()
img.src = "http://wx4.sinaimg.cn/large/006ar8zggy1g24gdwwu8cg300w00wq2p.gif"
img.style = 'position: absolute; top: 50`%; left: 50`%;'
)
code(Var)
return

::nothtml::
::nohtml::
::filterhtml::
Var =
(
const s = ``<span style="font-size:14px"><span style="background-color:#ffffff"><span style="color:#0099ff"><span style="font-size:16px"><strong>会议背景</strong></span></span></span></span></p ><p><span style="color:#525252"><span style="font-size:14px"><span style="background-color:#ffffff">``;

const stripHTML = _ => _.replace(/<(?:.|\s)*?>/g, '');

stripHTML(s); // "会议背景"
)
code(Var)
return

::onunload::
::window.onunload::
Var =
(
/**
 * php代码示例：
 * <?php 
    header('Access-Control-Allow-Origin:*');

    function WriteLog($msg,$module = null,$logLevel = "DEBUG") {
        $filepath = "./log/";
        if(!is_dir($filepath)) mkdir($filepath,'0777');
        $MyLogFile = @fopen($filepath.date("Y-m-d").".txt",'a+');

        $time = date("Y-m-d H:i:s");
        if(isset($module)){$module =  sprintf("\r\n归属模块：".$module."\r\n");}
        $logLine = "\r\n-------------------------------  $time -------------------------------\r\n";
        $logLine .= $module;
        $logLine .= "\r\n异常信息：$msg\r\n";
        $logLine .= "\r\n错误等级：$logLevel\r\n";
        fwrite($MyLogFile,$logLine);
    }

    WriteLog("test");
 */
window.onunload = e => {
     var request = new XMLHttpRequest();
     request.open('GET', 'http://localhost/index.php?', false);
     request.send();
};
)
code(Var)
return

::stringtopath::
::string2path::
::strtopath::
::str2path::
Var =
(
//https://github.com/lodash/lodash/blob/master/.internal/stringToPath.js
// https://github.com/lodash/lodash/blob/master/.internal/baseGet.js
// https://github.com/lodash/lodash/blob/master/get.js
const charCodeOfDot = '.'.charCodeAt(0)
const reEscapeChar = /\\(\\)?/g
const rePropName = RegExp(
  // Match anything that isn't a dot or bracket.
  '[^.[\\]]+' + '|' +
  // Or match property names within brackets.
  '\\[(?:' +
    // Match a non-string expression.
    '([^"\'].*)' + '|' +
    // Or match strings (supports escaping characters).
    '(["\'])((?:(?!\\2)[^\\\\]|\\\\.)*?)\\2' +
  ')\\]'+ '|' +
  // Or match "" as the space between consecutive dots or empty brackets.
  '(?=(?:\\.|\\[\\])(?:\\.|\\[\\]|$))'
, 'g')

/**
 * Converts `string` to a property path array.
 *
 * @private
 * @param {string} string The string to convert.
 * @returns {Array} Returns the property path array.
 */
const stringToPath = (string) => {
  const result = []
  if (string.charCodeAt(0) === charCodeOfDot) {
    result.push('')
  }
  string.replace(rePropName, (match, expression, quote, subString) => {
    let key = match
    if (quote) {
      key = subString.replace(reEscapeChar, '$1')
    }
    else if (expression) {
      key = expression.trim()
    }
    result.push(key)
  })
  return result
}
)
code(Var)
return

/**
::root::
Var =
(
var root = typeof self == 'object' && self.self === self && self ||
            typeof global == 'object' && global.global === global && global ||
            this ||
            {};
)
code(Var)
return
*/

::yyyy::
Var =
(
yyyy-MM-dd HH:mm:ss
)
code(Var)
return

::chrome::
Var =
(
--args --disable-web-security --user-data-dir
)
code(Var)
return

::addstyles::
::addstyle::
::addcss::
::injectcss::
Var =
(
var styles = document.createElement('style')
styles.type = 'text/css'
document.getElementsByTagName('head')[0].appendChild(styles)
// 必须先插入再执行
styles.sheet.addRule('#app', 'background: red; width: 1000px;')

//////////////////////////////////////////////
//////////////////////////////////////////////

// 更推荐这种比较舒服的书写方式
var injectCss = function (css) {
    var style = document.createElement('style')
    style.type = 'text/css'
    if (style.styleSheet) {
        style.styleSheet.cssText = css
    } else {
        style.appendChild(document.createTextNode(css))
    }
    document.getElementsByTagName('head')[0].appendChild(style)
}
injectCss(``
#app {
  background: blue;
}
``)

)
code(Var)
return

::celue::
::js.celue::
::celuemoshi::
::celuemodel::
Var =
(
// JavaScript版 策略模式 解决计算薪资问题
var strategies = {
	'S': function ( salary ) {
		return salary * 4
	},
	'A': function ( salary ) {
		return salary * 3
	},
	'B': function ( salary ) {
		return salary * 2
	}
};

var calculateBonus = function ( level, salary ) {
	return strategies[ level ]( salary )
}

calculateBonus('S', 10000) // 40000
calculateBonus('B', 10000) // 20000
---
import allow from '@/utils/allow.js'
import { setCache, getCache } from './cache.js'
import { encryption } from '@/utils/utils.js'

// 验证参数合法性
const validate = (key, fetchData) => allow.aFunction(fetchData).aString(key, 1)

// 「策略一：缓存优先」
// - 特点是优先使用缓存，如果缓存不存在才请求。而且，哪怕有缓存，也会发起请求更新缓存。
// - 缺点是页面使用的并不是最新数据，哪怕缓存更新了，也不会使用更新界面。必须下次刷新才会使用最新的缓存。
// - 如果你希望更新缓存后立即更新UI，那需要设计另一个复杂的策略了。至少对于地图来说，渲染两次太危险了。
export const CacheFirst = async (key, fetchData) => {
    validate(key, fetchData)

    // 获取缓存数据
    const cacheData = await getCache(key)

    // 如果不存在缓存的话，需要先请求，再返回数据
    if (!cacheData) {
        return fetchData().then(data => {
            // 加入缓存
            setCache(key, data)
            // 返回数据
            return data
        })
    // 如果存在缓存的话
    } else {
        // 进行懒加载无等待请求
        // （不等就不等，为何还要等待100ms才请求？ 因为我不想让它浪费页面其他同时期的请求）
        setTimeout(() => fetchData({ lazy: true }).then(data => setCache(key, data)), 100)
        // 并且立即返回缓存
        return cacheData
    }
}

// 「策略二：网络优先」 - 特点是先请求接口，如果请求失败才使用缓存。
export const NetworkFirst = async (key, fetchData) => {
    validate(key, fetchData)

    // 先等待获取缓存数据，虽然是异步，但肯定不会耗费多久的。
    // 因为在 cache 里不好使用 await ，否则返回的就是一个 Pormise 了
    const cacheData = await getCache(key)

    // 请求数据，再缓存
    return await fetchData().then(value => {
        // 设置缓存 setCache(key, value)
        // 返回数据
        return value

    // 如果请求失败，返回缓存
    }).catch(err => {
        // ☀️ 当 __CANCEL__: true 时，说明API是因为「去重机制」被 「kill」，这并不是失败。所以不需要返回缓存。
        if (err.__CANCEL__) throw new Error(err.message)
        
        return cacheData
    })
}

// 策略装饰器
export const Decorator = (strategie, fetchData) => (...args) => {
    // 以函数的入参作为 key
    const key = encryption(JSON.stringify(args))
    
    // 提前注入参数
    const _fetchData = fetchData.bind(null, ...args)

    // 返回数据
    return strategie(key, _fetchData)
}
)
txtit(Var)
return

::fuckfor::
::bettermap::
::fuckm::
::objmap::
::anymap::
::fuckmap::
::mymap::
Var =
(
export const betterMap = (v, cb) => {
    let result = []
    for (var k in v) {
        if (v.hasOwnProperty(k)) {
            result.push(cb && cb(v[k], k, v, result))
        }
    }
    return result
}
)
code(Var)
return

::getscriptpath::
Var =
(
function getScriptPath() {
    var scripts = _doc.currentScript || (function () { var s = _doc.getElementsByTagName('script'); return (s.length) ? s[s.length - 1] : false; })();
    var path = scripts ? scripts.src.split('?')[0] : '';
    return (path.split('/').length > 0) ? path.split('/').slice(0, -1).join('/') + '/' : '';
  }
)
code(Var)
return

::dragscroll::
Var =
(
const dragScroll = el => {
    var _window = window,
        _document = document,
        mousemove = 'mousemove',
        mouseup = 'mouseup',
        mousedown = 'mousedown',
        EventListener = 'EventListener',
        addEventListener = 'add' + EventListener,
        removeEventListener = 'remove' + EventListener,
        newScrollX, newScrollY;

    (function(el, lastClientX, lastClientY, pushed, scroller, cont) {
        (cont = el.container || el)[addEventListener](
            mousedown,
            cont.md = function(e) {
                if (!el.hasAttribute('nochilddrag') ||
                    _document.elementFromPoint(
                        e.pageX, e.pageY
                    `) == cont
                `) {
                    pushed = 1;
                    lastClientX = e.clientX;
                    lastClientY = e.clientY;

                    e.preventDefault();
                }
            }, 0
        `);

        _window[addEventListener](
            mouseup, cont.mu = function() { pushed = 0; }, 0
        `);

        _window[addEventListener](
            mousemove,
            cont.mm = function(e) {
                if (pushed) {
                    (scroller = el.scroller || el).scrollLeft -=
                        newScrollX = (-lastClientX + (lastClientX = e.clientX));
                    scroller.scrollTop -=
                        newScrollY = (-lastClientY + (lastClientY = e.clientY));
                    if (el == _document.body) {
                        (scroller = _document.documentElement).scrollLeft -= newScrollX;
                        scroller.scrollTop -= newScrollY;
                    }
                }
            }, 0
        `);
    })(el);
}
)
code(Var)
return

::autoscroll::
::$.autoscroll::
Var =
(
$.fn.extend({
    'autoScroll': function (options) {
	    // 配置参数
	    var opt = $.extend({}, {speed: 1500, size: 4, height: 40, time: 10000}, options)
	    // jQuery对象
	    var $el = this;
	    // 时间器
	    var timer = null;
	    // 核心函数
	    var _autoScroll = function () {
	        // 自动滚动
	        timer =  setInterval(function () {
	            // 滚动的速度
	            const speed = opt.speed
	            // 每次滚动多少条
	            const size = opt.size;
	            // 每条的高度是多少
	            const height = opt.height;
	            // 每次滚动的距离
	            const distance = size * height;
	            // 当前滚动的高度
	            const currentScrollTop = $el.scrollTop()
	            // 底部位置
	            const bottom = $el.prop('scrollHeight') - $el.height()
	            // 如果已经滚到底了
	            if (Math.floor(currentScrollTop) === Math.floor(bottom)) {
	                // 滚回头部
                    // $el.animate({ scrollTop: 0 }, 0).animate({ scrollTop: distance + 'px' }, speed);
                    // 滚回头部
                    $el.animate({ scrollTop: 0 }, speed);
	            } else {
	                // 余数
	                const remainder = currentScrollTop `% height
	                // 下一次滚动的位置 = 当前位置 + 每次滚动的位置 - 余数
	                const nextScrollTop = currentScrollTop + distance - remainder
	                // 开始滚动
	                $el.animate({ scrollTop: nextScrollTop + 'px' }, speed);
	            }
	        // 滚动间隔
	        }, opt.time + opt.speed);
	        // 鼠标移入的时候，删除自动滚动, 鼠标移出的时候，自动滚动
	        $el.one('mouseover', function () { clearInterval(timer)}).one('mouseleave', _autoScroll)
	        // 将timer放入jQuery对象的缓存中，方便后续操作
	        $el.data('timer', timer)
	    }
	    // 开始滚动
	    _autoScroll()
	    // 返回时间器，方便后续操作
	    return timer
	},
	'stopScroll': function () {
	     // jQuery对象
	    var $el = this;
	    // 时间器
	    var timer = $el.data('timer')
	    // 消除它就是停止它（其实这里还需要结束动画，但就不做那么麻烦了）
	    clearInterval(timer);
	}
});

$('.trajectoryTable').autoScroll()
)
code(Var)
return



::jsuniqid::
::js.uniqid::
::uniqid::
Var =
(
function getUniqueID() {
    let id = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
        let r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
        return v.toString(16);
    });
    return id;
  }
)
code(Var)
return


::zuhe::
::combi::
Var =
(
const combinate = obj => {
    let combos = []
    for (var key in obj) {
        const values = obj[key]
        const all = [];
        for (let i = 0; i < values.length; i++) {
        for (let j = 0; j < (combos.length || 1); j++) {
            const newCombo = { ...combos[j], [key]: values[i] }
            all.push(newCombo)
        }
        }
        combos = all
    }
    return combos
}

const options = {
  color: ['red', 'blue', 'green'],
  admin: [true, false],
  mode:  ['light', 'dark'],
}

const combinations = combinate(options)
console.log(combinations)
/*
[
  {'admin': true, 'color': 'red', 'mode': 'light'},
  {'admin': true, 'color': 'blue', 'mode': 'light'},
  {'admin': true, 'color': 'green', 'mode': 'light'},
  {'admin': false, 'color': 'red', 'mode': 'light'},
  {'admin': false, 'color': 'blue', 'mode': 'light'},
  {'admin': false, 'color': 'green', 'mode': 'light'},
  {'admin': true, 'color': 'red', 'mode': 'dark'},
  {'admin': true, 'color': 'blue', 'mode': 'dark'},
  {'admin': true, 'color': 'green', 'mode': 'dark'},
  {'admin': false, 'color': 'red', 'mode': 'dark'},
  {'admin': false, 'color': 'blue', 'mode': 'dark'},
  {'admin': false, 'color': 'green', 'mode': 'dark'}
]
*/
)
code(Var)
return

::pipe::
::guandao::
::compose::
Var =
(
const pipe = (...fns) => arg => fns.reduce((p, f) => p.then(f), Promise.resolve(arg))

// EXAMPLES
const sum = pipe(
  x => x + 1,
  x => new Promise(resolve => setTimeout(() => resolve(x + 2), 1000)),
  x => x + 3,
  async x => (await x) + 4
`);

(async() => {
  console.log(await sum(5)); // 15 (after one second)
})()  

//////////////////////////////////////////////
// 正常版本
//////////////////////////////////////////////
const pipe = (...funcs) => v => {
  return funcs.reduce((res, func) => {
    return func(res);
  }, v);
};

const minusFive = v => v - 5;
const addFour = v => v + 4;
const multiplyByTen = v => v * 10;
const identity = v => v;
const res = pipe(
  minusFive,
  addFour,
  multiplyByTen,
  Math.abs,
  identity
`)(0);
console.log(res); // 10. it works !

---
function compose () {
	let args = arguments
	let start = args.length - 1

	return function () {
		let i = start
		let result = args[start].apply(this, arguments)
		while (i--) 
			result = args[i].call(this, result)
		return result
	}
}

const explode = _ => _.split(/\s+/)
const count = _ => _.length
const countWords = compose(count, explode);
countWords(``a
			b
			c
			d``); // => 4
---
// https://github.com/koajs/compose/blob/master/index.js
function compose (middleware) {
  // 必须是数组
  if (!Array.isArray(middleware))
    throw new TypeError('Middleware stack must be an array!')

  // 必须全是函数
  if (middleware.some(fn => typeof fn !== 'function'))
    throw new TypeError('Middleware must be composed of functions!')

  return function (ctx, last_next) {
    // 用来标记当前执行的位置，同时也可以用来防止重复执行。
    let index = -1

    function dispatch (cursor) {
      // 这一步是为了验证并禁止多次执行 await next()
      if (cursor <= index)
        // 认知：原来 reject 可以和 new Error 联合使用报错
        return Promise.reject(new Error('next() called multiple times'))

      // 验证通过，更新下标
      index = cursor

      // 获取当前下标的函数
      let fn = middleware[cursor]

      // 如果已经是最后一次了，那么执行注入的 last_next（如果没有则是undefined）
      if (cursor === middleware.length)
        fn = last_next

      // 最后一次，如果 last_next 没有传递任何内容，那就是 undefined
      // 另外，这也是一种防御机制吧、虽然前面判断了 middleware，但谁知道异步过程中引用发生了啥。
      if (!fn)
        return Promise.resolve(undefined)

      try {
        // 下一个函数的引用（有点轮询的味道）
        const next = dispatch.bind(null, cursor + 1)

        // 🚀 执行当前函数，并且注入 『上下文』 和 『下一次函数』
        // ⚠️ 注意，由于这里的 fn 大概率是使用 async/await 之类的异步操作，所以返回 99`% 是 Promise。
        // 📝 所以 Promise.resolve(result) 返回的依然是一个 Promise 哦
        const result = fn(ctx, next)

        // 返回结果
        return Promise.resolve(result)

      } catch (err) {
        // 报错了
        return Promise.reject(err)
      }
    }

    // 开始第一个函数
    return dispatch(0)
  }
}

const a = async (ctx, next) => {
  console.log(1)

  const hello = await Promise.resolve('hello')
  console.log(hello)

  await next()
  console.log(2)

  return 'ok'
}

const b = async (ctx, next) => {
  console.log(3)

  const world = await Promise.resolve('world')
  console.log(world)

  await next()
  console.log(4)
}

compose([a, b])({ /* ctx, last_next */ })

// 输出著名的 "1342" 现象：
// 1
// hello
// 3
// world
// 4
// 2

// 返回：Promise {<resolved>: "ok"}
)
txtit(Var)
return

::cache.request::
::cache.axios::
::cacherequest::
::cacheaxios::
::js.request::
::jsrequest::
::es6.request::
Var =
(
// 检查状态码
const checkStatus = (response) => {
	// 判断请求状态
    if (response.status >= 200 && response.status < 300) {
        // 返回Promise 
        return response.data
    } else {
      // 服务器响应异常
      throw new Error(response.statusText)
    }
}

// 缓存到sessionStorage
const cachedSave = (hashcode, content) => {
  // 设置缓存
  sessionStorage.setItem(hashcode, JSON.stringify(content))
  // 设置缓存时间
  sessionStorage.setItem(`${hashcode}:timestamp`, Date.now())
  // 返回Promise
  return content
}

// 公共请求
export const request = (url, options) => {
    // 指纹
    const fingerprint = url + (options ? JSON.stringify(options) : '')
    // 加密指纹
    const hashcode = hash.sha256().update(fingerprint).digest('hex')
    // 预设值指纹
    const _cachedSave = cachedSave.bind(null, hashcode)
    // 过期设置
    const expirys = options && options.expirys || 60
    // 本请求是否禁止缓存？
    if (expirys !== false) {
        // 获取缓存
        const cached = sessionStorage.getItem(hashcode)
        // 获取该缓存的时间
        const whenCached = sessionStorage.getItem(`${hashcode}:timestamp`)
        // 如果缓存都存在
        if (cached !== null && whenCached !== null) {
          // 判断缓存是否过期
          const age = (Date.now() - whenCached) / 1000
          // 如果不过期的话直接返回该内容
          if (age < expirys) {
              // 新建一个response
              const response = new Response(new Blob([cached]))
              // 返回promise式的缓存
              return new Promise((resolve, reject) => resolve(response.json()))
          }
          // 删除缓存内容
          sessionStorage.removeItem(hashcode)
          // 删除缓存时间
          sessionStorage.removeItem(`${hashcode}:timestamp`)
        }
    }
    return axios(url, options).then(checkStatus).then(_cachedSave)
}
)
code(Var)
return


::removeattr::
Var =
(
document.querySelector('.fuck').removeAttribute('disabled');
)
code(Var)
return

::nodetree::
::treenode::
Var =
(
class Node {
	constructor(val) {
	    this._val = val
	    this._parent = null
	    this._children = []
	}

	isRoot () {
		return isValid(this._parent)
	}

	get children () {
		return this._children
	}

	hasChildren () {
		return this._children.length > 0
	}

	get value () {
		return this._val
	}

	set value (val) {
		this._val = val
	}

	append(child) {
		child._parent = this
		this._children.push(child)
		return this
	}

	toString() {
		return `Node (val: ${this._val}, children: ${this.children.length})`
	}
}

class Tree {
	constructor(root) {
	    this._root = root
	}

	static map(node, fn, tree = null) {
		node.value = fn(node.value)

		if (tree === null) 
			tree = new Tree(node)

		if (node.hasChildren()) {
			// 遍历子树
			node.children.map(child => {
				// 递归
				Tree.map(child, fn, tree)
			})
		}

		return tree
	}

	get root() {
		return this._root
	}
}

//////////////////////////////////////////////
const church = new Node('church')
const neleson = new Node('neleson')
const rosser = new Node('rosser')
const turing = new Node('turing')
const kleene = new Node('kleene')
const nelson = new Node('nelson')
const constable = new Node('constable')
const mendelson = new Node('mendelson')
const sacks = new Node('sacks')
const gandy = new Node('gandy')
//////////////////////////////////////////////

church.append(rosser).append(turing).append(kleene);
kleene.append(neleson).append(constable);
rosser.append(mendelson).append(sacks);
turing.append(gandy);
//////////////////////////////////////////////
church.toString()
Tree.map(church, p => p)
)
code(Var)
return


::createmodel::
::class.model::
::model.class::
::classmodel::
::modelclass::
::js.model::
::jsmodel::
::es.model::
::es6.model::
::class.model::
::model::
Var =
(
class Model {
    constructor({ size = 20 } = {}) {
        // 核心数据
        this.data = []
        // 总数
        this.total = 0
        // 页码
        this.page = 0
        // 数量
        this.size = this._size = size
        // 是否加载中
        this.loading = false
        // 是否正在加载更多
        this.loadingmore = false
        // 是否数据为空
        this.empty = false
        // 是否没有更多了
        this.nomore = false
    }

    // 重置
    resetWhere() {
        this.loading = false
        this.empty = false
        this.loadingmore = false
        this.nomore = false
        this.total = 0
        this.page = 0
        this.size = this._size
    }

    // 显示loading
    showLoading() {
        this.loading = true
    }

    // 显示loadingmore
    showLoadingmore() {
        this.loadingmore = true
    }

    // 隐藏loading
    hideLoading() {
        this.loading = false
    }

    // 隐藏Loadingmore
    hideLoadingmore() {
        this.loadingmore = false
    }

    // 条数
    size(size) {
    	this.size = this._size = size
    }

    // 设置当前页码
    page(page) {
        this.page = page
    }

    // 页码++
    pageAdd() {
        this.page++
    }

    // 頁碼--
    pageSub() {
        this.page--
    }

    // 是否是第一次加载
    isFirstPage() {
        return this.page === 0
    }

    // 设置data以及一系列逻辑
    setData({ data = [], total = 0 } = {}, cb = null) {
        this.total = total
        this.loading = false
        this.loadingmore = false

        const isEmptyData = data.length === 0

        // empty 表示没有数据
        if (this.isFirstPage() && isEmptyData)
            this.empty = true

        // nomore 表示没有更多数据
        if (data.length < this.size || (!this.isFirstPage() && isEmptyData))
            this.nomore = true

        // 如果有数据，应该重置标识
        if (!isEmptyData) {
            this.empty = false
            // 就算有数据，如果不够长度，也是数据nomore
            if (data.length === this.size)
                this.nomore = false
        }

        if (this.isFirstPage())
            this.data = data
        else
            this.data = Array.prototype.concat.call(this.data || [], data)

        // 执行回调
        cb && cb(this)
    }
}
---
import { obj2formdatastr } from '@/utils/utils'
import { request } from '@/utils/request.js'
import Model from '@/utils/Model'

let state = {
    tableData: new Model(),
}

const actions = {
    getTableData({ commit, state, dispatch, rootState, getters, rootGetters }, test) {
        // loading
        tableData.showLoading()

        // 整理参数
        const params = obj2formdatastr({
          // 当前页码
          page: state.tableData.page,
          // 每页数量
          size: state.tableData.size,
          // ... other params
        })

        // 请求数据
        return request('/dc/record/dcTableRule/queryTableWithColumn' + params).then(result => {
            // setData 会自动关闭 loading
            tableData.setData({
              // 数据集（核心）
              data: result.rows,
              // 后端返回的总条数
              total: result.total
            })
        })
    },
}

const mutations = {

}

const getters = {
  
}

export default {
    namespaced: true,
    state,
    mutations,
    actions,
    getters,
}
---
<template>
    <div class="test">
       <el-table :data="tableData" v-loading='tableData.loading' style="width: 100`%">
           <el-table-column prop="date"label="日期" width="180"></el-table-column>
           <el-table-column prop="name" label="姓名" width="180"></el-table-column>
           <el-table-column prop="address"label="地址"></el-table-column>
       </el-table>

       <el-pagination
         @size-change="handleSizeChange"
         @current-change="handleCurrentChange"
         :current-page="tableData.page"
         :total="tableData.total"
         :page-size="tableData.size"
         :page-sizes="[10, 20, 30, 40]"
         layout="total, sizes, prev, pager, next, jumper">
       </el-pagination>
    </div>
</template>

<script>
import { mapState, mapActions, mapMutations, mapGetters } from 'vuex'
export default {
  name: 'test',
  data () {
    return {
        
    }
  },
  methods: {
    ...mapActions('app', [
        'getTableData',
    ]),
    handleSizeChange(v) {
      this.tableData.size(v)
      this.getTableData()
    },
    handleCurrentChange(v) {
      this.tableData.page(v)
      this.getTableData()
    }
  },
  computed: {
    ...mapGetters('app', [
        'tableData',
    ]),
  },
  beforeMount () {
      // 请求接口 - 初始化数据
      this.getTableData()
  }
}
</script>

<style lang="scss" scoped>

.test {

}
</style>
)
txtit(Var)
return

::link::
::addcss::
Var =
(
var link = function(href, fn, cssname){
	var that = this
	,link = doc.createElement('link')
	,head = doc.getElementsByTagName('head')[0];

	if(typeof fn === 'string') cssname = fn;

	var app = (cssname || href).replace(/\.|\//g, '')
	,id = link.id = 'layuicss-'+app
	,timeout = 0
	,time = 10;

	link.rel = 'stylesheet';
	link.href = href + (config.debug ? '?v='+new Date().getTime() : '');
	link.media = 'all';

	if(!doc.getElementById(id)){
	  head.appendChild(link);
	}

	if(typeof fn !== 'function') return that;

	//轮询css是否加载完毕
	;(function poll() {
	  if(++timeout > time * 1000 / 100){
	    return error(href + ' timeout');
	  };
	  <这里写上你的条件> ? fn() : setTimeout(poll, 100);
	}());

	return that;
};

var addcss = function(firename, fn, cssname){
	return link(config.dir + 'css/' + firename, fn, cssname);
};
---
// https://medium.com/swlh/how-to-create-a-linked-list-in-javascript-1bfef32c7722
const Node = function(value, next = null) {
    this.value = value,
        this.next = next
}

const LinkedList = function() {
    this.head = null
    this.size = 0
}

LinkedList.prototype.addNodeAtHead = function(value) {
    this.head = new Node(value, this.head)
    this.size++
    return
}

LinkedList.prototype.addNodeAtTail = function(value) {
    let node = new Node(value)
    if (!this.head) return this.addNodeAtHead(value)
    let current = this.head
    while (current.next) {
        current = current.next
    }
    current.next = node
    this.size++
    return
}

LinkedList.prototype.addNodeAt = function(value, index) {
    if (index > 0 && index > this.size) return console.log('Index does not exist')
    if (index === 0) return this.addNodeAtHead(value)
    const node = new Node(value)
    let current = this.head
    let count = 0
    let previous
    while (count < index) {
        count++
        previous = current
        current = current.next
    }
    previous.next = node
    node.next = current
    this.size++
    return
}

LinkedList.prototype.getNodeAtIndex = function(index) {
    if (index > 0 && index >= this.size || !this.head) return console.log('Index does not exist')
    let current = this.head
    let count = 0
    while (current) {
        if (count === index) return console.log(current.value)
        count++
        current = current.next
    }
    return null
}

LinkedList.prototype.removeHeadNode = function() {
    if (!this.head) return console.log('There is no head')
    this.head = this.head.next
    this.size--
    return
}

LinkedList.prototype.removeTailNode = function() {
    if (!this.head) return console.log('There is no head')
    if (!this.head.next) return this.removeHeadNode()
    let current = this.head
    let previous
    while (current.next) {
        previous = current
        current = current.next
    }
    previous.next = null
    this.size--
    return
}

LinkedList.prototype.removeNodeAt = function(index) {
    if (index > 0 && index >= this.size || !this.head) return console.log('Index not found')
    if (index === 0) return this.removeHeadNode()
    let current = this.head
    let count = 0
    let previous
    while (count < index) {
        count++
        previous = current
        current = current.next
    }
    previous.next = current.next
    this.size--
    return
}

LinkedList.prototype.clearList = function() {
    this.head = null
    this.size = 0
    return
}

LinkedList.prototype.printValue = function() {
    let current = this.head
    while (current) {
        console.log(current.value)
        current = current.next
    }
}
)
txtit(Var)
return

::eventstop::
::stopevent::
::stope::
::e.stop::
Var =
(
event.preventDefault(); event.stopPropagation();
)
code(Var)

return

::device::
::shebeixinxi::
::shebei::
Var =
(
var device = function(key){
  var agent = navigator.userAgent.toLowerCase()

  //获取版本号
  ,getVersion = function(label){
    var exp = new RegExp(label + '/([^\\s\\_\\-]+)');
    label = (agent.match(exp)||[])[1];
    return label || false;
  }
  
  //返回结果集
  ,result = {
    os: function(){ //底层操作系统
      if(/windows/.test(agent)){
        return 'windows';
      } else if(/linux/.test(agent)){
        return 'linux';
      } else if(/iphone|ipod|ipad|ios/.test(agent)){
        return 'ios';
      } else if(/mac/.test(agent)){
        return 'mac';
      } 
    }()
    ,ie: function(){ //ie版本
      return (!!window.ActiveXObject || "ActiveXObject" in window) ? (
        (agent.match(/msie\s(\d+)/) || [])[1] || '11' //由于ie11并没有msie的标识
      `) : false;
    }()
    ,weixin: getVersion('micromessenger')  //是否微信
  };
  
  //任意的key
  if(key && !result[key]){
    result[key] = getVersion(key);
  }
  
  //移动设备
  result.android = /android/.test(agent);
  result.ios = result.os === 'ios';
  
  return result;
};
)
code(Var)
return

::preloadimg::
::loadimg::
::preload::
Var =
(
var perloadimg = function(url, callback, error) {   
    var img = new Image();
    img.src = url; 
    if(img.complete){
      return callback(img);
    }
    img.onload = function(){
      img.onload = null;
      typeof callback === 'function' && callback(img);
    };
    img.onerror = function(e){
      img.onerror = null;
      typeof error === 'function' && error(e);
    };  
};
)
code(Var)
return

::escape::
::xss::
Var =
(
var escape = function(html){
  return String(html || '').replace(/&(?!#?[a-zA-Z0-9]+;)/g, '&amp;')
  .replace(/</g, '&lt;').replace(/>/g, '&gt;')
  .replace(/'/g, '&#39;').replace(/"/g, '&quot;');
}
)
code(Var)
return

::$.resize::
::jquery.resize::
::resize::
Var =
(
//监听 DOM 尺寸变化，该创意来自：http://benalman.com/projects/jquery-resize-plugin/
  !function(a,b,c){"$:nomunge";function l(){f=b[g](function(){d.each(function(){var b=a(this),c=b.width(),d=b.height(),e=a.data(this,i);(c!==e.w||d!==e.h)&&b.trigger(h,[e.w=c,e.h=d])}),l()},e[j])}var f,d=a([]),e=a.resize=a.extend(a.resize,{}),g="setTimeout",h="resize",i=h+"-special-event",j="delay",k="throttleWindow";e[j]=250,e[k]=!0,a.event.special[h]={setup:function(){if(!e[k]&&this[g])return!1;var b=a(this);d=d.add(b),a.data(this,i,{w:b.width(),h:b.height()}),1===d.length&&l()},teardown:function(){if(!e[k]&&this[g])return!1;var b=a(this);d=d.not(b),b.removeData(i),d.length||clearTimeout(f)},add:function(b){function f(b,e,f){var g=a(this),h=a.data(this,i)||{};h.w=e!==c?e:g.width(),h.h=f!==c?f:g.height(),d.apply(this,arguments)}if(!e[k]&&this[g])return!1;var d;return a.isFunction(b)?(d=b,f):(d=b.handler,b.handler=f,void 0)}}}($,window);
$(window).resize(function(e){
      console.log(123)
});
)
code(Var)
return

::poll2::
Var =
(
;(function poll(data = [], page = 0, size = 10) {
    // 分页
    const data_cursor = data.slice(page * size, size)
    // 还有数据才继续轮询
    if (data_cursor.length) {
        // 尝试按帧数渲染无卡顿：https://www.cnblogs.com/kenkofox/p/3849067.html
        const fps = 30
        // 尝试渐进式渲染
        setTimeout(() => window.requestAnimationFrame(() => poll(data, page + 1, size)), 1000 / fps)
    }
}())
)
code(Var)
return

::pool::
::shujuchi::
::shijianlunxun::
::nodejs.event::
::node.event::
::v8::
::v8.event::
::v8.lunxun::
::v8.poll::
Var =
(
// 数据池
const pool = []
// 当前轮询状态
let status = 'close'
// 任务列表
const taskList = [
    new Promise((resolve, reject) => setTimeout(_ => resolve([...Array(1000)].map((v, index, array) => 'success1 - ' + index)), 1000)),
    new Promise((resolve, reject) => setTimeout(_ => resolve([...Array(1000)].map((v, index, array) => 'success2 - ' + index)), 2000)),
    new Promise((resolve, reject) => setTimeout(_ => resolve([...Array(1000)].map((v, index, array) => 'success3 - ' + index)), 3000)),
    new Promise((resolve, reject) => setTimeout(_ => resolve([...Array(1000)].map((v, index, array) => 'success4 - ' + index)), 4000)),
    new Promise((resolve, reject) => setTimeout(_ => resolve([...Array(1000)].map((v, index, array) => 'success5 - ' + index)), 5000)),
]

/**
 * 一次性运行多个任务 ...
 *
 */
const run = (tasks, fn, i = 0) => tasks.forEach(task => task.then(data => fn(data, i++)))

/**
 * nodejs requestAnimationFrame 补丁 ...
 *
 */
const requestAnimFrame = typeof module !== 'undefined' ? fn => setTimeout(fn, 1000 / 60) : window.requestAnimationFrame

/**
 * 轮询数据池
 *
 */
function poll(page = 0, size = 1) {
    // 只有当状态为停止，并且长度为空才停止。
    // 也就是说，哪怕状态停止了，只要数组不为空，任务就还必须进行下去。
    // 如果你真的想停，那不仅要把 status 设置为 'close'，而且还要清空数据池 pool
    if (pool.length === 0 && status === 'close')
        return

    // 取出数据，注意会改变引用，这是故意的
    const data_cursor = pool.splice(0, 10)

    // your code...
    console.log(20200809093909, data_cursor)

    // 尝试按帧数渲染无卡顿：https://www.cnblogs.com/kenkofox/p/3849067.html
    const fps = 30

    // 尝试渐进式渲染
    setTimeout(() => requestAnimFrame(() => poll(page + 1, size)), 1000 / fps)
}


// 运行任务，开始轮询
run(taskList, (data, index) => {
    console.log(`🚀 task-${index} 已完成`)
    // 如果是第一个，则直接开始
    if (index === 0) { status = 'open'; poll() }
    // 如果是最后一个则关闭
    if (index === taskList.length - 1) { status = 'close' }
    // 往数据池中插入数据
    pool.push(...data)
})

)
code(Var)
return

::lunxun::
::loop::
::poll::
Var =
(
// 递归
var maxTimeout = 10,
    timeout = 0,
    wait = 4, 
    callback = function() {
       // ... 这样写上条件成功时执行的内容
    };
(function poll() {
    if (++timeout > maxTimeout * 1000 / wait) {
        return window.alert('超时');
    };
    <这里写上你的判断> ? callback() : setTimeout(poll, wait);
}());

//////////////////////////////////////////////
// say something...
//////////////////////////////////////////////

const poll = (conditionFn, callback, wait = 4, maxTimeout = 10, timeout = 0) => {
  // 请求是否超出阈值
  if (++timeout > maxTimeout * 1000 / wait) throw new Error('overtime')
  // 条件是否返回真值
  const result = conditionFn()
  // 如果条件满足，那么执行，否则轮询
  result ? callback(result) : setTimeout(() => { poll(conditionFn, callback, wait, maxTimeout, timeout) }, wait)
}

poll(() => document.querySelector('path[fill]'), e => {
  e.setAttribute('fill', "rgb(0,0,0)");
})


//////////////////////////////////////////////
// say something...
//////////////////////////////////////////////

function loop(fn, delay) {
    let stamp = Date.now();

    function _loop() {
        if (Date.now() - stamp >= delay) {
            fn();
            stamp = Date.now();
        }
        requestAnimationFrame(_loop);
    }
    requestAnimationFrame(_loop);
}
---
// async/await 版本的 poll
// 串行请求纯散点数据
const serialPureScatter = async function poll(params, data = []) {
    // 第一页是从 1 开始的
    params.page++
    // 执行接口，获取返回结果
    let result = await pureScatter(params)
    // 将数据并入
    data = data.concat(result)
    // 判断是否等于 10W ，如果是继续轮询，否则返回数据
    return result.length === 100000 ? poll(params, data) : data
}
---
/**
 * （推荐）say something ...
 
 ;(async function(){
    const a = await waitWhen(_ => document.getElementById('1234'))
    console.log(20191212102924, a)
 }())
 */
const waitWhen = (conditionFn = () => false, wait = Infinity, interval = 10, startTime = Date.now()) => new Promise((resolve, reject) => {
    (function poll() {
        // 获取回调结果
        const result = conditionFn()

        // 获取是否超时
        const isTimeout = Date.now() - startTime > wait

        // 如果条件成立，那么立刻 resolve
        if (result) return resolve(result)

        // 如果时间超时，立刻 reject
        if (isTimeout) return reject(result)

        // 否则继续轮询
        setTimeout(poll, interval)
    }())
})
---
const getsms = (mobile) => {
    var count = 0
    var _getsms = function () {
        request({
            method: 'GET',
            uri: `http://api.fxhyd.cn/UserInterface.aspx?action=getsms&token=${token}&itemid=${itemid}&mobile=${mobile}&release=1`
        }, function (err, _res, body) {
            if (err) throw new Error(err)
            // 如果短信未收到
            if (body == '3001' && count <= 60) {
                // 官方推荐5秒之后再请求
                setTimeout(function () {
                    count += 5
                    console.log("短信未收到，正在重新获取...", count);
                    _getsms()
                }, 5000);
            } else {
                // 截取验证码
                var code = body.match(/\d{4,}/)[0]
                console.log("获取了验证码", code);
                register(mobile, code)
            }
        })
    }
    _getsms();
};
---
// 数据池
const pool = []
// 当前轮询状态
let status = 'close'
// 任务列表
const taskList = [
    new Promise((resolve, reject) => setTimeout(_ => resolve([...Array(1000)].map((v, index, array) => 'success1 - ' + index)), 1000)),
    new Promise((resolve, reject) => setTimeout(_ => resolve([...Array(1000)].map((v, index, array) => 'success2 - ' + index)), 2000)),
    new Promise((resolve, reject) => setTimeout(_ => resolve([...Array(1000)].map((v, index, array) => 'success3 - ' + index)), 3000)),
    new Promise((resolve, reject) => setTimeout(_ => resolve([...Array(1000)].map((v, index, array) => 'success4 - ' + index)), 4000)),
    new Promise((resolve, reject) => setTimeout(_ => resolve([...Array(1000)].map((v, index, array) => 'success5 - ' + index)), 5000)),
]

/**
 * 一次性运行多个任务 ...
 *
 */
const run = (tasks, fn, i = 0) => tasks.forEach(task => task.then(data => fn(data, i++)))

/**
 * nodejs requestAnimationFrame 补丁 ...
 *
 */
const requestAnimFrame = typeof module !== 'undefined' ? fn => setTimeout(fn, 1000 / 60) : window.requestAnimationFrame

/**
 * 轮询数据池
 *
 */
function poll(page = 0, size = 1) {
    // 只有当状态为停止，并且长度为空才停止。
    // 也就是说，哪怕状态停止了，只要数组不为空，任务就还必须进行下去。
    // 如果你真的想停，那不仅要把 status 设置为 'close'，而且还要清空数据池 pool
    if (pool.length === 0 && status === 'close')
        return

    // 取出数据，注意会改变引用，这是故意的
    const data_cursor = pool.splice(0, 10)

    // your code...
    console.log(20200809093909, data_cursor)

    // 尝试按帧数渲染无卡顿：https://www.cnblogs.com/kenkofox/p/3849067.html
    const fps = 30

    // 尝试渐进式渲染
    setTimeout(() => requestAnimFrame(() => poll(page + 1, size)), 1000 / fps)
}


// 运行任务，开始轮询
run(taskList, (data, index) => {
    console.log(`🚀 task-${index} 已完成`)
    // 如果是第一个，则直接开始
    if (index === 0) { status = 'open'; poll() }
    // 如果是最后一个则关闭
    if (index === taskList.length - 1) { status = 'close' }
    // 往数据池中插入数据
    pool.push(...data)
})
---
const isFunction = input => input instanceof Function || Object.prototype.toString.call(input) === '[object Function]'
const isNumber = input => (typeof input === 'number' || Object.prototype.toString.call(input) === '[object Number]') && input === input

/**
 * 轮询POST请求 ...
 *
 */
const POLL_POST = opts => {
    // 获取核心参数
    const { url = '', data = {}, time = 1000, success = () => {}, error = () => {} } = opts

    // 轮询开关
    let isPoll = true

    // 轮询间隔只支持函数或者 number
    const timer = isFunction(time) ? time() : isNumber(time) ? time : 1000

    // 轮询任务
    async function poll () {
        // 开始请求
        await axios({ method: 'POST', url, data }).then(success).catch(error)

        // 是否继续轮询
        if (isPoll) {
            // isPoll 还作为定时器存在
            isPoll = setTimeout(poll, timer)
        }
    }

    // 开始轮询
    poll()

    // 返回开关 
    return () => {
        // 关闭开关
        clearTimeout(isPoll)
        // 关闭逻辑
        isPoll = null
    }

}

const cancel = POLL_POST({
    url: '/',
    data: {},
    success (data) {
        console.log(20200905113649, data)
    },
    error(err) {
        console.log(20200905113651, err)
    }
})
)
txtit(Var)
return

::clickoutsize::
::clickoutside::
Var =
(
import React, { Component } from 'react'
import PropTypes from 'prop-types'

export default class ClickOutside extends Component {
  static propTypes = {
    onClickOutside: PropTypes.func.isRequired
  }

  constructor(props) {
    super(props)
    this.getContainer = this.getContainer.bind(this)
    this.isTouch = false
  }

  getContainer(ref) {
    this.container = ref
  }

  render() {
    const { children, onClickOutside, ...props } = this.props
    return <div {...props} ref={this.getContainer}>{children}</div>
  }

  componentDidMount() {
    document.addEventListener('touchend', this.handle, true)
    document.addEventListener('click', this.handle, true)
  }

  componentWillUnmount() {
    document.removeEventListener('touchend', this.handle, true)
    document.removeEventListener('click', this.handle, true)
  }

  handle = e => {
    if (e.type === 'touchend') this.isTouch = true
    if (e.type === 'click' && this.isTouch) return
    const { onClickOutside } = this.props
    const el = this.container
    // 这一句代码就是核心: el.contains，这种思路是通用的
    if (el && !el.contains(e.target)) onClickOutside(e)
  }
}
---
beforeMount() {
    // 绑定监听高亮事件
    this.clickOutSide = e => {
        // 如果点击的不是弹窗本身，那么关闭它
        if (this.$refs.tree.$el.contains(e.target) === false && 
            this.$refs.ruleFormBox.$el.contains(e.target) == false) 
        {
            // 取消显示
            this.$nextTick(() => {
                this.ruleForm.tagId = -1;
                this.showBtn = false;
                this.$refs.tree.setCurrentKey(null)
            })
        }
    }
    document.addEventListener('mouseup', this.clickOutSide)
},
destroyed () {
    document.removeEventListener('mouseup', this.clickOutSide)
},
---
// 如果是关闭的，才需要打开
  if (!this.showTree) {
      this.showTree = true
      // 获取左侧的高度
      const treeHeight = document.querySelector('.container-left').clientHeight
    // 设置右侧的高度
    document.querySelector('.container-right ').style.setProperty('height', treeHeight + 'px')
    const _clickOutSide = e => {
        if (this.$refs.ctree.$el.contains(e.target) === false && hasClass(e.target, 'el-table__row') === false) {
            // 关闭
            this.showTree = false
            // 移除事件
            document.removeEventListener('mouseup', _clickOutSide)
        }
    }
    document.addEventListener('mouseup', _clickOutSide)
}
---

/**
 * 示例:
 * 
 * clickOutSide('.u-pointCard', cancel => {
 *     // 关闭弹窗
 *     this.points_html = ''
 *     // 取消事件本身
 *     cancel()
 * })
 * 
 *  clickOutSide('.pctable1', cancel => {
 *    this.close()
 *    this.cancel = cancel
 *  }, (e) => {
 *      // 是否点击了「时间选择器」相关的按钮？
 *      const isClickDate = e.path.map(_ => _.className).some(_ => _ && _.includes('el-date'))
 *      // 只有不是的情况下，才允许关闭。
 *      return isClickDate === false
 *  })
 */
export const clickOutSide = (className, fn, shouldCloseRule = () => true) => {
  const _clickOutSide = e => {
    const el = document.querySelector(className)
    // 如果点击的不是指定的元素，那么执行回调，并且取消这个事件本身
    if (el && el.contains(e.target) === false && shouldCloseRule(e)) {
       // 执行函数，并且注入取消的回调
       fn(() => document.removeEventListener('mouseup', _clickOutSide))
    }
  }
  document.addEventListener('mouseup', _clickOutSide)
}
)
txtit(Var)
return


::taobaojiejuefangan::
::flexiable::
::flexible::
::flexable::
::taobao::
Var =
(
////////////////
// JavaScript //
////////////////
(function flexible (window, document) {
  var docEl = document.documentElement
  // set 1rem = viewWidth / 10
  function setRemUnit () {
    var rem = docEl.clientWidth / 10
    docEl.style.fontSize = rem + 'px'
  }
  setRemUnit()
  // reset rem unit on page resize
  window.addEventListener('resize', setRemUnit)
  window.addEventListener('pageshow', function (e) {
    if (e.persisted) {
      setRemUnit()
    }
  })
}(window, document))
---
//////////
// scss //
//////////
$root_fontsize: 192; // 因为效果图是1920 / 10
// $base-font-size: 75px; //design iphone6: 375px * 2 / 10 = 75px; --design
// $base-font-size: 32px; //design iphone3gs: 320px / 10 = 32px
// $base-font-size: 64px; //design iphone4/5: 320px * 2 / 10 = 64px
// $base-font-size: 124.2px; //design iphone6: 414px * 3 / 10 = 124.2px;
@function rem($px) {
    @return ($px / $root_fontsize ) * 1rem;
}
)
txtit(Var)
return

::setline::
::strline::
::getline::
::foreachstr::
::foreachline::
::forstr::
::forline::
Var =
(
var str = ''
temp1.forEach(function (e, i) {
   str += ${i+1} —— ${e} \r\n
});
console.log(str)
)
code(Var)
return

::js.private::
::js.priv::
::js.siyoubianl::
::js.siyoubianliang::
::js.mokuaimoshi::
Var =
(
//////////////////////////////////////////////
// 模块模式
//////////////////////////////////////////////
var person = (function(){
	var age = 25

	return {
		name: 'Lee',

		getAge: function () {
			return age
		},

		setAge: function () {
			age++
		}
	}
}());

console.log(person.name) // Lee
console.log(person.getAge()) // 25

person.age = 100 // hack try...
console.log(person.getAge()) // 25

//////////////////////////////////////////////
// 构造函数的私有变量
//////////////////////////////////////////////
function Person(name) {
	this.name = name
	var age = 18

	this.getAge = function () {
		return age
	}

	this.setAge = function () {
		age++
	}
}

var person = new Person('Lee')
console.log(person.name) // Lee
console.log(person.getAge()) // 18

person.age = 100 // hack try...
Person.age = 100 // hack try...
console.log(person.getAge()) // 18
)
code(Var)
return

:?:.attr::
Var =
(
.getAttribute('tabindex');
)
code(Var)
return

::es5.jicheng::
::js.jicheng::
Var =
(
// 矩形（构造器/父类）
function Rectangle (height, width) {
	this.height = height;
	this.width = width;
}

// 获取面积
Rectangle.prototype.getArea = function () {
	return this.height * this.width;
}

// 正方形（将继承矩形）
function Square (size) {
	this.height = size
	this.width = size
}

// 继承的重中之重语法，其实也可以用：Square.prototype = Object.create(Rectangle.prototype)
Square.prototype = Object.create(Rectangle.prototype);
// 构造函数
Square.prototype.constructor = Square;

var square = new Square(6);
// 调用继承的矩形类的获取面积函数
console.log(square.getArea()) // 36
)
code(Var)
return

::is-Bottom::
::is.bottom::
::isbottom::
::scrollbottom::
::scroll.bottom::
Var =
(
let scrollHandle = (el) => {
	// 如果已经滚到底部了
    // if ((el.scrollHeight - el.scrollTop) - el.clientHeight < 1 ) { }
	if (el.scrollHeight - el.scrollTop === el.clientHeight) {
		console.log(123)
	}
}
---
// 判断滚动到底了的最佳实践
// 这里的 + 1 是我加入了，以防万一一些微小的细节，我觉得以防万一 + 10 更好
if ( element.getBoundingClientRect().bottom < window.innerHeight + 1 ) {
    loadMorePosts()
}
)
txtit(Var)
return

::es5.class::
::es5class::
::class5::
Var =
(
function Person(name) {
    this.name = name
}

Person.prototype = {
    constructor: Person

    sayName: function () {}
        console.log(this.name)
    },
    
    toString: function () {
        return this.name
    }
}
)
code(Var)
return

::imp::
InputBox, OutputVar, title, enter a name?,,,,,,,,test
Var =
(
import {} from '%OutputVar%'
)
code(Var)
SendInput, {Home}
SendInput, {right 7}
SendInput, +{right 2}
return

::imp2::
InputBox, OutputVar, title, enter a name?,,,,,,,,test
Var =
(
import * as utils from '%OutputVar%'
)
code(Var)
SendInput, {Home}
SendInput, {right 7}
SendInput, +{right 2}
return

::imp3::
::impapi::
::impvue::
::impv::
::imp-vue::
Var =
(
/* @vue/composition-api */
import { useStore } from "vuex"
import { watch, watchEffect, ref, onMounted, onUnmounted, reactive, toRefs, computed } from 'vue' 
)
code(Var)
return



::is-wx::
::iswx::
::is-weixin::
::isweixin::
Var =
(
var is_weixn = function () {
    var ua = navigator.userAgent.toLowerCase();
    if(ua.match(/MicroMessenger/i)=="micromessenger") {
        return true;
    } else {
        return false;
    }
}
)
code(Var)
return

::axios::
Var =
(
// ajax（默认是application/json;charset=utf-8）
axios({
  method: 'post',
  url: 'http://192.168.31.97/index.php',
  data: {
    firstName: 'Fred',
    lastName: 'Flintstone'
  },
  // headers: {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'},
  // data: Qs.stringify({userAccount: 'dgeduc-b', userPwd: '123456', type: 'account', }),
}).then(response => {
	console.log(20181021225057, response)
})
---
const axios = require('axios')

// 根路径
const __API__ = 'http://203.195.147.216:8199'

// 公共参数
const param = { timeStr: '2002-03' }

// 请求拦截器
axios.interceptors.request.use(config => {
    // 叠加根路径
    config.url = __API__ + config.url

    // 超时为10秒
    config.timeout = 5 * 1000

    // 返回最终配置
    return config
})

// 响应拦截器
axios.interceptors.response.use(res => {
    // 只返回 data 即可
    return res.data
}, err => {
    // 如果响应成功但400之类的，那你需要 err.response，如果请求失败，那是没有 response 的
    return Promise.reject(err)
})

const $GET = (url, params) => axios({ method: 'get', url, params })

;(async function() {
    try {
        const data = await $GET('/dgmap/app/interface/townStreetCase', param)
    } catch (err) {
        // 从 axios 反馈的错误中，获取核心配置
        const { url, method, params, data } = err.config
    }
}())
---
// https://github.com/axios/axios/issues/164#issuecomment-327837467
const match = (target, str_ary) => str_ary.some(str => target.includes(str))

axios.defaults.timeout = 3000

// https://github.com/axios/axios/issues/164#issuecomment-327837467
const reTry = (retryCount = 1, delay = 0) => async err => {
    const { message, config } = err

    // match error 
    if (!match(message, ["Network Error", "timeout"])) return Promise.reject(err)
    
    // Set the variable for keeping track of the retry count
    config.__retryCount = config.__retryCount || 0
    
    // Check if we've maxed out the total number of retries
    if (config.__retryCount >= retryCount) return Promise.reject(err)

    // Increase the retry count
    config.__retryCount += 1
    
    // Delay
    await new Promise(resolve => setTimeout(_ => resolve(), delay || 1))

    // Log
    console.warn('retry axios', config)

    // Return the promise in which recalls axios to retry the request
    return axios(config)
}

// demo ...
axios.interceptors.response.use(res => {
    // ...
    return res
}, reTry(4, 1000))
---
// 重试机制！
const _axios = require('axios') 
const axiosRetry = require('axios-retry') 
const axios = _axios.create() 
// https://github.com/softonic/axios-retry/issues/87 const retryDelay = (retryNumber = 0) => { 
  const seconds = Math.pow(2, retryNumber) * 1000; 
  const randomMs = 1000 * Math.random(); 
  return seconds + randomMs; 
}; 
axiosRetry(axios, { 
  retries: 2, 
  retryDelay, 
  // retry on Network Error & 5xx responses 
  retryCondition: axiosRetry.isRetryableError, 
}); 
module.exports = axios;
)
txtit(Var)
return

::axiosget::
::axios.get::
Var =
(
;(async function() {
    const latitude = 22.921901
    const longitude = 113.843319
    const { data } = await axios.get('http://api.map.baidu.com/reverse_geocoding/v3/', {
        params: {
            ak: "7b3SurhIYH6m8C3l0aAM7NAFW0aHEbLT",
            output: "json",
            location: latitude + "," + longitude
        }
    })
    console.log('获取百度地图解析信息', data)
    const { formatted_address, business } = data.result
    console.log('获取详细地理位置：', formatted_address, business)
}())
)
code(Var)
return

::axios.post::
::axios.json::
Var =
(
// ajax（默认是application/json;charset=utf-8）
axios({
  method: 'post',
  url: 'http://192.168.31.97/index.php',
  data: {
    firstName: 'Fred',
    lastName: 'Flintstone'
  }
}).then(response => {
	console.log(20181021225057, response)
})

/**
 * post application/json;charset=utf-8
 */
axios.post('http://192.168.31.97/index.php', {a: 123}).then(response => {
    console.log(20181021221338, response)
})
)
code(Var)
return

::axios.form::
Var =
(
/**
 * post application/x-www-form-urlencoded;charset=utf-8
 * https://github.com/axios/axios#browser
 * 推荐使用 qs： 
 * $ cnpm install qs
 * const params = qs.stringify({ 'a': 123 })
 *
 * cdn 方式使用：
 * <script src="https://cdn.bootcss.com/qs/6.5.2/qs.min.js"></script>
 */
  axios({
    method: 'post',
    url: 'https://19.104.40.10:8080/eventManager/api/External/updateHCGKEvent',
    data: Qs.stringify({ 
        infoContent: '处置内容aaaaaaaaa',
        address: '事发地址aaaaaaaaaaaaa',
        lon: '113.76210332995126',
        lat: '23.02792876378438',
        userId: '13713332652',
    }),
    headers: {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'},
  }).then(response => {
      console.log(20181021225057, response.data)
  })
---
const params = new URLSearchParams()
params.append("infoContent", "处置内容aaaaaaaaa")
params.append("address", "事发地址aaaaaaaaaaaaa")
params.append("lon", "113.76210332995126")
params.append("lat", "23.02792876378438")
params.append("userId", "13713332652")

axios({
  method: 'post',
  url: 'https://19.104.40.10:8080/eventManager/api/External/updateHCGKEvent',
  data: params,
  headers: {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'},
}).then(response => {
    console.log(20181021225057, response.data)
})
)
txtit(Var)
return

::momentt::
::moment::
::moment.now::
t := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
Var =
(
// http://momentjs.cn/docs/#/get-set/second/
// moment(new Date()).format('YYYY/MM/DD HH:mm:ss')
// moment.isMoment(obj);
// moment('fuckyou').isValid()

/*
// get a moment for start
const startMoment = moment()
// get a moment for end
const endMoment = moment()

// set today start
startMoment.set({'hour': 0, 'minute': 0, 'second': 0})
// set today end
endMoment.set({'hour': 23, 'minute': 59, 'second': 59})
 */

 /* 
 startMoment.subtract(1, 'days')
 endMoment.subtract(1, 'days')
  */

moment('2019/04/19 10:33:19').format('YYYY/MM/DD HH:mm:ss')
)
code(Var)
return

::arr2str::
::array2str::
Var =
(
var array2str = (arr) => {
	var str = ""
	arr.forEach(function (e, i) {
    	 str += e.join()
	});
	return str
}
)
code(Var)
return

::xiaoshudian::
::douhao::
Var =
(
function toThousands(num) {
    var result = [],
        counter = 0;
    num = (num || 0).toString().split('');
    for (var i = num.length - 1; i >= 0; i--) {
        counter++;
        result.unshift(num[i]);
        if (!(counter `% 3) && i != 0) { result.unshift(','); }
    }
    return result.join('');
}
---
(123456789).toLocaleString('en-US')  // 1,234,567,890
---
// 保留小數點后2位
Number((这里是你的值).toString().match(/^\d+(?:\.\d{0,2})?/))
)
txtit(Var)
return

:?:.a::
:?:.add::
:?:.addevent::
:?:.addclick::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
.addEventListener('click', e => {
    console.log(%t%, e.target)
})
)
code(Var)
return

::nicescroll::
::jquery.scroll::
::js.nice::
::jq.nice::
::nice::
Var =
(
setTimeout(() => { $('.drapdown__ul').niceScroll({ cursorcolor: 'rgba(0,0,0,0.2)', autohidemode: true, horizrailenabled: false, emulatetouch: true, zindex: 199307100337 })}, 350);
setTimeout(() => $('.drapdown__ul').getNiceScroll().resize(), 0);
)
code(Var)
return

::cmd::
::command::
::umd::
::amd::
Var =
(
// 方式一： 
(function (name, context, definition) {
  if (typeof module != 'undefined' && module.exports) module.exports = definition()
  else if (typeof define == 'function' && define.amd) define(definition)
  else context[name] = definition()
})('你挂在到全局的模块名，譬如jQuery', this, function () {

	// ... 这里写上比的代码

	return {
		...
	}
}, this);
---
// 方式二
(function (factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as anonymous module.
    define(['jquery'], factory);
  } else if (typeof exports === 'object') {
    // Node/CommonJS.
    module.exports = factory(require('jquery'));
  } else {
    // Browser globals.
    factory(jQuery);
  }
}(function (jQuery) {

  "use strict";

  // your code...
}));

// 方法三：underscore提取的
 if (typeof exports !== 'undefined') {
  if (typeof module !== 'undefined' && module.exports) {
    exports = module.exports = _;
  }
  exports._ = _;
} else {
  root._ = _;
}
---
// 方式四：flexSearch的解决方案（https://github.com/nextapps-de/flexsearch/edit/master/flexsearch.js）
/**!
 * @preserve yourName v0.6.21
 * Copyright 2019 Nextapps GmbH
 * Author: Thomas Wilkerling
 * Released under the Apache 2.0 Licence
 * https://github.com/dragon8github/yourName
 */

(function(){

    provide("yourName", (function factory(/* args */){
    	// ... your code
    }(
    	// ... args
    `)), this);

    function provide(name, factory, root){

        let prop;

        // AMD (RequireJS)
        if((prop = root["define"]) && prop["amd"]){

            prop([], function(){

                return factory;
            });
        }
        // Closure (Xone)
        else if((prop = root["modules"])){

            prop[name.toLowerCase()] = factory;
        }
        // CommonJS (Node.js)
        else if(typeof exports === "object"){

            // export
            module.exports = factory;
        }
        // Global (window)
        else{

            root[name] = factory;
        }
    }

}).call(this);
---
// 方式五（elemetui的popper.js ）：https://github.com/ElemeFE/element/blob/dev/src/utils/popper.js
//
// Cross module loader
// Supported: Node, AMD, Browser globals
//
;(function (root, factory) {
    if (typeof define === 'function' && define.amd) {
        // AMD. Register as an anonymous module.
        define(factory);
    } else if (typeof module === 'object' && module.exports) {
        // Node. Does not work with strict CommonJS, but
        // only CommonJS-like environments that support module.exports,
        // like Node.
        module.exports = factory();
    } else {
        // Browser globals (root is window)
        root.Popper = factory();
    }
}(this, function () {

    'use strict';


    function Popper() {
      
    }

    return Popper;
}));
---
(function (global) {
    'use strict';

    if (typeof module !== 'undefined')
            module.exports = domtoimage;
        else
            global.domtoimage = domtoimage;
})(this);
---
// 方式六（推荐）：lodash.js 的兼容方式
;(function() {

    /** Used as a safe reference for `undefined` in pre-ES5 environments. */
    var undefined;

    /** Used as the semantic version number. */
    var VERSION = '4.17.15';

    /** Detect free variable `global` from Node.js. */
    var freeGlobal = typeof global == 'object' && global && global.Object === Object && global;

    /** Detect free variable `self`. */
    var freeSelf = typeof self == 'object' && self && self.Object === Object && self;

    /** Used as a reference to the global object. */
    var root = freeGlobal || freeSelf || Function('return this')();

    /** Detect free variable `exports`. */
    var freeExports = typeof exports == 'object' && exports && !exports.nodeType && exports;

    /** Detect free variable `module`. */
    var freeModule = freeExports && typeof module == 'object' && module && !module.nodeType && module;

    /** Detect the popular CommonJS extension `module.exports`. */
    var moduleExports = freeModule && freeModule.exports === freeExports;

    /** Detect free variable `process` from Node.js. */
    var freeProcess = moduleExports && freeGlobal.process;

    // Export lodash.
    var _ = { defaultsDeep: () => {} };

    // Some AMD build optimizers, like r.js, check for condition patterns like:
    if (typeof define == 'function' && typeof define.amd == 'object' && define.amd) {
      // Expose Lodash on the global object to prevent errors when Lodash is
      // loaded by a script tag in the presence of an AMD loader.
      // See http://requirejs.org/docs/errors.html#mismatch for more details.
      // Use `_.noConflict` to remove Lodash from the global object.
      root._ = _;

      // Define as an anonymous module so, through path mapping, it can be
      // referenced as the "underscore" module.
      define(function() {
        return _;
      });
    }
    // Check for `exports` after `define` in case a build optimizer adds it.
    else if (freeModule) {
      // Export for Node.js.
      (freeModule.exports = _)._ = _;
      // Export for CommonJS support.
      freeExports._ = _;
    }
    else {
      // Export to the global object.
      root._ = _;
    }

}.call(this));

)
txtit(Var)
return


:?:.reduce::
::reduce::
::reduces::
Var =
(
// 强迫症专用语法
const slim = (obj, properties = []) => properties.reduce((p, c) => (p[c] = obj[c], p), {})

// 强迫症专用语法
const newObj = Object.entries(obj).reduce((p, [key, val]) => (p[key] = (isObject(val) || isArray(val)) ? fuck(val) : val, p), {})
---
// 将数组转化为对象
var obj = arr.reduce((p, c) => {
    p[c] = c
    return p
}, {})
---
.reduce((p, c) => p + Number(c.value), 0)
---
.reduce((previousValue, currentValue, index, array) => {
    return previousValue + currentValue
}, 0)
---
// 初始化为数组的示例
children.reduce((previousValue, currentValue) => {
	if (currentValue.hlPid === v.hlItemId)
	   previousValue.push({ name: currentValue.hlItemName, id: currentValue.hlItemId })
	// 默认总是要返回一个数组的
	return previousValue
}, [])
---
// [1,2,3]	
[1,2,3].reduce((previousValue, currentValue, index, array) => {
	return [...previousValue, currentValue, 'childList']
}, []).slice(0, -1)
)
txtit(Var)
return

::date2::
::date.week::
::date.all::
Var =
(
const date2week = t => {
	var date = new Date()
    var year = date.getFullYear()
    var month = date.getMonth() + 1
    var day = date.getDate()
    var hours = date.getHours()
    var minu = date.getMinutes()
    var second = date.getSeconds()
    var week = ['星期天','星期一','星期二','星期三','星期四','星期五','星期六'][date.getDay()]
    var arr = [hours, minu, second].map(item => item < 10 ? "0" + item : item)
	return `${year}年${month}月${day}日 ${week} ${arr[0]}:${arr[1]}:${arr[2]}`
}

date2week(1562737742012)
)
code(Var)
return

::udf::
Var =
(
undefined
)
code(Var)
return

::obja::
::objecta::
::object.a::
::object.as::
::obj.a::
::obj.as::
::objas::
Var =
(
Object.assign({}, )
)
code(Var)
SendInput, {left 1}
return



::fn.before::
::before::
Var =
(
// es5 版本
Function.prototype.before = function(beforefn) {
    var __self = this;

    return function() { 
        beforefn.apply(this, arguments); 
        return __self.apply(this, arguments);
    }
};
---
// es6 async/await 版本：支持异步before
// 如果要保留this，那么不能使用this，依然需要使用原始的function
Function.prototype.before = function (beforefn) {
    var __self = this

    return async (...args) => {
        await beforefn(...args)
        return __self(...args)
    }
}

// 测试函数
let fuck = () => {
	console.log('fuck')
}

// 返回新的函数
_fuck = fuck.before(() => {
	return new Promise((resolve, reject) => {
	   setTimeout(function () {
	   		console.log('success')
	        resolve('success')
	   }, 1000);
	})
})

// start fuck
_fuck()

/* 使用示例 */
let fuck = () => {
	console.log(20190519080323, 'fuck')
}

fuck = fuck.before(() => {
	return new Promise((resolve, reject) => {
	   setTimeout(function () {
	   		console.log('success')
	        resolve('success')
	   }, 1000);
	})
})
---
// next的策略版本
// 注意：用next版本，就意味着你无法直接从fuck()中拿到返回值了，你只能使用回调了。
Function.prototype.before = function(beforefn) {
    var __self = this;

    // 所谓的next，就是把函数注入进去让他代理和执行
    return (...args) => {
        return beforefn(__self, ...args)
    }
};

/* 使用示例 */

// 我们约定，第一个参数就是before为我们注入的数据，其他数据是我们额外接受的
let fuck = (beforeData, you) => {
    // 使用before给我们注入的数据
    console.log('use', beforeData)
    // 使用我们自己接受的数据
    console.log('fuck', you)
}

fuck = fuck.before((next, ...args) => {
    setTimeout(() => {
        // 为fuck注入新参数，可有可无。只是说明而已。实际情况可以灵活调整开发
        next('durex', ...args)
    }, 1000);
})

fuck('Lee')
)
txtit(Var)
return


::fn.after::
::after::
Var =
(
Function.prototype.after = function(afterfn) {
    var __self = this;

    return function() {
        var ret = __self.apply(this, arguments);
        afterfn.apply(this, arguments);
        return ret;
    }
};
)
code(Var)
return

::aop::
::__AOP__::
Var =
(
// （A）定义原始函数
var func = function() {
    console.log(2);
};

Function.prototype.before = function(beforefn) {
    // 保存原始函数（A）的引用
    var __self = this;

    // （B）
    return function() { 
        // 执行 before 函数
        beforefn.apply(this, arguments); 

        // 执行原始函数（A）
        return __self.apply(this, arguments);
    }
};

Function.prototype.after = function(afterfn) {
    // 保存函数（B）的引用
    var __self = this;

    // （C）
    return function() {
        // 执行函数（B）并获取执行结果，而实际上函数（B）的返回的是原始函数（A）的执行结果
        var ret = __self.apply(this, arguments);

        // 执行 after 函数
        afterfn.apply(this, arguments);

        // 返回原函数（A）的执行结果
        return ret;
    }
};

func = func.before(function() {
    console.log(1);
}).after(function() {
    console.log(3);
});

// 执行函数（C）
func();
---
/**
 * 原文地址：https://blog.bitsrc.io/aspect-oriented-programming-in-javascript-c4cb43f6bfcc
 * gists: https://gist.githubusercontent.com/deleteman/1b73da25feabf32db33c611674eb1ca6/raw/cee7d652ea4d44220388dc86b13377f981f5fc76/aop.js
 */

/** 获取 class 中所有的 「函数名」 */
const getMethods = obj => Object.getOwnPropertyNames(Object.getPrototypeOf(obj)).filter(item => typeof obj[item] === 'function')

/** 核心工具 */
const replaceMethod = (target, methodName, aspect, advice) => {
    // 原始函数
    const originMethod = target[methodName] 

    // 修改函数引用
    target[methodName] = (...args) => {

        // before hook
        if (['before', 'around'].includes(advice)) {
            aspect.apply(target, args)
        }

        // 执行原函数
        const returnedValue = originMethod.apply(target, args)

        // after hook
        if (['after', 'around'].includes(advice)) {
            aspect.apply(target, args)
        }

        // retrun hook（⚠️注意⚠️，此处的设计是拦截返回值）
        if ('return' == advice) {
            return aspect.apply(target, [returnedValue])
        }

        // normal return 
        return returnedValue
    }
}

// 入口
const inject = (target, aspect, advice, type, method = null) => {
    // 如果是传入的类型是 「method」 ，那就是想注入特定某一个函数，这需要外部手动传入你想注入的 「函数名」
    if (type == 'method') {
        if (method != null) {
            replaceMethod(target, method, aspect, advice)
        } else {
            throw new Error('Tryin to add an aspect to a method, but no method specified')
        }
    }
    
    // 否则就是注入所有函数
    if (type == 'methods') {
        getMethods(target).forEach(m => replaceMethod(target, m, aspect, advice))
    }
}

//////////
// demo //
//////////

class MyBussinessLogic {
    add(a, b) { return a + b }
    power(a, b) { return a ** b }
    concat(a, b) { return a + b }
}

const o = new MyBussinessLogic()

function loggingAspect(...args) {
    console.log('Arguments received: ' + args)
}

function printType(value) {
    console.log('Returned type: ' + typeof value)
    
    // ⚠️注意⚠️，此处的设计的 「return hook」 是会拦截返回值的，所以你必须手动返回
    return value
}

inject(o, loggingAspect, 'before', 'methods')
inject(o, printType, 'return', 'methods')

o.add(2,2)
o.power(2, 3)
o.concat('hello', 'goodbye')
)
txtit(Var)
return

::eventtarget::
::js.eventtarget::
::event.target::
Var =
(
function EventTarget() {

}

EventTarget.prototype = {
	constructor: EventTarget,
	addListener: function (type, listener) {
		if (!this.hasOwnProperty("_listeners")) {
			this._listeners = [];
		}

		if (typeof this._listeners[type] == 'undefined') {
			this._listeners[type] = []
		}

		this._listeners[type].push(listener);
	},
	trigger: function (event) {
		if (!event.target) {
			event.target = this;
		}

		if (!event.type) {
			throw new Error("Event object miss 'type' property.");
		}

		if (this._listeners && this._listeners[event.type] instanceof Array) {
			var listeners = this._listeners[event.type];
			for (var i = 0; i < listeners.length; i++) {
			    listeners[i].call(this, event);
			}
		}
	},
	removeListener: function (type, listener) {
		if (this._listeners && this._listeners[type] instanceof Array) {
			var listeners = this._listeners[type];
			for (var i = 0; i < listeners.length; i++) {
			    if (listeners[i] === listener) {
			    	listeners.splice(i, 1);
			    	break;
			    }
			}
		}
	},
}

var event = new EventTarget();
event.addListener('message', function (event) {
	console.log('message is ' + event.data);
})
event.trigger({
	type: 'message',
	data: 'Hello world!'
})
)
code(Var)
return

::__event::
::__event__::
::js.event::
Var =
(
window.__EVENT__ = {
     // 缓存列表
     clientList: [],
     listen: function(key, fn) {
         if (!this.clientList[key]) {
             this.clientList[key] = [];
         }
         // 订阅的消息添加进缓存列表
         this.clientList[key].push(fn);
     },
     trigger: function() {
         var key = Array.prototype.shift.call(arguments),
             fns = this.clientList[key];
         // 如果没有绑定对应的消息
         if (!fns || fns.length === 0) {
             return false;
         }
         for (var i = 0, fn; fn = fns[i++];) {
             // arguments 是 trigger 时带上的参数
             fn.apply(this, arguments);
         }
     },
     remove: function(key, fn) {
         var fns = this.clientList[key];
         if (!fns) { // 如果 key 对应的消息没有被人订阅，则直接返回
             return false;
         }
         if (!fn) { // 如果没有传入具体的回调函数，表示需要取消 key 对应消息的所有订阅
             fns && (fns.length = 0);
         } else {
             for (var l = fns.length - 1; l >= 0; l--) { // 反向遍历订阅的回调函数列表
                 var _fn = fns[l];
                 if (_fn === fn) {
                     fns.splice(l, 1); // 删除订阅者的回调函数
                 }
             }
         }
    }
};

)
code(Var)
return

::unique::
::norepeatarr::
::norepeat::
::no-repeat::
Var =
(
var unique = function (arr) {
    var hash = {},
        i = arr.length,
        key, res = []
    while (i--) {
        key = arr[i]
        if (hash[key]) continue
        hash[key] = 1
        res.unshift(key)
    }
    return res
}

/**
 * es6： return Array.from(new Set(arr));
 * 补充： return [...new Set(arr)]
 */
function unique(arr) {
    var retArray = [];
    for (var i = 0; i < arr.length; i++) {
       !~retArray.indexOf(arr[i]) && retArray.push(arr[i]);
    }
    return retArray;
}

// 终极版
const unique = a => [...new Set(a)]
)
code(Var)
return

::ls::
::wl::
::wls::
::wg::
::lg::
::wlg::
Var =
(
window.localStorage.setItem('key', 'value')
window.localStorage.getItem('key')
---
// cnpm i localforage -S
import localforage from 'localforage'

localforage.config({
    driver: [localforage.LOCALSTORAGE, localforage.WEBSQL, localforage.INDEXEDDB],
    name: '__CACHE__',
    size: 1024 * 1024
})

// 清空缓存
export const clearCache = () => localforage.clear()

// 设置缓存数据
export const setCache = (key, value) => localforage.setItem(key, value)

// 获取缓存数据
export const getCache = key => localforage.getItem(key)
)
txtit(Var)
return


::time2time::
::date2date::
Var =
(
// 转化为年月日
const time2time = (time) => {
    var date = new Date(time.replace(/-/g, '/'));
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    return year + '/' + month + '/' + day
}
)
code(Var)
return

::$.scroll::
::$.onscroll::
Var =
(
$('.trajectoryTable').scroll(function (e) {
    console.log(20180825190354, e.currentTarget.scrollTop)
})
)
code(Var)
return

::aotuscroll::
::$.autoscroll::
Var =
(
 ;$.fn.extend({  
    autoScroll (opt = {speed: 1500, size: 4, height: 40, time: 1000}) {  
        // jQuery对象
        var $el = this;
        // 核心函数
        var _autoScroll = function () {
            // 自动滚动
            var timer =  setInterval(() => {
                // 滚动的速度
                const speed = opt.speed
                // 每次滚动多少条
                const size = opt.size;
                // 每条的高度是多少
                const height = opt.height;
                // 每次滚动的距离
                const distance = size * height;
                // 当前滚动的高度
                const currentScrollTop = $el.scrollTop()
                // 底部位置
                const bottom = $el.prop('scrollHeight') - $el.height()
                // 如果已经滚到底了
                if (currentScrollTop === bottom) {
                    // 滚回头部
                    $el.animate({ scrollTop: 0 }, 0);
                } else {
                    // 余数
                    const remainder = currentScrollTop `% height
                    // 下一次滚动的位置 = 当前位置 + 每次滚动的位置 - 余数
                    const nextScrollTop = currentScrollTop + distance - remainder
                    // 开始滚动
                    $el.animate({ scrollTop: nextScrollTop + 'px' }, speed);
                }
            // 滚动间隔
            }, opt.time + opt.speed);
            // 鼠标移入的时候，删除自动滚动, 鼠标移出的时候，自动滚动
            $el.one('mouseover', _ => clearInterval(timer)).one('mouseleave', _autoScroll)
        }
        // 开始滚动
        _autoScroll()
    }
});

$('.trajectoryTable').autoScroll()
)
code(Var)
return

::morencanshu::
::defaultopt::
::defaultoptions::
::defaultoption::
::es6.morencanshu::
::js.morencanshu::
::es.morencanshu::
Var =
(
var a = function (opt = {a: 1, c: 2}) {
	console.log(20180825191248, opt)
}
)
code(Var)
return


::qiancopy::
::extend::
::qiankaobei::
::inher::
::inherit::
::copy::
::deepextend::
::deepextends::
::shenkaobei::
::deepcopy::
::$.extend::
::extend::
::kaobei::
::deep::
Var =
(
function deepCopy(obj, cache = []) {
    if (obj === null || typeof obj !== 'object') {
        return obj
    }

    const hit = cache.find(c => c.original === obj)

    if (hit) {
        return hit.copy
    }

    const copy = Array.isArray(obj) ? [] : {}

    cache.push({ original: obj, copy })

    Object.keys(obj).forEach(key => {
        const target = obj[key]
        copy[key] = deepCopy(target, cache)
    })

    return copy
}
---
export const deepEQ = function (x, y) {
  // 指向同一内存时
  if (x === y)
    return true

  else if ((typeof x == "object" && x != null) && (typeof y == "object" && y != null)) {
    if (Object.keys(x).length != Object.keys(y).length)
      return false

    for (var prop in x) {
      if (y.hasOwnProperty(prop))
      {
        if (! deepEQ(x[prop], y[prop]))
          return false
      }
      else
        return false
    }

    return true
  }
  else
    return false
}
---
// 继承模式中最后的圣杯（Holy Grail）
function extend(Child, Parent){
    var F = function(){ };
    F.prototype = Parent.prototype;
    Child.prototype = new F();
    Child.prototype.constructor = Child;
    Child.parent = Parent.prototype
}
---
// 用IIFE优化桥梁F，不需要每次都创建
var inherit = (function(){
  var F = function () {}
  return function (Child, Parent) {
    F.prototype = Parent.prototype;
    Child.prototype = new F();
    Child.prototype.constructor = Child;
    Child.parent = Parent.prototype
  }
}());
---
// elementUI utils.js 
// https://github.com/ElemeFE/element/blob/dev/src/utils/util.js
function extend(to, _from) {
  for (let key in _from) {
    to[key] = _from[key];
  }
  return to;
};
---
export const copyToClipboard = text => {
  const el = document.createElement('textarea')
  el.value = text
  el.setAttribute('readonly', '')
  el.style.position = 'absolute'
  el.style.left = '-9999px'
  document.body.appendChild(el)
  const selected = document.getSelection().rangeCount > 0 ? document.getSelection().getRangeAt(0) : false
  el.select()
  document.execCommand('copy')
  document.body.removeChild(el)
  if (selected) {
    document.getSelection().removeAllRanges()
    document.getSelection().addRange(selected)
  }
}
)
txtit(Var)
return




::swalert::
::swa::
::salert::
::swal::
Var =
(
// https://sweetalert.js.org/guides/
swal({
    title: '干得漂亮！',
    text: '更新成功！',
    timer: 3000,
    icon: 'success', // "warning", "error", "success" and "info".
    closeOnClickOutside: true,
    closeOnEsc: true,
    buttons: {
        cancel: '取消按钮',
        confirm: 'OK',
        buttonFuck: { 
            value: 'Fuck',
            // 要使用这个功能先注释 timer 配置。开启这个的时候，点击不会关闭alert, 并且会显示loading。可以通过 swal.stopLoading() 全局关闭
            closeModal: false,
        }
    }
}).then(_ => {
    console.log(20190226144843, _)
})
)
code(Var)
return


::$.fn::
::$.plugin::
::$.fn.extend::
Var =
(
$.fn.extend({  
    autoScroll: function(value) {  
        console.log(20180825204054, this, value)
    }  
});  

$('.trajectoryTable').autoScroll('fuckyou')
)
code(Var)
return

::$.animate::
Var =
(
$('#trajectoryUl').animate({ scrollTop: '40px' }, 1500);
)
code(Var)
return

::isanimate::
::jq.animate::
::is.animate::
::is-animate::
Var =
(
// 判断元素是否正处于动画状态
if (!$(element).is(":animated")) {
	// 如果当前没有进行动画，那么添加动画
	$(element).animate({ scrollTop: `${scroll}px` }, 1500);
}
)
code(Var)
return


::wheel::
::onscroll::
::scroll::
Var =
(
// main.js
import scroll from 'vue-seamless-scroll'
Vue.use(scroll)


<vue-seamless-scroll :class-option="optionSingleHeightTime" :data="myItems" class='seamless-warp'>
  <div v-for='(item, index) in myItems' :key='index' class='item py-1 pl-4 pr-2'>
    祝贺 <div class="highlight">{{ item._serverData.cmd }}</div> 团购成功
  </div>
</vue-seamless-scroll>

computed: {
  optionSingleHeightTime () {
      return { 
        // singleHeight: 95, waitTime: 2500,
        step: 0.5,
      }
  }
},

<style lang="scss" scoped>
.seamless-warp {
  width: 400px;
  height: 21em;
  overflow-y: hidden;
  background: rgba(255, 255, 255, .2);
}
</style>
---
windowAddMouseWheel();
function windowAddMouseWheel() {
    var scrollFunc = function (e) {
        e = e || window.event;
        if (e.wheelDelta) {  //判断浏览器IE，谷歌滑轮事件
            if (e.wheelDelta > 0) { //当滑轮向上滚动时
                console.log("滑轮向上滚动");
            }
            if (e.wheelDelta < 0) { //当滑轮向下滚动时
                console.log("滑轮向下滚动");
            }
        } else if (e.detail) {  //Firefox滑轮事件
            if (e.detail> 0) { //当滑轮向上滚动时
                console.log("滑轮向上滚动");
            }
            if (e.detail< 0) { //当滑轮向下滚动时
                console.log("滑轮向下滚动");
            }
        }
    };
    //给页面绑定滑轮滚动事件
    if (document.addEventListener) {
        document.addEventListener('DOMMouseScroll', scrollFunc, false);
    }
//滚动滑轮触发scrollFunc方法
    window.onmousewheel = document.onmousewheel = scrollFunc;
}
---
/**
 * 图片懒加载
 * https://www.liaoxuefeng.com/article/00151045553343934ba3bb4ed684623b1bf00488231d88d000
 * <img src="https://loading.io/assets/img/ajax.gif" data-src="http://www.hongte.info/assets/images/banner2.jpg">
 * <div style="margin-top: 1000px;"></div>
 */
;(function(){
    // 获取包含data-src属性的img
    var lazyImgs = document.querySelectorAll('img[data-src]')
    // 将Node-List转化成数组类型
    lazyImgs = [].slice.apply(lazyImgs);
     // 定义事件函数
    var lazyload = function () {
        // 获取页面滚动的高度
        var wtop = window.scrollY;
        // 获取可视区域高度
        var wheight = document.documentElement.clientHeight;
        // 判断是否还有未加载的img
        if (lazyImgs.length > 0) {
            // 循环处理数组的每个img元素
            for (var i = lazyImgs.length - 1; i >= 0; i--) {
                // 获取图片信息
                var el = lazyImgs[i], rect = el.getBoundingClientRect(), src = el.getAttribute('data-src')
                // 判断是否在可视范围内:
                if (rect.top - wtop < wheight) {
                   // 设置src属性:
                   el.setAttribute('src', src);
                   // 删除对象
                   Array.prototype.splice.call(lazyImgs, i, 1);
                }
            }
        }
    };

    // 懒加载优化：滚动节流策略
    var __SCROLLTIMER__ = null
    // 绑定事件
    window.onscroll = function () {
        clearTimeout(__SCROLLTIMER__);
        __SCROLLTIMER__ = setTimeout(lazyload, 150);
    }

    // 手动触发一次, 因为页面显示时，并未触发scroll事件。
    lazyload();
}());
)
txtit(Var)
return

::outerhtml::
Var =
(
$(".test").prop("outerHTML");
)
code(Var)
return

::formdata::
::obj2formdata::
::json2formdata::
::obj2form::
Var =
(
// https://github.com/github/fetch#file-upload
// fetch('/avatars', { method: 'POST', body: data })
export const obj2formdata = (json) => {
  var data = new FormData()
  if (json) {
    Object.keys(json).forEach(function (key) {
        data.append(key, json[key])
    });
  } 
  return data
}

// 将对象转化为formdata格式
// 也就是application/x-www-form-urlencoded;charset=utf-8提交格式
// 如何使用formData提交参考：https://www.cnblogs.com/CyLee/p/9441535.html
export const obj2formdatastr = (body) => {
  if (body) {
      let formparams = '';
      Object.keys(body).forEach(key => {
         if (formparams.length > 0) {
           formparams += '&';
         }
         formparams = formparams + key + '=' + body[key];
      });
      return formparams
  }
  return ''
}
)
code(Var)
return


::prototype.jicheng::
::yuanxingjicheng::
::js.jicheng::
::es5.jicheng::
::es5jicheng::
Var =
(
// es5最好的继承实现方式：寄生组合继承
// JS中的继承(上)：https://segmentfault.com/a/1190000014476341
// js中的继承（下）：https://mp.weixin.qq.com/s/91nRBa_mDUu-w77FptvmoQ
function inheritPrototype(childType, superType) {
	// 使用es5的Object.create浅复制创建了父类原型的
	// 如果不支持es5的 Object.create ，可以使用这个方法代替
	// function object (o) {function F() {}; F.prototype = o; return new F(); }
    var prototype = Object.create(superType.prototype); 
    // 修正原型的构造函数
    prototype.constructor = childType; 
    // 将子类的原型替换为这个原型
    childType.prototype = prototype; 
}

function SuperType(name) { 
	this.name = name;
    this.colors = ["red", "blue", "green"]; 
}

SuperType.prototype.sayName = function() {
	alert(this.name ); 
};

function childType(name, age) { 
	SuperType.call(this, name);
    this.age = age; 
}

// 核心：因为是对父类原型的复制，所以不包含父类的构造函数，也就不会调用两次父类的构造函数造成浪费
inheritPrototype(childType , SuperType); 
childType.prototype.sayAge = function(){
	alert(this.age); 
}

var s = new childType('lee', 18)
// 调用父类的方法
s.sayName()
)
code(Var)
return

::class.toggle::
::classtoggle::
::class-toggle::
Var =
(
// 如果你曾经通过 if 条件语句为元素添加 class，那就应该赶紧改用这种做法。
// 正确的方式是为 toggle 方法传入第二个参数，如果该参数返回 true ，则指定的 class 就会添加至元素上。
el.classList.toggle('some-orange-class', theme === 'orange');
)
code(Var)
return

::/plain::
::plain/::
    SendInput, text/plain
return

::.up::
::toup::
::toup::
::todaxie::
::toda::
::tou::
  p("toUpperCase()")
return

::tol::
::tolo::
::tolow::
::toxiaoxie::
::toxiao::
  p("toLocaleLowerCase()")
return

::err::
::iferr::
  p("if (err) throw new Error(err.message);")
return

::ph::
::place::
  p("placeholder")
return

::pup::
  p("puppeteer")
return

::gzhs::
::gz::
::const::
Var = 
(
constructor(...props) {
    super(...props)
}
)
code(Var)
return

::try::
Var = 
(
try {
  
} catch (err) {
  throw new Error(err.message)
}
)
code(Var)
return

::udf::
::undefin::
    SendInput, undefined
return

::activehtml::
Var = 
(
var hiddenProperty = 'hidden' in document ? 'hidden' : 
					'webkitHidden' in document ? 'webkitHidden' :
					'mozHidden' in document ? 'mozHidden' : 
					null;
var visibilityChangeEvent = hiddenProperty.replace(/hidden/i, 'visibilitychange');
var onVisibilityChange = function() {
    if (document[hiddenProperty]) {
        window.alert('页面非激活');
    } else {
        window.alert('页面激活')
    }
}
document.addEventListener(visibilityChangeEvent, onVisibilityChange);
)
code(Var)
return

::orderby::
Var = 
(
const orderBy = (arr, props, orders) =>
    [...arr].sort((a, b) =>
    props.reduce((acc, prop, i) => {
      if (acc === 0) {
        const [p1, p2] = orders && orders[i] === 'desc' ? [b[prop], a[prop]] : [a[prop], b[prop]];
        acc = p1 > p2 ? 1 : p1 < p2 ? -1 : 0;
      }
      return acc;
    }, 0));
const users = [{ name: 'fred', age: 48 }, { name: 'barney', age: 36 }, { name: 'fred', age: 40 }];
orderBy(users, ['name', 'age'], ['asc', 'desc']); // [{name: 'barney', age: 36}, {name: 'fred', age: 48}, {name: 'fred', age: 40}]
orderBy(users, ['name', 'age']); // [{name: 'barney', age: 36}, {name: 'fred', age: 40}, {name: 'fred', age: 48}]
)
code(Var)
return

::is::
Var = 
(
// https://github.com/Chalarangelo/30-seconds-of-code/blob/master/snippets/curry.md
const is = (type, val) => ![, null].includes(val) && val.constructor === type;
is(Array, [1]); // true
is(ArrayBuffer, new ArrayBuffer()); // true
is(Map, new Map()); // true
is(RegExp, /./g); // true
is(Set, new Set()); // true
is(WeakMap, new WeakMap()); // true
is(WeakSet, new WeakSet()); // true
is(String, ''); // true
is(String, new String('')); // true
is(Number, 1); // true
is(Number, new Number(1)); // true
is(Boolean, true); // true
is(Boolean, new Boolean(true)); // true

export const isString = input => Object.prototype.toString.call(input) === '[object String]'

export const isNumber = input => (typeof input === 'number' || Object.prototype.toString.call(input) === '[object Number]') && input === input

export const isBoolean = input => Object.prototype.toString.call(input) === '[object Boolean]'

export const isArray = input => input instanceof Array || Object.prototype.toString.call(input) === '[object Array]'

export const isObject = input => input != null && Object.prototype.toString.call(input) === '[object Object]'

export const isFunction = input => input instanceof Function || Object.prototype.toString.call(input) === '[object Function]'

const inBrowser = typeof window !== 'undefined'
const inWeex = typeof WXEnvironment !== 'undefined' && !!WXEnvironment.platform
const weexPlatform = inWeex && WXEnvironment.platform.toLowerCase()
const UA = inBrowser && window.navigator.userAgent.toLowerCase()
const isIE = UA && /msie|trident/.test(UA)
const isIE9 = UA && UA.indexOf('msie 9.0') > 0
const isEdge = UA && UA.indexOf('edge/') > 0
const isAndroid = (UA && UA.indexOf('android') > 0) || (weexPlatform === 'android')
const isIOS = (UA && /iphone|ipad|ipod|ios/.test(UA)) || (weexPlatform === 'ios')
const isChrome = UA && /chrome\/\d+/.test(UA) && !isEdge
const isPhantomJS = UA && /phantomjs/.test(UA)
const isFF = UA && UA.match(/firefox\/(\d+)/)
)
code(Var)
return

::uuid::
Var = 
(
var url = URL.createObjectURL(new Blob())
var uuid = url.substring(url.lastIndexOf('/') + 1)
---
// 9位 简易版
const MdUuid = () => Math.random().toString(36).slice(4)
MdUuid() // "r1mca5d4z"

// 32位 正式版
const UUIDGeneratorBrowser = () => ([1e7] + -1e3 + -4e3 + -8e3 + -1e11).replace(/[018]/g, c => (c ^ (crypto.getRandomValues(new Uint8Array(1))[0] & (15 >> (c / 4)))).toString(16));
UUIDGeneratorBrowser(); // '7982fcfe-5721-4632-bede-6000885be57d'

// 36位
function getUUID () {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
    return (c === 'x' ? (Math.random() * 16 | 0) : ('r&0x3' | '0x8')).toString(16)
  })
}
---
// Both numbers and letters
function mixedID() {
  var now = new Date();
  
  timestamp = now.getFullYear().toString();
  timestamp += (now.getMonth < 9 ? '0' : '') + now.getMonth().toString();
  timestamp += ((now.getDate < 10) ? '0' : '') + now.getDate().toString();
  timestamp += now.getHours().toString();
  timestamp += now.getMinutes().toString();
  timestamp += now.getSeconds().toString();
  timestamp += now.getMilliseconds().toString();
  
  id = 'a';
  for (var i = 0; i < timestamp.length; i++) {
    id = id + String.fromCharCode(97 + Number(timestamp[i])) + (Number(timestamp[i]) + 5);
  }
  return id
}

// Letters
function baseID() {
  var now = new Date();

  timestamp = now.getFullYear().toString();
  timestamp += (now.getMonth < 9 ? '0' : '') + now.getMonth().toString();
  timestamp += ((now.getDate < 10) ? '0' : '') + now.getDate().toString();
  timestamp += now.getHours().toString();
  timestamp += now.getMinutes().toString();
  timestamp += now.getSeconds().toString();
  timestamp += now.getMilliseconds().toString();

  id = '';
  for (var i = 0; i < timestamp.length; i++) {
    id = id + String.fromCharCode(97 + Number(timestamp[i]));
  }
  return id
}

// Numbers
function numID() {
  var now = new Date();

  id = now.getFullYear().toString();
  id += (now.getMonth < 9 ? '0' : '') + now.getMonth().toString();
  id += ((now.getDate < 10) ? '0' : '') + now.getDate().toString();
  id += now.getHours().toString();
  id += now.getMinutes().toString();
  id += now.getSeconds().toString();
  id += now.getMilliseconds().toString();

  return Number(id)
}
)
txtit(Var)
return

::user-agents::
::user-agent::
::userAgents::
::userAgent::
Var = 
(
const userAgents = [
  'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.12) Gecko/20070731 Ubuntu/dapper-security Firefox/1.5.0.12',
  'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506)',
  'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11',
  'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.20 (KHTML, like Gecko) Chrome/19.0.1036.7 Safari/535.20',
  'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko Fedora/1.9.0.8-1.fc10 Kazehakase/0.5.6',
  'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.71 Safari/537.1 LBBROWSER',
  'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Win64; x64; Trident/5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET CLR 2.0.50727; Media Center PC 6.0) ,Lynx/2.8.5rel.1 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/1.2.9',
  'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)',
  'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; QQBrowser/7.0.3698.400)',
  'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; QQDownload 732; .NET4.0C; .NET4.0E)',
  'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:2.0b13pre) Gecko/20110307 Firefox/4.0b13pre',
  'Opera/9.80 (Macintosh; Intel Mac OS X 10.6.8; U; fr) Presto/2.9.168 Version/11.52',
  'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.12) Gecko/20070731 Ubuntu/dapper-security Firefox/1.5.0.12',
  'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; LBBROWSER)',
  'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko Fedora/1.9.0.8-1.fc10 Kazehakase/0.5.6',
  'Mozilla/5.0 (X11; U; Linux; en-US) AppleWebKit/527+ (KHTML, like Gecko, Safari/419.3) Arora/0.6',
  'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; QQBrowser/7.0.3698.400)',
  'Opera/9.25 (Windows NT 5.1; U; en), Lynx/2.8.5rel.1 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/1.2.9',
  'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'
]
)
code(Var)
return



::exec::
::regexp::
::regex::
::reg::
Var = 
(
var a = `[ 'PHPSESSID=sglvjui97o18bg6qsqobj77p86; path=/; HttpOnly' ]`;
/PHPSESSID=(.*?);/g.exec(a)
)
code(Var)
return

::$once::
Var = 
(
const once = fn => {
	let done = false;

	return function () {
		return done ? undefined : ((done = true), fn.apply(this, arguments))
	}
}
)
code(Var)
return

::$bind::
Var = 
(
Function.prototype.bind = function() {
    var self = this, // 保存原函数
        context = [].shift.call(arguments), // 需要绑定的 this 上下文
        args = [].slice.call(arguments); // 剩余的参数转成数组
    return function() { // 返回一个新的函数
        return self.apply(context, [].concat.call(args, [].slice.call(arguments)));
        // 执行新的函数的时候，会把之前传入的 context 当作新函数体内的 this
        // 并且组合两次分别传入的参数，作为新函数的参数
    }
};
)
code(Var)
return


::enum::
::js.enum::
::meiju::
::js.meiju::
Var = 
(
const Status = () => Object.create({})

function StatusInner(name, index, desc) {
    this.name = name
    this.index = index
    this.desc = desc
    this.toJSON = () => this.name
}

Object.defineProperties(Status, {
    NOT_STARTED:  { enumerable: true, value: Object.freeze(new StatusInner('NOT_STARTED', 0, 'This task is waiting to be started!')) },
    IN_PROGRESS:  { enumerable: true, value: Object.freeze(new StatusInner('IN_PROGRESS', 1, 'This task is underway!')) },
    COMPLETED:    { enumerable: true, value: Object.freeze(new StatusInner('COMPLETED', 2, 'This task is completed. Good job!')) },
    CANCELLED:    { enumerable: true, value: Object.freeze(new StatusInner('CANCELLED', 3, 'Something went wrong, and this task was cancelled.')) },
    NEEDS_UPDATE: { enumerable: true, value: Object.freeze(new StatusInner('NEEDS_UPDATE', 4, 'This task was completed, but something needs fixing.')) },
})
---
export const BattleStatus = () => Object.create({})
function StatusInner(value, desc) {
    this.value = value
    this.desc = desc
}
Object.defineProperties(BattleStatus, {
    NOT_TSTARTED:  { enumerable: true, value: Object.freeze(new StatusInner('NOT_STARTED', '未开始')) },
    IN_PROGRESS:   { enumerable: true, value: Object.freeze(new StatusInner('IN_PROGRESS', '战斗中')) },
    VICTORY:       { enumerable: true, value: Object.freeze(new StatusInner('COMPLETED', '战斗胜利')) },
    FAIL:          { enumerable: true, value: Object.freeze(new StatusInner('CANCELLED', '战斗失败')) },
})
)
txtit(Var)
return

::$echo::
Var = 
(
var button = document.createElement('button');
button.textContent = "Say Hello";
button.id = "fuck";
button.onclick = function() {
    window.alert('Hello');
}
document.body.appendChild(button);
)
code(Var)
return

::echo::
Var =
(
cat>./fuckyou.json<<EOF
{
    "server": "0.0.0.0",
    "server_port": 443,
    "local_address": "127.0.0.1",
    "local_port": 1080,
    "password": "daweiyixiangshihao",
    "timeout": 300,
    "method": "aes-256-cfb",
    "fast_open": false,
    "workers": 1
}
EOF
)
p(Var)
return



::args2arr::
::2arr::
::args2::
    SendInput, [].slice.call(arguments)
return

::checkpwdlevel::
Var = 
(
var checkPwdLevel = function (str) {
    let nowLv = 0;
    if (str.length < 6) {
        return nowLv
    }
    //把规则整理成数组，再进行循环判断
    let rules=[/[0-9]/,/[a-z]/,/[A-Z]/,/[\.|-|_]/];
    for(let i=0;i<rules.length;i++){
        if(rules[i].test(str)){
            nowLv++;
        }
    }
    return nowLv;
}
)
code(Var)
return

::$.load::
Var = 
(
$("#app").load('http://www.baidu.com', function (data, status) {
    console.log(arguments);
})
)
code(Var)
return

::focusinput::
::inputfoucs::
Var = 
(
function getElementTop(element){
    try {
　  　　　var actualTop = element.offsetTop;
　  　　　var current = element.offsetParent;
　  　　　while (current !== null){
　  　　　　　actualTop += current.offsetTop;
　  　　　　　current = current.offsetParent;
　  　　　}
　  　　　return actualTop;
    } catch (e) {}
　  　}

setTimeout(() => {
    window.scrollTo(0, getElementTop(e.target));
}, 150)
)
code(Var)
return

::$siblings::
Var = 
(
var list = Array.prototype.filter.call(el.parentNode.children, function(child){
  return child !== el;
});
console.log(list);
)
code(Var)
return

::ready::
::$ready::
::onready::
Var = 
(
function ready(fn) {
  if (document.attachEvent ? document.readyState === "complete" : document.readyState !== "loading"){
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', fn);
  }
}
)
code(Var)
return

::setattr::
::attr::
Var =
(
el.setAttribute('tabindex', 3);

)
code(Var)
return

::el.getattr::
::getattr::
Var =
(
el.getAttribute('tabindex');
)
code(Var)
return

::el.setattr::
::setattr::
Var =
(
el.setAttribute('tabindex', '1');
)
code(Var)
return

::getstyle::
Var =
(
getComputedStyle(el)[ruleName];
)
code(Var)
return

::setstyle::
Var =
(
el.style.borderWidth = '20px';
)
code(Var)
return


::dianjikongbaichu::
::kongbaichu::
::shijianmaopao::
::mouseup::
::eventmaopao::
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
code(Var)
return

::exchange::
Var = 
(
var arr = [1,4,6,43,5,9,0,23,45];
var exchange = function (arr, index1, index2) {
    var tmp = arr[index1];
    arr[index1] = arr[index2];
    arr[index2] = tmp;
    return arr;
}
arr = exchange(arr,3,7);
console.log(arr);
)
code(Var)
return

::$remove::
    SendInput, el.parentNode.removeChild(el)
return

::eval::
    SendRaw, eval('(' + options + ')')
return


::is-ios::
Var = 
(
;(function(){
      var u = navigator.userAgent, app = navigator.appVersion;
      var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1; //g
      var isIOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
      if (isAndroid) {
        
      } 
      if (isIOS) {
       
      }
}());
)
code(Var)
return

::wa::
::walert::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
window.alert([%t%, ].join('  '));
)
code(Var)
SendInput, {left 14}
return

; 构造函数的拼音老是记不得，以后就用联想来拼写好了
::gz::
    SendInput, constructor
return

; insert jquery 的意思，也有爱jquery的意思，为没有jquery的网站添加jq插件
::ijq::
::iqj::
Var = 
(
var o = document.createElement('script')
o.src = 'https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js'
document.documentElement.appendChild(o) // console.log(jQuery.fn.jquery)


var o = document.createElement('script')
o.src = 'https://libs.cdnjs.net/axios/0.19.2/axios.min.js'
document.documentElement.appendChild(o) // console.log(jQuery.fn.jquery)
)
code(Var)
return

::myheight::
::fuckheight::
Var =
(
/*
- 可视高度 document.documentElement.clientHeight / widow.innerHeight
- 滚动高度 window.scrollY;
- 相对窗口的距离 el.getBoundingClientRect().top

height, innerheight, outerheight, outerheight 四大高度的区别：
1、height元素本身高度
2、innerheight包含padding的高度
3、outerheight包含padding、border的高度
4、outerheight（true）包含padding、border、margin的高度

offset 系列的意义：
offsetHeight/offsetWidth：获取对象的宽高，与style.widtht的区别是：若对象的宽度设定值为百分百宽度，无论页面变大或变小，style.width都返回此百分比；而offsetWidth则返回页面中对象的宽度值而不是百分比。
offsetLeft/offsetTop：表示当前元素对象相对于其定位元素的垂直/水平偏移量
*/
)
code(Var)
return

; 打印出jQuery的版本
::$.v::
::$.version::
    SendInput, console.log(jQuery.fn.jquery);
return

::$before::
    SendRaw, el.insertAdjacentHTML('beforebegin', htmlString);
return

::$After::
    SendRaw, el.insertAdjacentHTML('afterend', htmlString);
return

::$Append::
Var = 
(
var el = document.createElement("div");
el.id = "fuck";
var wraphtml = document.body.appendChild(el);
)
code(Var)
return


::es6class::
::esclass::
::es.class::
::js.class::
::es6.class::
::class::
::person::
Var = 
(
export default class Person {
	constructor (name, age) {
    // 只要你有 extends 必须使用 super()
		// super();
		// 建议内置的变量加个_区分，而要访问的变量用get关键词来识别返回
		this._name = name;
		this._age = age;
	}

	get name() {
		return this._name
	}

	set name(value) {
		this._name = value
	}

	get age() {
		return this._age
	}

	set age(value) {
		this._age = value
	}

	static version () {
		return 'v0.1.0';
	}

	toString () {
        return ``name： ${this._name}，age：${this._age}``
    }
}

var p = new Person('Lee', 18)
)
code(Var)
return

/*
::c::
SendInput, {Text}console.log('');
SendInput, {left 2}{click 2}

return

*/

AppsKey & b::
>^b::
	p("npm run build")
return

AppsKey & r::
>^r::
  p("npm run dev")
return


::removee::
::removeevent::
Var =
(
e.removeEventListener('click', _copyToClipboard);
---
<script src='https://cdn.jsdelivr.net/gh/colxi/getEventListeners/src/getEventListeners.min.js'></script>
el.getEventListeners()

const el = document.querySelector('#myMap > div');
const movefn = el.getEventListeners().mousemove[0].listener;
el.removeEventListener('mousemove', movefn);
)
txtit(Var)
return

::addevent::
::adde::
Var = 
(
addEventListener('keydown', (event) => {
    if (event.ctrlKey && event.keyCode == 13) {
        console.log(123);
    }
})
)
code(Var)
return

::addev::
::addec::
Var = 
(
addEventListener('click', e => {
    
})
)
code(Var)
return

::getparams::
::getparam::
::geturlparams::
::geturlparam::
::urlparams::
Var = 
(
/**
 * @desc   从当前url中获取指定参数
 * @param  {String} name 参数
 * @return {String}
 */
var qy = function (name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return "";
};

/**
 * @desc   url参数转对象
 * @param  {String} url  default: window.location.href
 * @return {Object}
 */
function parseQueryString(url) {
    url = url == null ? window.location.href : url
    var search = url.substring(url.lastIndexOf('?') + 1)
    if (!search) {
        return {}
    }
    return JSON.parse('{"' + decodeURIComponent(search).replace(/"/g, '\\"').replace(/&/g, '","').replace(/=/g, '":"') + '"}')
}

 /**
 * @func
 * @desc - 从url地址中根据参数获取指定的值
 * @param {string} name - 参数
 * @param {string} url - url
 */
var getUrlParam = function (name, url) {
    if (!url) url = location.href;
    var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
    var returnValue;
    for (var i = 0; i < paraString.length; i++) {
        var tempParas = paraString[i].split('=')[0];
        var parasValue = paraString[i].split('=')[1];
        if (tempParas === name)
            returnValue = parasValue;
    }
    if (!returnValue) {
        return "";
    } else {
        if (returnValue.indexOf("#") != -1) {
            returnValue = returnValue.split("#")[0];
        }
        return returnValue;
    }
}

// 获取纯Url，不包含?后面的参数
const getPureUrl = url => url.substr(0, url.indexOf('?'))
)
code(Var)
return

::req::
Var =
(
require('')
)
code(Var)
SendInput, {left 2}
return


Appskey & d::
>^d::
Var =
(
debugger;
)
code(Var)
return

>#d::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
debugger
try {
    console.log(%t%, )
} catch(e) {
    console.log(%t%, e)
    debugger
}
)
code(Var)
return


AppsKey & c::
>^c::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
console.log(%t%, )
)
code(Var)
SendInput, {left 1}
Return

::ret::
::re::
    SendRaw, return
Return 

::pro::
::prote::
Var =
(
prototype
)
code(Var)
return

::args::
Var =
(
arguments
)
code(Var)
Return

::getphone::
::getphonedata::
::getphoneinfo::
::guishudi::
Var =
(
/**
     * @func
     * @desc - 获取手机归属地信息
     * @param {string} phoneNo - 手机号码
     * @param {string} callback - 回调函数
     */
    var getPhoneData = function(phoneNo, callback) {
        $.ajax({
            url: 'http://tcc.taobao.com/cc/json/mobile_tel_segment.htm',
            type: 'get',
            data: {
                tel: phoneNo
            },
            success: function(result) {
                if (result) {
                    var _data = result.split('=')[1]
                    _data = _data.replace(/\s+/g, "").replace(/<\/?.+?>/g, "").replace(/[\r\n]/g, "").replace(/\'/g, '"').replace(/\:/g, '":').replace(/\,/g, ',"').replace('{', '{"')
                    var phoneData = JSON.parse(_data);
                    console.log(phoneData)
                    if (phoneData.catName === '中国移动') {
                        applyData.PhoneType = 1;
                    } else if (phoneData.catName === '中国联通') {
                        applyData.PhoneType = 2
                    } else if (phoneData.catName === '中国电信') {
                        applyData.PhoneType = 3
                    } else {
                        applyData.PhoneType = 0
                    }
                    applyData.PhoneAddress = phoneData.province
                }
            },
            error: function(result) {
                console.info('无法获取手机归属地信息');
            },
            complete: function() {
                typeof callback === 'function' && submitApply();
            }
        })
    }
)
code(Var)
return

::jsonpp::
Var =
(
/**
  * @func
  * @desc jsonp的基本使用函数
  * @params {object} urlObj
  * @params {string} urlObj.url - jsonp的请求地址
  * @params {string} urlObj.jsonpCallback - jsonp的回调函数命名
  * @params {function} callback - 要执行的回调函数
  */
function jsonp(urlObj, callback) {
	let url = urlObj.url;
	let callbackName = urlObj.jsonpCallback;

	// 先定义一个全局函数，供jsonp调用
	window[callbackName] = function(data) {
	window[callbackName] = undefined;
	document.body.removeChild(script);
	callback(data);
	};

	// jsonp的原理，插入一个script标签，并且执行上面的全局函数
	let script = document.createElement('script');
	script.src = url;
	document.body.appendChild(script);
}
---
window.fuckHandler = function (...args) {
  console.log(20200711201152, args)
}

$.ajax({
    type: 'get',
    url: 'http://api.map.baidu.com/place/v2/search?output=json&scope=2&q=旗峰公园&region=东莞&ak=7yGRMkwGFn2GGEdb2YimB6jk',
    dataType: 'jsonp',
    jsonp: 'callback', jsonpCallback: 'fuckHandler', // => 其实没什么用，反正一般用 success
    success(data) {
        console.log(20200711200950, data)
    },
    error(err) {
        console.log(20200711201112, err)
    }
})    
)
txtit(Var)
return

::json.p::
::jsonp::
Var =
(
JSON.parse(temp1)
)
code(Var)
SendInput, {left 1}
Send, +{left 5}
Return

::jsons::
Var =
(
JSON.stringify(temp1)
)
code(Var)
SendInput, {left 1}
Send, +{left 5}
return

::jsons2::
::jsonss2::
::jsonss::
Var =
(
JSON.stringify(temp1, null, '\t')
)
code(Var)
SendInput, {left 13}
Send, +{left 5}
Return

::json/::
::/json::
Var =
(
application/json;charset=utf-8
)
code(Var)
Return

:?:/form::
:?:form/::
Var =
(
application/x-www-form-urlencoded;charset=utf-8
)
code(Var)
Return

::wait::
::when::
::where::
::waitwhere::
::waitwhen::
Var =
(
/**
 * （推荐）say something ...
 
 ;(async function(){
    const a = await waitWhen(_ => document.getElementById('1234'))
    console.log(20191212102924, a)
 }())
 */
const waitWhen = (conditionFn = () => false, wait = Infinity, interval = 10, startTime = Date.now()) => new Promise((resolve, reject) => {
    (function poll() {
        // 获取回调结果
        const result = conditionFn()

        // 获取是否超时
        const isTimeout = Date.now() - startTime > wait

        // 如果条件成立，那么立刻 resolve
        if (result) return resolve(result)

        // 如果时间超时，立刻 reject
        if (isTimeout) return reject(result)

        // 否则继续轮询
        setTimeout(poll, interval)
    }())
})
---
/**
 * delay工具函数
 *
    (async function(){
        // 启动计时器
        console.time('🚀')
        // 测试专用函数
        const test = () => new Promise((resolve, reject) => setTimeout(_ => resolve('success'), 1000))
        // wait
        const result = await wait(test, 3000)
        // success
        console.log(result)
        // 停止计时，输出时间
        console.timeEnd('🚀') // => 🚀: 3002.038818359375ms
    }())
 */
export const wait = async (fn, t = 0) => {
    // 计时器（开始）
    const startTime = +new Date
    // 执行并等待该函数
    const result = await fn()
    // 计时器停止
    const endTime = +new Date
    // 获取请求消耗的时间
    const intervalTime = t - (endTime - startTime)
    // 返回
    return new Promise((resolve, reject) => setTimeout(() => resolve(result), intervalTime))
}
---
/**
 * 延迟工具，必须配合 async/await使用 ...
 *
    (async function(){
        await delay(1000)
        console.log('test')
    }())
 */
export const delay = t => new Promise((resolve, reject) => setTimeout(() => resolve(t), t))
)
txtit(Var)
return


::()()3::
Var =
(
(() => {
    console.log(20200814101909, )
})()
)
code(Var)
return

::$()::
::$()()::
Var =
(
$(function () {})

)
code(Var)
return

::ff::
::!f::
::iife::
::()()::
Var = 
(
(function(){
	
}())
)
code(Var)
SendInput, {up}{tab}
Return

::()()2::
Var = 
(
;(async () => {
  
})();
)
code(Var)
SendInput, {up}{tab}
Return

::$click::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
$('#app').click(function (e) {
	console.log(%t%, e.target);
});
)
code(Var)
Return

:?:.click::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
.click(function (e) {
	console.log(%t%, e.target);
});
)
code(Var)
Return

:?:.change::
Var = 
(
.change(function (e) {

});
)
code(Var)
SendInput, {up}{tab}
Return

::`:?::
Var = 
(
var result = (a[property] < b[property]) ? -1 : 
             (a[property] > b[property]) ?  1 : 0;
)
code(Var)
Return

::sett::
Var = 
(
setTimeout(() => {
        
}, 1000);
)
code(Var)
SendInput, {up}{tab}
Return

::iifei::
::setii::
::setti2::
::seti2::
Var =
(
(function(fn, t) {
    // 立即执行一次，这也是这个IIFE的目的：为了解决 setInterval 首次不执行的尴尬
    fn && fn()
    // 返回计时器timer
    return setInterval(fn, t)
})(() => {
    // your logic...

}, 5 * 1000)
)
code(Var)
return

::setti::
::seti::
Var = 
(
setInterval(() => {
    
}, 1000);
)
code(Var)
SendInput, {up}{tab}
Return

::ctimer::
::ct::
::cleartimer::
::settc::
::cleart::
Var = 
(
clearTimeout(timer);
timer = null
)
code(Var)
Return

::ctimei::
::ctimeri::
::cti::
::cleartimeri::
::settic::
::clearti::
::cleari::
Var = 
(
clearInterval(timer);
)
code(Var)
Return

::js.mixin::
::mixin::
Var =
(
function mixin (receiver, supplier) {
	Object.keys(supplier).forEach(function (property) {
	     var descriptor = Object.getOwnPropertyDescriptor(supplier, property);
	     Object.defineProperties(receiver, property, descriptor);
	});
	return receiver;
}
)
code(Var)
return

::$each::
Var = 
(
$.each($('.object'), function (i, e) {
    console.log(i, e);
});
)
code(Var)
Return

::token::
Var =
(
// 刷新token
window.token = Math.random().toString(36).slice(4)

// 闭包token
;(function(_token){
  return request('/sg/street/sgTownStreet/queryLocationInfo').then(data => {
    // 如果依然如故，说明没有覆盖可以渲染
    if (window.token === _token) {
      
    }
  })
}(token));
)
code(Var)
return


:?:.e::
:?:.each::
Var = 
(
.each(/* 如果是遍历元素就不需要，如果是遍历数组，首参应该是一个数组[ary]或者对象{obj}, */ function (i, e) {
    console.log(i, e, $(e));
});
)
code(Var)
Return


>!f::
:?:.fore::
:?:.for::
:?:.f::
Var = 
(
.forEach((e, i) => {
    console.log(i, e);
})
)
code(Var)
Return

::f::
::func::
::fun::
Var = 
(
function () {}
)
code(Var)
SendInput, {left}
Return

+o::
>!o::
Var =
(
_ => Object.assign({}, {  })
)
code(Var)
SendInput, {left 3}
return

!-::
Var = 
(
_ => _.
)
code(Var)
return

>!-::
Var = 
(
_ => ({  })
)
code(Var)
SendInput, {left 3}
return

!=::
!.::
Var = 
(
=> {}
)
code(Var)
SendInput, {left 1}
return

!9::
!0::
Var = 
(
() => {}
)
code(Var)
SendInput, {left 1}
return
::dg::
Var =
(
document.getElementById('')
)
code(Var)
SendInput, {left 2}
Return

::ds::
Var =
(
document.querySelectorAll('')
)
code(Var)
SendInput, {left 2}
Return


::dc::
Var =
(
document.createElement('div')
)
code(Var)
return

::dsa::
::dss::
Var =
(
document.querySelector('')
)
code(Var)
SendInput, {left 2}
return

::dgt::
Var =
(
document.getElementsByTagName('')
)
code(Var)
SendInput, {left 2} 
return

::dgc::
Var =
(
document.getElementsByClassName('')
)
code(Var)
SendInput, {left 2} 
return

::dgn::
Var =
(
document.getElementsByName('')
)
code(Var)
SendInput, {left 2} 
return

::fetch::
::fetch.post::
::fetchpost::
Var =
(
fetch('https://api.github.com/users/gaearon/gists')
    .then(response => response.json())
    .then(data => console.log(20180916201855, data))
    .catch(err => { throw new Error(err.message) });
---
fetch('http://127.0.0.1:7001/', {
    method: 'POST',
    mode: 'cors',
    headers: {'Content-Type': 'application/json;charset=utf-8'},
    body: JSON.stringify({ stage: this.stage, member: this.member })
}).then(response => response.json())
  .then(data => console.log(20180916201855, data))
  .catch(err => { Notification.error({ title: 'Sorry...', message: err.message }) })
  .finally(_ => this.loading = false)
)
txtit(Var)
Return


:?:.t::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
.then(({ message, code, data } = {}) => {
    console.log(%t%, message, code, data, )
    if (code === 200) {
      this.$store.commit('Collection/SET_TAGTREE', data)
    } else {
      this.$message(message || '数据异常')
    }
})
)
code(Var)
return

:?:.then2::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
.then(response => {
	// console.log(%t%, response.json())
    return response.json()
})
)
code(Var)
Return

:?:.then::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
.then(result => {
	console.log(%t%, result)
})
)
code(Var)
Send, {up 2}
Send, {End}
Send, {left 5}
Send, +{left 6}
Send, ^d
Return

:?:.catch::
Var =
(
.catch(err => { throw new Error(err.message) });
)
code(Var)
return

::throw::
    SendInput, throw new Error(e.message){left}^+{left 2}
Return

::rete::
::newe::
::newre::
::newerr::
::new err::
::new error::
Var =
(
return new Error()
)
code(Var)
Send, {left}
return

::for-::
::for--::
Var = 
(
var Things = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var arr = []
for (var i = Things.length - 1; i >= 0; i--) {
	if (Things[i] `% 2 === 0) {
		arr.push(...Things.splice(i, 1))	
		console.log(Things, arr)
	}
}
)
code(Var)
Return


::for::
::for+::
::for++::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
for (let i = 0, len = Thing.length; i < len; i++) {
	Thing[i]
}
)
code(Var)
Send, {up}
Send, {end}
Send, {left 4}
Send, !{F3}
Return


:?:.map::
Var =
(
.map((v, index, array) => {
    return v
});
)
code(Var)
return

:?:.m::
Var =
(
.map(_ => _.)
)
code(Var)
Send, {left}
return

::switch::
Var =
(
switch(arguments.length) {
    case 0: return 0;
    case 1: return arguments[0];
    case 2: return arguments[0] + arguments[1];
    default:
        let [first, ...rest] = arguments;
        return first + add.apply(null, rest);
}

// use Map to find fruits by color
  const fruitColor = new Map()
    .set('red', ['apple', 'strawberry'])
    .set('yellow', ['banana', 'pineapple'])
    .set('purple', ['grape', 'plum']);

function printFruits(color) {
  return fruitColor.get(color) || [];
}
)
code(Var)
return

::gentime::
Var =
(
const time2time =  t => {
  const date = new Date(t)
  const hours = date.getHours()
  const minu = date.getMinutes()
  const second = date.getSeconds()
  const arr = [hours, minu, second].map((item, index) => item < 10 ? '0' + item : item)
  return arr[0] + ':' + arr[1]
}

const genTime = (date = new Date, middle = 5) => {
  // transformat to date type
  __DATE__ = new Date(date)

  let times = [time2time(__DATE__)]

  // fixbug
  if (__DATE__.toString() === "Invalid Date") {
    return console.warn('非法格式！格式必须是 yyyy-MM-dd HH:mm:ss')
  }

  // 将一天分成若干份
  const len = Math.floor(24 * 60 / middle)

  while (times.length < len) {
    const M = __DATE__.getMinutes() + middle
    const newTime = time2time(__DATE__.setMinutes(M))
    times.push(newTime)
  }

  return times.join('： \r\n') + '： '
}

const tiems = genTime('2020/06/25 06:00:00', 30)

console.log(tiems)


/*
08:30： 
09:00： 
09:30： 
10:00： 
10:30： 
11:00： 
11:30： 
12:00： 吃饭 / 休息 / 睡觉 / 运动
12:30： 吃饭 / 休息 / 睡觉 / 运动
13:00： 吃饭 / 休息 / 睡觉 / 运动
13:30： 吃饭 / 休息 / 睡觉 / 运动
14:00： 吃饭 / 休息 / 睡觉 / 运动
14:30： 吃饭 / 休息 / 睡觉 / 运动
------------------------------------------------------------------------------------
15:00： 
15:30： 
16:00： 
16:30： 
17:00： 
17:30： 
18:00： 吃饭 / 休息 / 睡觉 / 运动
18:30： 吃饭 / 休息 / 睡觉 / 运动
19:00： 吃饭 / 休息 / 睡觉 / 运动
19:30： 
20:00： 
20:30： 
21:00： 
21:30： 
22:00： 
22:30： 睡觉
*/
)
txtit(Var)
return

::time::
::getDate::
::date::
::today::
::yyyy::
::yyyymmmdd::
Var = 
(
08:30：
09:00：
09:30：
10:00：
10:30：
11:00：
11:30：
12:00： 
12:30： 
13:00： 
13:30： 
14:00： 
14:30： 
------------------------------------------------------------------------------------
15:00：
15:30：
16:00：
16:30：
17:00：
17:30：
18:00： 
18:30： 
19:00： 
19:30：
20:00：
20:30：
21:00：
21:30：
22:00：
22:30： 
|||
const time2time =  t => {
  const date = new Date(t)
  const hours = date.getHours()
  const minu = date.getMinutes()
  const second = date.getSeconds()
  const arr = [hours, minu, second].map((item, index) => item < 10 ? '0' + item : item)
  return arr[0] + ':' + arr[1]
}

const genTime = (date = new Date, middle = 5) => {
  // transformat to date type
  __DATE__ = new Date(date)

  let times = [time2time(__DATE__)]

  // fixbug
  if (__DATE__.toString() === "Invalid Date") {
    return console.warn('非法格式！格式必须是 yyyy-MM-dd HH:mm:ss')
  }

  // 将一天分成若干份
  const len = Math.floor(24 * 60 / middle)

  while (times.length < len) {
    const M = __DATE__.getMinutes() + middle
    const newTime = time2time(__DATE__.setMinutes(M))
    times.push(newTime)
  }

  return times.join('： \r\n') + '： '
}

const tiems = genTime('2020/06/25 06:00:00', 30)

console.log(tiems)
|||
function timeFormat(time) {
  var date = new Date(time),
    curDate = new Date(),
    year = date.getFullYear(),
    month = date.getMonth() + 10,
    day = date.getDate(),
    hour = date.getHours(),
    minute = date.getMinutes(),
    curYear = curDate.getFullYear(),
    curHour = curDate.getHours(),
    timeStr;

  if (year < curYear) {
    timeStr = year + "年" + month + "月" + day + "日 " + hour + ":" + minute;
  } else {
    var pastTime = curDate - date,
      pastH = pastTime / 3600000;

    if (pastH > curHour) {
      timeStr = month + "月" + day + "日 " + hour + ":" + minute;
    } else if (pastH >= 1) {
      timeStr = "今天 " + hour + ":" + minute + "分";
    } else {
      var pastM = curDate.getMinutes() - minute;
      if (pastM > 1) {
        timeStr = pastM + "分钟前";
      } else {
        timeStr = "刚刚";
      }
    }
  }
  return timeStr;
}
|||
function getDateDiff(dateTimeStamp) {
    var minute = 1000 * 60
    var hour = minute * 60
    var day = hour * 24
    var halfamonth = day * 15
    var month = day * 30
    var now = new Date().getTime()
    var diffValue = now - dateTimeStamp
    if (diffValue < 0) {
        return
    }
    var monthC = diffValue / month
    var weekC = diffValue / (7 * day)
    var dayC = diffValue / day
    var hourC = diffValue / hour
    var minC = diffValue / minute
    var result = ''
    if (monthC >= 1) {
        result = '' + parseInt(monthC) + '月前'
    } else if (weekC >= 1) {
        result = '' + parseInt(weekC) + '周前'
    } else if (dayC >= 1) {
        result = '' + parseInt(dayC) + '天前'
    } else if (hourC >= 1) {
        result = '' + parseInt(hourC) + '小时前'
    } else if (minC >= 1) {
        result = '' + parseInt(minC) + '分钟前'
    } else result = '刚刚'
    return result
}  
|||
// dateYYYYMMDDHHmmss('2019/1/22 12:11:11')
const dateYYYYMMDDHHmmss =  t => {
	const date = new Date(t)
	const year = date.getFullYear()
	const month = date.getMonth() + 1
	const day = date.getDate()
	const hours = date.getHours()
	const minu = date.getMinutes()
	const second = date.getSeconds()
	const arr = [month, day, hours, minu, second].map((item, index) => item < 10 ? '0' + item : item)
	return year + '-' + arr[0] + '-' + arr[1] + ' ' + arr[2] + ':' + arr[3] + ':' + arr[4]
}

dateYYYYMMDDHHmmss(1562737742012)
---
const getDate = (function () {
  const date = new Date()
  const year = date.getFullYear()
  const month = date.getMonth() + 1
  const day = date.getDate()

  return () => ({ date, year, month, day })
}())
---
const dateYYYYMM = (t = +new Date) => {
  const date = new Date(t)
  const year = date.getFullYear()
  const month = date.getMonth() + 1
  const day = date.getDate()
  const arr = [month, day].map((item, index) => item < 10 ? '0' + item : item)
  return year + '-' + arr[0] + '-' + arr[1]
}
)
txtit(Var, "|||")
return

::cdate::
	SendInput, var mydate = new Date(time.replace(/\-/g, "/"))`;
Return

::date.year::
::date.y::
	SendInput, new Date().getFullYear()
Return

::date.month::
::date.m::
	SendInput, new Date().getMonth() {+} 1
Return

::date.day::
::date.d::
	SendInput, new Date().getDate()
Return

::date.hour::
::date.h::
	SendInput, new Date().getHours()
Return

::date.mm::
	SendInput, new Date().getMinutes()
Return

::date.ss::
::date.s::
	SendInput, new Date().getSeconds()
Return

::$create::
    SendInput, 
(
var wrap = document.createElement("div");
var first = document.body.firstChild;
var wraphtml = document.body.insertBefore(wrap,first);
)
Return

::randomcolor::
::randcolor::
::suijiyanse::
::rendcolor::
::rendercolor::
Var =
(
// ['#f21347','#f3243e','#f33736','#f34131','#f34e2b', '#f56321','#f56f1c','#f58414','#f58f0e','#f5a305', '#e7ab0b','#dfae10','#d5b314','#c1bb1f','#b9be23', '#a6c62c','#96cc34','#89d23b','#7ed741','#77d64c', '#71d162','#6bcc75','#65c78b','#5fc2a0','#5abead', '#52b9c7','#4fb6d2','#4ab2e5']
const color = "#"+("00000"+((Math.random()*16777215+0.5)>>0).toString(16)).slice(-6)
---
fillStyle: 'rgba(' + ~~(Math.random() * 255) + ', ' + ~~(Math.random() * 255) + ', ' + ~~(Math.random() * 255) + ', 0.8)',
---
// 比较浅色的rgb，适合白色字体
randcolor () {
    const r = 100 + ~~(Math.random() * 100);
    const g = 135 + ~~(Math.random() * 100);
    const b = 100 + ~~(Math.random() * 100);
    return ``rgb(${r}, ${g}, ${b})``
}
---
function getRandomColor() {
    return '#' + (function(h) {
        return new Array(7 - h.length).join("0") + h;
    })((Math.random() * 0x1000000 << 0).toString(16))
}
)
txtit(Var)
return

::singerand::
::singrand::
::singlerand::
::singlerange::
::singlerang::
::singlerandom::
::singleradom::
Var =
(
'use strict';
// 我的随机函数
var random = function(min, max) {
    if (max == null) {
      max = min;
      min = 0;
    }
    return min + Math.floor(Math.random() * (max - min + 1));
};

// 缓存函数
var singeFn = function (fn, maxPollTime = 20) {
	// 缓存
	var cache = []
	// 轮询次数
	var pollTime = 0
	// 返回随机数生成器
	return function _ () {
		// 获取随机数
		var data = fn.apply(this, arguments)
		// 如果存在则递归
		if (~cache.indexOf(data)) {		
			// 递归调用（如果递归次数大于阈值，那么直接返回False）
			return ++pollTime > maxPollTime ? false : _.apply(this, arguments)
		} else {
			// 重置轮询次数
			pollTime = 0
			// 添加缓存并且返回data
			return cache.push(data), data
		}
	}
}

// 从-7，7取随机数
var rangeRadom = random.bind(null, -7, 7)

// 返回一个新的函数
var singeRangeRadom = singeFn(rangeRadom);

// 获取返回值
singeRangeRadom()
)
code(Var)
return

::feifafuhao::
Var =
(
let n = s.toString().replace(/[\`~!@#$^&*()=\-\|{}':;'\\,\[\].<>\?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]/g, '')
)
code(Var)
return

::rand::
::random::
::range::
::rang::
Var =
(
/* 
// 缓存函数
var singeFn = function (fn, maxPollTime = 20) {
  // 缓存
  var cache = []
  // 轮询次数
  var pollTime = 0
  // 返回随机数生成器
  return function _() {
    // 获取随机数
    var data = fn.apply(this, arguments)
    // 如果存在则递归
    if (~cache.indexOf(data)) {
      // 递归调用（如果递归次数大于阈值，那么直接返回False）
      return ++pollTime > maxPollTime ? false : _.apply(this, arguments)
    } else {
      // 重置轮询次数
      pollTime = 0
      // 添加缓存并且返回data
      return cache.push(data), data
    }
  }
}
---
var random = function (min, max) {
  if (max == null) {
    max = min;
    min = 0;
  }
  return min + Math.floor(Math.random() * (max - min + 1));
}

// 获取数组长度
const len = 7

// 假如长度为7，那么就是从-7 到 7 的区间取随机数
const rangeRadom = random.bind(-len, len)

// 构建一个新的函数：生成不重复的随机数
var singeRangeRadom = singeFn(rangeRadom)

console.log(20200818165019, singeRangeRadom())
console.log(20200818165019, singeRangeRadom())
console.log(20200818165019, singeRangeRadom())
console.log(20200818165019, singeRangeRadom())
*/
---
 /*
// 范围选择如 -100 ~ 100 强烈推荐这个函数
var random = function(min, max) {
    if (max == null) {
      max = min;
      min = 0;
    }
    return min + Math.floor(Math.random() * (max - min + 1));
};

// 费雪耶兹（Fisher–Yates） 也被称作高纳德（ Knuth）随机置乱算法
function shuffle(target) {
    var j, x, i = target.length;
    for (; i > 0; j = parseInt(Math.random() * i), x = target[--i], target[i] = target[j], target[j] = x) {}
    return target
}
*/
// ~~(0 + Math.random() * 51)      // 0-50
// parseInt(Math.random() * 5)     // 0-4
// const isChecked = () => Math.random() >= .5
parseInt(Math.random() * 10 + 1);  // 获取 1 - 10 到随机数
)
txtit(Var)
Return

::repeat::
    SendRaw, Array.prototype.join.call({length: i + 1}, '你确定？')
Return

!/::
Var =
(
//////////////////////////////////////////////
// say something... //
//////////////////////////////////////////////
)
code(Var)
SendInput, {Up}
Send, {left 3}
Send, {ShiftDown}{left 16}{ShiftUp}
Return

+!/::
Var = 
(
/**
 * say something ...
 * @param {*} 参数 说明
 */
)
code(Var)
return


::is-cn::
::is-ch::
::is-zhongwen::
Var = 
(
if (!/^[\u4e00-\u9fa5]+$/.test('李钊鸿')) {
      throw new Error('请输入中文汉字')
}
)
code(Var)
return

::is-ip::
    SendRaw, body.match(/\d\.\d\.\d\.\d:\d/g);
return

::is-phone::
Var = 
(
/^([0-9]{3,4}-)?[0-9]{7,8}$/.test(s)
/^[1][3,4,5,7,8][0-9]{9}$/.test(s)
/^1\d{10}$/.test(s)
/^((1)3(\d){9}$)|(^(1)4[5-9](\d){8}$)|(^(1)5[^4]{9}$)|(^(1)66(\d){8}$)|(^(1)7[0-8](\d){8}$)|(^(1)8(\d){9}$)|(^(1)9[8-9](\d){8}$)/.test(16961121989)
)
code(Var)
return
    
::is-pwd:: 
    SendRaw, /[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/.test('123456a@') // 必须同时包含数字和字母,支持非法符号
return

::is-user:: 
    SendRaw, /^[a-zA-Z0-9-_]*$/.test('') // 由6-16位数字、 字母、 '_'、 '-'组成，不含特殊字符
Return 

::is-id::
Var = 
(
if (!/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/.test('445222199307100337')){
    throw new Error('非法身份证')
}
)
code(Var)
return


::is-email::
    SendRaw, /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(s)
Return

::is-array::
    SendRaw, Object.prototype.toString.call(foo) === '[object Array]' /* Array.isArray([]) */
return

::is-object::
    SendRaw, Object.prototype.toString.call(foo) === '[object Object]'
return

::is-Null::
    SendRaw, Object.prototype.toString.call(Null) === '[object Null]'
return

::is-Undefined::
    SendRaw, Object.prototype.toString.call(Undefined) === '[object Undefined]'
return

::is-string::
    SendRaw, Object.prototype.toString.call(String) === '[object String]'
return

::is-number::
    SendRaw, Object.prototype.toString.call(Number) === '[object Number]'
return

::is-bool::
    SendRaw, Object.prototype.toString.call(Boolean) === '[object Boolean]'
return

::is-date::
    SendRaw, Object.prototype.toString.call(Date) === '[object Date]'
return


::is-NaN::
Var = 
(
function isNaN(obj) {
    return obj !== obj
}
)
code(Var)
return


::gettop::
Var = 
(
// 获取距离顶部的相对距离
function getElementTop(element){
    try {
　  　　　var actualTop = element.offsetTop;
　  　　　var current = element.offsetParent;
　  　　　while (current !== null){
　  　　　　　actualTop += current.offsetTop;
　  　　　　　current = current.offsetParent;
　  　　　}
　  　　　return actualTop;
    } catch (e) {}
}
)
code(Var)
Return

::pad::
::buquan::
Var =
(
// 自动补全
function pad (target, n) {
    var zero = new Array(n).join('0');
    var str = zero + target;
    var result = str.substr(-n);
    return result;
}

// 补全数字后两位
// 10 => 10.00
function changeTwoDecimal_f(x) {
    let f_x = parseFloat(x)

    if (isNaN(f_x)) 
        return '0'

    let f_x = Math.round(x * 100) / 100
    let s_x = f_x.toString()
    let pos_decimal = s_x.indexOf('.')

    if (pos_decimal < 0) {
        pos_decimal = s_x.length
        s_x += '.'
    }

    while (s_x.length <= pos_decimal + 2) {
        s_x += '0'
    }

    return s_x
}
)
code(Var)
return

::goTop::
::scrollToTop::
Var = 
(
var timer = null;
var goTop = function() {
    cancelAnimationFrame(timer);
    timer = requestAnimationFrame(function fn() {
        var oTop = document.body.scrollTop || document.documentElement.scrollTop;
        if (oTop > 0) {
            document.body.scrollTop = document.documentElement.scrollTop = oTop - 500;
            timer = requestAnimationFrame(fn);
        } else {
            cancelAnimationFrame(timer);
        }
    });
}
// es6
const scrollToTop = () => {
  const c = document.documentElement.scrollTop || document.body.scrollTop;
  if (c > 0) {
    window.requestAnimationFrame(scrollToTop);
    window.scrollTo(0, c - c / 8);
  }
};
---const controler = document.querySelector('.active').parentElement.parentElement

// es6
const scrollToTop = () => {
  const c = document.querySelector('.active').offsetTop
  if (c > 0) {
    window.requestAnimationFrame(scrollToTop);
    controler.scrollTo(0, c - c / 8);
  }
}
)
txtit(Var)
Return

::randary::
::randarr::
::shuffle::
::suiji::
Var = 
(
// 费雪耶兹（Fisher–Yates） 也被称作高纳德（ Knuth）随机置乱算法
function shuffle(target) {
    var j, x, i = target.length;
    for (; i > 0; j = parseInt(Math.random() * i), x = target[--i], target[i] = target[j], target[j] = x) {}
    return target
}

var a = [0, 1, 2, 3, 4, 5]
a.sort(() => Math.random() - Math.random())
)
code(Var)
return


::randgetone::
Var = 
(
function array_random(target) {
    return target[Math.floor(Math.random() * target.length)];
}
)
code(Var)
return


::remove::
Var = 
(
const removeArrayReducer = (ary, index) => [...ary.slice(0, index), ...ary.slice(index + 1)]
)
code(Var)
return

::filterarr::
Var = 
(
function compact(target) {
    return target.filter(function(el) {
        return el != null
    })
}
)
code(Var)
return

::object.jiaoji::
::objectjiaoji::
::duixiangjiaoji::
Var =
(
const intersection = (O1, O2) => Object.assign(...Object.keys(O1).map(k => {
    let temp

    if (!(k in O2)) {
        return {}
    }

    if (O1[k] && typeof O1[k] === 'object' && O2[k] && typeof O2[k] === 'object') {
        temp = intersection(O1[k], O2[k])
        return Object.keys(temp).length ? { [k]: temp } : {}
    }

    if (O1[k] === O2[k]) {
       return { [k]: O1[k] }
    }

    return {}
}))


const a = { name: 'Alice', features: { speed: 3, strength: 90, mind: { power: 42 } } }
const b = { name: 'Bob', features: { speed: 3, stamina: 1, mind: { power: 42, flexibility: 0, telekinesis: 42 } } }
console.log(intersection(a, b))
)
code(Var)
return

::desc::
::asc::
Var =
(
// 从大到小排序
const desc = (a, b) => +b.count - +a.count

// 从小到大排序
const asc = (a, b) => +a.count - +b.count
)
code(Var)
return

::sort::
::sortArr::
::Arrsort::
::sortobj::
::objsort::
Var = 
(
// 正序（从小到大）是a - b ，(倒序)从大到小 -(a-b)
// 如果是对象的话（从小到大/升序/asc）：data.sort((a, b) => +a.fuck - +b.fuck)
// 如果是对象的话（从大到小/倒序/desc）：data.sort((a, b) => +b.fuck - +a.fuck)
// 中文按照拼音排序：['常平', '莞城','茶山', '清溪', '麻涌', '东坑', '万江', '石排', '中堂','黄江', '凤岗', '石龙', '企石', '谢岗', '沙田', '樟木头', '大岭山', '松山湖', '洪梅', '大朗', '横沥', '塘厦', '塘厦', '虎门', '道滘', '石碣', '高埗', '南城', '寮步', '长安', '望牛墩', '桥头', '东城'].sort((a, b) => a.localeCompare(b))
arr.sort((a, b) => { return a - b })

---

@mixin updown {
    position: relative;
    cursor: pointer;

    &::before, &::after {
         content: '';
         display: inline-block;
         position: absolute;
         right: rem(8);
         border-left: rem(6) solid transparent;
         border-right: rem(6) solid transparent;
         width: 0;
         height: 0;
     }
     
     &::after {top: rem(8); border-bottom: rem(8) solid #f6f6f6; }
     &::before {bottom: rem(8); border-top: rem(8) solid #f6f6f6; }
     &.is-up::after {border-bottom: rem(8) solid #C4B484; }
     &.is-down::before {border-top: rem(8) solid #C4B484; }
}

)
txtit(Var)
return


::jiecheng::
::!n::
::^n::
Var = 
(
var factorial = n => {
	if (n === 0) {
		return 1;
	}
	// 这是一个递归
	return n * factorial(n -1);
}
)
code(Var)
return

::sortby::
Var = 
(
const sortBy = (property) => {
	return (a, b) => {
		var result = (a[property] < b[property]) ? -1 : 
					 (a[property] > b[property]) ?  1 : 0;
		return result;
	}
}

people.sort(sortBy("lastname"))
)
code(Var)
return

::min::
Var = 
(
function min(target) {
    return Math.min.apply(null, target);
}
)
code(Var)
return

::max::
Var = 
(
function max(target) {
    return Math.max.apply(null, target);
}
)
code(Var)
return

::foren::
::for.en::
Var = 
(
// 对象遍历 - 新写法
Object.entries(a).forEach([key, value] => {
    console.log(key, value)
})

// 对象遍历 - 新写法 reduce 
const newObj = Object.entries(a).reduce((obj, [key, value]) => {
    // ...
    console.log(obj, key, value)
    // ...
    obj[key] = value + 'new'
    // ...
    return obj
}, {})
  
// 对象遍历
for (let [key, val] of Object.entries(aa)) {
    console.log(key, val)
}

// 数组遍历
for (let [index, value] of [1, 2, 3].entries()) {
    console.log(index, value)
}
)
code(Var)
return


::forof::
Var = 
(
for (const a of gen) {
    console.log(a);
}
---
class RandomNumberGenerator {
  [Symbol.iterator]() {
    return {
      next: () => {
        return { value: Math.random() };
      },
    };
  }
}

const rand = new RandomNumberGenerator();

for (const random of rand) {
  console.log(random);
  if (random < 0.1) break;
}
---
const simulateDelay = (val, delay) =>
  new Promise((resolve) => setTimeout(() => resolve(val), delay));

class RandomNumberGenerator {
  [Symbol.asyncIterator]() {
    return {
      next: async () => {
        return simulateDelay({ value: Math.random() }, 200); //return the value after 200ms of delay
      },
    };
  }
}

const rand = new RandomNumberGenerator();

;(async () => {
  for await (const random of rand) {
    console.log(random);
    if (random < 0.1) break;
  }
})();
---
// 不管是 class 还是 function ，只要返回一个 [Symbol.iterator] 套路即可
// https://medium.com/front-end-weekly/thank-u-symbol-iterator-next-aef9f09ff78
const reverse = arr => ({
  [Symbol.iterator]() {
    let i = arr.length;
    return {
      next: () => ({
        value: arr[--i],
        done: i < 0
      })
    }
  }
})

let nums = [1, 2, 3, 4, 5]

for (let num of reverse(nums)) {
  // ...
}

console.log(nums)               // [1, 2, 3, 4, 5]
console.log([...reverse(nums)]) // [5, 4, 3, 2, 1]
)
txtit(Var)
return

::forin::
Var = 
(
for (var property in source) {
    console.log(source[property]);
}
)
code(Var)
Return

::escapeHTML::
Var = 
(
var escapeHTML = function(target){  
    return target.replace(/&/g, "&amp;")
                 .replace(/</g, "&lt;")
                 .replace(/>/g, "&gt;")
                 .replace(/"/g, '&quot;')
                 .replace(/'/g, "&#39;")
};
)
code(Var)
return

::unescapeHTML::
Var = 
(
var escapeHTML = function(target){  
    return target.replace(/&lt;/g, "<")
                 .replace(/&gt;/g, ">")
                 .replace(/&amp;/g, "&")
                 .replace(/&quot;/g, '"')
                 .replace(/&#39;/g, "'")
};
)
code(Var)
return

::promise.finally::
Var = 
(
// 向 Promise.prototype 增加 finally()
Promise.prototype.finally = function(onFinally) {
    return this.then(
        /* onFulfilled */
        res => Promise.resolve(onFinally()).then(() => res),
        /* onRejected */
        err => Promise.resolve(onFinally()).then(() => {
            throw err;
        })
    `);
};
)
code(Var)
return

::getPath::
Var = 
(
var getPath = function(){
    var jsPath = doc.currentScript ? doc.currentScript.src : function(){
      var js = doc.scripts
      ,last = js.length - 1
      ,src;
      for(var i = last; i > 0; i--){
        if(js[i].readyState === 'interactive'){
          src = js[i].src;
          break;
        }
      }
      return src || js[last].src;
    }();
    return jsPath.substring(0, jsPath.lastIndexOf('/') + 1);
}()
)
code(Var)
return

::addjs::
::addscript::
::onscript::
::onscriptload::
::onscriptready::
::scriptread::
::scriptready::
::jsread::
::jsready::
::scriptok::
::jsok::
::jqok::
::jqready::
::jqueryready::
::loadscript::
::loadjs::
::ijs::
Var = 
(
/**
 * 加载script并且执行回调
 * @param {String} url 资源地址
 * @param {Function} cb 回调方法
 * https://www.cnblogs.com/_franky/archive/2010/06/20/1761370.html
 */
var onscriptload = function (url, cb) {
  var node = document.createElement("script")
  var head = document.getElementsByTagName('head')[0]
  var timeID
  var supportLoad = "onload" in node
  var onEvent = supportLoad ? "onload" : "onreadystatechange"
  node[onEvent] = function onLoad() {
      if (!supportLoad && !timeID && /complete|loaded/.test(node.readyState)) {
          timeID = setTimeout(onLoad)
          return
      }
      if (supportLoad || timeID) {
          clearTimeout(timeID)
          cb && cb()
      }
  }
  head.insertBefore(node, head.firstChild)
  node.src = url
}

onscriptload('https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js', function () {
   console.log(jQuery.fn.jquery);
   console.log($('*').size())
})

onscriptload('https://cdn.bootcss.com/lodash.js/4.17.11/lodash.min.js', function () {
   console.log(_)
})
)
code(Var)
return



::is-ie::
::isie::
::is.ie::
Var = 
(
(function(){ //ie版本
    var agent = navigator.userAgent.toLowerCase();
    return (!!window.ActiveXObject || "ActiveXObject" in window) ? (
      (agent.match(/msie\s(\d+)/) || [])[1] || '11' //由于ie11并没有msie的标识
    `) : false;
}())
)
code(Var)
return

::settitle::
Var = 
(
// 解决微信、QQ、闪银等内置浏览器单页应用无法刷新title的问题
var setTitle = title => {
    var i = document.createElement('iframe');
    i.src = 'https://www.baidu.com/favicon.ico';
    i.style.display = 'none';
    i.onload = function() {
        setTimeout(function(){
            i.remove();
        }, 9)
    }
    document.title = title;
    document.body.appendChild(i);
}
)
code(Var)
return

::lazy::
::lazyload::
::lazyimg::
::lazyimage::
Var = 
(

/**
 * 图片懒加载
 * https://www.liaoxuefeng.com/article/00151045553343934ba3bb4ed684623b1bf00488231d88d000
 * <img src="https://loading.io/assets/img/ajax.gif" data-src="http://www.hongte.info/assets/images/banner2.jpg">
 * <div style="margin-top: 1000px;"></div>
 */
;(function(){
    // 获取包含data-src属性的img
    var lazyImgs = document.querySelectorAll('img[data-src]')
    // 将Node-List转化成数组类型
    lazyImgs = [].slice.apply(lazyImgs);
     // 定义事件函数
    var lazyload = function () {
        // 获取页面滚动的高度
        var wtop = window.scrollY;
        // 获取可视区域高度
        var wheight = document.documentElement.clientHeight;
        // 判断是否还有未加载的img
        if (lazyImgs.length > 0) {
            // 循环处理数组的每个img元素
            for (var i = lazyImgs.length - 1; i >= 0; i--) {
                // 获取图片信息
                var el = lazyImgs[i], rect = el.getBoundingClientRect(), src = el.getAttribute('data-src')
                // 判断是否在可视范围内:
                if (rect.top - wtop < wheight) {
                   // 设置src属性:
                   el.setAttribute('src', src);
                   // 删除对象
                   Array.prototype.splice.call(lazyImgs, i, 1);
                }
            }
        }
    };

    // 懒加载优化：滚动节流策略
    var __SCROLLTIMER__ = null
    // 绑定事件
    window.onscroll = function () {
        clearTimeout(__SCROLLTIMER__);
        __SCROLLTIMER__ = setTimeout(lazyload, 150);
    }

    // 手动触发一次, 因为页面显示时，并未触发scroll事件。
    lazyload();
}());
---
/* directive/imgLazy.js */
import baseImg from '@/assets/logo.png'

// 创建一个监听器
let observer = new IntersectionObserver((entries)=>{
  // entries是所有被监听对象的集合
  entries.forEach(entry =>{
    if(entry.isIntersecting){
      // 当被监听元素到临界值且未加载图片时触发。
      !entry.target.isLoaded  && showImage(entry.target,entry.target.data_src)
    }
  })
})

function showImage(el,imgSrc){
  const img = new Image();
  img.src = imgSrc;
  img.onload = ()=>{
    el.src = imgSrc;
    el.isLoaded = true;
  }
}

export default {
  // 这里用inserted和bind都行，因为IntersectionObserver时异步的，以防意外还是用inserted好一点
  // inserted和bind的区别在于inserted时元素已经插入页面，能够直接获取到dom元素的位置信息。
  inserted(el,binding) {
    // 初始化时展示默认图片
    el.src = baseImg;
    // 将需要加载的图片地址绑定在dom上
    el.data_src = binding.value;
    observer.observe(el)
  },
  unbind(){
    // 停止监听
    observer.disconnect();
  }
}

/* main.js */
import imgLazy from '@/directive/imgLazy.js'
Vue.directive('imgLazy', imgLazy)
---
const cache = new Set()

export default {
    install(Vue) {
        Vue.directive('progressiveBGImage', {
            bind(el, { value }) {
                // 外部传入两个变量，第一个变量是占位图，第二个是真图
                const [placeholder, src] = value

                // fixbug: 如果已经加载过了，那么不需要重复
                if (cache.has(src)) {
                    el.style.backgroundImage = url(${src})
                } else {
                    // 先用用占位图作背景图
                    el.style.backgroundImage = url(${placeholder})

                    // 老三样
                    const img = new Image()
                    img.src = src
                    img.onload = () => (el.style.backgroundImage = url(${src}))
                }

                // 加入缓存
                cache.add(src)
            },
        })
    },
}
)
txtit(Var)
return

::clip::
Var = 
(
export const copyToClipboard = text => {
  const el = document.createElement('textarea')
  el.value = text
  el.setAttribute('readonly', '')
  el.style.position = 'absolute'
  el.style.left = '-9999px'
  document.body.appendChild(el)
  const selected = document.getSelection().rangeCount > 0 ? document.getSelection().getRangeAt(0) : false
  el.select()
  document.execCommand('copy')
  document.body.removeChild(el)
  if (selected) {
    document.getSelection().removeAllRanges()
    document.getSelection().addRange(selected)
  }
}
)
code(Var)
return

::arrayeq::
::arrayequal::
Var = 
(
/**
 * 
 * @desc 判断两个数组是否相等
 * @param {Array} arr1 
 * @param {Array} arr2 
 * @return {Boolean}
 */
function arrayEqual(arr1, arr2) {
    if (arr1 === arr2) return true;
    if (arr1.length != arr2.length) return false;
    for (var i = 0; i < arr1.length; ++i) {
        if (arr1[i] !== arr2[i]) return false;
    }
    return true;
}
)
code(Var)
return

::getbrowser::
Var = 
(
/**
 * @desc 获取浏览器类型和版本
 * @return {String} 
 */
function getExplore() {
    var sys = {},
        ua = navigator.userAgent.toLowerCase(),
        s;
    (s = ua.match(/rv:([\d.]+)\) like gecko/)) ? sys.ie = s[1]: (s = ua.match(/msie ([\d\.]+)/)) ? sys.ie = s[1] : (s = ua.match(/edge\/([\d\.]+)/)) ? sys.edge = s[1] : (s = ua.match(/firefox\/([\d\.]+)/)) ? sys.firefox = s[1] : (s = ua.match(/(?:opera|opr).([\d\.]+)/)) ? sys.opera = s[1] : (s = ua.match(/chrome\/([\d\.]+)/)) ? sys.chrome = s[1] : (s = ua.match(/version\/([\d\.]+).*safari/)) ? sys.safari = s[1] : 0;
    // 根据关系进行判断
    if (sys.ie) return ('IE: ' + sys.ie)
    if (sys.edge) return ('EDGE: ' + sys.edge)
    if (sys.firefox) return ('Firefox: ' + sys.firefox)
    if (sys.chrome) return ('Chrome: ' + sys.chrome)
    if (sys.opera) return ('Opera: ' + sys.opera)
    if (sys.safari) return ('Safari: ' + sys.safari)
    return 'Unkonwn'
}
)
code(Var)
return

::getsys::
::getdev::
::getos::
Var = 
(
/**
 * @desc 获取操作系统类型
 * @return {String} 
 */
function getOS() {
    var userAgent = 'navigator' in window && 'userAgent' in navigator && navigator.userAgent.toLowerCase() || '';
    var vendor = 'navigator' in window && 'vendor' in navigator && navigator.vendor.toLowerCase() || '';
    var appVersion = 'navigator' in window && 'appVersion' in navigator && navigator.appVersion.toLowerCase() || '';
    if (/mac/i.test(appVersion)) return 'MacOSX'
    if (/win/i.test(appVersion)) return 'windows'
    if (/linux/i.test(appVersion)) return 'linux'
    if (/iphone/i.test(userAgent) || /ipad/i.test(userAgent) || /ipod/i.test(userAgent)) 'ios'
    if (/android/i.test(userAgent)) return 'android'
    if (/win/i.test(appVersion) && /phone/i.test(userAgent)) return 'windowsPhone'
}
)
code(Var)
return

::getkeyname::
Var = 
(
 keyCodeMap = {8: 'Backspace', 9: 'Tab', 13: 'Enter', 16: 'Shift', 17: 'Ctrl', 18: 'Alt', 19: 'Pause', 20: 'Caps Lock', 27: 'Escape', 32: 'Space', 33: 'Page Up', 34: 'Page Down', 35: 'End', 36: 'Home', 37: 'Left', 38: 'Up', 39: 'Right', 40: 'Down', 42: 'Print Screen', 45: 'Insert', 46: 'Delete', 48: '0', 49: '1', 50: '2', 51: '3', 52: '4', 53: '5', 54: '6', 55: '7', 56: '8', 57: '9', 65: 'A', 66: 'B', 67: 'C', 68: 'D', 69: 'E', 70: 'F', 71: 'G', 72: 'H', 73: 'I', 74: 'J', 75: 'K', 76: 'L', 77: 'M', 78: 'N', 79: 'O', 80: 'P', 81: 'Q', 82: 'R', 83: 'S', 84: 'T', 85: 'U', 86: 'V', 87: 'W', 88: 'X', 89: 'Y', 90: 'Z', 91: 'Windows', 93: 'Right Click', 96: 'Numpad 0', 97: 'Numpad 1', 98: 'Numpad 2', 99: 'Numpad 3', 100: 'Numpad 4', 101: 'Numpad 5', 102: 'Numpad 6', 103: 'Numpad 7', 104: 'Numpad 8', 105: 'Numpad 9', 106: 'Numpad *', 107: 'Numpad +', 109: 'Numpad -', 110: 'Numpad .', 111: 'Numpad /', 112: 'F1', 113: 'F2', 114: 'F3', 115: 'F4', 116: 'F5', 117: 'F6', 118: 'F7', 119: 'F8', 120: 'F9', 121: 'F10', 122: 'F11', 123: 'F12', 144: 'Num Lock', 145: 'Scroll Lock', 182: 'My Computer', 183: 'My Calculator', 186: ';', 187: '=', 188: ',', 189: '-', 190: '.', 191: '/', 192: '`', 219: '[', 220: '\\', 221: ']', 222: '\''};
 /**
 * @desc 根据keycode获得键名
 * @param  {Number} keycode 
 * @return {String}
 */
 function getKeyName(keycode) {
     if (keyCodeMap[keycode]) {
         return keyCodeMap[keycode];
     }
     else {
         console.log('Unknow Key(Key Code:' + keycode + ')');
         return '';
     }
 };
)
code(Var)
return

::moneybig::
::daxiemoney::
::moneydaxie::
Var = 
(
/**
 * 
 * @desc   现金额转大写
 * @param  {Number} n 
 * @return {String}
 */
function digitUppercase(n) {
    var fraction = ['角', '分'];
    var digit = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
    var unit = [['元', '万', '亿'], ['', '拾', '佰', '仟']];
    var head = n < 0 ? '欠' : '';
    n = Math.abs(n);
    var s = '';
    for (var i = 0; i < fraction.length; i++) {
        s += (digit[Math.floor(n * 10 * Math.pow(10, i)) `% 10] + fraction[i]).replace(/零./, '');
    }
    s = s || '整';
    n = Math.floor(n);
    for (var i = 0; i < unit[0].length && n > 0; i++) {
        var p = '';
        for (var j = 0; j < unit[1].length && n > 0; j++) {
            p = digit[n `% 10] + unit[1][j] + p;
            n = Math.floor(n / 10);
        }
        s = p.replace(/(零.)*零$/, '').replace(/^$/, '零') + unit[0][i] + s;
    }
    return head + s.replace(/(零.)*零元/, '元').replace(/(零.)+/g, '零').replace(/^整$/, '零元整');
};
)
code(Var)
return

::passtime::
Var = 
(
/**
 * @desc   格式化${startTime}距现在的已过时间
 * @param  {Date} startTime 
 * @return {String}
 */
function formatPassTime(startTime) {
    var currentTime = Date.parse(new Date()),
        time = currentTime - startTime,
        day = parseInt(time / (1000 * 60 * 60 * 24)),
        hour = parseInt(time / (1000 * 60 * 60)),
        min = parseInt(time / (1000 * 60)),
        month = parseInt(day / 30),
        year = parseInt(month / 12);
    if (year) return year + "年前"
    if (month) return month + "个月前"
    if (day) return day + "天前"
    if (hour) return hour + "小时前"
    if (min) return min + "分钟前"
    else return '刚刚'
}
)
code(Var)
return

::endtime::
Var = 
(
/**
 * 
 * @desc   格式化现在距${endTime}的剩余时间
 * @param  {Date} endTime  
 * @return {String}
 */
function formatRemainTime(endTime) {
    var startDate = new Date();
    //开始时间
    var endDate = new Date(endTime);
    //结束时间
    var t = endDate.getTime() - startDate.getTime();
    //时间差
    var d = 0,
        h = 0,
        m = 0,
        s = 0;
    if (t >= 0) {
        d = Math.floor(t / 1000 / 3600 / 24);
        h = Math.floor(t / 1000 / 60 / 60 `% 24);
        m = Math.floor(t / 1000 / 60 `% 60);
        s = Math.floor(t / 1000 `% 60);
    }
    return d + "天 " + h + "小时 " + m + "分钟 " + s + "秒";
}
)
code(Var)
return

::date100::
Var = 
(
/**
 * 获取100天后的日子
 * 用来做计划是极好的
 */
var d = new Date() 
d.setDate(d.getDate() + 100)
console.log(d.getFullYear() + '-' + (d.getMonth() + 1) + '-' + d.getDate())
)
code(Var)
return



::LRU::
::cache::
::cachemethod::
::cachefunc::
::cachefunction::
::paramscache::
::paramcache::
::hanshuhuancun::
::hanshucache::
::funcache::
::fncache::
::mem::
::canshuhuancun::
::paramhuancun::
::paramshuancun::
Var = 
(
// cnpm i localforage -S
import localforage from 'localforage'

localforage.config({
    driver: [localforage.LOCALSTORAGE, localforage.WEBSQL, localforage.INDEXEDDB],
    name: '__CACHE__',
    size: 1024 * 1024
})

// 清空缓存
export const clearCache = () => localforage.clear()

// 设置缓存数据
export const setCache = (key, value) => localforage.setItem(key, value)

// 获取缓存数据
export const getCache = key => localforage.getItem(key)
---
function cached(fn){
  // Create an object to store the results returned after each function execution.
  const cache = Object.create(null);

  // Returns the wrapped function
  return function cachedFn (str) {

    // If the cache is not hit, the function will be executed
    if ( !cache[str] ) {
        let result = fn(str);

        // Store the result of the function execution in the cache
        cache[str] = result;
    }

    return cache[str]
  }
}
################################################################
// 参数标记缓存器
var memoized = function (fn) {
      var cache = {};
      return function () {
        // 我们约定以第一个参数作为key
        var __KEY__ = arguments[0]
        // 记录缓存
        return cache[__KEY__] || (cache[__KEY__] = fn.apply(this, arguments));
      };
};

const memoized = fn => {
	const lookupTable = {};
	// setInterval( () => console.log(lookupTable) , 1000); // 可以通过解释这个来观察缓存的变化
	return arg => lookupTable[arg] || (lookupTable[arg] = fn(arg));
}

// 参数标记缓存器（该版本只支持「单参数」标记缓存）
const memoized = (fn, cache = {}) => arg => cache[arg] || (cache[arg] = fn(arg))

// 阶乘的demo
let fastFactorial = memoized(n => {
	if (n === 0) {
		return 1;
	}
	// 这是一个递归，并且每一次递归都具有缓存过程
	return n * fastFactorial(n -1);
});

fastFactorial(5)
################################################################
/**
 * @func
 * @desc - 灵活使用闭包的概念。
           以下简单的实验说明他们是不同的实例。所以他们各自闭包内的_cache是不相干也不相同的
           其实是简单的类与实例的概念。但还是说明一下比较好
           毕竟大部分的插件也是这样制作的
 */
var Cache = (function () {
    var _cache = {};

    return {
      getCache: function (key) {
        return _cache[key]
      },
      setCache: function (key, value) {
        _cache[key] = value;
      },
      showAllCache: function () {
        console.log(_cache);
      }
    }
});


var a = new Cache();
a.setCache('foo', 'bar');
a.showAllCache();

var b = new Cache();
b.setCache('foo', 'bar2');
b.showAllCache();

 从输出的结果得知两者的闭包互不相干 */
################################################################
/**
 * JavaScript 实现 LRU 缓存淘汰算法
 * 
 * https://github.com/vuejs/vue/blob/1.0/src/cache.js
 * https://github.com/rsms/js-lru
 * 缓存的大小有限，当缓存被用满时，哪些数据应该被清理出去，哪些数据应该被保留？
 * 这就需要缓存淘汰策略来决定。常见的策略有三种：
 * - 先进先出策略 FIFO （ First In ， First Out ）
 * - 最少使用策略 LFU （ Least Frequently Used ）
 * - 最近最少使用策略 LRU （ Least Recently Used ）
 */
class LRUCache {
  constructor (limit) {
    this.size = 0
    this.limit = limit
    this.head = this.tail = undefined
    this._keymap = Object.create(null)
  }

  put (key, value) {
    var removed

    var entry = this.get(key, true)

    if (!entry) {
      if (this.size === this.limit) {
        removed = this.shift()
      }

      entry = { key: key }

      this._keymap[key] = entry

      if (this.tail) {
        this.tail.newer = entry
        entry.older = this.tail
      } else {
        this.head = entry
      }

      this.tail = entry
      this.size++
    }

    entry.value = value

    return removed
  }

  shift() {
    var entry = this.head

    if (entry) {
      this.head = this.head.newer
      this.head.older = undefined
      entry.newer = entry.older = undefined
      this._keymap[entry.key] = undefined
      this.size--
    }

    return entry
  }

  get (key, returnEntry) {
    var entry = this._keymap[key]

    if (entry === undefined) return

    if (entry === this.tail) {
      return returnEntry ? entry : entry.value 
    }

    // HEAD--------------TAIL
    //   <.older   .newer>
    //  <--- add direction --
    //   A  B  C  <D>  E
    if (entry.newer) {
      if (entry === this.head) {
        this.head = entry.newer
      }
      entry.newer.older = entry.older // C <-- E.
    }

    if (entry.older) {
      entry.older.newer = entry.newer // C. --> E
    }

    entry.newer = undefined // D --x
    entry.older = this.tail // D. --> E

    if (this.tail) {
      this.tail.newer = entry // E. <-- D
    }

    this.tail = entry

    return returnEntry ? entry : entry.value
  }
}

/**
 * demo1：正常使用缓存示例
 */
var p = new LRUCache(10)

for (var i = 1; i <= 10; i++) { p.put(i.toString(), i) }

// 推入一个新数据
p.put('11', 11)

// 由于容量只有10个、且遵循先进先出的原则，所以 1 被淘汰了
// => undefined
console.log('demo1：', p.get('1'))  

/**
 * demo2：『最近最少使用策略』示例
 */
var p2 = new LRUCache(10)

for (var i = 1; i <= 10; i++) { p2.put(i.toString(), i) }

// 使用 '1' 来增加权重
p2.get('1')

// 推入一个新数据
p2.put('11', 11)

// 由于权重增加了，所以不会被删掉
// => 1
console.log('demo2：', p2.get('1'))

// 紧随其后的 2 则被删除了
// => undefined
console.log('demo2：', p2.get('2'))
)
txtit(Var, "################################################################")
return

::$map::
Var = 
(
const map = (array, fn) => {
	let results = []
	for (const value of array) 
	    results.push(fn(value))
	return results;
}
)
code(Var)
return

::$filter::
Var = 
(
const filter = (array, fn) => {
	let results = []
 	for (const value of array) 
       (fn(value)) ? results.push(value) : undefined;   	   
	return results
}
)
code(Var)
return

::looks_like_html::
::like_html::
::likehtml::
Var = 
(
 function looks_like_html(source) {
    // <foo> - looks like html
    // <!--\nalert('foo!');\n--> - doesn't look like html

    var trimmed = source.replace(/^[ \t\n\r]+/, '');
    var comment_mark = '<' + '!-' + '-';
    return (trimmed && (trimmed.substring(0, 1) === '<' && trimmed.substring(0, 4) !== comment_mark));
}
)
code(Var)
return

::getproxylist::
Var = 
(
function getProxyList() {
    // http://www.66ip.cn/nm.html
    var apiURL = 'http://www.66ip.cn/nmtq.php?getnum=100&isp=0&anonymoustype=0&start=&ports=&export=&ipaddress=&area=0&proxytype=0&api=66ip';
    return new Promise((resolve, reject) => {
        var options = {
            method: 'GET',
            url: apiURL,
            gzip: true,
            encoding: null,
            headers: {
                'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
                'Accept-Encoding': 'gzip, deflate',
                'Accept-Language': 'zh-CN,zh;q=0.8,en;q=0.6,zh-TW;q=0.4',
                'User-Agent': 'Mozilla/8.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',
                'referer': 'http://www.66ip.cn/'
            },
        };
        request(options, function (error, response, body) {
            try {
                if (error) throw error;
                if (/meta.*(charset=gb2312|charset=GBK)/.test(body)) {
                    body = iconv.decode(body, 'gbk');
                }
                var ret = body.match(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:\d{1,4}/g);
                resolve(ret);
            } catch (e) {
                return reject(e);
            }
        });
    })
}

getProxyList().then(function (proxyList) {
    proxyList.forEach(function (proxyurl) {
        request({
            method: 'GET',
            url: 'http://ip.chinaz.com/getip.aspx',
            timeout: 30000,
            encoding: null,
            proxy: 'http://' + proxyurl
        }, function (err, _res, body) {
            if (err) {
                console.error("fail", err.message) 
            } else {
                try {
                    // 将 buffer 转化为字符串
                    body = body.toString();
                    // 序列化
                    body = eval('(' + body + ')')
                    console.log("success", body.address, proxyurl);
                } catch(err) {
                    console.log('fail page');
                } 
            }
        })
    });
}).catch(e => {
    console.log(e);
})

)
code(Var)
return

::es6.event::
::es6.__event__::
::es6evemt::
::eventes6::
::event6::
::new event::
Var =
(
class Event {
	constructor(props) {
	    this.map = {}
	}

	add (name, fn) {
		if (this.map[name])
			this.map[name].push(fn)
		else
			this.map[name] = [fn]
		return this
	}

	emit (name, ...args) {
		// 遍历数组中的所有函数并且执行，注入args
		this.map[name].forEach(_ => _(...args))
		// 返回prototype可以形成链式
		return this
	}
}

let e = new Event()
// 我们约定第一个参数是err信息，如果没有错误则注入null
e.add("hello", (err, name) => {
	if (err) return console.error(err)
	console.log(name)
})
.emit('hello', '发送错误')
.emit('hello', null, 'success')
)
code(Var)
return


::promise::
Var = 
(
new Promise((resolve, reject) => { 
   setTimeout(function () {
        // 注意，你必须resolve或reject才可以执行.then()
        resolve('success') // reject('fail')
   }, 1000);
})
)
code(Var)
return

::test::
Var =
(
var test = () => new Promise((resolve, reject) => setTimeout(_ => resolve('success'), Math.random() * 3000))
)
code(Var)
return

::test2::
Var =
(
var test = () => new Promise((resolve, reject) => setTimeout(_ => reject('fail'), 4000))
)
code(Var)
return


::rem::
::fuckrem::
Var =
(
<!-- REM 解决方案 -->
<script>
 (function flexible (window, document) {
   var docEl = document.documentElement
   function setRemUnit () {
     // 屏幕宽度
     var w = docEl.clientWidth
     // 4320这个数值，是将17280缩小4倍抵达的4k分辨率，对于UI和开发都比较好。
     var designDraftWidth = 4320
     // 如果宽度比4320大，那说明是真实屏幕，既17280的大屏幕
     var _w = w > designDraftWidth ? w : designDraftWidth


     window._px2px = function (v) {
        return v / 432
     }

     window.px2rem = function (v) {
        return v / 432
     }

     var rem = _w / 10
     docEl.style.fontSize = rem + 'px'

   }
   setRemUnit()
   window.addEventListener('resize', setRemUnit)
   window.addEventListener('pageshow', function (e) {
     if (e.persisted) {
       setRemUnit()
     }
   })
 }(window, document))
</script>

<!-- scss -->
$root_fontsize: 432; // 因为效果图是4320 / 10

@function rem($px) {
    @return ($px / $root_fontsize) * 1rem;
}
---

// https://github.com/amfe/lib-flexible/blob/2.0/index.js
(function flexible (window, document) {
 var docEl = document.documentElement
 var dpr = window.devicePixelRatio || 1
 var rem = docEl.clientWidth / 10

 // adjust body font size
 function setBodyFontSize () {
   if (document.body) {
     document.body.style.fontSize = (12 * dpr) + 'px'
   }
   else {
     document.addEventListener('DOMContentLoaded', setBodyFontSize)
   }
 }
 setBodyFontSize();

 // set 1rem = viewWidth / 10
 function setRemUnit () {
   docEl.style.fontSize = rem + 'px'
 }

 setRemUnit()

 window.px2rem = function (v) {
    return v / rem
 }

 // reset rem unit on page resize
 window.addEventListener('resize', setRemUnit)
 window.addEventListener('pageshow', function (e) {
   if (e.persisted) {
     setRemUnit()
   }
 })

 // detect 0.5px supports
 if (dpr >= 2) {
   var fakeBody = document.createElement('body')
   var testElement = document.createElement('div')
   testElement.style.border = '.5px solid transparent'
   fakeBody.appendChild(testElement)
   docEl.appendChild(fakeBody)
   if (testElement.offsetHeight === 1) {
     docEl.classList.add('hairlines')
   }
   docEl.removeChild(fakeBody)
 }
}(window, document))


// rem 单位换算：定为 75px 只是方便运算，750px-75px、640-64px、1080px-108px，如此类推
$vw_fontsize: 75; // iPhone 6尺寸的根元素大小基准值
@function rem($px) {
    @return ($px / $vw_fontsize ) * 1rem;
}
// 根元素大小使用 vw 单位
$vw_design: 750;
html {
    font-size: ($vw_fontsize / ($vw_design / 2)) * 100vw;
    // 同时，通过Media Queries 限制根元素最大最小值
    @media screen and (max-width: 320px) {
        font-size: 64px;
    }
    @media screen and (min-width: 540px) {
        font-size: 108px;
    }
}
// body 也增加最大最小宽度限制，避免默认100`%宽度的 block 元素跟随 body 而过大过小
body {
    margin: auto;
    max-width: 540px;
    min-width: 320px;
}
---
<script>
  (function flexible (window, document) {
   var docEl = document.documentElement
   var dpr = window.devicePixelRatio || 1
   var rem = docEl.clientWidth / 10

   // adjust body font size
   function setBodyFontSize () {
     if (document.body) {
       document.body.style.fontSize = (12 * dpr) + 'px'
     }
     else {
       document.addEventListener('DOMContentLoaded', setBodyFontSize)
     }
   }
   setBodyFontSize();

   // set 1rem = viewWidth / 10
   function setRemUnit () {
     docEl.style.fontSize = rem + 'px'
   }

   setRemUnit()

   window.px2rem = function (v) {
      return v / rem
   }

   // reset rem unit on page resize
   window.addEventListener('resize', setRemUnit)
   window.addEventListener('pageshow', function (e) {
     if (e.persisted) {
       setRemUnit()
     }
   })

   // detect 0.5px supports
   if (dpr >= 2) {
     var fakeBody = document.createElement('body')
     var testElement = document.createElement('div')
     testElement.style.border = '.5px solid transparent'
     fakeBody.appendChild(testElement)
     docEl.appendChild(fakeBody)
     if (testElement.offsetHeight === 1) {
       docEl.classList.add('hairlines')
     }
     docEl.removeChild(fakeBody)
   }
  }(window, document))
</script>

<!-- scss -->

// iPhone 6尺寸的根元素大小基准值
$vw_fontsize: 75;

@function rem($px) {
    @return ($px / $vw_fontsize ) * 1rem;
}
---
(function (doc, win) {
  var docEl = doc.documentElement,
    resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
    recalc = function () {
      var clientWidth = docEl.clientWidth;
      if (!clientWidth) return;
      if (clientWidth >= 750) {
        docEl.style.fontSize = '100px';
      } else {
        docEl.style.fontSize = 100 * (clientWidth / 750) + 'px';
      }
    };

  if (!doc.addEventListener) return;
  win.addEventListener(resizeEvt, recalc, false);
  doc.addEventListener('DOMContentLoaded', recalc, false);
})(document, window);
)
txtit(Var)
return

::cookie::
::cookies::
::$cookie::
::$.cookie::
::$cookies::
::$.cookies::
Var = 
(
/**
 * @desc  设置Cookie
 * @param {String} name
 * @param {String} value
 * @param {Number} expires
 */
export function setCookie(name, value, expires) {
    var cookieString = name + "=" + escape(value);
    //判斷是否設置過期時間,0代表關閉瀏覽器時失效
    if (expires > 0) {
        var date = new Date();
        date.setTime(date.getTime() + expires * 1000);
        cookieString = cookieString + ";expires=" + date.toUTCString();
    }
    document.cookie=cookieString;
}

/**
 * @desc 根据name读取cookie
 * @param  {String} name
 * @return {String}
 */
export function getCookie(name) {
    var arr = document.cookie.replace(/\s/g, "").split(';');
    for (var i = 0; i < arr.length; i++) {
        var tempArr = arr[i].split('=');
        if (tempArr[0] == name) {
            return decodeURIComponent(tempArr[1]);
        }
    }
    return '';
}

/**
 * @desc 根据name修改cookie
 * @param  {String} name
 * @param  {String} value
 * @param  {Number} expires
 */
export function editCookie(name, value, expires){
    var cookieString = name + "=" + escape(value);
    if (expires > 0) {
        var date = new Date();
        date.setTime(date.getTime() + expires * 1000);
        cookieString = cookieString + ";expires=" + date.toGMTString();
    }
    document.cookie = cookieString;
}

/**
 * @desc 根据name删除cookie
 * @param  {String} name
 */
export function removeCookie(name) {
    // 设置已过期，系统会立刻删除cookie
    setCookie(name, '', -1);
}

/**
 * 删除所有cookie
 */
export function removeAllCookie() {
    const cookies = document.cookie.split(';')
    for(var i = 0; i < cookies.length; i ++) {
        const [name, value] = cookies[i].split('=')
        removeCookie(name)
    }
}
---
/**
 请求的时候：

 1、 要获取 refreshToken ，并且判断是否超时？

 2、 如果没有超时，重置过期时间（25分钟）, 如果已经超时，那么跳转到登陆页面重新登陆

 3、 获取 token 如果超时了，那么重新获取。

 5、 如果没有超时，继续请求。加入该 token

 6、 如果后端返回 token失效，则跳转登陆
 */

import axios from 'axios'
import VueCookies from 'vue-cookies'

const warn = msg => {
    // 提示错误
    Message.error(msg)

    // 取消请求
    throw new Error(msg)
}


const kill = msg => {
    // 清空cookie
    clearToken()

    // 跳转到登录页
    router.push('/login')

    // 提示错误
    Message.error(msg)

    // 取消请求
    throw new Error(msg)
}

/**
 * 清空 cookie
 */
const clearToken = () => {
    VueCookies.remove('HTCMP_token')
    VueCookies.remove('HTCMP_refreshToken')
}


/**
 * axios 全局配置
 */
const http = axios.create({
    baseURL: Constant.BASEURL,
    headers: { 'app': 'HTCMP', 'X-Requested-With': 'XMLHttpRequest', 'Content-Type': 'application/json; charset=utf-8' },
    timeout: 1000 * 10,
})

/**
 * 请求拦截
 */
http.interceptors.request.use(async request => {
    // ✖️ 如果是登录是不需要 『Authorization』 或者 『token』 的
    if ('/uaa/auth/login' === request.url) {
        return request

    // 📝 如果是 『重新获取token』，则 『Authorization』 需要设置为 『refreshToken』
    } else if ('/uaa/auth/token' === request.url) {
        const refreshToken = getRefreshToken()
        request.headers['Authorization'] = 'Bearer ' + refreshToken
        return request

    // 🚀 其余 API 的 Authorization 全部都必须用 token
    } else {
        const refreshToken = getRefreshToken()
        const token = await getToken()
        request.headers['Authorization'] = 'Bearer ' + token
        return request
    }
})

/**
 * 响应拦截
 */
http.interceptors.response.use(response => {
    // 获取后端的状态码和数据
    const { code, data } = response

    // 根据后端约定，如果状态码 code 为 9926 的话，就是登陆 token 失效
    if (code === '9926') {
        return kill('登录过期，请重新登录！')
    }

    // 正常返回数据
    return data
})


/**
 * 获取 refreshToken
 */
const getRefreshToken = () => {
    // 从 cookie 中获取 refreshToken
    const refreshToken = VueCookies.get('HTCMP_refreshToken')    

    // 如果 refreshToken 正常则重置一下过期时间
    if (refreshToken) {
        // 重置为120分钟
        VueCookies.set('HTCMP_refreshToken', refreshToken, { expires: '120m' })

        // 返回 refreshToken
        return refreshToken

    // 否则跳转登录
    } else {
        kill('登录超时，请重新登录。')
    }
}


/**
 * 获取 token
 */
const getToken = () => {
    // 从cookie中获取token
    const __TOKEN__ = VueCookies.get('HTCMP_token')

    // 如果 token 失效，则重新获取
    if (!__TOKEN__) {
        // 请求最新的 token
        return http.get('/uaa/auth/token').then(data => {
            // 获取新token
            const token = data.token

            // 重置 token
            VueCookies.set('HTCMP_token', token, { expires: '118m' })

            // 返回token
            return token

        }).catch(err => {
            kill('重新获取 token 失败，请重新登录！')
        })
    }

    // 一切正常，返回 token
    return __TOKEN__
}
)
txtit(Var)
return

::yanzhengma::
::daojishi::
::countdown::
Var = 
(
<template>
  <div class="getAuth" :class='{ "disable": ok === false }' @click="getAuth">{{ smsText }}</div>
</template>

<script>
import { getCookie, editCookie, setCookie } from "@/utils/cookie"

data () {
  return {
      ok: true,
      smsText: '获取验证码',
  }
},

methods: {
  // 点击的时候，切换状态。
  sendSms() {
    if (this.ok) {
      // 发送验证码
      // ... your api

      // 设置默认时间
      setCookie('sms', '60', 60)

      // 倒计时开始
      this.countDown()
    }
  },
  countDown() {
    // 获取当前倒计时 cookie
    let countdown = getCookie('sms') ? getCookie('sms') : 0

    // 递归倒计时
    ;(function settime (ctx) {
      if (countdown === 0) {
          ctx.ok = true
          ctx.smsText('获取验证码')
          return
      } else {
        ctx.ok = false
          ctx.smsText(countdown + '秒后重发 | Waiting ' + countdown + 's')
          countdown--
          editCookie('sms', countdown, countdown + 1)
      }
      setTimeout(settime, 1000)
    })(this)
  },
},

beforeMount () {
  this.countDown()
},
</script>

<style>
  .disable {
    opacity: .45;
      user-select: none;
      color: #333;
      cursor: no-drop;
  }
</style>
---
/**
 * 開始倒計時
 * http://candy.dragonvein.io/frontend/web/site/signup
 * @param {jQuery DOM} $dom
 * <input type='button' id='second' value = '獲取驗證碼 | Get SMS Code'/>
 */
$(function () {
	// 触发按钮
	$("#second").click(function () {
	    sendCode();
	});
	// 獲取cookie值
	v = getCookie("secondsremained_login") ? getCookie("secondsremained_login") : 0;
	if (v > 0) {
		 // 開始倒計時
	    countDown($("#second")); 
	}
})

function sendCode () {
	// 设置默认时间
	setCookie('secondsremained_login', '60', 60)
	// 開始倒計時
    countDown($("#second")); 
}

function countDown ($dom) {
	var countdown = getCookie('secondsremained_login') ? getCookie('secondsremained_login') : 0;
	(function settime () {
		if (countdown == 0) {
		    $dom.removeAttr('disabled');
		    $dom.val('獲取驗證碼 | Get SMS Code');
		    return;
		} else {
		    $dom.attr('disabled', true);
		    $dom.val(countdown + '秒後重發 | Waiting ' + countdown + 's');
		    countdown--;
		    editCookie('secondsremained_login', countdown, countdown + 1);
		}
		setTimeout(function() { settime($dom) },1000) //每1000毫秒執行壹次
	}());
}
)
txtit(Var)
return

::maybe_::
::_maybe::
Var =
(
maybe(_ => , [])
)
code(Var)
SendInput, {left 5}
return

::maybe::
Var =
(
const maybe = (fn, n = '') => { 
   try { 
      const result = fn()
      return (result && result === result && result !== 'NaN' && result !== 'Invalid date') ? result : n
   } catch (err) {
      return n 
   }
}

var obj = {
 a: 123
}
maybe(_=> obj.a, 0); // 123
maybe(_=> obj.b, 0); // 0
maybe(_=> obj.a.b.s.w.holy.shit.fuck.god, 0); // 0
)
code(Var)
return

::hanzi::
::maybe.js::
::maybee::
Var =
(
/**
 * MayBe 函子 ...
 *
 */
export const MayBe = function (value) {
    this.value = value
}

// 实例工厂
MayBe.of = function (value) {
    return new MayBe(value)
}

// 检查 value 是否为 null 或 undefined
MayBe.prototype.isNothing = function () {
    return this.value == null
}

MayBe.prototype.map = function (fn) {
    // 这样验证的好处是，不会因为上游的 value 为 null而报错中断。
    return this.isNothing() ? MayBe.of(null) : MayBe.of(fn(this.value))
}

// 返回 value 
MayBe.prototype.join = function () {
    return this.isNothing() ? Maybe.of(null) : this.value
}

// 执行 map 并且返回 value
Maybe.prototype.chain = function (f) {
    return this.map(f).join()
}

/**
 * Either 函子  = 『纯函子 Some』 + 『无 map 函子 Nothing』
 *
 */
export const Either = {
    Some: Some,
    Nothing: Nothing
}

/**
 * Nothing 函子的实现
 */
const Nothing = function (value) {
    this.value = value
}

Nothing.of = function (value) {
    return new Nothing(value)
}

// ⚠️ 核心：不执行任何操作，只是返回函子本身
Nothing.prototype.map = function (f) {
    return this
}

/**
 * Some 纯函子的实现
 */
const Some = function (value) {
    this.value = value
}

Some.of = function (value) {
    return new Some(value)
}

Some.prototype.map = function (fn) {
    return Some.of(fn(this.value))
}
)
code(Var)
return

::gen::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style>
    .container {
        height: 300px;
        width: 60`%;
        border: 1px solid #d3d3d3;
        overflow: auto;
        margin: 40px;
        background-color: #F6F7F9;
        border-radius: 5px;
    }

    .item {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 50px;
        height: 50px;
        background-color: #dbdbdb;
        margin: 10px;
        float: left;
        border-radius: 5px;
        box-shadow: 1px 5px 8px 0px rgba(47, 57, 71, 0.06);
    }

    .loader {
        display: flex;
        width: 100`%;
        height: 100px;
        align-items: center;
        justify-content: center;
    }

    .loader-img {
        width: 80px;
        height: 35px;
    }
    </style>
</head>

<body>
    <div id="root" class="container">
        <div id="loader" class="loader">
            <img class="loader-img" src='https://i.imgur.com/YwRCROv.gif'>
        </div>
    </div>
</body>
<script>
// https://medium.com/@ashishshubham/infinite-scroll-using-generators-bbacbf6cafd9
// generator + async/await 这个方案最骚的一点是，可以阻止scroll重复触发，我们可以有效控制防止多重触发加载重复数据（虽然方法一大堆）
// 常用的套路是： while(true) + yield await promise
function getContent(offset, batchSize) {
  let arr = []
  for (var i = offset; i < offset + batchSize; i++) {
    arr.push(i)
  }
  return new Promise((resolve, reject) => setTimeout(() => resolve(arr), Math.random() * 2000));
}


async function* getData(batchSize) {
  let offset = 0
  while (true) {
    yield await getContent(offset, batchSize)
    offset += batchSize
  }
}

async function* events(el, name , condition) {
  let resolve

  el.addEventListener(name, e => {
    if (condition(e)) {
      resolve(e)
    }
  })

  while (true) {
    // 只有执行了 resolve 外部的 await 才可以解放，现在将解放的权利移交给 scrollToBottom
    yield await new Promise(_resolve => resolve = _resolve)
  }
}


const container = document.getElementById('root')
const loader = document.getElementById('loader')

async function init() {
  let eventIterator = events(container, 'scroll', () => container.scrollHeight <= container.scrollTop + container.clientHeight)

  // for..of 是生成器遍历，等同于不断的执行 next()，由于生成器里面使用了white(true)，所以具备无限个 yield
  for await (const page of getData(50)) {
    append(page)
    // 通过 scroll 来限制逻辑往下走
    // 这一句等于说要等到下一次触发 scrollToBottom 才会继续往下执行（虽然依然在这个循环里边）
    await eventIterator.next()
  }
}

function append(items) {
  let dom = items.map(item => `<div class=item>${item}</div>`).join('')
  container.insertAdjacentHTML('beforeend', dom)
  container.append(loader)
}

init()
</script>

</html>
---
const render = data => console.log(data)

function *gen(fn) {
    const cacheData = yield
    fn(cacheData)

    const networkData = yield
    fn(networkData)
}


const g = gen(render)
g.next()
g.next('fuck')
setTimeout(() => g.next('god'), 2000)
---
function *gen() {
    yield 'fitst';
    yield 'second';
    yield 'third';
}

let genResult = gen();
genResult.next().value // first
genResult.next().value // second
genResult.next().value // third

//////////////////////////////////////////////

function *gen() {
    yield 'fitst';
    yield 'second';
    yield 'third';
}

for (const value of gen()) {
   console.log(value);
}
// fitst
// second
// third
---
function *gen() {
    const firstname = yield
    console.log(firstname)

    const secondname = yield
    console.log(secondname)
}

const genResult = gen()
genResult.next()
genResult.next('fuck')
genResult.next('god')

// 解释一下，由于yield可以理解为暂停器。
// 当第一次调用 g.next() 时，代码将返回并且暂停于此： const firstname = yield

// 有趣的事情发生在第二次调用 g.next('fuck') 时传入了 「值」，将从上一次暂停处恢复，并且 「yield关键词」 将被 「值」 替换并且继续执行。
// (所以 yield 有点像一个忠诚的影舞者，等待主人并且替换后，继续往下作战)

// 然后继续执行，而又遇到yield处再次暂停： const secondname = yield
// 第三次调用 next： g.next('god')
// 同前面一样，传入的 「值」 将替换 yield，并在赋值完后继续执行。
---
let gen;

let getDataOne = () => {
    setTimeout(function () {
        gen.next('one')
    }, 1000);
}

let getDataTwo = () => {
    setTimeout(function () {
        gen.next('two')
    }, 1000);
}

function *main() {
    let dataone = yield getDataOne();
    let datatwo = yield getDataTwo();
    console.log(dataone, datatwo);
}

gen = main();
gen.next();  // {value: undefined, done: false}
// 1秒后输出： one two
---
async function *gen(...args) {
    console.log('记得创建生成器的时候是可以给参数的', args)

    const cache = yield
    console.log(data + cache)

    const network = yield
    console.log(network)
}

const g = gen('abc')
g.next()
g.next('fuck')
setTimeout(() => g.next('god'), 2000)
)
txtit(Var)
tip3("generator")

return

::curry::
::kelihua::
Var =
(
// 科里化是把一个多参数函数转化为一个嵌套的一元函数的过程。
// 简单的说就是将函数的参数，变为多次入参。
const curry = (fn, ...args) => fn.length <= args.length ? fn(...args) : curry.bind(null, fn, ...args);
// 其实原理很容易看得懂，就是在参数未搜集完善之前，执行的都是 curry 函数本身，而curry函数核心目的就是在搜集原函数的参数的过程。这个过程就是靠bind来实现的搜集，结合...args的特性来迭代。rgs的特性来迭代。
// const multiply = (x, y, z) => x * y * z
// multiply.bind(null, 1, 2)(3) // 6
// 当搜集完成时，就可以执行原函数了。
  
const add = (x, y) => x + y;
const curryadd = curry(add);
curryadd(4)(4); // 8

const multiply = (x, y, z) => x * y * z
const currymultiply = curry(multiply);
currymultiply(1)(2)(3); // 6

)
code(Var)
return

::await::
Var =
(
class Person {
    async getVersion () {
        return new Promise((resolve, reject) => {
           setTimeout(function () {
                resolve('1.0'); // reject('fail')
           }, 1000);
        })
    }
}

const start = async () => {
   var p = new Person();
   const data = await p.getVersion();
   console.log(20180716090040, data); 
}

start(); // 20180716090040 "1.0"
)
code(Var)
return

::changan::
::longpress::
::longtap::
::longclick::
::longtouch::
::changtouch::
Var =
(
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
---
// <div id='box' v-drag='{ warp: "#app", tap: tapHandler, longTap: longTapHandler }'></div>
Vue.directive('drag', {
  inserted (el, { value = {} }) {
    // 获取组件的容器 
      const container = value.warp ? document.querySelector(value.warp) : document.body

      const maxW = container.offsetWidth - el.offsetWidth

      const maxH = container.offsetHeight - el.offsetHeight

      let distanceLeft, distanceTop

      let longClick, timer

      el.addEventListener('touchstart', e => {
          longClick = 0, timer = setTimeout(() => longClick = 1, 500)

          distanceLeft = e.targetTouches[0].clientX - el.offsetLeft
          distanceTop = e.targetTouches[0].clientY - el.offsetTop

          document.addEventListener('touchmove', e => e.preventDefault(), { passive: false })
      })

      el.addEventListener('touchmove', e => {
        // 清空 timer
          clearTimeout(timer), timer = 0

          let left = e.targetTouches[0].clientX - distanceLeft
          let top = e.targetTouches[0].clientY - distanceTop

          // 防止左右越界
          if (left <= 0)    left = 0
          if (left >= maxW) left = maxW

          // 防止上下越界
          if (top <= 0)    top = 0 
          if (top >= maxH) top = maxH

          el.style.left = left + 'px'
          el.style.top  = top + 'px'
      })

      el.addEventListener('touchend', e => {
        // 如果是点击事件
          if (timer != 0 && longClick == 0) 
            value.tap && value.tap()

          // 如果是长按事件（只有松开的一瞬间才会触发）
          if (timer && longClick == 1)
              value.longTap && value.longTap()

          document.removeEventListener('touchmove', e => e.preventDefault())
      })
  }
})
)
txtit(Var)
return


::maopao::
::maopaopaixu::
Var = 
(
var arr = [8, 5,5,3,2]
// 为什么要-1，因为最后一次的时候是不需要与自己比较，所以绕过了。当然你不-1也无所谓，只是优化而已
for (var i = 0;i < arr.length - 1; i++) {
    // 同理，你减不减i都无所谓。只是优化而已。但这个优化的幅度比较大推荐加上。
    for (var j = 0; j < arr.length - 1 - i; j++) {
        // a > b(从小到大正序) / a < b(从大到小倒序)
        if (arr[j] > arr[j+1]) {
            // [arr[j + 1], arr[j]] = [arr[j], arr[j + 1]]
            var temp = arr[j + 1]
            arr[j + 1] = arr[j]
            arr[j] = temp
        }
    }
}
console.log(arr)
)
code(Var)
return


::paixu::
::qsort::
::quicksort::
::kuaisupaixu::
::fastpaixu::
Var = 
(
// 待排序的数组
var a = [8, 5, 5, 3, 2, 11, 35, 23, 9]

function quicksort (left_index, right_index) {
    // 异常情况
    if (left_index > right_index) return;

    // 基准数，其实就是把数组中最左边的数拿来判断没什么
    var temp = a[left_index];

    var i = left_index;
    var j = right_index;

    // 一直循环，直到它们碰面
    while (i != j) {
        // j哨兵由右往左前行，为了寻找比基准数小的值
        while (a[j] >= temp && i < j) j--;
        // i哨兵由左往右前行，为了寻找比基准数大的值
        while (a[i] <= temp && i < j) i++;

        // 这里重要的两点是：
        // 1、必须是右往左先走。
        // 2、i必须小于j。如果他们碰面的话（i===j）按照游戏规则必须停止前行。
        if (i < j) {
            var t = a[i];
            a[i] = a[j];
            a[j] = t;
        }
    }
    // 交换基准数和碰面的位置的数值
    a[left_index] = a[i]; // 其实这里a[i]或者a[j]都可以。 反正就是要和基准数交换位置。这也是本排序最关键的地方
    a[i] = temp;                

    // 递归继续同样的游戏规则,下面还是一样，用i和j都可以，反正他们碰面了位置是一样的
    quicksort(left_index, i - 1);
    quicksort(i+1, right_index);
}

quicksort(0, a.length - 1)

console.log(a)
)
code(Var)
return


::erfenfa::
::jserfenfa::
::jsbinary::
Var =
(
// https://dev.to/seanwelshbrown/writing-a-binary-search-algorithm-in-javascript-5fa6
function binarySearch(arr, target) {
  let left = 0;
  let right = arr.length - 1;

  while (left <= right) {
    let mid = Math.floor((left + right) / 2);

    if (arr[mid] === target) return mid;

    if (target < arr[mid]) {
      right = mid - 1;
    } else {
      left = mid + 1;
    }
  }

  return "Target Not Found"
  // could also return -1, false, undefined, etc
}
---
// 使用二分法的前提是，必须是有序数组
var binary_search = function (list, target) {
  var low = 0
  var high = list.length

  while(!(low > high)) {
    var mid = parseInt((low + high) / 2)
    var guess = list[mid]
    if (guess === target) {
      return mid
    } else if (guess > target){
      high = mid - 1
    } else {
      low = mid + 1
    }
  }
  return null
}

console.log(binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5))
)
txtit(Var)
return

::jsstack::
::jszhan::
::jszhange::
::stack::
Var =
(
// 栈Sstack）：站着的书堆，后进先出
export default class Stack {
  constructor() {
    this.count = 0;
    this.items = {};
  }
  push(element) {
    this.items[this.count] = element;
    this.count++;
  }
  pop() {
    if (this.isEmpty()) {
      return undefined;
    }
    this.count--;
    const result = this.items[this.count];
    delete this.items[this.count];
    return result;
  }
  peek() {
    if (this.isEmpty()) {
      return undefined;
    }
    return this.items[this.count - 1];
  }
  isEmpty() {
    return this.count === 0;
  }
  size() {
    return this.count;
  }
  clear() {
    /* while (!this.isEmpty()) { this.pop();} */
    this.items = {};
    this.count = 0;
  }
  toString() {
    if (this.isEmpty()) {
      return '';
    }
    let objString = `${this.items[0]}`;
    for (let i = 1; i < this.count; i++) {
      objString = `${objString},${this.items[i]}`;
    }
    return objString;
  }
}
)
code(Var)
return

::jserjinzhi::
::erjinzhi::
Var =
(
function decimalToBinary(decNumber) {
  let remStack = [];
  let binaryString = '';

  while (decNumber > 0) {
    let rem = Math.floor(decNumber `% 2);
    remStack.push(rem);
    decNumber = Math.floor(decNumber / 2);
  }

  while (!(remStack.length === 0)) {
    binaryString += remStack.pop().toString();
  }

  return binaryString;
}
)
code(Var)
return

::jsqueue::
::queue::
Var =
(
// 队列，排队的中国人，先进先出
// 高级版：https://github.com/loiane/javascript-datastructures-algorithms/issues/25 | https://github.com/trekhleb/javascript-algorithms/blob/master/src/data-structures/queue/Queue.js
export default class Queue {
  constructor() {
    this.items = []
  }
  // 向尾部添加书籍
  enqueue(element) {
    this.items.push(element)
  }
  // 移出队列第一位
  dequeue() {
    this.items.shift();
  }
  // 查看第一位
  front() {
    return this.items[0];
  }

  isEmpty() {
    return this.items.length === 0;
  }

  size() {
    return this.items.length
  }

  print() {
    console.log(this.item.toString())
  }
}
)
code(Var)
return

::jsjinzhi::
::jinzhizhuanhuan::
::jsjinzhizhuanhuan::
Var =
(
function baseConverter(decNumber, base) {
  const remStack = [];
  const digits = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  let baseString = '';

  if (!(base >= 2 && base <= 36)) {
    return '';
  }

  while (decNumber > 0) {
    let rem = Math.floor(decNumber `% base);
    remStack.push(rem);
    decNumber = Math.floor(decNumber / base);
  }

  while (!(remStack.length === 0)) {
    baseString += digits[remStack.pop()];
  }

  return baseString;
}
)
code(Var)
return

::kuaisu::
::jsquicksort::
::jsfastsort::
::jskuaisupaixu::
::kuaisupaixu::
::jssort::
Var =
(
// 快速排序
const quicksort = array => {
	// 这不是废话吗？如果数组中只有1个成员或没有成员，那还排个屁序！！
	if (array.length <= 1) 
		return array
	else {
		// 随机选出一个作为排序对比时的【基准数】，这里就取第一个好了最简单了
		const pivot = array.shift()
		// 将比基准数小的放在一个数组中
		const less = array.filter(_ => _ <= pivot)
		// 把基准数大的放在另外一个数组中
		const greater = array.filter(_ => _ > pivot)
		// 这就是快速排序的精华所在:递归, 然后把三个数据合并
		return [...quicksort(less), pivot, ...quicksort(greater)]
	}
}

console.log(quicksort([10, 5, 2, 3])) // [2, 3, 5, 10]
)
code(Var)
return

::hanshujieliu::
::jieliu::
::throttle::
Var =
(
// 函数节流（throttle）：3秒之后你执行一万次也只会执行一次
var throttle = function(func, wait, options) {
  var timeout, context, args, result;
  // 标记时间戳
  var previous = 0;
  // options可选属性 leading: true/false 表示第一次事件马上触发回调/等待wait时间后触发
  // options可选属性 trailing: true/false 表示最后一次回调触发/最后一次回调不触发
  if (!options) options = {};

  var later = function() {
    previous = options.leading === false ? 0 : +(new Date());
    timeout = null;
    result = func.apply(context, args);
    if (!timeout) context = args = null;
  };

  var throttled = function() {
    // 记录当前时间戳
    var now = +(new Date());
    // 如果是第一次触发且选项设置不立即执行回调
    if (!previous && options.leading === false)
    // 将记录的上次执行的时间戳置为当前
    previous = now;
    // 距离下次触发回调还需等待的时间
    var remaining = wait - (now - previous);
    context = this;
    args = arguments;

    // 等待时间 <= 0或者不科学地 > wait（异常情况）
    if (remaining <= 0 || remaining > wait) {
      if (timeout) {
          // 清除定时器
        clearTimeout(timeout);
        // 解除引用
        timeout = null;
      }
      // 将记录的上次执行的时间戳置为当前
      previous = now;

      // 触发回调
      result = func.apply(context, args);
      if (!timeout) context = args = null;
    }
    // 在定时器不存在且选项设置最后一次触发需要执行回调的情况下
    // 设置定时器，间隔remaining时间后执行later
    else if (!timeout && options.trailing !== false)    {
      timeout = setTimeout(later, remaining);
    }
   return result;
  };

  throttled.cancel = function() {
    clearTimeout(timeout);
    previous = 0;
    timeout = context = args = null;
  };

  return throttled;
};

// demo
var fn = (data) => console.log(20180926160742, data);
// leading 为 true时，第一次执行立即触发，这比setTimeout好多了
// trailing 为 fasle时，不会触发最后一次。这样比较符合直觉。
const fn2 = throttle(fn, 3000, { leading: true, trailing: false });
fn2(123) // 请手动不停的执行这个函数
)
code(Var)
return

::hanshuqudou::
::fangdou::
::qudou::
::hanshufangdou::
Var =
(

// 函数去抖（debounce）：比如5秒后执行一个函数，如果这期间又被调用，那倒计时重头来。你一抖就重新来，看你抖不抖
var debounce = function(func, wait, immediate) {
    var timeout, result;

     // 定时器设置的回调，清除定时器，执行回调函数func
    var later = function(context, args) {
      timeout = null;
      if (args) result = func.apply(context, args);
    };

    var restArgs = function(func, startIndex) {
      startIndex = startIndex == null ? func.length - 1 : +startIndex;
      return function() {
        var length = Math.max(arguments.length - startIndex, 0);
        var rest = Array(length);
        for (var index = 0; index < length; index++) {
          rest[index] = arguments[index + startIndex];
        }
        switch (startIndex) {
          case 0: return func.call(this, rest);
          case 1: return func.call(this, arguments[0], rest);
          case 2: return func.call(this, arguments[0], arguments[1], rest);
        }
        var args = Array(startIndex + 1);
        for (index = 0; index < startIndex; index++) {
          args[index] = arguments[index];
        }
        args[startIndex] = rest;
        return func.apply(this, args);
      };
    };

    var delay = restArgs(function(func, wait, args) {
      return setTimeout(function(){
        return func.apply(null, args);
      }, wait);
    });

     // restArgs函数将传入的func的参数改造成Rest Parameters —— 一个参数数组
    var debounced = restArgs(function(args) {
      if (timeout) clearTimeout(timeout);
      if (immediate) {
        // 立即触发的条件：immediate为true且timeout为空
        var callNow = !timeout;
        timeout = setTimeout(later, wait);
        if (callNow) result = func.apply(this, args);
      } else {
        // _.delay方法实际上是setTimeout()包裹了一层参数处理的逻辑
        timeout = delay(later, wait, this, args);
      }

      return result;
    });

    debounced.cancel = function() {
      clearTimeout(timeout);
      timeout = null;
    };

    return debounced;
};
)
code(Var)
return

::jsdefaultparams::
::defaultparams::
::defaultparam::
Var =
(
// 必须加上 = {}
function foo({x, y = 5} = {}) {
  console.log(x, y);
}

foo() // undefined 5
)
code(Var)
return

::__lock__::
::lockfn::
::lockanimate::
::lock::
::js.lock::
::jslock::
::islock::
Var =
(
// （超简易拿来无封装版）使用函数加锁器
// var lockAnimate = (function(){
// 	var __LOCK__ = false
// 	return function (scrollTop) {
// 		if (!__LOCK__) {
// 			__LOCK__ = true
// 			$('#trajectoryUl').animate({ scrollTop: scrollTop + 'px' }, 1500, function () {
// 				// 解锁
// 				__LOCK__ = false
// 			});
// 		}
// 	}
// }());
// lockAnimate(40 * 1)
// lockAnimate(40 * 2)
// lockAnimate(40 * 3)


// 函数加锁器
const lockFn = function (fn) {
	// 锁
	let __LOCK__ = false

	// 加锁器
	let lock = function () {
		__LOCK__ = true
	}

	// 解锁器
	let unlock = function () {
		__LOCK__ = false
	}

	// 检锁器
	let islock = function () {
		return __LOCK__ === true
	}

	return function (...args) {
		// 如果没锁的话则执行
		if (!islock()) {
			// 加锁
			lock()
			// 执行并且把锁交给它
			return fn && fn.call(this, unlock, args)
		}
	}
};

// 自定义函数
const myanimate = (unlock, scrollTop) => {
	$('#trajectoryUl').animate({ scrollTop: scrollTop + 'px' }, 1500, function () {
		// 解锁
		unlock()
	});
}

// 使用函数加锁器
const lockAnimate = lockFn(myanimate);
lockAnimate(40 * 1)
lockAnimate(40 * 2)
lockAnimate(40 * 3)


// (新)
// 单向锁
const isFirst = ((n = 1) => () => --n === 0)()
)
code(Var)
return

::proload::
::proloadimg::
Var =
(
const preLoadImages = (imgs) => {
  var imgWrap = [];
  imgs.forEach(function (path) {
       new Image().src = path;
  });
}
preLoadImages(['./bg.png', './bg2.png', './bigBtn_1.svg', './bigBtn_2.svg', './bigBtn_3.svg', './bigBtn_4.svg', './blue_dashed.png', './border.png', './business.svg', './circleBg.png', './companyBg.svg', './dian.png', './dingwei.png', './dingwei2.png', './favicon.png', './green_dashed.png', './k.png', './k.svg', './kuang_leftbottom.png', './kuang_rightbottom.png', './kuang_righttop.png', './layer.png', './logo.svg', './longHeader.svg', './missionCompletionRate.svg', './moshitu_03.png', './numberOfCompletedTasks.svg', './people.png', './regulatoryModel.svg', './search.png', './shortHeader.svg', './totalAnnualTasks.svg', './up.svg',])
)
code(Var)
return


::script::
Var =
(

<script>
export default {
  name: "test",
  data() {
    return {
      items: [],
      title: "HelloWorld",
    };
  },
  methods: {
    go() {
      console.log("go")
    },
  },
  components: {},
  computed: {},
  watch: {},
  props: [],
  beforeMount() {
    console.log(20200811085251, "test")
  }
}
</script>
)
code(Var)
return

::script`:src::
Var =
(
<script src='.js'></script>
)
code(Var)
Send, {left 14}
return

:?:.remove::
Var =
(
.removeEventListener('click', e => {
	
})
)
code(Var)
return



::scrollintoview::
::scrolltoview::
Var =
(
function scrollIntoView(container, selected) {
  if (Vue.prototype.$isServer) return;

  if (!selected) {
    container.scrollTop = 0;
    return;
  }

  const offsetParents = [];
  let pointer = selected.offsetParent;
  while (pointer && container !== pointer && container.contains(pointer)) {
    offsetParents.push(pointer);
    pointer = pointer.offsetParent;
  }
  const top = selected.offsetTop + offsetParents.reduce((prev, curr) => (prev + curr.offsetTop), 0);
  const bottom = top + selected.offsetHeight;
  const viewRectTop = container.scrollTop;
  const viewRectBottom = viewRectTop + container.clientHeight;

  if (top < viewRectTop) {
    container.scrollTop = top;
  } else if (bottom > viewRectBottom) {
    container.scrollTop = bottom - container.clientHeight;
  }
}
)
code(Var)
return

::dom.js::
::domjs::
Var =
(

/* istanbul ignore next */
export const on = (function() {
  if (document.addEventListener) {
    return function(element, event, handler) {
      if (element && event && handler) {
        element.addEventListener(event, handler, false);
      }
    };
  } else {
    return function(element, event, handler) {
      if (element && event && handler) {
        element.attachEvent('on' + event, handler);
      }
    };
  }
})();

/**
 * 移动dom元素到指定目标位置
 *
 * @source {DOM} 你要移动的DOM
 * @target {DOM} 你要移动的位置
 */
const mvDOM = function (source, target) {
	// 深度拷贝（含子元素）
	let _source = source.cloneNode(true)
	// 删除本身
	source.remove()
	// 默认插入到容器最前面，如果想在后面可以这样处理：target.append(source)
	target.insertBefore(_source, target.firstChild)
}

/* istanbul ignore next */
export const off = (function() {
  if (document.removeEventListener) {
    return function(element, event, handler) {
      if (element && event) {
        element.removeEventListener(event, handler, false);
      }
    };
  } else {
    return function(element, event, handler) {
      if (element && event) {
        element.detachEvent('on' + event, handler);
      }
    };
  }
})();

/* istanbul ignore next */
export const once = function(el, event, fn) {
  var listener = function() {
    if (fn) {
      fn.apply(this, arguments);
    }
    off(el, event, listener);
  };
  on(el, event, listener);
};

/* istanbul ignore next */
export function hasClass(el, cls) {
  if (!el || !cls) return false;
  if (cls.indexOf(' ') !== -1) throw new Error('className should not contain space.');
  if (el.classList) {
    return el.classList.contains(cls);
  } else {
    return (' ' + el.className + ' ').indexOf(' ' + cls + ' ') > -1;
  }
};

/* istanbul ignore next */
export function addClass(el, cls) {
  if (!el) return;
  var curClass = el.className;
  var classes = (cls || '').split(' ');

  for (var i = 0, j = classes.length; i < j; i++) {
    var clsName = classes[i];
    if (!clsName) continue;

    if (el.classList) {
      el.classList.add(clsName);
    } else if (!hasClass(el, clsName)) {
      curClass += ' ' + clsName;
    }
  }
  if (!el.classList) {
    el.className = curClass;
  }
};

/* istanbul ignore next */
export function removeClass(el, cls) {
  if (!el || !cls) return;
  var classes = cls.split(' ');
  var curClass = ' ' + el.className + ' ';

  for (var i = 0, j = classes.length; i < j; i++) {
    var clsName = classes[i];
    if (!clsName) continue;

    if (el.classList) {
      el.classList.remove(clsName);
    } else if (hasClass(el, clsName)) {
      curClass = curClass.replace(' ' + clsName + ' ', ' ');
    }
  }
  if (!el.classList) {
    el.className = trim(curClass);
  }
};

/* istanbul ignore next */
export const getStyle = ieVersion < 9 ? function(element, styleName) {
  if (!element || !styleName) return null;
  styleName = camelCase(styleName);
  if (styleName === 'float') {
    styleName = 'styleFloat';
  }
  try {
    switch (styleName) {
      case 'opacity':
        try {
          return element.filters.item('alpha').opacity / 100;
        } catch (e) {
          return 1.0;
        }
      default:
        return (element.style[styleName] || element.currentStyle ? element.currentStyle[styleName] : null);
    }
  } catch (e) {
    return element.style[styleName];
  }
} : function(element, styleName) {
  if (!element || !styleName) return null;
  styleName = camelCase(styleName);
  if (styleName === 'float') {
    styleName = 'cssFloat';
  }
  try {
    var computed = document.defaultView.getComputedStyle(element, '');
    return element.style[styleName] || computed ? computed[styleName] : null;
  } catch (e) {
    return element.style[styleName];
  }
};

/* istanbul ignore next */
export function setStyle(element, styleName, value) {
  if (!element || !styleName) return;

  if (typeof styleName === 'object') {
    for (var prop in styleName) {
      if (styleName.hasOwnProperty(prop)) {
        setStyle(element, prop, styleName[prop]);
      }
    }
  } else {
    styleName = camelCase(styleName);
    if (styleName === 'opacity' && ieVersion < 9) {
      element.style.filter = isNaN(value) ? '' : 'alpha(opacity=' + value * 100 + ')';
    } else {
      element.style[styleName] = value;
    }
  }
};
)
code(Var)
return

::jsonps::
::jsonsp::
Var =
(
JSON.parse(JSON.stringify())
)
code(Var)
Send, {left 2}
return

::jsx::
Var =
(
<script type="text/jsx">

</script>
)
code(Var)
Send, {up}{tab}
return

::addclass::
Var =
(
const addClass = (el, cls) => {
    if (el.classList) {
        el.classList.add(cls)
    } else {
        var cur = ' ' + utils.getClassName(el) + ' '
        if (cur.indexOf(' ' + cls + ' ') < 0) {
            el.setAttribute('class', (cur + cls).trim())
        }
    }
}
)
code(Var)
return

::hasclass::
Var =
(
export const hasClass = (el, className) => {
  if (el.classList)
    return el.classList.contains(className);
  else
    return new RegExp('(^| )' + className + '( |$)', 'gi').test(el.className);
}
)
code(Var)
return

::removeclass::
Var =
(
export const removeClass = (el, cls) => {
    if (el.classList) {
        el.classList.remove(cls)
    } else {
        var cur = ' ' + utils.getClassName(el) + ' ',
            tar = ' ' + cls + ' '
        while (cur.indexOf(tar) >= 0) {
            cur = cur.replace(tar, ' ')
        }
        el.setAttribute('class', cur.trim())
    }
}
)
code(Var)
return

::getclass::
::getclassname::
Var =
(
export const getClassName = (el) => {
    return (el.className instanceof SVGAnimatedString ? el.className.baseVal : el.className)
}
)
code(Var)
return

::.tfb::
Var =
(
.before(() => this.loading = true).then(({ message, code, data } = {}) => {
 // 保存成功
 if (code === 200) {
   // 跳转到首页
   this.$message('提交成功')
 } else {
   this.$message(message || '数据异常')
 }
}).finally(() => {
 this.loading = false
})
)
code(Var)
return

::parsepath::
Var =
(
function parsePath(path) {
	if (/[^\w.$]/.test(path)) {
		return
	}
	const segments = path.split('.')
	return function (obj) {
		for (let i = 0, len = segments.length; i < len; i++) {
			obj = obj[segments[i]]
		}
		return obj
	}
}
)
code(Var)
return

::def::
::define::
::obj::
::objd::
::odefine::
::object.define::
::objdefine::
Var =
(
// 模拟 Vue 配置
var VueComponent = {
  data () {
    return {
        items: [],
        title: 'HelloWorld'
    }
  },
}

function defineReactive(obj, key, val) {
  Object.defineProperty(obj, key, {
    enumerable: true,
    configurable: true,
    get () {
      console.log('get hook')
      return val
    },
    set (newVal) {
      console.log('set hook')
      if (val === newVal) {
        return
      }
      val = newVal
    }
  })
}

// 获取状态
var data = VueComponent.data()

// 对象遍历
for (let [key, val] of Object.entries(data)) {
    // 初始化对象的 foo 属性
    defineReactive(data, key, val)
}

// 访问对象的foo属性，触发 get 钩子
console.log(data.title)

// 设置 foo 属性，触发 set 钩子
data.title = '456'

//////////////////////////////////////////////
// ⚠️ 注意，js 无法监听对象属性的添加和删除
//////////////////////////////////////////////
console.log(data.fuck) // => 不会触发 'get hook' 钩子


//////////////////////////////////////////////
// ⚠️ 注意，数组成员的修改也不会触发 set hook，除非整个数组修改
//////////////////////////////////////////////

// ⚠️ 注意，不会触发 set hook
// ❓ 不会触发set hook，但居然还额外触发了 get hook。 暂时不知道为啥
data.items[0] = '123' 

// 除非整个替换，才会触发 set hook 钩子
data.items = 123 // 触发 set hook

---
class Observer {
  constructor(value) {
    this.value = value

    // 目前只支持对象，不支持数组
    if (!Array.isArray(value)) {
      this.walk(value)
    }
  }

  walk(obj) {
    const keys = Object.keys(obj)
    for (let i = 0, len = keys.length; i < len; i++) {
      const key = keys[i]
      const val = obj[keys[i]]
      defineReactive(obj, key, val)
    }
  }
}

function defineReactive(obj, key, val) {
  if (typeof val === 'object') {
    new Observer(val)
  }

  let dep = []

  Object.defineProperty(obj, key, {
    enumerable: true,
    configurable: true,
    get () {
      // 这里用 window.__FUCK__ 来假装依赖吧
      dep.push(window.__FUCK__)
      return val
    },
    set (newVal) {
      if (val === newVal) {
        return
      }

      // 通知变化，并且注入新旧数据
      dep.forEach(fn => fn(newVal, val))

      val = newVal
    }
  })
}

window.__FUCK__ = (newV, oldV) => {
  console.log('fuckyou', newV, oldV)
}


//////////////////////////////////////////////
// usage
//////////////////////////////////////////////

var data = {}

// 初始化对象的 foo 属性
defineReactive(data, 'name', { a: { b: { c: { d: 'fuckyou' } } } })

// 必须先触发 get 钩子，这一步是为了将依赖回调 __FUCK__ 加入到 Dep 中
console.log('先读取一下，触发get钩子', data.name.a.b.c.d)

// 触发 set 钩子，触发 __FUCK__
data.name.a.b.c.d = '321'
---
class Observer {
  constructor(value) {
    this.value = value

    // 目前只支持对象，不支持数组
    if (!Array.isArray(value)) {
      this.walk(value)
    }
  }

  walk(obj) {
    const keys = Object.keys(obj)
    for (let i = 0, len = keys.length; i < len; i++) {
      const key = keys[i]
      const val = obj[keys[i]]
      defineReactive(obj, key, val)
    }
  }
}

class Dep {
  constructor() {
    this.dep = []
  }

  add(fn) {
    this.dep.push(fn)
  }

  del(fn) {
   // 如果依赖中包含这个回调
   if (this.dep.includes(fn))
     // 那么删除它
     this.dep.splice(this.dep.indexOf(fn), 1)
  }

  emit(newV, oldV) {
    this.dep.forEach(fn => fn(newV, oldV))
  }
}

function defineReactive(obj, key, val) {
  if (typeof val === 'object') {
    new Observer(val)
  }

  let dep = new Dep()

  Object.defineProperty(obj, key, {
    enumerable: true,
    configurable: true,
    get () {
      // 这里用 window.__FUCK__ 来假装依赖吧
      dep.add(window.__FUCK__)
      return val
    },
    set (newVal) {
      if (val === newVal) {
        return
      }

      // 通知变化，并且注入新旧数据
      dep.emit(newVal, val)

      val = newVal
    }
  })
}

window.__FUCK__ = (newV, oldV) => {
  console.log('fuckyou', newV, oldV)
}


//////////////////////////////////////////////
// usage
//////////////////////////////////////////////

var data = {}

// 初始化对象的 foo 属性
defineReactive(data, 'name', { a: { b: { c: { d: 'fuckyou' } } } })

// 必须先触发 get 钩子，这一步是为了将依赖回调 __FUCK__ 加入到 Dep 中
console.log('先读取一下，触发get钩子', data.name.a.b.c.d)

// 触发 set 钩子，触发 __FUCK__
data.name.a.b.c.d = '321'
---
function defineReactive(obj, key, val) {
  Object.defineProperty(obj, key, {
    enumerable: true,
    configurable: true,
    get () {
      return val + ' you'
    },
    set (newVal) {
      if (val === newVal) {
        return
      }
      val = newVal
    }
  })
}

// 获取状态
var data = {}

defineReactive(data, 'title', 'fuck')

// 访问对象的title属性，触发 get 钩子
console.log(data.title) // => fuck you

// 修改对象的title属性，触发 set 钩子
data.title = 'how dirty'

console.log(data.title) // => how dirty you
---
export function def (obj, key, val, enumerable) {
  Object.defineProperty(obj, key, {
    value: val,
    enumerable: !!enumerable,
    writable: true,
    configurable: true
  })
}

const obj = {
  get foo() {
    return this.val
  },

  set bar(value) {
    this.val = value
  }
}

obj.bar = 'hello world'

console.log(obj.foo) // =>hello world
---
<script>
  // 监听 window.echarts 的定义（当 echarts 引入注册时会触发）
  Object.defineProperty(window, "echarts", {
      get() {
        return this.__echarts
      },
      set (value) {
        this.__echarts = value

        // 监听 echarts.init 赋值时
          Object.defineProperty(this.__echarts, "init", {
            get() {
              return this.__init
            },
            set (init) {
              // 代理 init 以及 setOption
              this.__init = function (...args) {
                  // origin function init
                  const myChart = init(...args)

                  // 复制一份 setOption 引用
                const setOption = myChart.setOption.bind(myChart)

                // 修改引用、 进行代理
                myChart.setOption = function(opts, ...args) {
                    // 备份初代配置
                    myChart.INIT_OPTS = opts

                    // origin function setOption
                    return setOption(opts, ...args)
                }

                // 添加点击事件（放心，不会被覆盖）
                myChart.on('click', () => {
                      console.log('🦄', myChart.INIT_OPTS)
                })

                // 照常返回 charts
                return myChart
              }
          },
          configurable: true
        })
      }
  })
</script>
)
txtit(Var)
return


::fetch2::
Var =
(
fetch('/api/admin/user/sysUser/fetchCurrentUser').then(response => {
    return response.json()
}).then(_ => {
	console.log(20190509114053, _)
})
)
code(Var)
return

::commander::
Var =
(
const colors = require('colors');
const commander = require('commander');
const pkg = require('../package.json');

commander
  .version(pkg.version)
  .description(pkg.description)
  .usage('[options] <command> [...]')
  .option('-c, --city [name]', 'Add city name')
  .parse(process.argv);

if (process.argv.slice(2).length === 0) {
    commander.outputHelp(colors.red);
    process.exit()
}

// $ yarn ts-node src/index.ts
console.log(commander.city) // => dongguan
)
code(Var)
return

::ed::
Var =
(
export default {}
)
code(Var)
SendInput, +{left 2}
return

::editor::
::webide::
::ide::
::jside::
::ace::
::iide::
Var =
(
/**
 * 加载script并且执行回调
 * @param {String} url 资源地址
 * @param {Function} cb 回调方法
 * https://www.cnblogs.com/_franky/archive/2010/06/20/1761370.html
 */
var onscriptload = function (url, cb) {
  var node = document.createElement("script")
  var head = document.getElementsByTagName('head')[0]
  var timeID
  var supportLoad = "onload" in node
  var onEvent = supportLoad ? "onload" : "onreadystatechange"
  node[onEvent] = function onLoad() {
      if (!supportLoad && !timeID && /complete|loaded/.test(node.readyState)) {
          timeID = setTimeout(onLoad)
          return
      }
      if (supportLoad || timeID) {
          clearTimeout(timeID)
          cb && cb()
      }
  }
  head.insertBefore(node, head.firstChild)
  node.src = url
}

// https://cdnjs.com/libraries/ace
onscriptload('https://cdn.staticfile.org/ace/1.4.4/ace.js', function () {
	onscriptload('https://cdn.staticfile.org/ace/1.4.4/mode-javascript.js', function () {
		onscriptload('https://cdn.staticfile.org/ace/1.4.4/theme-monokai.js', function () {
			var div = document.createElement('div')
			div.style = 'position: absolute; top: 0; right: 0; bottom: 0; left: 0; z-index: 199307100337;'
			div.id = 'editor'
			document.body.insertBefore(div, document.body.firstChild) 

			var editor = ace.edit('editor');
			var JavaScriptMode = ace.require("ace/mode/javascript").Mode;
			editor.session.setMode(new JavaScriptMode());	

			editor.setTheme("ace/theme/monokai");

			document.addEventListener('keydown', event => {
				if (event.keyCode == 27) 
                    div.style.display = div.style.display === 'none' ? 'block' : 'none'
			})
		})
	})
})
)
code(Var)
return


::allcolor::
Var =
(

(function () {
  // Should include colors from elements that have a border color but have a zero width?
  var includeBorderColorsWithZeroWidth = false;

  var allColors = {};
  var props = ["background-color", "color", "border-top-color", "border-right-color", "border-bottom-color", "border-left-color"];
  var skipColors = {
    "rgb(0, 0, 0)": 1,
    "rgba(0, 0, 0, 0)": 1,
    "rgb(255, 255, 255)": 1
  };

  [].forEach.call(document.querySelectorAll("*"), function (node) {
    var nodeColors = {};
    props.forEach(function (prop) {
      var color = window.getComputedStyle(node, null).getPropertyValue(prop),
        thisIsABorderProperty = (prop.indexOf("border") != -1),
        notBorderZero = thisIsABorderProperty ? window.getComputedStyle(node, null).getPropertyValue(prop.replace("color", "width")) !== "0px" : true,
        colorConditionsMet;

      if (includeBorderColorsWithZeroWidth) {
        colorConditionsMet = color && !skipColors[color];
      } else {
        colorConditionsMet = color && !skipColors[color] && notBorderZero;
      }

      if (colorConditionsMet) {
        if (!allColors[color]) {
          allColors[color] = {
            count: 0,
            nodes: []
          };
        }

        if (!nodeColors[color]) {
          allColors[color].count++;
          allColors[color].nodes.push(node);
        }

        nodeColors[color] = true;
      }
    });
  });

  function rgbTextToRgbArray(rgbText) {
    return rgbText.replace(/\s/g, "").match(/\d+,\d+,\d+/)[0].split(",").map(function(num) {
      return parseInt(num, 10);
    });
  }

  function componentToHex(c) {
    var hex = c.toString(16);
    return hex.length == 1 ? "0" + hex : hex;
  }

  function rgbToHex(rgbArray) {
    var r = rgbArray[0],
      g = rgbArray[1],
      b = rgbArray[2];
    return "#" + componentToHex(r) + componentToHex(g) + componentToHex(b);
  }

  var allColorsSorted = [];
  for (var i in allColors) {
    var rgbArray = rgbTextToRgbArray(i);
    var hexValue = rgbToHex(rgbArray);

    allColorsSorted.push({
      key: i,
      value: allColors[i],
      hexValue: hexValue
    });
  }

  allColorsSorted = allColorsSorted.sort(function (a, b) {
    return b.value.count - a.value.count;
  });

  var nameStyle = "font-weight:normal;";
  var countStyle = "font-weight:bold;";
  function colorStyle(color) {
    return "background:" + color + ";color:" + color + ";border:1px solid #333;";
  };

  console.group("Total colors used in elements on the page: " + window.location.href + " are " + allColorsSorted.length);
  allColorsSorted.forEach(function (c) {
    console.groupCollapsed("`%c    `%c " + c.key + " " + c.hexValue + " `%c(" + c.value.count + " times)",
      colorStyle(c.key), nameStyle, countStyle);
    c.value.nodes.forEach(function (node) {
      console.log(node);
    });
    console.groupEnd();
  });
  console.groupEnd("All colors used in elements on the page");

})();
)
code(Var)
return

::slim::
::shaixuan::
::omit::
::shoushenduix::
::shoushen::
::jianfei::
::chouchu::
::chouqu::
::chouli::
Var =
(
// 瘦身对象（只留部分） ▶ slim({ name: 'Benjy', age: 18 }, ['age']) // => { age: 18 }
// export const slim = (obj, properties = []) => properties.reduce((p, c) => (p[c] = obj[c], p), {})


// 瘦身对象（排除异己） ▶ omit({ name: 'Benjy', age: 18 }, ['age']) // => {name: "Benjy"}
const omit = (obj, properties = []) => Object.entries(obj).reduce((p, [k, v]) => !properties.includes(k) ? (p[k] = v, p) : p, {})

// 获取指定属性的对象
export const get = (properties = [], obj) => properties.reduce((p, c) => (p[c] = obj[c], p), {})
---
// omit({ name: 'Benjy', age: 18 }, [ 'name' ]); // => { age: 18 }
function omit(obj, fields) {
  const shallowCopy = {
    ...obj,
  };
  for (let i = 0; i < fields.length; i++) {
    const key = fields[i];
    delete shallowCopy[key];
  }
  return shallowCopy;
}
)
txtit(Var)
return