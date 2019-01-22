!w::
	Menu, dogMenu, Add, wilddog-cdn, dogHandler
	Menu, dogMenu, Add, wilddog-init, dogHandler
    
    Menu, dogMenu, Add,, dogHandler
    Menu, dogMenu, Add,, dogHandler
    
    
    Menu, dogMenu, Add, ref.set, dogHandler
    
    Menu, dogMenu, Add,, dogHandler
    Menu, dogMenu, Add,, dogHandler
    
    Menu, dogMenu, Add, ref.on('value'`, snapshot => { }), dogHandler

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

if (v == "ref.on('value', snapshot => { })") {
Var =
(
// 监听数据变化
ref.on("value", function(snapshot) {
    console.log(snapshot.val())
})
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