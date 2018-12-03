::canvas.wh::
::canvas.size::
Var =
(
canvas.width, canvas.height
)
code(Var)
return

::canvas.erweima::
::cabvas.gen::
::canvas.img::
::canvas.images::
::canvas.image::
Var =
(
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <p>Image to use:</p>
    <img id="scream" src="http://www.runoob.com/images/img_the_scream.jpg" alt="The Scream" width="220" height="277">
    <p>Canvas:</p>
    <img id="qrcode" src="https://qr.api.cli.im/qr?data=aq&level=H&transparent=false&bgcolor=`%23ffffff&forecolor=`%23000000&blockpixel=12&marginblock=1&logourl=&size=260&kid=cliim&key=c0337212f969a6214f369a5945382d9b" alt="The Scream" width="50" height="50">
    <p>Canvas:</p>
    <div id="respic"></div>
    <canvas id="myCanvas" width="250" height="300" style="border:1px solid #d3d3d3;"> 您的浏览器不支持 HTML5 canvas 标签。</canvas>
    <script>
    var c = document.getElementById("myCanvas"),
        ctx = c.getContext("2d"),
        img = document.getElementById("scream"),
        qrcode = document.getElementById("qrcode"),
        respic = document.getElementById('respic'),
        A = false,
        B = false,
        maxTimeout = 10,
        timeout = 0,
        wait = 4

    function convertCanvasToImage(canvas) {
        var image = new Image();
        image.src = c.toDataURL("image/png");
        return image;
    }

    img.onload = function() {
        A = true
        ctx.drawImage(img, 10, 10);
    }

    qrcode.onload = function() {
        B = true
        qrcode.style.width = 1;
        qrcode.style.height = 1;
        ctx.drawImage(qrcode, 50, 50, 100, 100);
    }

    // 递归
    var generate = function() {
        var _data = convertCanvasToImage(c);
        respic.appendChild(_data);
    };
    (function poll() {
        if (++timeout > maxTimeout * 1000 / wait) {
            window.alert('超时');
        };
        A && B ? generate() : setTimeout(poll, wait);
    }());
    </script>
</body>
</html>
)
code(Var)
return

::canvas.game::
::canvas.guess::
::canvas.initgame::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    html, body{
        margin: 0;
        padding: 0;
        background-color: #ddd;
    }

      #canvas {
          margin-left: 10px;
          margin-top: 10px;
          background: #ffffff;
          border: thin solid #aaaaaa;
      }

    </style>
</head>

<body>
    <canvas id='canvas' width='500' height='300'>
        Canvas not supported
    </canvas>
</body>
<script>
const context = document.getElementById('canvas').getContext('2d');

var guesses = 0;
var message = "guess the letter from a (lower) to z (higher)";
var letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'z', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
var today = new Date();
var letterToGuess = "";
var higherOrLower = "";
var letterGuessed;
var gameOver = false;

function initGame() {
  var letterIndex = Math.floor(Math.random() * letters.length);
  letterToGuess = letters[letterIndex];
  guesses = 0;
  letterGuessed = []
  gameOver = false
  window.addEventListener('keydown', eventKeyPressed, true);
  drawScreen();
}

function eventKeyPressed(e) {
  if (!gameOver) {
    var letterPressed = String.fromCharCode(e.keyCode);
    letterPressed = letterPressed.toLowerCase();

    // bingo!
    if (letterPressed == letterToGuess) {
      gameOver = true
    } else {
      var letterIndex = letters.indexOf(letterToGuess);
      var guessIndex = letters.indexOf(letterPressed);
      if (~guessIndex) {
        guesses++;
        letterGuessed.push(letterPressed);
        higherOrLower = guessIndex > letterIndex ? "Higher" : "Lower" 
      }
    }

    drawScreen();
  }
}

