!e::
	Menu, EventMenu, Add, ### 注意：onclick只能为元素绑定一个方法，而addEventListener可以绑定无限个 ### , EventHandler
	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, document.getElementById('app').addEventListener('click'`, () => {}), EventHandler
	Menu, EventMenu, Add, document.getElementById('app').addEventListener('mouseover'`, () => {}) , EventHandler
	Menu, EventMenu, Add, document.getElementById('app').addEventListener('mouseleave'`, () => {}), EventHandler
	Menu, EventMenu, Add, document.getElementById('app').onclick = (e) => {}, EventHandler
	Menu, EventMenu, Add, document.getElementById('myform').onsubmit = (e) => {}, EventHandler

	Menu, EventMenu, Add, , EventHandler
	Menu, EventMenu, Add, , EventHandler

	Menu, EventMenu, Add, $("#app").click(() => {}), EventHandler
	Menu, EventMenu, Add, $("#app").mouseleave(() => {}), EventHandler
	Menu, EventMenu, Add, $("#app").mouseover(() => {}), EventHandler
	Menu, EventMenu, Add, $("#app").change(() => {}), EventHandler
	Menu, EventMenu, Add, $("#app").mouseup(() => {}), EventHandler

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

code(Var)
return