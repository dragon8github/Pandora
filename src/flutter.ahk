!f::

    Menu, EventFutureMenu, Add, 点击事件 onPressed, FlutterHandler

    Menu, FlutterColumnHandler, Add, crossAxisAlignment: CrossAxisAlignment, FlutterHandler3
    Menu, FlutterColumnHandler, Add, baseline, FlutterHandler3
    Menu, FlutterColumnHandler, Add, center, FlutterHandler3
    Menu, FlutterColumnHandler, Add, start, FlutterHandler3
    Menu, FlutterColumnHandler, Add, strech, FlutterHandler3

    Menu, FlutterRowHandler, Add, mainAxisAlignment: MainAxisAlignment, FlutterHandler3
    Menu, FlutterRowHandler, Add, spaceEvenly, FlutterHandler3
    Menu, FlutterRowHandler, Add, start, FlutterHandler3
    Menu, FlutterRowHandler, Add, center, FlutterHandler3
    Menu, FlutterRowHandler, Add, end, FlutterHandler3
    Menu, FlutterRowHandler, Add, spaceAround, FlutterHandler3
    Menu, FlutterRowHandler, Add, spaceBetween, FlutterHandler3

    Menu, FlutterFuture, Add, Future.then, FlutterHandler
    Menu, FlutterFuture, Add, Future.catch, FlutterHandler
    Menu, FlutterFuture, Add, Future.whenComplete, FlutterHandler
    Menu, FlutterFuture, Add, Future.wait, FlutterHandler
    Menu, FlutterFuture, Add, async/await, FlutterHandler
    
	
	Menu, overrideFutureMenu, Add, @override Widget build, FlutterHandler
	Menu, overrideFutureMenu, Add, @override void initState() {}, FlutterHandler
	Menu, overrideFutureMenu, Add, @override void didUpdateWidget() {}, FlutterHandler
	Menu, overrideFutureMenu, Add, @override void deactivate() {}, FlutterHandler
	Menu, overrideFutureMenu, Add, @override void dispose() {}, FlutterHandler
	Menu, overrideFutureMenu, Add, @override void reassemble() {}, FlutterHandler
	Menu, overrideFutureMenu, Add, @override void didChangeDependencies() {}, FlutterHandler
    
    Menu, FlutterFunc, Add, 函数可选参数 + 默认参数, FlutterHandler
    
    Menu, FlutterPIANDUAN, Add, 类似构造函数, FlutterHandler

	Menu, FutureMenu, Add, Flutter init, FlutterHandler
    Menu, FutureMenu, Add, flutter devices, FlutterHandler
    Menu, FutureMenu, Add, Flutter import, FlutterHandler
    Menu, FutureMenu, Add, Flutter import ios, FlutterHandler
	Menu, FutureMenu, Add, class StatelessWidget, FlutterHandler
	Menu, FutureMenu, Add, class StatefulWidget, FlutterHandler
    
    Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
    
    Menu, FutureMenu, Add, 函数, :FlutterFunc
    Menu, FutureMenu, Add, 类与面向对象, :FlutterPIANDUAN
    Menu, FutureMenu, Add, Future（promise）, :FlutterFuture
    Menu, FutureMenu, Add, Event事件, :EventFutureMenu
    Menu, FutureMenu, Add, @override, :overrideFutureMenu
    
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 

    Menu, FutureMenu, Add, ListView, FlutterHandler
	Menu, FutureMenu, Add, Center, FlutterHandler
    Menu, FutureMenu, Add, Container的装饰器decoration组件（背景色，圆角）, FlutterHandler
	Menu, FutureMenu, Add, images.assets, FlutterHandler
    Menu, FutureMenu, Add, images.network, FlutterHandler    
    Menu, FutureMenu, Add, SingleChildScrollView, FlutterHandler
    Menu, FutureMenu, Add, fwrap, FlutterHandler2
    Menu, FutureMenu, Add, Column —— crossAxisAlignment: CrossAxisAlignment.xxx, :FlutterColumnHandler
    Menu, FutureMenu, Add, Row —— mainAxisAlignment: MainAxisAlignment.xxx, :FlutterRowHandler
    
    Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
    
    Menu, FutureMenu, Add, fpadding, FlutterHandler2
    Menu, FutureMenu, Add, fmargin, FlutterHandler2

    
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
	
    Menu, FutureMenu, Add, CupertinoButton, FlutterHandler
	Menu, FutureMenu, Add, flatbutton, FlutterHandler
	Menu, FutureMenu, Add, Echo, FlutterHandler
	Menu, FutureMenu, Add, RandomWordsWidget 生成随机字符串, FlutterHandler
    Menu, FutureMenu, Add, flutter rem 解决方案,  FlutterHandler
    Menu, FutureMenu, Add, 综合布局示例, FlutterHandler
    Menu, FutureMenu, Add, StatefulWidget示例, FlutterHandler
    
	Menu, FutureMenu, Add, 
	Menu, FutureMenu, Add, 
	
	Menu, FutureMenu, Add, Navigator.push, FlutterHandler
	Menu, FutureMenu, Add, Navigator.push 命名路由, FlutterHandler
    Menu, FutureMenu, Add, router示例：页面跳转基本使用, FlutterHandler    
    Menu, FutureMenu, Add, Navigator.push(context`, new MaterialPageRoute(builder: (context) => new SecondScreen()));, FlutterHandler3
    Menu, FutureMenu, Add, Navigator.pushNamed(context`, "new_page");, FlutterHandler3
    Menu, FutureMenu, Add, Navigator.of(context).pushReplacementNamed("app");, FlutterHandler3
	
	Menu, FutureMenu, Show
	Menu, FutureMenu, DeleteAll
	
	