function drawScreen() {
  context.fillStyle = '#ffffaa';
  context.fillRect(0, 0, 500, 300);

  context.strokeStyle = '#000';
  context.strokeRect(5, 5, 490, 290);

  context.textBaseline = 'top';

  context.fillStyle = '#000';
  context.font = '10px Microsoft Yahei';
  context.fillText(today, 150, 10);

  context.fillStyle = '#ff0000';
  context.font = '14px Microsoft Yahei';
  context.fillText(message, 125, 30);

  context.fillStyle = '#109910';
  context.font = '16px Microsoft Yahei';
  context.fillText('Guesses:' + guesses, 215, 50);

  context.fillStyle = '#000';
  context.font = '16px Microsoft Yahei';
  context.fillText('Higher Or Lower:' + higherOrLower, 150, 125);

  context.fillStyle = '#ff0000';
  context.font = '16px Microsoft Yahei';
  context.fillText('Letters Guessed:' + letterGuessed.toString(), 10, 260);

  if (gameOver) {
    context.fillStyle = '#ff0000';
    context.font = '40px Microsoft Yahei';
    context.fillText('You Got it!', 155, 180);
  }
}

initGame()
</script>
</html>
)
code(Var)
return

!c::
::canvas::
	Menu, CanvasMenu, Add, canvas.html, CanvasHandler
    Menu, CanvasMenu, Add, context.init, CanvasHandler
    Menu, CanvasMenu, Add, canvas.toDataURL(), CanvasHandler
    Menu, CanvasMenu, Add, window.requestAnimFrame, CanvasHandler
    Menu, CanvasMenu, Add, canvas.width, CanvasHandler
    Menu, CanvasMenu, Add, canvas.height, CanvasHandler
    
    Menu, CanvasMenu, Add,
    Menu, CanvasMenu, Add,
    
    Menu, CanvasMenu, Add, context.fillStyle, CanvasHandler
    Menu, CanvasMenu, Add, context.fillRect, CanvasHandler
    Menu, CanvasMenu, Add, context.font, CanvasHandler
    Menu, CanvasMenu, Add, context.textBaseline, CanvasHandler
    Menu, CanvasMenu, Add, context.fillText, CanvasHandler
    Menu, CanvasMenu, Add, context.strokeStyle, CanvasHandler
    Menu, CanvasMenu, Add, context.strokeRect, CanvasHandler
    Menu, CanvasMenu, Add, context.strokeTex, CanvasHandler
    
    Menu, CanvasMenu, Add,
    Menu, CanvasMenu, Add,
    
    
    Menu, CanvasMenu, Add, context.beginPath / context.closePath, CanvasHandler
    Menu, CanvasMenu, Add, context.arc, CanvasHandler
    Menu, CanvasMenu, Add, context.fill, CanvasHandler
    

    Menu, CanvasMenu, Add,
    Menu, CanvasMenu, Add,
    
    Menu, CanvasMenu, Add, context.drawImage, CanvasHandler
    
    Menu, CanvasMenu, Add,
    Menu, CanvasMenu, Add,
    
    Menu, CanvasMenu, Add, canvas.onmousedown, CanvasHandler
    
    Menu, CanvasMenu, Add,
    Menu, CanvasMenu, Add,
    
    Menu, CanvasMenu, Add, 文本, CanvasHandler
    Menu, CanvasMenu, Add, 背景, CanvasHandler
    Menu, CanvasMenu, Add, 图片, CanvasHandler
    Menu, CanvasMenu, Add, 边框, CanvasHandler
    Menu, CanvasMenu, Add, 球, CanvasHandler
    Menu, CanvasMenu, Add, 动画示例：不断下落的球, CanvasHandler
    Menu, CanvasMenu, Add, 动画示例：两点间的移动 —— 线段距离, CanvasHandler
    Menu, CanvasMenu, Add, 实战示例：猜英文游戏, CanvasHandler
    Menu, CanvasMenu, Add, 实战示例：生成二维码图片, CanvasHandler

	Menu, CanvasMenu, Show
	Menu, CanvasMenu, DeleteAll
return


CanvasHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(

)
}

if (v == "实战示例：生成二维码图片") {
SendLevel 1
SendInput, canvas.erweima{tab}
return
}

if (v == "实战示例：猜英文游戏") {
SendLevel 1
SendInput, canvas.game{tab}
return
}

if (v == "context.drawImage") {
Var =
(
context.drawImage(pointImage, points[i].x, points[i].y, 1, 1);
)
}

