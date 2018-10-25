!e::
	Menu, EventMenu, Add, ### 注意：onclick只能为元素绑定一个方法，而addEventListener可以绑定无限个 ### , EventHandler
	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, document.getElementById('app').addEventListener('click'`, () => {}), EventHandler
	Menu, EventMenu, Add, document.getElementById('app').addEventListener('mouseover'`, () => {}) , EventHandler
	Menu, EventMenu, Add, document.getElementById('app').addEventListener('mouseleave'`, () => {}), EventHandler
	
	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, , EventHandler
	
	Menu, EventMenu, Add, document.getElementById('app').onclick = (e) => {}, EventHandler
	Menu, EventMenu, Add, document.getElementById('myform').onsubmit = (e) => {}, EventHandler
	

	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, , EventHandler

	Menu, EventMenu, Add, $("#app").click(() => {}), EventHandler
	Menu, EventMenu, Add, $("#app").mouseleave(() => {}), EventHandler
	Menu, EventMenu, Add, $("#app").mouseover(() => {}), EventHandler
	Menu, EventMenu, Add, $("#app").change(() => {}), EventHandler
	Menu, EventMenu, Add, $("#app").mouseup(() => {}), EventHandler
	Menu, EventMenu, Add, $('#app').scroll(() => {}), EventHandler

	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, , EventHandler

	Menu, EventMenu, Add, @click="doThat('hello'`, $event)", EventHandler
	Menu, EventMenu, Add, @click.stop, EventHandler
	Menu, EventMenu, Add, @click.once, EventHandler
	Menu, EventMenu, Add, @change, EventHandler
	Menu, EventMenu, Add, @keyup, EventHandler
	Menu, EventMenu, Add, @keyup.enter, EventHandler
	Menu, EventMenu, Add, @keyup.13, EventHandler
	Menu, EventMenu, Add, @input, EventHandler

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
	Menu, EventMenu, Add, ehcarts.click, EventHandler
	Menu, EventMenu, Add, ehcarts.mouseover, EventHandler
	Menu, EventMenu, Add, ehcarts.mouseout, EventHandler

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

}

if (v == "$('#app').scroll(() => {})") {
Var = 
(
$('.trajectoryTable').scroll(function (e) {
    console.log(20180825190354, e.currentTarget.scrollTop)
})
)
}

if (v == "document.getElementById('app').addEventListener('click', () => {})") {
Var = 
(
document.getElementById('app').addEventListener('click', () => {}
)
}
if (v == "document.getElementById('app').addEventListener('mouseover', () => {}) ,") {
Var = 
(
document.getElementById('app').addEventListener('mouseover'`, () => {}) ,
)
}
if (v == "document.getElementById('app').addEventListener('mouseleave', () => {}") {
Var = 
(
document.getElementById('app').addEventListener('mouseleave'`, () => {}
)
}
if (v == "document.getElementById('app').onclick = (e) => {}") {
Var = 
(
document.getElementById('app').onclick = (e) => {}
)
}
if (v == "document.getElementById('myform').onsubmit = (e) => {}") {
Var = 
(
document.getElementById('myform').onsubmit = (e) => {}
)
}
if (v == "$('#app').click(() => {})") {
Var = 
(
$('#app').click(() => {})
)
}
if (v == "$('#app').mouseleave(() => {})") {
Var = 
(
$('#app').mouseleave(() => {})
)
}
if (v == "$('#app').mouseover(() => {})") {
Var = 
(
$('#app').mouseover(() => {})
)
}
if (v == "$('#app').change(() => {})") {
Var = 
(
$('#app').change(() => {})
)
}
if (v == "$('#app').mouseup(() => {})") {
Var = 
(
$('#app').mouseup(() => {})
)
}
if (v == "@click=""doThat('hello', $event)`""") {
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
Var = 
(
this.myChart.on('click', function (params) {
	console.log(20181025092106, params)
})
)
}
if (v == "ehcarts.mouseover") {
Var = 
(
ehcarts.mouseover
)
}
if (v == "ehcarts.mouseout") {
Var = 
(
ehcarts.mouseout
)
}
if (v == "冒泡点击mouseup") {
Var = 
(
冒泡点击mouseup
)
}

code(Var)
return