return

FlutterHandler3:
Var := A_ThisMenuItem
code(Var)
return

FlutterHandler2:
Var := A_ThisMenuItem
_Send(Var, true, true)
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

if (v == "CupertinoButton") {
_send("iosbtn", true, true)
return
}

if (v == "Flutter import ios") {
_send("fios", true, true)
return
}

if (v == "StatefulWidget示例") {
Var =
(
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rainbow Rectangle'),
        `),
        body: HelloRectangle(text: 'Hello from instantiation!'),
      `),
    `),
  `);
}

class HelloRectangle extends StatefulWidget {
  final String text;
  HelloRectangle({
    this.text,
  });
  @override
  createState() => _HelloRectangleState();
}

class _HelloRectangleState extends State<HelloRectangle> {
  Color _color = Colors.greenAccent;
  void _generateRandomColor() {
    var random = Random();
    setState(() {
      _color = Color.fromARGB(
        255,
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
      `);
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: _generateRandomColor,
        color: _color,
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(fontSize: 40.0),
            textAlign: TextAlign.center,
          `),
        `),
      `),
    `);
  }
}
)
}


if (v == "SingleChildScrollView") {
_send("fscroll", true, true)
return
}

if (v == "flutter rem 解决方案") {
_send("frem", true, true)
return
}

if (v == "Container的装饰器decoration组件（背景色，圆角）") {
_send("faop", true, true)
return
}

if (v == "函数可选参数 + 默认参数") {
Var =
(
String getUserInfo(String name, [String from = '中国']) {
	
}
)
}

if (v == "images.network") {
Var =
(
Image.network(
	'http://lorempixel.com/1600/900/',
	width: 750.0,
	height: 242.0,
	fit: BoxFit.contain,
`)
)
}