if (v == "动画示例：两点间的移动 —— 线段距离") {
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    html, body{
        margin: 0;
        padding: 0;
        background-color: #ddd;
    }

    #canvas {
		margin: 20px;
		background: #fff;
    }
    </style>
</head>

<body>
	<canvas id='canvas' width='500' height='500'>
		Canvas not supported
	</canvas>
</body>
<script>
	var canvas = document.getElementById('canvas'),
		context = canvas.getContext('2d')

	// requestAnimFrame API
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

	// 示例数据
	var p1 = { x: 20, y: 250 }
	var p2 = { x: 480, y: 250 }
	var ball = { x: p1.x, y: p1.y }
	var speed = 5

	//////////////////////////////////////////////
	// 核心公式
	var dx = p2.x - p1.x
	var dy = p2.y - p1.y
	var distance = Math.sqrt(dx*dx + dy*dy)
	var moves = distance / speed
	//////////////////////////////////////////////

	var xunits = (p2.x - p1.x) / moves
	var yunits = (p2.y - p1.y) / moves

	var pointImage = new Image();
	pointImage.src = 'a.ico'
	var points = new Array();

	function drawScreen() {
		ball.x += xunits
		ball.y += yunits

		// 边框
		context.fillStyle = '#eeeeee';
		context.fillRect(0, 0, canvas.width, canvas.height);
		context.strokeStyle = '#000000';
		context.strokeRect(1, 1, canvas.width - 2, canvas.height - 2);

		// 轨迹
		points.push({ x: ball.x, y: ball.y })
		for (var i = 0; i < points.length; i++) {
		    context.drawImage(pointImage, points[i].x, points[i].y, 20, 20);
		}

		// 球... 
		context.fillStyle = '#000'
		context.beginPath()
		context.arc(ball.x, ball.y, 15, 0, Math.PI*2, true)
		context.closePath()
		context.fill()
	}

	(function gameLoop(){
		--moves > 0 && window.requestAnimFrame(gameLoop)
		drawScreen()
	}())

</script>
</html>)
}

if (v == "canvas.onmousedown") {
Var =
(
canvas.onmousedown = function (e) {
    context.clearRect(0, 0, canvas.width, canvas.height)
    window.alert('123');
}
)
}


if (v == "动画示例：不断下落的球") {
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    html, body{
        margin: 0
        padding: 0
        background-color: #ddd
    }

    #canvas {
		margin: 20px
		background: #fff
    }
    </style>
</head>

<body>
	<canvas id='canvas' width='500' height='500'>
		Canvas not supported
	</canvas>
</body>
<script>
var canvas = document.getElementById('canvas'),
	context = canvas.getContext('2d')

	var y = 10
	var x = 250
	var speed = 5

	function drawScreen () {
		context.fillStyle = '#eee'
		context.fillRect(0, 0, canvas.width, canvas.height)

		// 边框
		context.strokeStyle = '#000'
		context.strokeRect(5, 5, canvas.width - 2, canvas.height - 2)

		if (y > canvas.height) 
			y = 0 
		else
		 	y += speed

		// 创建一个球
		context.fillStyle = '#000'
		context.beginPath()
		context.arc(x, y, 15, 0, Math.PI*2, true)
		context.closePath()
		context.fill()
	}

	(function gameLoop(){
		setTimeout(gameLoop, 20)
		drawScreen()
	}())
</script>
</html>
)
}

if (v == "球") {
Var =
(
var y = 10
var x = 250
context.fillStyle = '#000'
context.beginPath()
context.arc(x, y, 15, 0, Math.PI*2, true)
context.closePath()
context.fill()
)
}

if (v == "context.beginPath / context.closePath") {
Var =
(
context.beginPath();

context.closePath();
)
code(Var)
Send, {UP}
return
}

if (v == "context.arc") {
Var =
(
context.arc(x, y, 15, 0, Math.PI*2, true)
)
}

if (v == "context.fill") {
Var =
(
context.fill()
)
}

if (v == "canvas.width") {
Var =
(
canvas.width
)
}

if (v == "canvas.height") {
Var =
(
canvas.height
)
}


