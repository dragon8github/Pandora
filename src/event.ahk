!e::

	Menu, EventMenu, Add, @click="doThat('hello'`, $event)", EventHandler
	Menu, EventMenu, Add, @click.stop, EventHandler
	Menu, EventMenu, Add, @click.once, EventHandler
	Menu, EventMenu, Add, @change, EventHandler
	Menu, EventMenu, Add, @keyup, EventHandler
	Menu, EventMenu, Add, @keyup.enter, EventHandler
	Menu, EventMenu, Add, @keyup.13, EventHandler
	Menu, EventMenu, Add, @input, EventHandler
	Menu, EventMenu, Add, @mouseover/@mouseleave, EventHandler
	

	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, , EventHandler
	
	Menu, EventMenu, Add, onClick = { this.clickHandle }, EventHandler
	Menu, EventMenu, Add, onChange = { this.changeHandle }, EventHandler
	Menu, EventMenu, Add, onScroll = { this.scrollHandle }, EventHandler
	Menu, EventMenu, Add, onInput = { this.inputHandle }, EventHandler
	Menu, EventMenu, Add, onMouseOver = { this.MouseOverHandle }, EventHandler
	Menu, EventMenu, Add, onMouseLeave = { this.MouseLeaveHandle }, EventHandler
	
	
	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, , EventHandler
	
	Menu, EventMenu, Add, .addEventListener('click'`, e => {}), EventHandler
	Menu, EventMenu, Add, .addEventListener('mouseover'`, e => {}) , EventHandler
	Menu, EventMenu, Add, .addEventListener('mouseleave'`, e => {}), EventHandler
	
	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, ### 注意：onclick只能为元素绑定一个方法，而addEventListener可以绑定无限个 ### , EventHandler
	Menu, EventMenu, Add, , EventHandler
	
	Menu, EventMenu, Add, .onclick = (e) => {}, EventHandler
	Menu, EventMenu, Add, .onsubmit = (e) => {}, EventHandler
	

	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, , EventHandler

	Menu, EventMenu, Add, $('#app').click(e => {}), EventHandler
	Menu, EventMenu, Add, $('#app').mouseleave(e => {}), EventHandler
	Menu, EventMenu, Add, $('#app').mouseover(e => {}), EventHandler
	Menu, EventMenu, Add, $('#app').change(e => {}), EventHandler
	Menu, EventMenu, Add, $('#app').mouseup(e => {}), EventHandler
	Menu, EventMenu, Add, $('#app').scroll(e => {}), EventHandler

	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, , EventHandler
	
	Menu, EventMenu, Add, ehcarts.click, EventHandler
	Menu, EventMenu, Add, ehcarts.mouseover, EventHandler
	Menu, EventMenu, Add, ehcarts.mouseout, EventHandler
	Menu, EventMenu, Add, ehcarts.legendselectchanged, EventHandler

	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, 冒泡点击mouseup, EventHandler

	Menu, EventMenu, Show
	Menu, EventMenu, DeleteAll
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
if (v == ".addEventListener('mouseover', e => {}) ,") {
Var = 
(
.addEventListener('mouseover', e => {})
)
}
if (v == ".addEventListener('mouseleave', e => {}") {
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