if (v == "综合布局示例") {
Var =
(
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //风景区地址部分
    Widget addressContainer = Container(
      padding: EdgeInsets.all(32.0),//此部分四周间隔一定距离
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, //顶部对齐
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),//与下面文本间隔一定距离
                  child: Text(
                    '风景区地址',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    `),
                  `),
                `),
                Text(
                  '湖北省十堰市丹江口市',
                  style: TextStyle(
                    color: Colors.grey[500],
                  `),
                `),
              ],
            `),
          `),
          Icon(
            Icons.star,
            color: Colors.red[500],
          `),
          Text('66'),
        ],
      `),
    `);

    //构建按钮组中单个按钮 参数为图标及文本
    Column buildButtonColumn(IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,//垂直方向大小最小化
        mainAxisAlignment: MainAxisAlignment.center,//垂直方向居中对齐
        children: <Widget>[
          Icon(icon, color: Colors.lightGreen[600]),//上面图标部分
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Text(//下面文本部分
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen[600],
              `),
            `),
          `)
        ],
      `);
    }

    //按钮组部分
    Widget buttonsContainer = Container(
      //容器横向布局
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//水平方向均匀排列每个元素
        children: <Widget>[
          buildButtonColumn(Icons.call, '电话'),
          buildButtonColumn(Icons.near_me, '导航'),
          buildButtonColumn(Icons.share, '分享'),
        ],
      `),
    `);

    //风景区介绍文本部分
    Widget textContainer = Container(
      padding: EdgeInsets.all(32.0),
      //文本块一定是用'''来引用起来
      child: Text(
        '''
        武当山，中国道教圣地，又名太和山、谢罗山、参上山、仙室山，古有“太岳”、“玄岳”、“大岳”之称。位于湖北西北部十堰市丹江口市境内。东接闻名古城襄阳市，西靠车城十堰市 ，南望原始森林神农架，北临高峡平湖 丹江口水库。
        明代，武当山被皇帝封为“大岳”、“治世玄岳”，被尊为“皇室家庙”。武当山以“四大名山皆拱揖，五方仙岳共朝宗”的“五岳之冠”地位闻名于世。
        1994年12月，武当山古建筑群入选《世界遗产名录》，2006年被整体列为“全国重点文物保护单位” 。2007年，武当山和长城、丽江、周庄等景区一起入选 “欧洲人最喜爱的中国十大景区”。2010至2013年，武当山分别被评为国家5A级旅游区、国家森林公园、中国十大避暑名山、海峡两岸交流基地，入选最美 “国家地质公园”。 
        截至2013年，武当山有古建筑53处，建筑面积2.7万平方米，建筑遗址9处，占地面积20多万平方米，全山保存各类文物5035件。 
        武当山是道教名山和武当武术的发源地，被称为“亘古无双胜境，天下第一仙山”。武当武术，是中华武术的重要流派。元末明初，道士张三丰集其大成，开创武当派。
        ''',
        softWrap: true,
      `),
    `);

    return new MaterialApp(
      title: '布局综合示例',
      //自定义主题，主体颜色为绿色风格
      theme: new ThemeData(
        brightness: Brightness.light, //应用程序整体主题的亮度
        primaryColor: Colors.lightGreen[600], //App主要部分的背景色
        accentColor: Colors.orange[600], //前景色（文本、按钮等）
      `),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '武当山风景区',
            style: TextStyle(color: Colors.white),
          `),
        `),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/wudang.png',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover, //图片填充整个父容器
            `),
            addressContainer,
            buttonsContainer,
            textContainer,
          ],
        `),
      `),
    `);
  }
}
)
}

if (v == "router示例：页面跳转基本使用") {
Var =
(
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '导航页面示例',
    home: new FirstScreen(),
  `));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('导航页面示例'),
      `),
      body: new Center(
        child: new RaisedButton(
          child: new Text('查看商品详情页面'),
          onPressed: (){
            Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new SecondScreen())
            `);
          },
        `),
      `),
    `);
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("导航页面示例"),
      `),
      body: new Center(
        child: new RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: new Text('返回页面'),
        `),
      `),
    `);
  }
}

)
}

if (v == "ListView") {
_send("flistview", true, true)
return
}


if (v == "flutter devices") {
cs(v)
}

if (v == "类似构造函数") {
_send("fgzhs", true, true)
return 
}

if (v == "Flutter import") {
_send("fimp", true, true)
}

if (v == "padding") {
Var =
(
padding: EdgeInsets.only(
  top: 64.0,
  left: 32.0,
  bottom: 32.0,
  right: 32.0,
`),
)
}


