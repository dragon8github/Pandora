!w::
	Menu, dogMenu, Add, cdn, dogHandler
	Menu, dogMenu, Add, init, dogHandler


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

if (v == "init") {
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

if (v == "cdn") {
Var =
(
<!-- Wilddog -->
<script src="https://cdn.wilddog.com/sdk/js/2.0.0/wilddog.js"></script>
)
}

code(Var)
return