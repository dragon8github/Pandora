!f::
	Menu, FutureMenu, Add, finit(Hello World), FlutterHandler
	Menu, FutureMenu, Add, class StatelessWidget, FlutterHandler
	Menu, FutureMenu, Add, class StatefulWidget, FlutterHandler
	Menu, FutureMenu, Add, images, FlutterHandler
	Menu, FutureMenu, Add, @override Widget build, FlutterHandler
	Menu, FutureMenu, Add, Echo, FlutterHandler

	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 

	Menu, FutureMenu, Add, child, FlutterHandler
	Menu, FutureMenu, Add, Center, FlutterHandler
	Menu, FutureMenu, Add, Container, FlutterHandler
	Menu, FutureMenu, Add, Text, FlutterHandler
	Menu, FutureMenu, Add, Column, FlutterHandler
	
  Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 

	
	Menu, FutureMenu, Add, textColor, FlutterHandler
	Menu, FutureMenu, Add, color, FlutterHandler
	Menu, FutureMenu, Add, height, FlutterHandler
	Menu, FutureMenu, Add, width, FlutterHandler
	Menu, FutureMenu, Add, style, FlutterHandler
	Menu, FutureMenu, Add, textAlign, FlutterHandler
	
		
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
	
	Menu, FutureMenu, Add, flatbutton, FlutterHandler
	
	
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
	
	Menu, FutureMenu, Add, 新建路由 new route Widget, FlutterHandler
	Menu, FutureMenu, Add, Navigator.push, FlutterHandler
	Menu, FutureMenu, Add, Navigator.push 命名路由, FlutterHandler
	
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 

	Menu, FutureMenu, Add, 点击事件 onPressed, FlutterHandler
	
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
	
	
	Menu, FutureMenu, Add, RandomWordsWidget 生成随机字符串, FlutterHandler
	
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
	
	
	Menu, FutureMenu, Add, Future.then, FlutterHandler
	Menu, FutureMenu, Add, Future.catch, FlutterHandler
	Menu, FutureMenu, Add, Future.whenComplete, FlutterHandler
	Menu, FutureMenu, Add, Future.wait, FlutterHandler
	Menu, FutureMenu, Add, async/await, FlutterHandler
	
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
	
	
	Menu, FutureMenu, Add, @override void initState() {}, FlutterHandler
	Menu, FutureMenu, Add, @override void didUpdateWidget() {}, FlutterHandler
	Menu, FutureMenu, Add, @override void deactivate() {}, FlutterHandler
	Menu, FutureMenu, Add, @override void dispose() {}, FlutterHandler
	Menu, FutureMenu, Add, @override void reassemble() {}, FlutterHandler
	Menu, FutureMenu, Add, @override void didChangeDependencies() {}, FlutterHandler

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

if (v == "Column") {
_send("fcol", true, true)
return
}

if (v == "child") {
_send("fchild", true, true)
return
}

if (v == "textColor") {
_send("ftc", true, true)
return
}

if (v == "color") {
_send("fcolor", true, true)
return
}

if (v == "width/height") {
_send("fwh", true, true)
return
}

if (v == "style") {
_send("fstyle", true, true)
return
}

if (v == "textAlign") {
_send("fta", true, true)
return
}

if (v == "Center") {
Var =
(
Center(
	child: Container(
		height: 400.0,
        width: 300.0,
	`)
`)
)
}

if (v == "Container") {
Var =
(
Container(
	height: 400.0,
    width: 300.0,
`)
)
}

if (v == "Text") {
Var =
(
Text(
    'Hello!',
    style: TextStyle(fontSize: 40.0),
    textAlign: TextAlign.center,
`),
)
}


if (v == "finit(Hello World)") {
_send("finit", true, true)
return
}

if (v == "@override void initState() {}") {
Var =
(
@override
void initState() {
  super.initState();
  //初始化状态  
  _counter=widget.initValue;
  print("initState");
}
)
}

if (v == "@override void didUpdateWidget() {}") {
Var =
(
@override
void didUpdateWidget(CounterWidget oldWidget) {
   super.didUpdateWidget(oldWidget);
   print("didUpdateWidget");
}
)
}

if (v == "@override void deactivate() {}") {
Var =
(
@override
void deactivate() {
   super.deactivate();
   print("deactive");
}

)
}

if (v == "@override void dispose() {}") {
Var =
(
@override
void dispose() {
	super.dispose();
	print("dispose");
}
)
}

if (v == "@override void reassemble() {}") {
Var =
(
@override
void reassemble() {
  super.reassemble();
  print("reassemble");
}
)
}

if (v == "@override void didChangeDependencies() {}") {
Var =
(
@override
void didChangeDependencies() {
  super.didChangeDependencies();
  print("didChangeDependencies");
}
)
}

if (v == "@override Widget build") {
_send("fwb", true, true)
return
}


if (v == "Echo") {
Var =
(
class Echo extends StatelessWidget {
  const Echo({
    Key key,
    // @required 标注是必备参数。这样有利于静态代码分析器进行检查
    @required this.text,
    this.backgroundColor:Colors.grey,
  }):super(key:key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      `),
    `);
  }
}
// 这样使用:
class _Echo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Echo(text: "hello world");
  }
}
)
}