if (v == "margin") {
Var =
(
margin: EdgeInsets.only(
  top: 64.0,
  left: 32.0,
  bottom: 32.0,
  right: 32.0,
`),
)
}

if (v == "Row") {
_send("frow", true, true)
return
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


if (v == "Text") {
_send("ftext", true, true)
return
}

if (v == "Flutter init") {
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


if (v == "images.assets") {
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
      padding: EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
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
Navigator.push(context, new MaterialPageRoute(builder: (context) => new SecondScreen()));
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
_send("fbtn", true, true)
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
width: rem(577),
height: rem2(750),
)
code(Var)
return

::frow::
::frows::
Var =
(
Row(
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


::fcenter::
::fcen::
Var =
(
Center(
  child: ,
`),
)
code(Var)
return

::fcful::
::fful::
::ful::
::fcfull::
::fclass::
::fff::
InputBox, OutputVar, title, enter a name?,,,,,,,,TestPage
Var =
(
class %OutputVar% extends StatefulWidget {
  final String text;
  %OutputVar%({
    this.text,
  });
  
  @override
  createState() => _HelloRectangleState();
}

class _%OutputVar% extends State<%OutputVar%> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(seconds: 3), () {
      print('App正在加载...');
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Stack(
        children: <Widget>[
          Image.asset(
            'images/logo.png',
          `),
        ],
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
Image.asset(
  'images/wudang.png',
  width: rem(600.0),
  height: rem2(240.0),
  fit: BoxFit.cover, //图片填充整个父容器
`),
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
::fimport::
Var =
(
import 'package:flutter/material.dart';
)
code(Var)
Sleep, 500
Send, {left 2}
Sleep, 10
Send, ^+{left 7}
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
::fapp::
::fmain::
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


::fgz::
::fgzhs::
Var =
(
  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);
)
code(Var)
return

::flistview::
::flv::
::flist::
Var =
(
ListView(
  // padding-top设置为0，解决无法置顶的bug
  padding: EdgeInsets.only(top: rem2(0.0)),
  children: <Widget>[
    
  ],
`),
)
code(Var)
return

::fchildren::
Var =
(
children: <Widget>[
	
]
)
code(Var)
return

::ftxt::
::ft::
::ftext::
Var =
(
Text(
  'Hello',
  style: TextStyle(
    fontSize: rem(36),
    color: Colors.white,
  `),
  textAlign: TextAlign.center,
  softWrap: true,
  overflow: TextOverflow.ellipsis,
`)
)
code(Var)
return

::fpadding::
::fpad::
::fpd::
::fpdd::
Var =
(
// padding: EdgeInsets.all(rem(8.0)),
padding: EdgeInsets.only(top: rem2(0.0), right: rem(0.0), bottom: rem2(0.0), left: rem(0.0)),
)
code(Var)
return

::fmargin::
::fm::
Var =
(
// margin: EdgeInsets.all(rem(8.0)),
margin: EdgeInsets.only(top: rem2(0.0), right: rem(0.0), bottom: rem2(0.0), left: rem(0.0)),
)
code(Var)
return

::fml::
Var =
(
// margin: EdgeInsets.all(rem(8.0)),
margin: EdgeInsets.only(top: rem2(0.0), right: rem(0.0), bottom: rem2(0.0), left: rem(0.0)),
)
code(Var)
sleep, 500
Send, {left 6}
return

::fmr::
Var =
(
// margin: EdgeInsets.all(rem(8.0)),
margin: EdgeInsets.only(top: rem2(0.0), right: rem(0.0), bottom: rem2(0.0), left: rem(0.0)),
)
code(Var)
sleep, 500
Send, {left 40}
return

::fmt::
Var =
(
// margin: EdgeInsets.all(rem(8.0)),
margin: EdgeInsets.only(top: rem2(0.0), right: rem(0.0), bottom: rem2(0.0), left: rem(0.0)),
)
code(Var)
sleep, 500
Send, {left 57}
return

::fmb::
Var =
(
// margin: EdgeInsets.all(rem(8.0)),
margin: EdgeInsets.only(top: rem2(0.0), right: rem(0.0), bottom: rem2(0.0), left: rem(0.0)),
)
code(Var)
sleep, 500
Send, {left 22}
return





::fedge::
::fegde::
Var =
(
EdgeInsets.only(top: rem2(0.0), right: rem(0.0), bottom: rem2(0.0), left: rem(0.0))
)
code(Var)
return


::faop::
::fdec::
Var =
(
decoration: new BoxDecoration(
  // 背景颜色
  color: Color.fromRGBO(255,122,69, 1),
  // 圆角：borderRadius: BorderRadius.all(Radius.circular(16.0))
  borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
  image: DecorationImage(
    image: ExactAssetImage("images/index_bottom.png")
  `)
`),
)
code(Var)
return

::fdiv::
Var =
(
Container(
  child: ,
`)
)
code(Var)
return

::frem::
Var =
(
import 'dart:ui';
// 屏幕宽度（px）
final double screenWidth = window.physicalSize.width;
// 屏幕宽度（px）
final double screenHeight = window.physicalSize.height;
// 效果图宽度（iPhone6 750*1334）
final double uiWidth = 750;
// 效果图宽度（iPhone6 750*1334）
final double uiHeight = 1334;
// 像素比
final double devicePixelRatio = window.devicePixelRatio;
// 宽度比率
final double scaleWidth = screenWidth / uiWidth / devicePixelRatio;
// 高度比率
final double scaleHeight = screenHeight / uiHeight / devicePixelRatio;

// 仿移动端 rem 解决方案
double rem(double n) {
  return n * scaleWidth;
}

double rem2(double n) {
  return n * scaleHeight;
}
)
code(Var)
return

::fpage::
::fnewpage::
::fnew::
Var =
(
import 'package:flutter/material.dart';

class Examination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
      `),
    `);
  }
}
)
code(Var)
return

