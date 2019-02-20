!f::

	
	
	Menu, FutureMenu, Add, class StatelessWidget, FlutterHandler
	Menu, FutureMenu, Add, class StatefulWidget, FlutterHandler
	
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
	
	Menu, FutureMenu, Add, Future.then, FlutterHandler
	Menu, FutureMenu, Add, Future.catch, FlutterHandler
	Menu, FutureMenu, Add, Future.whenComplete, FlutterHandler
	Menu, FutureMenu, Add, Future.wait, FlutterHandler
	Menu, FutureMenu, Add, async/await, FlutterHandler
	
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
	
	Menu, FutureMenu, Add, child: Text("open new route")`,, FlutterHandler2
	Menu, FutureMenu, Add, textColor: Colors.blue`,,FlutterHandler2
		
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
	
	Menu, FutureMenu, Add, flatbutton, FlutterHandler
	
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
	
	Menu, FutureMenu, Add, Navigator.push, FlutterHandler
	
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 

	Menu, FutureMenu, Add, onPressed, FlutterHandler

	Menu, FutureMenu, Show
	Menu, FutureMenu, DeleteAll
	
	
return

FlutterHandler2:
Var := A_ThisMenuItem
code(Var)
return

FlutterHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}

if (v == "Navigator.push") {
Var =
(
Navigator.push(
  context,
  new MaterialPageRoute(builder: (context) {
	return new NewRoute();
  })
`);
)
}

if (v == "onPressed") {
Var =
(
onPressed: () {
	Navigator.push(
	  context,
	  new MaterialPageRoute(builder: (context) {
		return new NewRoute();
	  })
	`);
},
)
}

if (v == "flatbutton") {
_send("flatbutton", true, true)
}

if (v == "class StatelessWidget") {
_send("fcless", true, true)
}

if (v == "class StatefulWidget") {
_send("fcful", true, true)
}

if (v == "Future.whenComplete") {
_send("ffw", true, true)
}

if (v == "Future.wait") {
_send("ffwait", true, true)
}

if (v == "async/await") {
_send("ffasync", true, true)
}

if (v == "Future.then") {
_send("futrue", true, true)
}

if (v == "Future.catch") {
_send("futrue.catch", true, true)
}

if (v == "class") {
_send("fclass", true, true)
}

code(Var)
return

::fcful::
::fcfull::
::fc::
::fclass::
Var =
(
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      `),
      body: Center(
        child: Text("This is new route"),
      `),
    `);
  }
}
)
code(Var)
Send, {up 3}
return

::flatbtn::
::flatbutton::
Var =
(
FlatButton(
  child: Text("open new route"),
  textColor: Colors.blue,
  onPressed: () {
	Navigator.push(
	  context,
	  new MaterialPageRoute(builder: (context) {
		return new NewRoute();
	  })
	`);
  },
`)
)
code(Var)
return

::fclass::
Var =
(
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      `),
      body: Center(
        child: Text("This is new route"),
      `),
    `);
  }
}
)
code(Var)
return

::ff.await::
::ff.async::
::ffa::
::ff.a::
::ff.sync::
Var =
(
task() async {
   try{
    String id = await login("alice","******");
    String userInfo = await getUserInfo(id);
    await saveUserInfo(userInfo);
    //执行接下来的操作   
   } catch(e){
    //错误处理   
    print(e);   
   }  
}
)
code(Var)
return

::ff.wait::
::ffwait::
::fwait::
Var =
(
Future.wait([
  // 2秒后返回结果  
  Future.delayed(new Duration(seconds: 2), () {
    return "hello";
  }),
  // 4秒后返回结果  
  Future.delayed(new Duration(seconds: 4), () {
    return " world";
  })
]).then((results){
  print(results[0]+results[1]);
}).catchError((e){
  print(e);
});
)
code(Var)
return

::fff::
::ffw::
::ff.when::
::ff.finish::
Var =
(
Future.delayed(new Duration(seconds: 2),(){
   //return "hi world!";
   throw AssertionError("Error");
}).then((data){
   //执行成功会走到这里 
   print(data);
}).catchError((e){
   //执行失败会走到这里   
   print(e);
}).whenComplete((){
   //无论成功或失败都会走到这里
});
)
code(Var)
return


::ff.catch::
::ff.c::
::ffc::
::futrue.catch::
::futrue.c::
Var =
(
Future.delayed(new Duration(seconds: 2),(){
   //return "hi world!";
   throw AssertionError("Error");  
}).then((data){
   //执行成功会走到这里  
   print("success");
}).catchError((e){
   //执行失败会走到这里  
   print(e);
});

Future.delayed(new Duration(seconds: 2), () {
    //return "hi world!";
    throw AssertionError("Error");
}).then((data) {
    print("success");
}, onError: (e) {
    print(e);
});
)
code(Var)
return

::ff::
::f.futrue::
::futrue::
Var =
(
Future.delayed(new Duration(seconds: 2),(){
   return "hi world!";
}).then((data){
   print(data);
});
)
code(Var)
return

::@over::
::@o::
Var =
(
@override
)
code(Var)
return