if (v == "images") {
_send("fimg", true, true)
return
}

if (v == "RandomWordsWidget 生成随机字符串") {
Var =
(
import 'package:english_words/english_words.dart';
class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 生成随机字符串
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    `);
  }
}
)
}

if (v == "新建路由 new route Widget") {
Var =
(
class NewRoute extends StatelessWidget {
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
}

if (v == "Navigator.push 命名路由") {
Var =
(
// 命名路由的最大优点是直观，我们可以通过语义化的字符串来管理路由。但其有一个明显的缺点：不能直接传递路由参数。

// app build
routes: {
  "new_page": (context) => NewRoute(),
},

// new route
class NewRoute extends StatelessWidget {
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

// flatbtn click event
onPressed: () {
  Navigator.pushNamed(context, "new_page");
},
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

if (v == "点击事件 onPressed") {
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
return
}

if (v == "class StatelessWidget") {
_send("fcless", true, true)
return
}

if (v == "class StatefulWidget") {
_send("fcful", true, true)
return
}

if (v == "Future.whenComplete") {
_send("ffw", true, true)
return
}

if (v == "Future.wait") {
_send("ffwait", true, true)
return
}

if (v == "async/await") {
_send("ffasync", true, true)
return
}

if (v == "Future.then") {
_send("futrue", true, true)
return
}

if (v == "Future.catch") {
_send("futrue.catch", true, true)
return
}

if (v == "class") {
_send("fclass", true, true)
return
}

code(Var)
return

::fwd::
::fwh::
Var =
(
height: 400.0,
width: 300.0,
)
code(Var)
return

::fcol::
::flist::
::ful::
::fli::
Var =
(
Column(
	children: <Widget>[
	  Text('Hello!'),
	  Text('Hello!'),
	  Text('Hello!'),
	  Text('Hello!'),
	],
`)
)
code(Var)
return

::ftc::
Var =
(
textColor: Colors.blue,
)
code(Var)
return

::fta::
Var =
(
textAlign: TextAlign.center,
)
code(Var)
return

::fstyle::
Var =
(
style: TextStyle(fontSize: 40.0),
)
code(Var)
return

::fc::
::fclo::
::fco::
::fcolor::
::fcolors::
Var =
(
color: Colors.purple,
)
code(Var)
return

::fchild::
Var =
(
child: Container(
	
`),
)
code(Var)
return

::fcenter::
::fcen::
Var =
(
Center(
  child: Text(
	'Hello!',
	style: TextStyle(fontSize: 40.0),
	textAlign: TextAlign.center,
  `),
`),
)
code(Var)
return

::fcful::
::fcfull::
::fclass::
::fff::
Var =
(
class MyApp extends StatefulWidget {
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

::fimg::
::fimage::
::fimages::
Var =
(
class RenderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('images/logo.jpg');
  }
}
)
code(Var)
return

::fles::
::fless::
::fclass::
::ffl::
::fffl::
::ffless::
::fcless::
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

::fwb::
::fbuild::
::fwbuild::
Var =
(
@override
  Widget build(BuildContext context) {
    print("build");
    return Center(
      child: FlatButton(
        child: Text("$_counter"),
        onPressed: () => setState(() => ++_counter),
      `)
    `)
  }
);
code(Var)
return

::@over::
::@o::
Send, @override
return

::fimp::
::fmp::
Var =
(
import 'package:english_words/english_words.dart';
)
code(Var)
return

::flife::
::flite::
Var =
(
@override
void didUpdateWidget(CounterWidget oldWidget) {
  super.didUpdateWidget(oldWidget);
  print("didUpdateWidget");
}

@override
void deactivate() {
  super.deactivate();
  print("deactive");
}

@override
void dispose() {
  super.dispose();
  print("dispose");
}

@override
void reassemble() {
  super.reassemble();
  print("reassemble");
}

@override
void didChangeDependencies() {
  super.didChangeDependencies();
  print("didChangeDependencies");
}
)
code(Var)
return

::fhelloworld::
::fhello::
::finit::
Var =
(
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        `),
        body: HelloRectangle(),
      `),
    `),
  `);
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            'Hello!',
            style: TextStyle(fontSize: 40.0),
            textAlign: TextAlign.center,
          `),
        `),
      `),
    `);
  }
}

)
code(Var)
return