::fsca::
::fjiao::
::fjsj::
::fjiaoshouj::
::fjiaoshoujia::
::fyo::
::fyoman::
Var =
(
return Scaffold(
    appBar: new AppBar(
      title: new Text("导航页面示例"),
    `),
    body: Center(
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
    `),
`);
)
code(Var)
return

::fcolor::
Var =
(
color: Color.fromRGBO(71,58,102, 1)
)
code(Var)
return

::fpos::
::fpsd::
::fasb::
Var =
(
Positioned(
  top: rem2(134),
  left: 0,
  right: 0,
  child: userInfo,
`),
)
code(Var)
return

::fc::
Var =
(
Container(
  child: ,
`)
)
code(Var)
Sleep, 500
Send, {UP}
Send, {End}
Send, {left}
return

::froutes::
::frouter::
Var =
(
 routes: <String, WidgetBuilder>{
  'My': (BuildContext context) => new My(),
  'Examination': (BuildContext context) => new Examination(),
},
)
code(Var)
return

::fpush::
Var =
(
Navigator.pushNamed(context, "Examination");
)
code(Var)
return

::fmedia::
Var =
(
MediaQueryData mediaQuery = MediaQuery.of(context);
print(mediaQuery.devicePixelRatio);
print(mediaQuery.size.width);
print(mediaQuery.size.height);
)
code(Var)
return

::fwindow::
::fwin::
::fsize::
Var =
(
import 'dart:ui';
// 屏幕宽度（px）
final double screenWidth = window.physicalSize.width;
// 屏幕宽度（px）
final double screenHeight = window.physicalSize.height;
// 效果图宽度（iPhone6 750*1334）
final double uiWidth = 750;
// 效果图宽度（iPhone6 750*1334）
final double uiHeight = 1334;
// 像素比
final double devicePixelRatio = window.devicePixelRatio;
// 宽度比率
final double scaleWidth = screenWidth / uiWidth / devicePixelRatio;
// 高度比率
final double scaleHeight = screenHeight / uiHeight / devicePixelRatio;
print(devicePixelRatio);
print(scaleWidth);
print(scaleHeight);
)
code(Var)
return

::fdp::
::fmedia::
Var =
(
MediaQueryData mediaQuery = MediaQuery.of(context);
print(mediaQuery.devicePixelRatio);
print(mediaQuery.size.width);
print(mediaQuery.size.height);
)
code(Var)
return

::fborder::
Var =
(
// borderRadius: BorderRadius.all(Radius.circular(16.0))
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
borderRadius: BorderRadius.only(topLeft: Radius.circular(13.0), topRight: Radius.circular(13.0)),
)
code(Var)
return

::fink::
::fanimate::
::ftran::
Var =
(
Material(
  color: Colors.transparent,
  child: Ink(
    color: Colors.green,
    child: InkWell(
      highlightColor: Colors.white,
      splashColor:  Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(23.0)),
      onTap: () {
        if (cb is Function) {
          cb();
        }
      },
      child: Container(
        width: rem(328.0),
        height: rem2(120.0),
      `)
    `),
  `)