if (v == "window.requestAnimFrame") {
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
)
}

if (v == "canvas.toDataURL()") {
Var =
(
window.open(canvas.toDataURL(), "canvasImage", `left=0,top=0,width=${canvas.width},height=${canvas.height},toolbar=0,resizable=0`);
)
}

if (v == "context.strokeTex") {
Var =
(
context.strokeText('Hello Canvas', canvas.width / 2 - 150, canvas.height / 2 + 15);
)
}

if (v == "context.strokeStyle") {
Var =
(
context.strokeStyle = '#000';
)
}

if (v == "context.strokeRect") {
Var =
(
context.strokeRect(5, 5, 490, 290);
)
}


if (v == "边框") {
Var =
(
context.strokeStyle = '#000';
context.strokeRect(5, 5, 490, 290);
)
}


if (v == "图片") {
Var =
(
var helloworldImage = new Image();
helloworldImage.onload = function () {
context.drawImage(helloworldImage, 155, 110);
}
helloworldImage.src = 'helloworld.gif'
)
}

if (v == "背景") {
Var =
(
context.fillStyle = '#ffffaa';
context.fillRect(0, 0, 500, 300);
)
}


if (v == "文本") {
Var =
(
context.fillStyle = '#000';
context.font = '20px Microsoft Yahei';
context.textBaseline = 'top';
context.fillText('Hello World!', 195, 80);
)
}

if (v == "context.fillStyle") {
Var =
(
context.fillStyle = '#ffffaa';
)
}
if (v == "context.fillRect") {
Var =
(
context.fillRect(0, 0, 500, 300);
)
}
if (v == "context.font") {
Var =
(
context.font = '20px Microsoft Yahei';
)
}
if (v == "context.textBaseline") {
Var =
(
context.textBaseline = 'top';
)
}
if (v == "context.fillText") {
Var =
(
context.fillText('Hello World!', 195, 80);
)
}

if (v == "canvas.html") {
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    html, body{
        margin: 0;
        padding: 0;
        background-color: #ddd;
    }

    #canvas {
		width: 600px;
		height: 300px;
		margin: 20px;
		background: #fff;
    }
    </style>
</head>

<body>
	<!--
		当设置元素的width/height属性时，是同时修改了该元素本身大小和元素绘图表面的大小。
		如果是通过 CSS 来设定canvas的大小，那么只会改变元素本身的大小，而不会影响到绘图表面。
	-->
	<canvas id='canvas' width='600' height='300'>
		Canvas not supported
	</canvas>
</body>
<script>
var canvas = document.getElementById('canvas'),
	context = canvas.getContext('2d');

context.font = '38pt Arial';
context.fillStyle = 'cornflowerblue';
context.strokeStyle = 'blue';

context.fillText('Hello Canvas', canvas.width / 2 - 150, canvas.height / 2 + 15);
context.strokeText('Hello Canvas', canvas.width / 2 - 150, canvas.height / 2 + 15);

</script>
</html>
)
}

if (v == "context.init") {
Var =
(
var canvas = document.getElementById('canvas'),
	context = canvas.getContext('2d');
)
}

code(Var)
return


::canvas.grid::
Var =
(
const context = document.getElementById('canvas').getContext('2d');

// Functions..........................................................

function drawGrid(context, color, stepx, stepy) {
    context.save()

    context.strokeStyle = color;
    context.lineWidth = 0.5;

    for (let i = stepx + 0.5; i < context.canvas.width; i += stepx) {
        context.beginPath();
        context.moveTo(i, 0);
        context.lineTo(i, context.canvas.height);
        context.stroke();
        context.closePath();
    }
    for (let i = stepy + 0.5; i < context.canvas.height; i += stepy) {
        context.beginPath();
        context.moveTo(0, i);
        context.lineTo(context.canvas.width, i);
        context.stroke();
        context.closePath();
    }
    context.restore();
}

// Initialization.....................................................

drawGrid(context, 'lightgray', 10, 10);
)
code(Var)
return

::canvas.time::
::canvas.date::
::canvas.datetime::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" context="width=device-width, initial-scale=1">
    <style>
    html, body{
        margin: 0;
        padding: 0;
        background-color: #ddd;
    }

    #canvas {
		margin: 20px;
		background: #fff;
    }
    </style>
