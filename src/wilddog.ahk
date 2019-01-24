!w::


    Menu, dogpractice, Add, 1、 ref 可以传入 child 参数（哪怕还没有创建）如：wilddog.sync().ref('/__LAYER__'), dogHandler
    Menu, dogpractice, Add, 2、 ref 返回的对象叫 Reference 对象，我们主要学习关于它的API, dogHandler
    
    Menu, dogMenu, Add, (〜￣△￣)〜野狗认知～(￣▽￣～), :dogpractice

	Menu, dogMenu, Add, wilddog-cdn, dogHandler
	Menu, dogMenu, Add, wilddog-init, dogHandler
    
    Menu, dogMenu, Add,, dogHandler
    Menu, dogMenu, Add,, dogHandler
    
    Menu, dogMenu, Add, wilddog.sync().ref('/__LAYER__'), dogHandler
    Menu, dogMenu, Add, ref.set, dogHandler
    
    Menu, dogMenu, Add,, dogHandler
    Menu, dogMenu, Add,, dogHandler
    
    Menu, dogMenu, Add, ref.on('value'`, snapshot => { }), dogHandler
    
    Menu, dogMenu, Add,, dogHandler
    Menu, dogMenu, Add,, dogHandler
    
    Menu, dogMenu, Add, 我的控制台, dogHandler
    Menu, dogMenu, Add, Reference API 文档, dogHandler
    Menu, dogMenu, Add, on 所有事件API 文档, dogHandler
    Menu, dogMenu, Add, EventType 所有的事件类型on/once, dogHandler
    

	Menu, dogMenu, Show
	Menu, dogMenu, DeleteAll
return

dogHandler2:
v := A_ThisMenuItem
return



dogHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}

if (v == "EventType 所有的事件类型on/once") {
run, https://docs.wilddog.com/sync/Web/api/Query.html#EventType
return
}

if (v == "on 所有事件API 文档") {
run, https://docs.wilddog.com/sync/Web/api/Query.html#on
return
}

if (v == "我的便签控制台") {
Var =
(
run, https://www.wilddog.com/console/wd6326449524sjxxpb
return
)
}

if (v == "Reference API 文档") {
run, https://docs.wilddog.com/sync/Web/api/Reference.html
return
}

if (v == "ref.on('value', snapshot => { })") {
Var =
(
// 监听数据变化
ref.on("value", function(snapshot) {
    console.log(snapshot.val())
})
)
}

if (v == "wilddog.sync().ref('/__LAYER__')") {
Var =
(
wilddog.sync().ref('/__LAYER__')
)
}


if (v == "ref.set") {
Var =
(
// 添加功能示例
ref.set({
  "messageboard":{
    "message1":{
        "content" : "Wilddog, Cool!",
        "presenter" : "Jack"
    }
  }
})
)
}



if (v == "wilddog-cdn") {
Var =
(
<!-- Wilddog -->
<script src="https://cdn.wilddog.com/sdk/js/2.0.0/wilddog.js"></script>
)
}

if (v == "wilddog-init") {
Var =
(
/**
 * 当 wilddog 加载成功才执行
 */
if (window.wilddog) {
    // 初始化 wilddog
    wilddog.initializeApp({ syncURL: "https://wd6326449524sjxxpb.wilddogio.com" })

    // 实例化 sync 
    var ref = wilddog.sync().ref()

    // 添加功能示例
    ref.set({
      "messageboard":{
        "message1":{
            "content" : "Wilddog, Cool!",
            "presenter" : "Jack"
        }
      }
    })

    // 监听数据变化
    ref.on("value", function(snapshot) {
        console.log(snapshot.val())
    })
}
)
}


code(Var)
return