`)
)
code(Var)
return

::fclick::
::fevent::
Var =
(
onTap: () {
  if (cb is Function) {
    cb();
  }
}
)
code(Var)
return

::fscroll::
Var =
(
Scrollbar(
  child: SingleChildScrollView(
    scrollDirection: Axis.horizontal, // 默认是 vertical
    // 如果是使用horizontal，毫无疑问是用Row，如果是用vertical，就用Column
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        
      ],
    `),
  `),
`)
)
code(Var)
return

::fwarp::
::fwrap::
Var =
(
Wrap(
  direction: Axis.horizontal, // 默认是 horizontal（水平） 
  spacing: rem(24.0), // Chip 之间间隙大小
  runSpacing: rem(40.0), // 行之间的间隙大小
  children: <Widget>[
  ],
`)
)
code(Var)
return

::fbtn::
Var =
(
FlatButton(
  onPressed: () {
  	print(20190315171856);
  },
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  `)
  color: Colors.greenAccent,
  child: Center(
    child: Text(
      'Hello',
      style: TextStyle(
      	fontSize: rem(40),
        color: Color.fromRGBO(49,129,215, 1),
      `),
      textAlign: TextAlign.center,
    `),
  `),
`)
)
code(Var)
return

::fcb::
Var =
(
if (cb is Function) {
  cb();
}
)
code(Var)
return

::fslepp::
Var =
(
import 'dart:async';
new Future.delayed(Duration(seconds: 3), () {
  print('App正在加载...');
});
)
code(Var)
return

::fios::
Var =
(
import 'package:flutter/cupertino.dart';
)
code(Var)
return

::iosbtn::
::iosbutton::
::fiosbtn::
Var =
(
CupertinoButton(
  child: Text(
    '确定报名',
    style: TextStyle(
      fontSize: 20,
      color: Colors.white,
    `),
    textAlign: TextAlign.center,
  `),
  color: Color.fromRGBO(40,137,241, 1),
  borderRadius: BorderRadius.all(Radius.circular(24.0)), // 按钮圆角设置
  onPressed: () { // onPressed不为null视为可点击
    print('You click the button');
  },
`)
)
code(Var)
return