</head>

<body>
	<canvas id='canvas' width='400' height='400'>
		Canvas not supported
	</canvas>
</body>
<script>const canvas = document.getElementById('canvas'),
    context = canvas.getContext('2d'),
    FONT_HEIGHT = 15,
    MARGIN = 35,
    HAND_TRUNCATION = canvas.width / 25,
    HOUR_HAND_TRUNCATION = canvas.width / 10,
    NUMERAL_SPACING = 20,
    RADIUS = canvas.width / 2 - MARGIN,
    HAND_RADIUS = RADIUS + NUMERAL_SPACING;

// Functions.....................................................

function drawCircle() {
    context.beginPath();
    context.arc(canvas.width / 2, canvas.height / 2,
        RADIUS, 0, Math.PI * 2, true);
    context.stroke();
}

function drawNumerals() {
    let numerals = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
        angle = 0,
        numeralWidth = 0;

    numerals.forEach(function(numeral) {
        angle = Math.PI / 6 * (numeral - 3);
        numeralWidth = context.measureText(numeral).width;
        context.fillText(numeral,
            canvas.width / 2 + Math.cos(angle) * (HAND_RADIUS) -
            numeralWidth / 2,
            canvas.height / 2 + Math.sin(angle) * (HAND_RADIUS) +
            FONT_HEIGHT / 3);
    });
}

function drawCenter() {
    context.beginPath();
    context.arc(canvas.width / 2, canvas.height / 2, 5, 0, Math.PI * 2, true);
    context.fill();
}

function drawHand(loc, isHour) {
    let angle = (Math.PI * 2) * (loc / 60) - Math.PI / 2,
        handRadius = isHour ? 
                     RADIUS - HAND_TRUNCATION - HOUR_HAND_TRUNCATION :
                     RADIUS - HAND_TRUNCATION;

    context.moveTo(canvas.width / 2, canvas.height / 2);
    context.lineTo(canvas.width / 2 + Math.cos(angle) * handRadius,
        canvas.height / 2 + Math.sin(angle) * handRadius);
    context.stroke();
}

function drawHands() {
    let date = new Date,
        hour = date.getHours();
    hour = hour > 12 ? hour - 12 : hour;
    drawHand(hour * 5 + (date.getMinutes() / 60) * 5, true, 0.5);
    drawHand(date.getMinutes(), false, 0.5);
    drawHand(date.getSeconds(), false, 0.2);
}

function drawClock() {
    context.clearRect(0, 0, canvas.width, canvas.height);

    drawCircle();
    drawCenter();
    drawHands();
    drawNumerals();
}

// Initialization................................................

context.font = FONT_HEIGHT + 'px Arial';
loop = setInterval(drawClock, 1000);

</script>
</html>
)
code(Var)
return

::canvas.c::
Var =
(
var canvas = document.getElementById('canvas'),
	context = canvas.getContext('2d');
)
code(Var)
return

::canvas.html::
::canvas.init::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    html, body{
        margin: 0;
        padding: 0;
        background-color: #ddd;
    }

    #canvas {
		width: 600px;
		height: 300px;
		margin: 20px;
		background: #fff;
    }
    </style>
</head>

<body>
	<!-- 
		当设置元素的width/height属性时，是同时修改了该元素本身大小和元素绘图表面的大小。 
		如果是通过 CSS 来设定canvas的大小，那么只会改变元素本身的大小，而不会影响到绘图表面。
	-->
	<canvas id='canvas' width='600' height='300'>
		Canvas not supported
	</canvas>
</body>
<script>
var canvas = document.getElementById('canvas'),
	context = canvas.getContext('2d');

context.font = '38pt Arial';
context.fillStyle = 'cornflowerblue';
context.strokeStyle = 'blue';

context.fillText('Hello Canvas', canvas.width / 2 - 150, canvas.height / 2 + 15);
context.strokeText('Hello Canvas', canvas.width / 2 - 150, canvas.height / 2 + 15);

</script>
</html>
)
code(Var)
return