﻿!space::
	Gui, Pandora:Show, W1350, Pandora
return 

PandoraGuiEscape:
PandoraGuiClose:
	Gui, Pandora:Hide
return

SaveClipHistory: 
	filename := A_Desktop . "/" . A_YYYY . A_MM . A_DD . ".txt"
	GuiControlGet, OutputVar, Pandora:, ClipHistory, Text
	FileAppend, %OutputVar%, %filename%
	MsgBox, 保存成功
return

CancelSelect:
	; 清空搜索框
	; GuiControl,, SearchContent, 
    
    GuiControl,, doge, 0
	GuiControl,, bd, 0
	GuiControl,, google, 0
    GuiControl,, npm, 0
	GuiControl,, so, 0
	GuiControl,, github, 0
	GuiControl,, segmentfault, 0
	GuiControl,, cylee, 0
	
	GuiControl,, bdfy, 0
	GuiControl,, youdaofy, 0
	GuiControl,, googlefanyi, 0
	GuiControl,, jinshanciba, 0
	

	GuiControl,, wy, 0
	GuiControl,, qq, 0
	GuiControl,, dog, 0
	GuiControl,, xiami, 0
	GuiControl,, kuwo, 0 

	GuiControl,, juejin, 0
	GuiControl,, jianshu, 0
	GuiControl,, csdn, 0
	GuiControl,, zhihu, 0

	GuiControl,, taobao, 0
	GuiControl,, tianmao, 0
	GuiControl,, jingdong, 0
	GuiControl,, dangdang, 0
	GuiControl,, amazon, 0 
	GuiControl,, suning, 0
	GuiControl,, kongzi, 0
	
return

; +g 其实就是添加吧
MySubroutine:
	/*
		MsgBox, %MyEditHwnd%
		MsgBox, %A_EventInfo%, %A_GuiEvent%, %A_GuiControl%, %A_Gui%
	*/
return

Inspect:
	Var = chrome://inspect/#devices
	Clipboard := Var
return

isAllSearchA := false
AllSearchA:
	isAllSearchA := !isAllSearchA
	if (isAllSearchA) {
        GuiControl,, doge, 1
		GuiControl,, bd, 1 
		GuiControl,, google, 1 
        GuiControl,, npm, 1 
		GuiControl,, so, 1 
		GuiControl,, github, 1 
		GuiControl,, segmentfault, 1 
	} else {
		GuiControl,, bd, 0
		GuiControl,, google, 0
        GuiControl,, npm, 0
		GuiControl,, so, 0
		GuiControl,, github, 0
		GuiControl,, segmentfault, 0
	}
return

isAllSearchB := false
AllSearchB:
	isAllSearchB := !isAllSearchB
	if (isAllSearchB) {
		GuiControl,, bdfy, 1 
		GuiControl,, youdaofy, 1 
		GuiControl,, googlefanyi, 1 
		GuiControl,, jinshanciba, 1 
	} else {
		GuiControl,, bdfy, 0
		GuiControl,, youdaofy, 0
		GuiControl,, googlefanyi, 0
	}
return

isAllSearchC := false
AllSearchC:
	isAllSearchC := !isAllSearchC
	if (isAllSearchC) {
		GuiControl,, wy, 1 
		GuiControl,, qq, 1 
		GuiControl,, dog, 1 
		GuiControl,, xiami, 1 
		GuiControl,, kuwo, 1 
	} else {
		GuiControl,, wy, 0
		GuiControl,, qq, 0
		GuiControl,, dog, 0
		GuiControl,, xiami, 0
		GuiControl,, kuwo, 0 
		
	}
return

isAllSearchD := false
AllSearchD:
	isAllSearchD := !isAllSearchD
	if (isAllSearchD) {
		GuiControl,, juejin, 1 
		GuiControl,, jianshu, 1 
		GuiControl,, csdn, 1 
		GuiControl,, zhihu, 1 
        GuiControl,, cylee, 1 
	} else {
		GuiControl,, juejin, 0
		GuiControl,, jianshu, 0
		GuiControl,, csdn, 0
		GuiControl,, zhihu, 0
        GuiControl,, cylee, 0
	}
return

isAllSearchE := false
AllSearchE:
	isAllSearchE := !isAllSearchE
	if (isAllSearchE) {
		GuiControl,, taobao, 1 
		GuiControl,, tianmao, 1 
		GuiControl,, jingdong, 1 
		GuiControl,, dangdang, 1 
		GuiControl,, amazon, 1 
		GuiControl,, suning, 1 
		GuiControl,, kongzi, 1
	} else {
		GuiControl,, taobao, 0
		GuiControl,, tianmao, 0
		GuiControl,, jingdong, 0
		GuiControl,, dangdang, 0
		GuiControl,, amazon, 0 
		GuiControl,, suning, 0
		GuiControl,, kongzi, 0
	}
return


Fuck:
	; 保存用户的输入到每个控件的关联变量中.
	Gui, Submit, NoHide 
    

	; 贝尔塔猫'博客园
	if (cylee == 1) {
		RUN, https://zzk.cnblogs.com/my/s/blogpost-p?Keywords=%SearchContent%
	}

	; 百度
	if (bd == 1) {
		RUN, https://www.baidu.com/s?wd=%SearchContent%
	}

	; doge
	if (doge == 1) {
		RUN, https://www.dogedoge.com/results?q=%SearchContent%
	}

	; Google
	if (google == 1) {
		RUN, https://www.google.com/search?q=%SearchContent%
	}
    
    ; npm
	if (npm == 1) {
		RUN, https://www.npmjs.com/search?q=%SearchContent%
	}

	; Github
	if (github == 1) {
		RUN, https://github.com/search?q=%SearchContent%
	}

	; Stack Overflow
	if (so == 1) {
		RUN, https://stackoverflow.com/search?q=%SearchContent%
	}

	; SegmentFault
	if (segmentfault == 1) {
		RUN, https://segmentfault.com/search?q=%SearchContent%
	}

	; 百度翻译   
	if (bdfy == 1) {
		RUN, http://fanyi.baidu.com/translate?aldtype=16047&query=%SearchContent%&keyfrom=baidu&smartresult=dict&lang=auto2zh#zh/en/%SearchContent%
	}

	; 有道翻译
	if (youdaofy == 1) {
		RUN, http://dict.youdao.com/w/eng/%SearchContent%/#keyfrom=dict2.index
	}

	; Google翻译
	if (googlefanyi == 1) {
		RUN, https://translate.google.cn/#auto/en/%SearchContent%
	}
	
	; 金山词霸
	if (jinshanciba == 1) {
		RUN, https://translate.google.cn/#auto/en/%SearchContent%
	}
	
	; 词海翻译
	if (haici == 1) {
		RUN, http://dict.cn/%SearchContent%
	}
	

	; 网易云音乐   
	if (wy == 1) {
		RUN, http://music.163.com/#/search/m/?s=%SearchContent%
	}

	; QQ音乐
	if (qq == 1) {
		RUN, https://y.qq.com/portal/search.html#w=%SearchContent%
	}

	; 酷狗音乐
	if (dog == 1) {
		RUN, http://www.kugou.com/yy/html/search.html#searchType=song&searchKeyWord=%SearchContent%
	}

	; 虾米音乐
	if (xiami == 1) {
		RUN, https://www.xiami.com/search?key=%SearchContent%
	}

	if (kuwo == 1) {
		RUN, http://sou.kuwo.cn/ws/NSearch?type=all&key=%SearchContent%
	}

	; 掘金
	if (juejin == 1) {
		RUN, https://juejin.im/search?query=%SearchContent%
	}

	; 简书
	if (jianshu == 1) {
		RUN, https://www.jianshu.com/search?q=%SearchContent%&page=1&type=note
	}

	; CSDN
	if (csdn == 1) {
		RUN, https://so.csdn.net/so/search/s.do?q=%SearchContent%
	}

	; 知乎
	if (zhihu == 1) {
		RUN, https://www.zhihu.com/search?type=content&q=%SearchContent%
	}

	; 淘宝
	if (taobao == 1) {
		RUN, https://s.taobao.com/search?q=%SearchContent%
	}

	; 京东
	if (jingdong == 1) {
		RUN, https://search.jd.com/Search?keyword=%SearchContent%&enc=utf-8&wq=%SearchContent%
	}

	; 亚马逊
	if (amazon == 1) {
		RUN, https://www.amazon.cn/s/ref=nb_sb_noss?field-keywords=%SearchContent%
	}

	; 苏宁易购
	if (suning == 1) {
		RUN, https://search.suning.com/%SearchContent%/
	}

	; 当当
	if (dangdang == 1) {
		RUN, http://search.dangdang.com/?key=%SearchContent%
	}
	
	; 孔夫子二手书
	if (kongzi == 1) {
		RUN, http://search.kongfz.com/product_result/?key=%SearchContent%
	}
return


FileNew:
return

FileOpen:
return

SearchContent:
    GuiControlGet, OutputVar, Pandora:, SearchContent, Text
return


maoboli:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Frosted glass</title>
<style media="screen">
/**
 * http://play.csssecrets.io/frosted-glass
 * https://github.com/markbrown4/css-secrets/blob/master/18-frosted-glass.html
 */
body {
    min-height: 100vh;
    background: url("http://csssecrets.io/images/tiger.jpg") 0 / cover fixed;
}

main {
    position: relative;
    overflow: hidden;
    background: hsla(0, 0`%, 100`%, .25) border-box;
    box-shadow: 0 0 0 1px hsla(0, 0`%, 100`%, .3) inset, 0 .5em 1em rgba(0, 0, 0, 0.6);

    margin: 0 auto;
    padding: 1em;
    max-width: 23em;
}

main::before {
    content: '';
    position: absolute; top: 0; right: 0; bottom: 0; left: 0;
    background: url("http://csssecrets.io/images/tiger.jpg") 0 / cover fixed;
    filter: blur(20px);
    margin: -30px;
    z-index: -1;
}
</style>
</head>
<body>
    <main>
        “The only way to get rid of a temptation is to yield to it. Resist it, and your soul grows sick with longing for the things it has forbidden to itself, with desire for what its monstrous laws have made monstrous and unlawful.”</em>
    </main>
</body>
</html>
),  %name%
RunBy(name)
run, % name
return

xuanliyanhua:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <!-- anime -->
    <script src="https://cdn.bootcss.com/animejs/2.2.0/anime.min.js"></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
    }

    #app {

    }
    </style>
</head>

<body>
    <div id="app"></div>
    <canvas class="fireworks" style="position: fixed; left: 0px; top: 0px; z-index: 1; pointer-events: none;" width="2880" height="832"></canvas>
</body>
<script>
"use strict";
function updateCoords(e) {
    pointerX = (e.clientX || e.touches[0].clientX) - canvasEl.getBoundingClientRect().left,
    pointerY = e.clientY || e.touches[0].clientY - canvasEl.getBoundingClientRect().top
}
function setParticuleDirection(e) {
    var t = anime.random(0, 360) * Math.PI / 180
      , a = anime.random(50, 180)
      , n = [-1, 1][anime.random(0, 1)] * a;
    return {
        x: e.x + n * Math.cos(t),
        y: e.y + n * Math.sin(t)
    }
}
function createParticule(e, t) {
    var a = {};
    return a.x = e,
    a.y = t,
    a.color = colors[anime.random(0, colors.length - 1)],
    a.radius = anime.random(16, 32),
    a.endPos = setParticuleDirection(a),
    a.draw = function() {
        ctx.beginPath(),
        ctx.arc(a.x, a.y, a.radius, 0, 2 * Math.PI, !0),
        ctx.fillStyle = a.color,
        ctx.fill()
    }
    ,
    a
}
function createCircle(e, t) {
    var a = {};
    return a.x = e,
    a.y = t,
    a.color = "#F00",
    a.radius = .1,
    a.alpha = .5,
    a.lineWidth = 6,
    a.draw = function() {
        ctx.globalAlpha = a.alpha,
        ctx.beginPath(),
        ctx.arc(a.x, a.y, a.radius, 0, 2 * Math.PI, !0),
        ctx.lineWidth = a.lineWidth,
        ctx.strokeStyle = a.color,
        ctx.stroke(),
        ctx.globalAlpha = 1
    }
    ,
    a
}
function renderParticule(e) {
    for (var t = 0; t < e.animatables.length; t++)
        e.animatables[t].target.draw()
}
function animateParticules(e, t) {
    for (var a = createCircle(e, t), n = [], i = 0; i < numberOfParticules; i++)
        n.push(createParticule(e, t));
    anime.timeline().add({
        targets: n,
        x: function(e) {
            return e.endPos.x
        },
        y: function(e) {
            return e.endPos.y
        },
        radius: .1,
        duration: anime.random(1200, 1800),
        easing: "easeOutExpo",
        update: renderParticule
    }).add({
        targets: a,
        radius: anime.random(80, 160),
        lineWidth: 0,
        alpha: {
            value: 0,
            easing: "linear",
            duration: anime.random(600, 800)
        },
        duration: anime.random(1200, 1800),
        easing: "easeOutExpo",
        update: renderParticule,
        offset: 0
    })
}
function debounce(e, t) {
    var a;
    return function() {
        var n = this
          , i = arguments;
        clearTimeout(a),
        a = setTimeout(function() {
            e.apply(n, i)
        }, t)
    }
}
var canvasEl = document.querySelector(".fireworks");
if (canvasEl) {
    var ctx = canvasEl.getContext("2d")
      , numberOfParticules = 30
      , pointerX = 0
      , pointerY = 0
      , tap = "mousedown"
      , colors = ["#FF1461", "#18FF92", "#5A87FF", "#FBF38C"]
      , setCanvasSize = debounce(function() {
        canvasEl.width = 2 * window.innerWidth,
        canvasEl.height = 2 * window.innerHeight,
        canvasEl.style.width = window.innerWidth + "px",
        canvasEl.style.height = window.innerHeight + "px",
        canvasEl.getContext("2d").scale(2, 2)
    }, 500)
      , render = anime({
        duration: 1 / 0,
        update: function() {
            ctx.clearRect(0, 0, canvasEl.width, canvasEl.height)
        }
    });
    document.addEventListener(tap, function(e) {
        "sidebar" !== e.target.id && "toggle-sidebar" !== e.target.id && "A" !== e.target.nodeName && "IMG" !== e.target.nodeName && (render.play(),
        updateCoords(e),
        animateParticules(pointerX, pointerY))
    }, !1),
    setCanvasSize(),
    window.addEventListener("resize", setCanvasSize, !1)
}

</script>
</html>
),  %name%
RunBy(name)
run, % name
return

liveHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
    #canvas,
    #video {
        float: left;
        margin-right: 10px;
        background: #fff;
    }

    .box {
        overflow: hidden;
        margin-bottom: 10px;
    }
    </style>
</head>

<body>
    <div class="box">
        <video id="video" width="400" height="300"></video>
        <canvas id="canvas"></canvas>
    </div>
    <button id="live">直播</button>
    <button id="snap">截图</button>
    <script>
    var video = document.getElementById('video');
    var canvas = document.getElementById('canvas');
    var ctx = canvas.getContext('2d');
    var width = video.width;
    var height = video.height;
    canvas.width = width;
    canvas.height = height;

    function liveVideo() {
        var URL = window.URL || window.webkitURL; // 获取到window.URL对象
        navigator.getUserMedia({
            video: true
        }, function(stream) {
            video.src = URL.createObjectURL(stream); // 将获取到的视频流对象转换为地址
            video.play(); // 播放
            //点击截图     
            document.getElementById("snap").addEventListener('click', function() {
                ctx.drawImage(video, 0, 0, width, height);
                var url = canvas.toDataURL('image/png');
                document.getElementById('download').href = url;
            });
        }, function(error) {
            console.log(error.name || error);
        });
    }

    document.getElementById("live").addEventListener('click', function() {
        liveVideo();
    });
    
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

Newesmodule:
url := "https://raw.githubusercontent.com/dragon8github/Pandora/master/template/node-babel.zip"
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
FileCreateDir, %name%
RunWaitOne("cd " . name . " && curl -O " . url)
run,%name%
return

Newmochachai:
url := "https://raw.githubusercontent.com/dragon8github/Pandora/master/template/mocha%20%2B%20chai.zip"
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
FileCreateDir, %name%
RunWaitOne("cd " . name . " && curl -O " . url)
run, %name%
return

scrollTextHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
   
    <style>
    html, body{
        margin: 50px;
        padding: 50px;
    }

    #app {
    }

    .text {
        width: 100px;
        overflow: hidden;
        white-space: nowrap;
    }
    </style>
</head>

<body>
    <div id="app">
        <div class='text'>国家统计局东莞调查队</div>
    </div>
</body>
<script>

const el = document.querySelector('.text')

function scrollText1() {
    // 到底了
    if ((el.scrollWidth - el.scrollLeft).toFixed(0) - el.clientWidth === 0) {
        setTimeout(scrollText2, 2500);
    } else {
        // 滚动 
        el.scrollTo(el.scrollLeft + 1, 0)
        // 帧动画
        setTimeout(scrollText1, 1000 / 60);
    }
}

function scrollText2() {
    // 到底了
    if (el.scrollLeft === 0) {
        setTimeout(scrollText1, 2500);
    } else {
        // 滚动 
        el.scrollTo(el.scrollLeft - 1, 0)
        // 帧动画
        setTimeout(scrollText2, 1000 / 35);
    }
}

scrollText1();

</script>
</html>
),  %name%
RunBy(name)
run, % name
return

NewAsyncassertHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<html>
  <head>
    <title>Test Suite</title>
    <script>
      (function() {
        var queue = [], paused = false, results;
        this.test = function(name, fn) {
          queue.push(function() {
            results = document.getElementById("results");
            results = assert(true, name).appendChild(
                document.createElement("ul"));
            fn();
          });
          runTest();
        };
        this.pause = function() {
          paused = true;
        };
        this.resume = function() {
          paused = false;
          setTimeout(runTest, 1);
        };
        function runTest() {
          if (!paused && queue.length) {
            (queue.shift())();
            if (!paused) {
              resume();
            }
          }
        }

        this.assert = function assert(value, desc) {
          var li = document.createElement("li");
          li.className = value ? "pass" : "fail";
          li.appendChild(document.createTextNode(desc));
          results.appendChild(li);
          if (!value) {
            li.parentNode.parentNode.className = "fail";
          }
          return li;
        };
      })();
      window.onload = function() {
        test("Async Test #1", function() {
          pause();
          setTimeout(function() {
            assert(true, "First test completed");
            resume();
          }, 1000);
        });
        test("Async Test #2", function() {
          pause();
          setTimeout(function() {
            assert(true, "Second test completed");
            resume();
          }, 1000);
        });
      };
    </script>
    <style>
      #results li.pass {
        color: green;
      }

      #results li.fail {
        color: red;
      }
    </style>
  </head>
  <body>
    <ul id="results"></ul>
  </body>
</html>

),  %name%
RunBy(name)
run, % name
return

NewassertHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <style>
    ul#results { border: 2px ridge maroon; background-color: #ffffcc; padding: 0.25em 1.5em; margin-left: 0; }
    li.pass { color: #006400; }
    li.fail { color: #dc143c; text-decoration: line-through; }
    </style>
</head>

<body>
    <div id="results"></div>
</body>
<script>
(function(win) {
  var results;
  win.assert = function assert(value, desc) {
    var li = document.createElement("li");
    li.className = value ? "pass" : "fail";
    li.appendChild(document.createTextNode(desc));
    results.appendChild(li);
    if (!value) {
      li.parentNode.parentNode.className = "fail";
    }
    return li;
  };
  win.test = function test(name, fn) {
    results = document.getElementById("results");
    results = assert(true, name).appendChild(
        document.createElement("ul"));
    fn();
  };
})(window);

window.onload = function() {
  test("A test.", function() {
    assert(true, "First assertion completed");
    assert(true, "Second assertion completed");
    assert(true, "Third assertion completed");
  });
  test("Another test.", function() {
    assert(true, "First test completed");
    assert(false, "Second test failed");
    assert(true, "Third assertion completed");
  });
  test("A third test.", function() {
    assert(null, "fail");
    assert(5, "pass")
  });
};
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

NewgdmapHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <!-- 高德地图 -->
    <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.10&key=02b84c6bb891ece41093dc5f4d9c5868"></script>
    <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.10&key=02b84c6bb891ece41093dc5f4d9c5868&plugin=AMap.MarkerClusterer"></script>
    <!-- 高德UI组件库 1.0 -->
    <script src="https://webapi.amap.com/ui/1.0/main.js?v=1.0.11"></script>
    <style>
    html,
    body {
        margin: 0;
        padding: 0;
    }

    #app {}

    .weather__icon {
        position: relative;
        top: 5px;
        margin: 0 3px;
        width: 26px;
        height: 27px;
        display: inline-block;
        background: url('http://static.tianqistatic.com/static/tianqi2018/ico2/b0.png') center / 100`% 100`% no-repeat;
    }

    .is-qing {
        background-image: url('http://static.tianqistatic.com/static/tianqi2018/ico2/b0.png') 
    }

    .is-yun {
        background-image: url('http://static.tianqistatic.com/static/tianqi2018/ico2/b1.png')
    }

    .is-yin {
        background-image: url('http://static.tianqistatic.com/static/tianqi2018/ico2/b2.png')
    }

    .is-yu {
        background-image: url('http://static.tianqistatic.com/static/tianqi2018/ico2/b8.png')
    }
    </style>
</head>

<body>
    <div id="app">
        <div class="weather">东莞 <i class='weather__icon' :class='weatherType'></i> {{ this.weather }}</div>
    </div>
</body>
<script>
$(function() {
    console.log('hello world');
});

var vue = new Vue({
    el: '#app',
    data: {
        weather: '',
        weatherType: '',
    },
    beforeMount: function() {
        //加载天气查询插件
        AMap.plugin('AMap.Weather', ()=> {
            //创建天气查询实例
            var weather = new AMap.Weather();
            //执行实时天气信息查询
            weather.getLive('东莞市', (err, data) => {
                console.log(err, data);
                this.weather = data.temperature
                const type = data.weather
                // http://www.tianqi.com/dongguan/30
                if (type.includes('晴')) this.weatherType = 'is-qing'
                if (type.includes('云')) this.weatherType = 'is-yun'
                if (type.includes('阴')) this.weatherType = 'is-yin'
                if (type.includes('雨')) this.weatherType = 'is-yu'
            });
        });
    }
})
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

NewEchartdoulecolorHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    myChart.setOption({
        title: {
            text: '占用道路问题结构',
            x: 'center',
            align: 'right'
        },
        xAxis: {
            data: ["经营占道", "垃圾占道", "车辆占道", "霸占车位", "其他占道"],
            axisLine: {
                lineStyle: {
                    color: 'black',
                    width: 0.5
                }
            },
            axisLabel: {
                interval: 0,
                textStyle: {
                    color: 'black',
                    fontSize: 18
                }
            }
        },
        yAxis: {
            splitLine: {
                show: true
            },
            type: 'value',
            axisLine: {
                lineStyle: {
                    width: 0
                }
            },
            axisLabel: {
                interval: 0,
                textStyle: {
                    color: 'black',
                    fontSize: 14
                }
            }
        },
        series: [{
            name: '销量',
            type: 'bar',
            stack: 'one',
            data: [2240, 1768, 1547, 600, 310],
            barWidth: 25,
            itemStyle: {
                normal: {
                    color: function(params) {
                        var colorList = ['#00a0e9', '#00a0e9 ', '#00a0e9 ', '#00a0e9 ', '#00a0e9'];
                        return colorList[params.dataIndex]
                    },
                    label: {
                        show: true,
                        position: 'top',
                        color: 'black',
                        fontSize: 14,
                        formatter: '{c}'
                    },
                    opacity: 0.4
                },
            },
        }, {
            type: 'bar',
            stack: 'one',
            data: [240, 768, 547, 160, 131],
            barWidth: 25,
            itemStyle: {
                normal: {
                    color: function(params) {
                        var colorList = ['#DE6E47', '#DE6E47 ', '#DE6E47 ', '#DE6E47 ', '#DE6E47'];
                        return colorList[params.dataIndex]
                    },
                    label: {
                        show: true,
                        position: 'top',
                        color: 'black',
                        fontSize: 14,
                        formatter: '{c}'
                    },
                    opacity: 0.4
                },
            },
        }]
    });
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

NewEchartraduisHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}`%)"
        },
        series: [{
            name: '访问来源',
            type: 'pie',
            radius: ['65`%', '75`%'],
            center: ['49.5`%', '50.5`%'],
            color: ['#00a0e9', '#ea7e6f', '#fe8f18', '#f6c272', '#7c77b9'],
            avoidLabelOverlap: false,
            label: {
                normal: {
                    show: true,
                },
                emphasis: {
                    show: true,
                    textStyle: {
                        fontSize: '20',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: true
                }
            },
            data: [
                { value: 335, name: '直接访问' },
                { value: 310, name: '邮件营销' },
                { value: 234, name: '联盟广告' },
                { value: 135, name: '视频广告' },
                { value: 1548, name: '搜索引擎' }
            ]
        }]
    };
    myChart.setOption(option);
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

NewEchartPinBoderHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    //断开圆环的白色部分样式
    var placeHolderStyle = {
        normal: {
            label: {
                show: false
            },
            labelLine: {
                show: false
            },
            color: 'transparent',
            borderColor: 'transparent',
            borderWidth: 0
        }
    };
    var option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}`%)"
        },
        series: [{
            name: '访问来源',
            type: 'pie',
            radius: ['65`%', '75`%'],
            center: ['49.5`%', '50.5`%'],
            color: ['#00a0e9', '#ea7e6f', '#fe8f18', '#f6c272', '#7c77b9'],
            avoidLabelOverlap: false,
            label: {
                normal: {
                    show: true,
                },
                emphasis: {
                    show: true,
                    textStyle: {
                        fontSize: '20',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: true
                }
            },
            data: [
                { value: 50, name: '', itemStyle: placeHolderStyle },
                { value: 335, name: '直接访问' },
                { value: 50, name: '', itemStyle: placeHolderStyle },
                { value: 310, name: '邮件营销' },
                { value: 50, name: '', itemStyle: placeHolderStyle },
                { value: 234, name: '联盟广告' },
                { value: 50, name: '', itemStyle: placeHolderStyle },
                { value: 135, name: '视频广告' },
                { value: 50, name: '', itemStyle: placeHolderStyle },
                { value: 1548, name: '搜索引擎' }
            ]
        }]
    };
    myChart.setOption(option);
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

NewEchartsareaStyleHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var option = {
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
        },
        yAxis: {
            type: 'value'
        },
        series: [{
            data: [820, 932, 901, 934, 1290, 1330, 1320],
            type: 'line',
            // 覆盖面
            areaStyle: {
                color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                    offset: 0,
                    color: 'rgb(255, 158, 68)'
                }, {
                    offset: 1,
                    color: 'rgb(255, 70, 131)'
                }])
            }
        }]
    };
    myChart.setOption(option);
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

NewEchartssmoothHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var option = {
        grid: { left: '12`%', right: '3`%', bottom: '35px', top: '35px', },
        xAxis: [{
            type: 'category',
            axisTick: { show: false },
            axisLine: { show: false, },
            axisLabel: {
                textStyle: {
                    color: '#444444',
                    fontSize: '16'
                }
            },
            data: ['1月', '2月', '3月', '4月', '5月', '6月']
        }],
        yAxis: [{
            type: 'value',
            splitLine: {
                lineStyle: {
                    color: 'rgba(52,73,94, .23)',
                    type: 'dashed'
                },
            },
            axisTick: { show: false },
            axisLine: { show: false, },
            axisLabel: {
                margin: '10',
                textStyle: {
                    color: '#444444',
                    fontSize: '16',
                    align: 'right',
                    baseline: 'bottom'
                }
            }
        }],
        series: [{
            type: 'line',
            // 曲线
            smooth: true,
            symbol: 'emptyCircle',
            symbolSize: 7,
            itemStyle: {
                normal: {
                    color: '#118cfe',
                    lineStyle: {
                        color: '#118cfe'
                    }
                }
            },
            label: {
                show: true,
                position: 'top',
                distance: 8,
                textStyle: {
                    color: '#444444',
                    fontSize: 18
                }
            },
            data: [1020, 324, 1132, 1389, 1288, 1358],
        }, ]
    };
    myChart.setOption(option);
    </script>
</body>

</html>
),  %name%
RunBy(name)	
run, % name
return

NewEchartstwoBarHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    myChart.setOption({
		    color: ['#3398DB'],
		    tooltip : {
		        trigger: 'axis',
		        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
		            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
		        }
		    },
		    grid: {
		        left: '3`%',
		        right: '4`%',
		        bottom: '3`%',
		        containLabel: true
		    },
		    xAxis : [
		        {
		            type : 'category',
		            data : ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
		            axisTick: {
		                alignWithLabel: true
		            }
		        }
		    ],
		    yAxis : [
		        {
		            type : 'value'
		        },
		         {
		            type: 'value',
		            scale: true,
		            name: '预购量',
		            max: 1200,
		            min: 0,
		        }
		    ],
		    series : [
		        {
		            name:'直接访问',
		            type:'bar',
		            barWidth: '60`%',
		            data:[10, 52, 200, 334, 390, 330, 220]
		        }
		    ]
	});
    </script>
</body>

</html>
),  %name%
RunBy(name)	
run, % name
return

NewvuetransitionHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
    }

    #app {

    }

    .hello {
        background: red;
        width: 200px;
        height: 200px;
        position: absolute;
        left: 50`%;
        top: 50`%;
        transform: translate(-50`%, -50`%);
    }
    
    .msgbox-bounce-leave-active, .msgbox-bounce-enter-active {
        transition: .3s all ease;
    }
    .msgbox-bounce-enter {
      opacity: 0;
      transform: translate3d(-50`%, -50`%, 0) scale(0.7);
    }
    .msgbox-bounce-leave-active {
      opacity: 0;
      transform: translate3d(-50`%, -50`%, 0) scale(0.9);
    }

    </style>
</head>

<body>
    <div id="app">
        <button v-on:click="show = !show">
          Toggle
        </button>
        <transition name="msgbox-bounce">
          <p v-if="show" class='hello'>hello</p>
        </transition>
    </div>
</body>
<script>
var vue = new Vue({
    el: '#app',
    data: {
        items: [],
        show: true
    },
    methods: {
        handleClick: function () {

        }
    },
    beforeMount: function () {

    }
})
</script>
</html>
),  %name%
RunBy(name)	
run, % name
return


NewautoscrollHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/dragscroll/0.0.8/dragscroll.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
<script>
</script>

    <style>
    html, body{
        margin: 0;
        padding: 0;
    }

    *, ::after, ::before {
        box-sizing: border-box;
    }

    #app {
        height: 200px;
        background: red; 
        width: 200px;  
        overflow: scroll;
        cursor: move;
    }

    p {
        height: 40px;
        margin: 0;
        padding: 0;
    }

    </style>
</head>

<body>
    <div id="app" class='dragscroll'>
        <p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
    </div>
</body>
<script>

    $.fn.extend({
        'autoScroll': function (options) {
            // 配置参数
            var opt = $.extend({}, {speed: 1500, size: 4, height: 40, time: 10000}, options)
            // jQuery对象
            var $el = this;
            // 时间器
            var timer = null;
            // 核心函数
            var _autoScroll = function () {
                // 自动滚动
                timer =  setInterval(function () {
                    // 滚动的速度
                    const speed = opt.speed
                    // 每次滚动多少条
                    const size = opt.size;
                    // 每条的高度是多少
                    const height = opt.height;
                    // 每次滚动的距离
                    const distance = size * height;
                    // 当前滚动的高度
                    const currentScrollTop = $el.scrollTop()
                    // 底部位置
                    const bottom = $el.prop('scrollHeight') - $el.height()
                    // 如果已经滚到底了
                    if (Math.floor(currentScrollTop) === Math.floor(bottom)) {
                        // 滚回头部
                        // $el.animate({ scrollTop: 0 }, 0).animate({ scrollTop: distance + 'px' }, speed);
                        // 滚回头部
                        $el.animate({ scrollTop: 0 }, speed);
                    } else {
                        // 余数
                        const remainder = currentScrollTop `% height
                        // 下一次滚动的位置 = 当前位置 + 每次滚动的位置 - 余数
                        const nextScrollTop = currentScrollTop + distance - remainder
                        // 开始滚动
                        $el.animate({ scrollTop: nextScrollTop + 'px' }, speed);
                    }
                // 滚动间隔
                }, opt.time + opt.speed);
                // 鼠标移入的时候，删除自动滚动, 鼠标移出的时候，自动滚动
                $el.one('mouseover', function () { clearInterval(timer)}).one('mouseleave', _autoScroll)
                // 将timer放入jQuery对象的缓存中，方便后续操作
                $el.data('timer', timer)
            }
            // 开始滚动
            _autoScroll()
            // 返回时间器，方便后续操作
            return timer
        },
        'stopScroll': function () {
             // jQuery对象
            var $el = this;
            // 时间器
            var timer = $el.data('timer')
            // 消除它就是停止它（其实这里还需要结束动画，但就不做那么麻烦了）
            clearInterval(timer);
        }
    });

    $('#app').autoScroll({ height: 40, speed: 300, time: 3000, size: 5 })

   $('#app').niceScroll({ cursorcolor: 'rgba(0,0,0,0.2)', autohidemode: 'hidden' })
</script>
</html>
),  %name%
RunBy(name)	
run, % name
return

NewscrollforeveryHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/dragscroll/0.0.8/dragscroll.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
    <script>
    </script>
    <style>
    html,
    body {
        margin: 0;
        padding: 0;
    }

    *,
    ::after,
    ::before {
        box-sizing: border-box;
    }

    #app {
        height: 200px;
        background: thin;
        width: 200px;
        overflow: scroll;
        cursor: move;
    }

    p {
        height: 40px;
        margin: 0;
        padding: 0;
    }
    </style>
</head>
<body>
    <div id="app" class='dragscroll'>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
        <p>1</p>
    </div>
</body>
<script>
const $app = $('#app')
const innerHeight = 40
const len = 5
const distance = innerHeight * len
let timer = null 
const start = () => {
 timer = setInterval(function() {
     const scrollDistance = $app.scrollTop();
     if (scrollDistance >= distance) {
         $app.scrollTop(0)
     } else {
         $app.scrollTop(scrollDistance + 1)
     }
 }, 10);   
}

start()

$('#app').niceScroll({ cursorcolor: 'rgba(0,0,0,0.2)', autohidemode: 'hidden' })

$('#app').mouseover(e => {
    clearInterval(timer);
}).mouseleave(e => {
    start()
})
</script>

</html>

),  %name%
RunBy(name)	
run, % name
return


NewCanvasHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
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
),  %name%
RunBy(name)	
run, % name
return

NewNodejsRenamechName:
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
filename := name . "/index.js"
FileCreateDir, %name%
FileAppend,
(
const fs      = require('fs-extra')
const globby  = require('globby')
const request = require('request')

// 简单的GET请求获取翻译结果
const _request = (text, cb) => {
	request({
	    url: encodeURI(``http://119.23.22.136:6635/baidu_transapi.php?text=${text}&type=tuofeng``),
	}, function (err, response, body) {
		// 如果翻译异常那么直接中断
		if (err)
			// 抛出异常吧
			throw new Error(``${err.message} ///////////////// ${text} ///////////////// ${body}``)
		// 必须有内容返回并且请求码为200才可以回调
		if (body && response.statusCode === 200)
			// 回调
	    	cb && cb(body)
	})
}

// 从字符串中区分出名字和后缀
const get = name => {
	const len = name.lastIndexOf('.')
	return { name: name.substr(0, len), ext: name.substr(len) }
}

// 遍历当前文件夹下所有的文件
(async () => {
	// 筛选当前文件夹下的文件类型
	const names = await globby(['*.png|*.jpg|*.gif'])
	// 开始遍历改名
	for (let [index, filename] of names.entries()) {
		// 获取文件名和前缀
	    const { name, ext } = get(filename)
	    // 发送请求
	    _request(name, ch => {
	    	// 如果翻译结果不为空并且不为原本的值
	    	if (ch && ch != name) {
		    	// 那么修改文件名
		    	fs.rename(filename, ch + ext, err => {
		    		// 如果出现异常，那么直接中止
			    	if (err) 
			    		// 抛出异常吧
			    		throw new Error(``${err.message} ///////////////// ${filename} ///////////////// ${ch}``)
			    })
			}
	    })
	}
})()
), %filename%
RunWaitOne("cd " . name . " && npm init -y && npm i fs-extra globby request -S")
run, %name%
RunBy(filename)
return

NewEchartsmap3dHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="http://echarts.baidu.com/resource/echarts-gl-latest/dist/echarts-gl.min.js"></script>
    <script src="http://gallerybox.echartsjs.com/dep/echarts/map/js/china.js"></script>
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 100`%;;height:100vh;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    var option = {
        geo3D: {
            map: 'china',
            viewControl: {
                // 摄像头的距离 maxDistance: 100, minDistance: 100,
                distance: 100, 
                // 上下 minAlpha: 40, maxAlpha: 40,
                alpha: 40,
                // 左右 minBeta: 0, maxBeta: 0,
                beta: 0,
            },
            itemStyle: {
                areaColor: '#1d5e98',
                opacity: 1,
                borderWidth: 0.4,
                borderColor: '#000'
            },
            label: {
                show: true,
                textStyle: {
                    color: '#fff', //地图初始化区域字体颜色
                    fontSize: 14,
                    opacity: 1,
                    backgroundColor: 'rgba(0,23,11,0)'
                },
            },
            emphasis: { //当鼠标放上去  地区区域是否显示名称
                label: {
                    show: true,
                    textStyle: {
                        color: '#000',
                        fontSize: 14,
                        backgroundColor: 'rgba(0,23,11,0)'
                    }
                }
            },
            //shading: 'lambert',
            light: { //光照阴影
                main: {
                    color: '#fff', //光照颜色
                    intensity: 1.2, //光照强度
                    //shadowQuality: 'high', //阴影亮度
                    shadow: false, //是否显示阴影
                    alpha: 55,
                    beta: 10

                },
                ambient: {
                    intensity: 0.3
                }
            }
        },
    };
    myChart.setOption(option);
    </script>
</body>

</html>
),  %name%
RunBy(name)	
run, % name
return

NewRxjsIndexHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <title>rxjs demo</title>
    <script src="https://unpkg.com/rxjs/bundles/rxjs.umd.min.js"></script>
</head>
<body>
  <button>test</button>
</body>
<script>
   // https://rxjs-dev.firebaseapp.com/guide/overview#purity
   const button = document.querySelector('button');
   const { fromEvent } = rxjs;
   // operators库中都是纯函数，拥有一系列操作符（类似Array#map, filter, concat, reduce）可帮助您控制事件如何流经您的可观察对象。
   const { scan, throttleTime, filter, delay, debounceTime } = rxjs.operators;

   // throttleTime ：先执行，然后等待1000毫秒.并且等待的时间内不会再次执行
   // debounceTime ： 先等待1000毫秒，然后执行.并且等待的时间内如果再次触发，则重新开始计算，毁掉之前的timer
   // delay ：等待1000毫秒，然后再执行。有多少执行多少，不会阻止拦截任何请求。
    fromEvent(button, 'click').pipe(
    	// 实现每秒最多允许一次点击，一秒之后才往下流。
    	delay(1000),
    	// 过滤只有 BUTTON 点击才有效
    	filter(ev => ev.target.tagName === 'BUTTON'),
    	// scan 回调的值往下一个流（pipe）
   		scan(count => count + 1, 1000000)
   	`)
    .subscribe(count => console.log(``Clicked ${count} times``));
</script>
),  %name%
RunBy(name)	
run, % name
return

NewAxiosIndexHtml:
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
htmlfilename := name . "/index.html"
phpfilename := name . "/index.php"
FileCreateDir, %name%
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://cdn.staticfile.org/axios/0.19.0-beta.1/axios.min.js"></script>

    <script src="https://cdn.bootcss.com/qs/6.5.2/qs.min.js"></script>
</head>

<body>
    <div id="app"></div>
</body>
<script>

/**
 * get 请求
 */
axios.get('http://192.168.31.97/index.php?a=123').then(response => {
    console.log(20181203202901, response)
})

/**
 * post application/x-www-form-urlencoded;charset=utf-8
 * https://github.com/axios/axios#browser
 * 推荐使用 qs：
 * $ cnpm install qs
 * const params = qs.stringify({ 'a': 123 })
 */
const params = new URLSearchParams();
params.append('a', '123');
axios.post('http://192.168.31.97/index.php', params, {
    headers: {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'}
}).then(response => {
    console.log(20181203202901, response)
})

/**
 * axios(url, [config]) + qs + application/x-www-form-urlencoded
 * @param {*} 参数 参数说明
 */
 axios('http://120.77.146.174:84/api/admin/user/sysUser/login', {
       method: 'POST',
       headers: {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'},
       data: Qs.stringify({
           userAccount: 'dgeduc-b',
           userPwd: '123456',
           type: 'account',
        }),
 }).then(response => {
     console.log(20181203100805, response)
     // return response.json()
 })


/**
 * post application/json;charset=utf-8
 */
axios.post('http://192.168.31.97/index.php', {a: 123}).then(response => {
    console.log(20181203202901, response)
})

// ajax（默认是application/json;charset=utf-8）
axios({
  method: 'post',
  url: 'http://192.168.31.97/index.php',
  data: {
    firstName: 'Fred',
    lastName: 'Flintstone'
  }
}).then(response => {
	console.log(20181203202901, response)
})

// ajax（指定为application/x-www-form-urlencoded;charset=utf-8）
const params2 = new URLSearchParams();
params2.append('firstName', 'Fred');
params2.append('lastName', 'Flintstone');
axios({
  method: 'post',
  url: 'http://192.168.31.97/index.php',
  data: params2,
  headers: {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8'},
}).then(response => {
	console.log(20181203202901, response)
})
</script>
</html>
),  %htmlfilename%

FileAppend,
(
<?php 

header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Headers:x-requested-with,content-type'); 

// post(form) 和 get请求
var_dump($_REQUEST);
// application/json;charset=utf-8 的数据必须这样使用
var_dump($GLOBALS['HTTP_RAW_POST_DATA']);

),  %phpfilename%

RunBy(htmlfilename)	
run, % htmlfilename
return

NewNodejsSequelize:
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
filename := name . "/index.js"
FileCreateDir, %name%
FileAppend,
(
// http://docs.sequelizejs.com/manual/installation/getting-started.html#setting-up-a-connection
const Sequelize = require('sequelize');

const sequelize = new Sequelize('database', 'username', 'password', {
    host: 'localhost',
    port: 3306,
    dialect: 'mysql',
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    },
});

sequelize.authenticate().then(() => {
    console.log('Connection has been established successfully.');
})
.catch(err => {
    console.error('Unable to connect to the database:', err);
});

// 第一次没有表的时候需要同步来创建
const User = sequelize.define('user', {
    firstName: { type: Sequelize.STRING },
    lastName: { type: Sequelize.STRING },
}, {
	// 省略 createdAt 和 updateAt
	timestamps: false
});

sequelize.sync({
    force: true
}).then(() => {
	return User.create({
        firstName: 'John',
        lastName: 'Hancock'
    })
}).then(() => {
    return User.find({
        where: {
            firstName: 'John'
        }
    })
}).then(console.log)
), %filename%
RunWaitOne("cd " . name . " && npm init -y && npm i sequelize mysql2 -S")
run, %name%
RunBy(filename)
return

Newcreateareactapp:
	name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
	FileCreateDir, %name%
	RunWaitOne("cd " . name . " && npm install -g create-react-app && create-react-app my-app && cd my-app && npm start")
return

NewEchartsPurePinHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    myChart.setOption({
        series: [{
            type: 'pie',
            radius: '55`%',
            center: ['50`%', '50`%'],
            color: ['#86D560', '#1890FF', '#13C2C2', '#F7BA40', '#58D6AA', '#1EDFE0', '#F5B8D9', '#E8845A', '#D4D545', ],
            data: [
                { value: [611, 110], name: '市场管理' },
                { value: [9, 110], name: '行政效能投诉' },
                { value: [1, 110], name: '治安消防' },
            ],
            // 引导线
            labelLine: {
                normal: {
                    length: 10,
                    length2: 20,
                }
            },
            // 文本
            label: {
                show: true,
                formatter: '{b}\n\n{d}`%'
            },
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                },
            }
        }],
    });
    </script>
</body>

</html>
),  %name%
RunBy(name)	
run, % name
return

NewEchartsBarHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    myChart.setOption({
        title: {
            text: '占用道路问题结构',
            x: 'center',
            align: 'right'
        },
        xAxis: {
            data: ["经营占道", "垃圾占道", "车辆占道", "霸占车位", "其他占道"],
            axisLine: {
                lineStyle: {
                    color: 'black',
                    width: 0.5
                }
            },
            axisLabel: {
                interval: 0,
                textStyle: {
                    color: 'black',
                    fontSize: 18
                }
            }
        },
        yAxis: {
            splitLine: {
                show: true
            },
            type: 'value',
            axisLine: {
                lineStyle: {
                    width: 0
                }
            },
            axisLabel: {
                interval: 0,
                textStyle: {
                    color: 'black',
                    fontSize: 14
                }
            }
        },
        series: [{
            name: '销量',
            type: 'bar',
            data: [2240, 1768, 1547, 600, 31],
            barWidth: 25,
            itemStyle: {
                normal: {
                    color: function(params) {
                        var colorList = ['#00a0e9', '#00a0e9 ', '#00a0e9 ', '#00a0e9 ', '#00a0e9'];
                        return colorList[params.dataIndex]
                    },
                    label: {
                        show: true,
                        position: 'top',
                        color: 'black',
                        fontSize: 14,
                        formatter: '{c}'
                    },
                    opacity: 0.4
                },
            },
        }]
    });
    </script>
</body>

</html>
),  %name%
RunBy(name)	
run, % name
return

NewEchartsLineHtml: 
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var option = {
        grid: { left: '12`%', right: '3`%', bottom: '35px', top: '35px', },
        xAxis: [{
            type: 'category',
            axisTick: { show: false },
            axisLine: { show: false, },
            axisLabel: {
                textStyle: {
                    color: '#444444',
                    fontSize: '16'
                }
            },
            data: ['1月', '2月', '3月', '4月', '5月', '6月']
        }],
        yAxis: [{
            type: 'value',
            splitLine: {
                lineStyle: {
                    color: 'rgba(52,73,94, .23)',
                    type: 'dashed'
                },
            },
            axisTick: { show: false },
            axisLine: { show: false, },
            axisLabel: {
                margin: '10',
                textStyle: {
                    color: '#444444',
                    fontSize: '16',
                    align: 'right',
                    baseline: 'bottom'
                }
            }
        }],
        series: [{
            type: 'line',
            symbol: 'emptyCircle',
            symbolSize: 7,
            itemStyle: {
                normal: {
                    color: '#118cfe',
                    lineStyle: {
                        color: '#118cfe'
                    }
                }
            },
            label: {
                show: true,
                position: 'top',
                distance: 8,
                textStyle: {
                    color: '#444444',
                    fontSize: 18
                }
            },
            data: [1020, 324, 1132, 1389, 1288, 1358],
        }, ]
    };
    myChart.setOption(option);
    </script>
</body>

</html>
),  %name%
RunBy(name)	
run, % name
return

NewEchartsPinHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>
<body>
    <div id="app" style="width: 600px; height:400px;"></div>
</body>

<script>
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('app'))

// mock data
var data = [
    { value: 5,  name: '其他类' },
    { value: 10, name: '就业保障类' },
    { value: 15, name: '城市建设类' },
    { value: 25, name: '民政救济类' },
    { value: 20, name: '市场监管类' },
    { value: 35, name: '市容城管类' },
    { value: 30, name: '公共安全类' },
    { value: 40, name: '公安消防类' }
]

// 核心配置
var option = {
    legend: {
        x: 'center',
        y: 'bottom',
        data: data.map(_ => _.name)
    },
    series: [{
        type: 'pie',
        radius: [25, 95],
        center: ['50`%', 140],
        roseType: 'area',
        clockWise: false,
        itemStyle: {
            normal: {
                label: {
                    formatter: ['{b}', '占比{d}`%'].join('\n'),
                    textStyle: { color: '#000', fontSize: 16 }
                },
            }
        },
        data: data
    }]
}

myChart.setOption(option);
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

NewreactbabelHtml:
	run, https://github.com/dragon8github/Pandora/blob/master/template/babeltest.zip?raw=true
return

NewreduxIndexHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/redux/4.0.0/redux.min.js"></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
    }

    #app {

    }
    </style>
</head>

<body>
    <div id="app">
        <label class='num'></label>
        <button class='like'>like</button>
        <button class='unlike'>unlike</button>
    </div>
</body>
<script>
    
    const render = () => {
        document.querySelector('.num').innerText = store.getState()
    }

    document.querySelector('.like').addEventListener('click', function (event) {
        store.dispatch({ type: 'LIKE' })
    })

    document.querySelector('.unlike').addEventListener('click', function (event) {
        store.dispatch({ type: 'UNLIKE' })
    })

    // redux的核心方法： reducer
    const reducer = (previousState = 0, action) => {
        switch (action.type) {
            case 'LIKE':
                return previousState + 1;
            case 'UNLIKE':
                return previousState - 1;
            default:
                return previousState
        }
    }

    // 创建redux的核心：store
    const store = Redux.createStore(reducer);

    // 订阅更新渲染
    store.subscribe(render);

    // 首次渲染
    render()

</script>
</html>
),  %name%
RunBy(name)
return

NewPyhtonPachong: 
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
filename := name . "/index.python"
FileCreateDir, %name%
FileAppend,
(
# python 3.x 开始自带了pip，如果没有请自信百度安装。
# pip install beautifulsoup4 requests
from bs4 import BeautifulSoup
import requests

res = requests.get('https://etherscan.io/token/tokenholderchart/0x86fa049857e0209aa7d9e616f7eb3b3b78ecfdb0?range=10')
res.encoding = 'gbk'
soup = BeautifulSoup(res.text, 'html.parser')
table = soup.select('#ContentPlaceHolder1_resultrows table tr')
myarr = []
for tr in table:
	td = tr.select('td')
	if len(td) > 0:
		Rank = td[0].text;
		Address = td[1].text;
		Quantity = td[2].text;
		Percentage = td[3].text;
		myarr.append({"Rank": Rank, "Address": Address, "Quantity": Quantity, "Percentage": Percentage})
print(myarr)
});
), %filename%
RunWaitOne("pip install beautifulsoup4 requests")
run, %name%
RunBy(filename)
return

NewNodegbkPachong:
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
filename := name . "/index.js"
FileCreateDir, %name%
FileAppend,
(
// npm i request cheerio iconv-lite
const request = require('request');
const cheerio = require('cheerio');
const iconv = require('iconv-lite');

request({
	url: 'http://roll.mil.news.sina.com.cn/col/zgjq/index.shtml',
	encoding : null // raw buffer
}, function (err, response, body) {
	if (err) throw new Error(err.message);
	var buffer = response.body;
	var str = iconv.decode(buffer, 'GBK').toString();
	let $ = cheerio.load(str)
	let lis = $(".linkNews li");
	let myarr = [];
	lis.each(function (i, li) {
	    var a = $(li).find('a')
	    var title = a.text()
	    myarr.push({ title });
	});
	console.log("简单成狗了:", myarr);
});
), %filename%
RunWaitOne("cd " . name . " && npm init -y && npm i request cheerio iconv-lite")
run, %name%
RunBy(filename)
return

NewNodefengzhuangPachong:
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
filename := name . "/index.js"
FileCreateDir, %name%
FileAppend,
(
// npm i request cheerio iconv-lite
const request = require('request');
const cheerio = require('cheerio');
const iconv = require('iconv-lite');

const _request = (url, cb, charset = 'utf8') => {
	request({ url: url, encoding : null }, function (err, response, body) {
		if (err) throw new Error(err.message);
		var buffer = response.body;
		var str = iconv.decode(buffer, charset).toString();
		let $ = cheerio.load(str)
		cb && cb($);
	});
}

_request('http://roll.mil.news.sina.com.cn/col/zgjq/index.shtml', function ($) {
	let lis = $(".linkNews li");
	let myarr = [];
	lis.each(function (i, li) {
	    var a = $(li).find('a')
	    var title = a.text()
	    myarr.push({ title });
	});
	console.log(myarr);
}, 'GBK')
), %filename%
RunWaitOne("cd " . name . " && npm init -y && npm i request cheerio")
run, %name%
RunBy(filename)
return

NewNodePachong:
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
filename := name . "/index.js"
FileCreateDir, %name%
FileAppend,
(
// npm i request cheerio
const request = require('request');
const cheerio = require('cheerio');

request('https://etherscan.io/token/tokenholderchart/0x86fa049857e0209aa7d9e616f7eb3b3b78ecfdb0?range=10', function (err, response, body) {
	if (err) throw new Error(err.message);
	let $ = cheerio.load(response.body)
	let trs = $("#ContentPlaceHolder1_resultrows tr");
	let myarr = [];
	trs.each(function (i, tr) {
	    var td = $(tr).find('td')
	    let Rank = td.eq(0).text();
	    let Address = td.eq(1).text();
	    let Quantity = td.eq(2).text();
	    let Percentage = td.eq(3).text();
	    myarr.push({Rank, Address, Quantity, Percentage});
	});
	console.log("简单成狗了:", myarr);
});
), %filename%
RunWaitOne("cd " . name . " && npm init -y && npm i request cheerio")
run, %name%
RunBy(filename)
return

NewPureIndexHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <!-- element -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/element-ui/2.10.1/index.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/element-ui/2.10.1/theme-chalk/index.css">
    <!-- lodash -->
    <script src="https://cdn.bootcss.com/lodash.js/4.17.11/lodash.min.js"></script>
    <!-- mockjs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Mock.js/1.0.0/mock-min.js"></script>
    <!-- axios -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js"></script>
    <!-- moment -->
    <script src="https://cdn.bootcss.com/moment.js/2.23.0/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.1/locale/zh-cn.js"></script>
    
    <style>
    html, body{
        margin: 0;
        padding: 0;
        height: 100`%; /* 注意，应该是html和body同时设置才可以 */
    }

    #app {

    }
    </style>
</head>

<body>
    <div id="app">
        <ul>
            <li class='item' v-for='(item, index) in items' :key='item.book_id'>{{ item.book_name }}</li>
        </ul>

        <button @click='handleClick'>handleClick</button>
    </div>
</body>
<script>
Mock.mock("/book/list", "get", {
    "booklist|10": [
        {"book_id|+1": 101, "book_name": "@ctitle", "book_price|50-100.1-2": 0, "book_time": "@date('yyyy-mm-dd')"}
    ]
})

$(function() {
    console.log('hello world');
});

var vue = new Vue({
    el: '#app',
    data: {
        items: [],
        text: '',
        obj: {},
    },
    methods: {
        handleClick () {

        }
    },
    beforeMount () {
        axios.get("/book/list").then(res => {
            this.items = res.data.booklist
        })
    }
})
</script>
</html>
),  %name%
run, % name
RunBy(name)
return

NewIndexHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- normalize -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.0/normalize.min.css" rel="stylesheet">

    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>

    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

    <!-- bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
    </style>

    <body>
        <div id="app">
          <!--   <input type="radio" id="one" value="One" v-model="picked">
            <label for="one">One</label>
            <br>
            <input type="radio" id="two" value="Two" v-model="picked">
            <label for="two">Two</label> -->

            <div v-for='(item, index) in items' :key='index'>
                <input type="radio" id="two" :value="item" v-model="picked">
                <label for="two">{{ item }}</label>
            </div>

            <br>
            <span>Picked: {{ picked }}</span>

            <hr />

            <div id='example-3'>
                  <input type="checkbox" id="jack" value="Jack" v-model="checkedNames">
                  <label for="jack">Jack</label>
                  <input type="checkbox" id="john" value="John" v-model="checkedNames">
                  <label for="john">John</label>
                  <input type="checkbox" id="mike" value="Mike" v-model="checkedNames">
                  <label for="mike">Mike</label>
                  <br>
                  <span>Checked names: {{ checkedNames }}</span>
            </div>

            <hr>

            <!-- select绑定v-model时，默认取option的value属性值，如果option没有value属性，那就取Option的text属性。  -->
            <select v-model="selected">
              <!-- 必须设置value = '' 才会展示text -->
              <option disabled value="">Please select one</option>
              <option>A</option>
              <option>B</option>
              <option>C</option>
            </select>
            <span>Selected: {{ selected }}</span>
        </div>
    </body>
    <script>
        // jquery
        $(function () {
            console.log('hello world');
        });

         // Vue
        new Vue({
            el: '#app',
            data: {
                title: 'hello world',
                picked: 'Three',
                checkedNames: [],
                selected: '',
                items: ['One', 'Two', 'Three']
            },
            methods: {
                clickHandle: function () {
                    console.log('hello world');
                }
            }
        })
    </script>

</html>
),  %name%
RunBy(name)
run, % name
return


NewnorepeataxiosHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.staticfile.org/axios/0.19.0-beta.1/axios.min.js"></script>
</head>
<body>
</body>
<script>
// 请求队列
let pending = []

// 获取纯Url，不包含?后面的参数
var getPureUrl = url => {
	const index = url.indexOf('?')
	return url.substr(0, ~index ? index : url.length)
}

// 请求拦截器
axios.interceptors.request.use(config => {
    // 获取纯Url（不包含?后面的参数）
    const pureUrl = getPureUrl(config.url)
    // 中止队列中所有相同请求地址的xhr
    pending.forEach(_ => _.url === pureUrl && _.cancel('repeat abort'));
    // 配置取消令牌
    config.cancelToken = new axios.CancelToken(cancel => {
       // 移除所有中止的请求，并且将新的请求推入缓存
       pending = [...pending.filter(_ => _.url != pureUrl), { url: pureUrl, cancel }]
    })
    return config
}, error => {
    return Promise.reject(error)
})

// 响应拦截器
axios.interceptors.response.use(res => {
  // 成功响应之后清空队列中所有相同Url的请求
  pending = pending.filter(_ => _.url != getPureUrl(res.config.url))
  // 返回 response
  return res
}, error => {
   return Promise.reject(error)
});

for (var i = 0; i < 10; i++) {
    axios({url: 'http://localhost'}).then(console.log).catch(_ => {
        if (_.message === 'repeat abort') return console.info(_.message)
        // other error handler...
        // something code...
        throw new Error(_.message)
    })
}
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

NewnorepeatajaxsHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <style>
    </style>
</head>

<body>
</body>
<script>

// 获取纯Url，不包含?后面的参数
var getPureUrl = url => {
	const index = url.indexOf('?')
	return url.substr(0, ~index ? index : url.length)
}

//（核心）以url相同作为重复条件，你可以根据自己的情况编写自己的重复条件
var SingleAjax = function () {
    // 缓存的队列
    var pending = [];

    // 返回单例模式ajax
    return function (opts) {
    	// 获取纯Url（不包含?后面的参数）
    	const pureUrl = getPureUrl(opts.url)
        // 中止队列中所有相同请求地址的xhr
        pending.forEach(_ => _.url === pureUrl && _.xhr.abort());
        // 获取 success 回调函数
        const _success = opts.success
        // 装饰成功回调函数
        opts.success = function (...rest) {
        	// 从队列过滤掉已经成功的请求
        	pending = pending.filter(_ => _.url != pureUrl)
        	// 继续执行它的成功
        	_success && _success(...rest)
        }
        // 移除所有中止的请求，并且将新的请求推入缓存
        pending = [...pending.filter(_ => _.url != pureUrl), { url: pureUrl, xhr: $.ajax(opts) }]
    }
}

// 生成单例ajax
var singleAjax = new SingleAjax()

for (var i = 0; i < 10; i++) {
    singleAjax({
        url: "http://localhost",
        success: function (data) {
            // 其实在成功之后，可以考虑扩展把成功的xhr从队列中移除，但其实也不影响。已经成功的xhr就算再次被执行abort也不会怎么样，更不会从200变成cannel状态，更不会触发error。
            console.log('请求成功', data);
        },
        error: function(e, m){
           console.log('数据接口请求异常（请放心这是正常现象，由于请求被中止，所以会回调error。只需要判断一下m === "abort" 即可，你还可以在 abort() 时在 _.xhr 中加入任意属性来判断深入判断）', e, m, m === "abort");
        }
    })
}
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

NewjointjsHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jointjs/2.1.0/joint.css" />
</head>
<body>
    <!-- content -->
    <div id="myholder"></div>

    <!-- dependencies -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.10.1/lodash.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.3.3/backbone.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jointjs/2.1.0/joint.js"></script>

    <!-- code -->
    <script type="text/javascript">

        var graph = new joint.dia.Graph;

        var paper = new joint.dia.Paper({
            el: document.getElementById('myholder'),
            model: graph,
            width: 600,
            height: 100,
            gridSize: 1
        });

        var rect = new joint.shapes.standard.Rectangle();
        rect.position(100, 30);
        rect.resize(100, 40);
        rect.attr({
            body: {
                fill: 'blue'
            },
            label: {
                text: 'Hello',
                fill: 'white'
            }
        });
        rect.addTo(graph);

        var rect2 = rect.clone();
        rect2.translate(300, 0);
        rect2.attr('label/text', 'World!');
        rect2.addTo(graph);

        var link = new joint.shapes.standard.Link();
        link.source(rect);
        link.target(rect2);
        link.addTo(graph);

    </script>
</body>
</html>
),  %name%
RunBy(name)
run, % name
return

NewuploadHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang='en'>

<head>
    <meta charset='UTF-8'>
    <title>Document</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- Vue -->
    <script src='https://cdn.staticfile.org/vue/2.6.9/vue.min.js'></script>
    <!-- jquery -->
    <script src='https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js'></script>
    <style>
        html, body{
        margin: 0;
        padding: 0;
    }

    #app {

    }
    </style>
</head>

<body>
    <div>
        <input type='file' name='file_input[]' id='fileId' webkitdirectory multiple />
        <button type='submit' name='btn' value='提交' id='btnId' onclick='check()'>提交</button>
    </div>
    <script>
    function check() {
        var objFile = document.getElementById('fileId');
        if (!objFile.value) 
            throw new Error('请选择文件或文件夹')

        // 获取到文件列表
        var files = $('#fileId').prop('files'); 

        // 如果不存在文件
        if (!files.length)
            return

        // 新建一个FileReader
        var reader = new FileReader(); 
        // 读取文件 
        reader.readAsText(files[0], 'UTF-8'); 
        // 开始读取
        reader.onload = function(evt) { 
            // 读取文件内容
            var fileString = evt.target.result; 
            console.log(fileString)
        }
    }
    </script>

</html>
),  %name%
RunBy(name)
run, % name
return

Newlshtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang='en'>

<head>
    <meta charset='UTF-8'>
    <title>Document</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- Vue -->
    <script src='https://cdn.staticfile.org/vue/2.6.9/vue.min.js'></script>
    <!-- jquery -->
    <script src='https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js'></script>
    <style>
        html, body{
        margin: 0;
        padding: 0;
    }

    #app {

    }
    </style>
</head>

<body>
    <div>
       <input type="file" id="filepicker" name="fileList" webkitdirectory multiple />
       <ul id="listing"></ul>
    </div>
    <script>
    document.getElementById("filepicker").addEventListener("change", function(event) {
      let output = document.getElementById("listing");
      let files = event.target.files;

      for (let i=0; i<files.length; i++) {
        let item = document.createElement("li");
        item.innerHTML = files[i].webkitRelativePath;
        output.appendChild(item);
      };
    }, false);
    </script>

</html>
),  %name%
RunBy(name)
run, % name
return


Waterhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>test</title>
    <style>
        body {
        display: flex;
        flex-flow: column wrap;
        justify-content: center;
        align-items: center;
      }
      #c {
        margin-top: 20px;      
      }
      input[type=range]::before {content: attr(min);  color: #000; padding-right: 5px;}
      input[type=range]::after { content: attr(max); color: #000; padding-left: 5px;}
    </style>
</head>

<body>
    <canvas id="c">当前浏览器不支持canvas 请升级！</canvas>
    <input type="range" name="range" min="0" max="100" step="1">
</body>
<script>
let canvas = document.getElementById("c")
let ctx = canvas.getContext("2d")
let oRange = document.getElementsByName("range")[0];
let M = Math
let Sin = M.sin
let Cos = M.cos
let Sqrt = M.sqrt
let Pow = M.pow
let PI = M.PI
let Round = M.round
let oW = canvas.width = 250
let oH = canvas.height = 250
let lineWidth = 2 // 线宽
let r = (oW / 2) // 大半径
let cR = r - 10 * lineWidth
ctx.beginPath()
ctx.lineWidth = lineWidth

// 水波动画初始参数
let axisLength = 2 * r - 16 * lineWidth // Sin 图形长度
let unit = axisLength / 9 // 波浪宽
let range = .4 // 浪幅
let nowrange = range
let xoffset = 8 * lineWidth // x 轴偏移量
let data = ~~(oRange.value) / 100 // 数据量
let sp = 0 // 周期偏移量
let nowdata = 0
let waveupsp = 0.006 // 水波上涨速度

// 圆动画初始参数
let arcStack = [] // 圆栈
let bR = r - 8 * lineWidth
let soffset = -(PI / 2) // 圆动画起始位置
let circleLock = true // 起始动画锁

// 获取圆动画轨迹点集
for (var i = soffset; i < soffset + 2 * PI; i += 1 / (8 * PI)) {
    arcStack.push([
        r + bR * Cos(i),
        r + bR * Sin(i)
    ])
}
// 圆起始点
let cStartPoint = arcStack.shift();
ctx.strokeStyle = "#1c86d1";
ctx.moveTo(cStartPoint[0], cStartPoint[1]);
// 开始渲染
render();

function drawSine() {
    ctx.beginPath();
    ctx.save();
    var Stack = []; // 记录起始点和终点坐标
    for (var i = xoffset; i <= xoffset + axisLength; i += 20 / axisLength) {
        var x = sp + (xoffset + i) / unit;
        var y = Sin(x) * nowrange;
        var dx = i;
        var dy = 2 * cR * (1 - nowdata) + (r - cR) - (unit * y);
        ctx.lineTo(dx, dy);
        Stack.push([dx, dy])
    }
    // 获取初始点和结束点
    var startP = Stack[0]
    var endP = Stack[Stack.length - 1]
    ctx.lineTo(xoffset + axisLength, oW);
    ctx.lineTo(xoffset, oW);
    ctx.lineTo(startP[0], startP[1])
    ctx.fillStyle = "#fbec99";
    ctx.fill();
    ctx.restore();
}

function drawText() {
    ctx.globalCompositeOperation = 'source-over';
    var size = 0.4 * cR;
    ctx.font = 'bold ' + size + 'px Microsoft Yahei';
    let txt = (nowdata.toFixed(2) * 100).toFixed(0) + '`%';
    var fonty = r + size / 2;
    var fontx = r - size * 0.8;
    ctx.fillStyle = "#f6b71e";
    ctx.textAlign = 'center';
    ctx.fillText(txt, r + 5, r + 20)
}
//最外面淡黄色圈
function drawCircle() {
    ctx.beginPath();
    ctx.lineWidth = 15;
    ctx.strokeStyle = '#fff89d';
    ctx.arc(r, r, cR + 7, 0, 2 * Math.PI);
    ctx.stroke();
    ctx.restore();
}
//灰色圆圈
function grayCircle() {
    ctx.beginPath();
    ctx.lineWidth = 10;
    ctx.strokeStyle = '#eaeaea';
    ctx.arc(r, r, cR - 5, 0, 2 * Math.PI);
    ctx.stroke();
    ctx.restore();
    ctx.beginPath();
}
//橘黄色进度圈
function orangeCircle() {
    ctx.beginPath();
    ctx.strokeStyle = '#fbdb32';
    //使用这个使圆环两端是圆弧形状
    ctx.lineCap = 'round';
    ctx.arc(r, r, cR - 5, 0 * (Math.PI / 180.0) - (Math.PI / 2), (nowdata * 360) * (Math.PI / 180.0) - (Math.PI / 2));
    ctx.stroke();
    ctx.save()
}
//裁剪中间水圈
function clipCircle() {
    ctx.beginPath();
    ctx.arc(r, r, cR - 10, 0, 2 * Math.PI, false);
    ctx.clip();
}
//渲染canvas
function render() {
    ctx.clearRect(0, 0, oW, oH);
    //最外面淡黄色圈
    drawCircle();
    //灰色圆圈  
    grayCircle();
    //橘黄色进度圈
    orangeCircle();
    //裁剪中间水圈  
    clipCircle();
    // 控制波幅
    oRange.addEventListener("change", function() {
        data = ~~(oRange.value) / 100;
    }, 0);
    if (data >= 0.85) {
        if (nowrange > range / 4) {
            var t = range * 0.01;
            nowrange -= t;
        }
    } else if (data <= 0.1) {
        if (nowrange < range * 1.5) {
            var t = range * 0.01;
            nowrange += t;
        }
    } else {
        if (nowrange <= range) {
            var t = range * 0.01;
            nowrange += t;
        }
        if (nowrange >= range) {
            var t = range * 0.01;
            nowrange -= t;
        }
    }
    if ((data - nowdata) > 0) {
        nowdata += waveupsp;
    }
    if ((data - nowdata) < 0) {
        nowdata -= waveupsp
    }
    sp += 0.07;
    // 开始水波动画
    drawSine();
    // 写字
    drawText();
    requestAnimationFrame(render)
}
</script>
),  %name%
RunBy(name)
run, % name
return

wangyejindutiao:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
    }

    #app {

    }

    body {
        position: relative;
        padding: 50px;
        font-size: 24px;
        line-height: 30px;
        background-image: linear-gradient(to right top, #ffcc00 50`%, #eee 50`%);
        background-size: 100`% calc(100`% - 100vh + 5px);
        background-repeat: no-repeat;
        z-index: 1;
    }

    body::after {
        content: "";
        position: fixed;
        top: 5px;
        left: 0;
        bottom: 0;
        right: 0;
        background: #fff;
        z-index: -1;
    }
    </style>
</head>

<body>
    <div id="app">
        <h1>不可思议的纯 CSS 进度条效果</h1>

        <p>在继续阅读下文之前，你可以先缓一缓。尝试思考一下上面的效果或者动手尝试一下，不借助 JS ，能否巧妙的实现上述效果。</p>
            
        <p>OK，继续。这个效果是我在业务开发的过程中遇到的一个类似的小问题。其实即便让我借助 Javascript ，我的第一反应也是，感觉很麻烦啊。所以我一直在想，有没有可能只使用 CSS 完成这个效果呢？</p>

        <p>在继续阅读下文之前，你可以先缓一缓。尝试思考一下上面的效果或者动手尝试一下，不借助 JS ，能否巧妙的实现上述效果。</p>
            
        <p>OK，继续。这个效果是我在业务开发的过程中遇到的一个类似的小问题。其实即便让我借助 Javascript ，我的第一反应也是，感觉很麻烦啊。所以我一直在想，有没有可能只使用 CSS 完成这个效果呢？</p>

        <p>在继续阅读下文之前，你可以先缓一缓。尝试思考一下上面的效果或者动手尝试一下，不借助 JS ，能否巧妙的实现上述效果。</p>
            
        <p>OK，继续。这个效果是我在业务开发的过程中遇到的一个类似的小问题。其实即便让我借助 Javascript ，我的第一反应也是，感觉很麻烦啊。所以我一直在想，有没有可能只使用 CSS 完成这个效果呢？</p>

        <p>在继续阅读下文之前，你可以先缓一缓。尝试思考一下上面的效果或者动手尝试一下，不借助 JS ，能否巧妙的实现上述效果。</p>
            
        <p>OK，继续。这个效果是我在业务开发的过程中遇到的一个类似的小问题。其实即便让我借助 Javascript ，我的第一反应也是，感觉很麻烦啊。所以我一直在想，有没有可能只使用 CSS 完成这个效果呢？</p>

        <p>在继续阅读下文之前，你可以先缓一缓。尝试思考一下上面的效果或者动手尝试一下，不借助 JS ，能否巧妙的实现上述效果。</p>
            
        <p>OK，继续。这个效果是我在业务开发的过程中遇到的一个类似的小问题。其实即便让我借助 Javascript ，我的第一反应也是，感觉很麻烦啊。所以我一直在想，有没有可能只使用 CSS 完成这个效果呢？</p>

        <p>在继续阅读下文之前，你可以先缓一缓。尝试思考一下上面的效果或者动手尝试一下，不借助 JS ，能否巧妙的实现上述效果。</p>
            
        <p>OK，继续。这个效果是我在业务开发的过程中遇到的一个类似的小问题。其实即便让我借助 Javascript ，我的第一反应也是，感觉很麻烦啊。所以我一直在想，有没有可能只使用 CSS 完成这个效果呢？</p>

        <p>在继续阅读下文之前，你可以先缓一缓。尝试思考一下上面的效果或者动手尝试一下，不借助 JS ，能否巧妙的实现上述效果。</p>
            
        <ul>
            <li>1.xxxxxxxxxxxxxxxxxxxxx</li>
            <li>2.xxxxxxxxxxxxxxxxxxxxx</li>
            <li>3.xxxxxxxxxxxxxxxxxxxxx</li>
            <li>4.xxxxxxxxxxxxxxxxxxxxx</li>
        </ul>

        <p>OK，继续。这个效果是我在业务开发的过程中遇到的一个类似的小问题。其实即便让我借助 Javascript ，我的第一反应也是，感觉很麻烦啊。所以我一直在想，有没有可能只使用 CSS 完成这个效果呢？</p>

        <p>在继续阅读下文之前，你可以先缓一缓。尝试思考一下上面的效果或者动手尝试一下，不借助 JS ，能否巧妙的实现上述效果。</p>
            
        <p>OK，继续。这个效果是我在业务开发的过程中遇到的一个类似的小问题。其实即便让我借助 Javascript ，我的第一反应也是，感觉很麻烦啊。所以我一直在想，有没有可能只使用 CSS 完成这个效果呢？</p>
    </div>
</body>
<script>
$(function() {
    console.log('hello world');
});
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

emphhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <style>

    .point {
        display: inline-block;
        position: relative;
        vertical-align: baseline;
    }

    .point:after {
        display: block;
        position: absolute;
        content: "";
        width: 80px;
        height: 80px;
        border-radius: 50`%;
        background: #3cb371;
        top: calc(50`% - 40px);
        left: calc(50`% - 40px);
        transform: scale(0);
        will-change: transform, opacity;
        opacity: 0
    }

    .point.changing:after {
        animation: emph 1.25s;
    }

    @keyframes emph {
        20`% {
            transform: none;
            opacity: .5
        }

        to {
            opacity: 0;
            transform: scale(1.2)
        }
    }
    </style>
</head>

<body>
    <code class="point" data-point="1">0 71`%</code>
</body>
<script>
$('.point').click(function (e) {
    $(e.target).addClass('changing')

    setTimeout(() => {
        $(e.target).removeClass('changing')
    }, 1250);
});


/**

export const addClass = (el, cls) => {
    if (el.classList) {
        el.classList.add(cls)
    } else {
        var cur = ' ' + getClassName(el) + ' '
        if (cur.indexOf(' ' + cls + ' ') < 0) {
            el.setAttribute('class', (cur + cls).trim())
        }
    }
}

export const hasClass = (el, className) => {
  if (el.classList)
    el.classList.contains(className);
  else
    new RegExp('(^| )' + className + '( |$)', 'gi').test(el.className);
}

export const getClassName = (el) => {
    return (el.className instanceof SVGAnimatedString ? el.className.baseVal : el.className)
}

export const removeClass = (el, cls) => {
    if (el.classList) {
        el.classList.remove(cls)
    } else {
        var cur = ' ' + getClassName(el) + ' ',
            tar = ' ' + cls + ' '
        while (cur.indexOf(tar) >= 0) {
            cur = cur.replace(tar, ' ')
        }
        el.setAttribute('class', cur.trim())
    }
}

 import { addClass, hasClass, removeClass } from '@/utils/utils.js'

 point (dom) {
   // 设置高亮
   if (hasClass(dom, 'changing')) {
      removeClass(dom, 'changing')
   } else {
      addClass(dom, 'changing')
      addClass(dom, 'point')
      dom.addEventListener("webkitAnimationEnd", function() {
          removeClass(dom, 'changing')
      })
   }
 },
 */
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

autowidth:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    #test {
        min-width: 160px;
    }
    </style>
</head>

<body>
    <input type="text" id='test'>
    <div id='test2'></div>
</body>
<script>

const autoWidth = input => {
    // valiteda the input type
    if (input instanceof HTMLInputElement === false) 
        // target must be a input element
        return console.warn('target must be a input element')

    // function
    const setWidth = e => {
        // self or target
        const { style, value } = e.target || e
        // set the width style
        style.width = value.length + 'em'
    }

    // init
    setWidth(input)

    // event
    input.addEventListener('input', setWidth)
}

// 获取input
const target = document.querySelector('#test')

// 设置自动根据文本提高宽度
autoWidth(target)

</script>

</html>
),  %name%
RunBy(name)
run, % name
return

huxihtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    #splash {
        position: fixed; 
        bottom: 0; left: 0; right: 0; top: 0; 
        z-index: -1;

        animation: rotate 15s alternate infinite;
        background: url("https://s2.ax1x.com/2019/05/13/E5VSLd.png") no-repeat center center fixed;
        background-size: cover;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }

        to {
            opacity: 1;
        }
    }

    @keyframes rotate {
        from {
            filter: hue-rotate(0deg);
        }

        to {
            filter: hue-rotate(360deg);
        }
    }
    </style>
</head>

<body>
    <div id="splash"></div>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

huehtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>

    button,
    [type="button"],
    [type="submit"] {
        outline: 0;
    }

    input.ui-button,
    button.ui-button {
        height: 20px;
        box-sizing: content-box;
    }

    .ui-button {
        display: inline-block;
        line-height: 20px;
        font-size: 14px;
        text-align: center;
        color: #4c5161;
        border: 1px solid #d0d0d5;
        border-radius: 4px;
        padding: 9px 15px;
        min-width: 50px;
        background-color: #fff;
        background-repeat: no-repeat;
        background-position: center;
        text-decoration: none;
        transition: border-color .15s, background-color .15s, opacity .15s;
        cursor: pointer;
        overflow: visible;
    }


    .ui-button-primary {
        border: 1px solid #2486ff;
        background-color: #2486ff;
        color: #fff;
    }

    .ui-button-primary:hover {
        background-color: #0160d5;
        border-color: #0160d5;
        color: #fff;
    }

    .ui-button-primary:not(.disabled):active,
    .ui-button-primary:not(.loading):active {
        background-color: #0057c3;
        border-color: #0057c3;
    }

    button {
        margin: 20px 50px;
    }

    </style>
</head>

<body>
    <div id="app">
        <button class='ui-button ui-button-primary'>原始色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(20deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(30deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(40deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(50deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(60deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(70deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(80deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(90deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(100deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(110deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(120deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(130deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(140deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(150deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(160deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(170deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(180deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(190deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(200deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(210deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(220deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(230deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(240deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(250deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(260deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(270deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(280deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(290deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(300deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(310deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(320deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(330deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(340deg);">其它色按钮</button>
        <button class="ui-button ui-button-primary" style="filter:hue-rotate(350deg);">其它色按钮</button>
    </div>
</body>
<script>
$(function() {
    console.log('hello world');
});
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

NewEchartDemoHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

    <!-- echarts -->
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="http://echarts.baidu.com/resource/echarts-gl-latest/dist/echarts-gl.min.js"></script>
    <script src="http://gallerybox.echartsjs.com/dep/echarts/map/js/china.js"></script>

	<!-- 百度地图插件 -->
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=1XjLLEhZhQNUzd93EjU5nOGQ"></script>
    <!-- 百度地图 - 聚合图相关的插件 -->
    <script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>
    
    <!-- echarts 百度地图扩展插件 -->
    <script src="http://echarts.baidu.com/examples/vendors/echarts/extension/bmap.js?_v_=1536959211921"></script>
</head>
<style>
	#main {
		width: 100`%; 
		height:100vh;
	}
</style>

<body>
    <div id="main"></div>
</body>

<script type="text/javascript">
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main'));

// 预定义配置
var option = {}

var baseURL = 'https://gallery.echartsjs.com'

//////////////////////////////////////////////
// 这里放置官方示例代码

//////////////////////////////////////////////

myChart.setOption(option);
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

csssearchtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <style id='search_result'> /* something code will setting here */ </style>
</head>

<body>
    <input type="text" id='search' autofocus />
	<ul>
		<li title='77774341'>77774341</li>
		<li title='14584144'>14584144</li>
		<li title='73423862'>73423862</li>
		<li title='45665803'>45665803</li>
		<li title='18754867'>18754867</li>
		<li title='61372466'>61372466</li>
		<li title='41944603'>41944603</li>
		<li title='53205384'>53205384</li>
		<li title='35774477'>35774477</li>
		<li title='15751022'>15751022</li>
		<li title='64247267'>64247267</li>
		<li title='81699912'>81699912</li>
		<li title='86101195'>86101195</li>
		<li title='79282658'>79282658</li>
		<li title='37371356'>37371356</li>
		<li title='57512286'>57512286</li>
		<li title='58434249'>58434249</li>
		<li title='45291094'>45291094</li>
		<li title='72808820'>72808820</li>
		<li title='76441497'>76441497</li>
		<li title='86552593'>86552593</li>
		<li title='79945580'>79945580</li>
	</ul>
</body>
<script>
window.onload = function () {
	var search = document.getElementById('search')
	var	result = document.getElementById('search_result')

	search.onkeyup = search.onkeydown = search.onchange = function () {
		result.innerHTML = this.value ? ``
			li:not([title*="${this.value}"]) {
				height: 0;
				display: block;
				font-size: 0;
			}
		`` : null
	}
}
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

tianMapHtml:
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/tianmap.zip")
return

d3bubblechart:
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/d3-bubble-chart.zip")
return

d3template:
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/docsify.zip")
return


tiandituhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no" />
    <title>天地图</title>
    <style>
    html, body, #container {
        padding: 0;
        margin: 0;
        height: 100`%;
        width: 100`%;
    }
    </style>
</head>

<body>
    <div id="container"></div>
</body>
<script src="http://api.tianditu.gov.cn/api?v=4.0&tk=63c5c4f101d68229494bb45d3bf60277"></script>
<script>
// http://lbs.tianditu.gov.cn/api/js4.0/examples.html
const map = new T.Map('container', {
    projection: 'EPSG:4326'
})
map.centerAndZoom(new T.LngLat(113.758806,23.024336), 15)
map.setStyle('indigo')
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

::video::
::vedio::
::vedio.js::
::video.js::
::vedio.html::
::video.html::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <link href="https://vjs.zencdn.net/7.5.4/video-js.css" rel="stylesheet">
</head>

<body>
    <video id='my-video' class='video-js' controls preload='auto' width='640' height='264' poster='MY_VIDEO_POSTER.jpg' data-setup='{}'>
        <source src='http://192.168.31.97:8080/20190520_104851.mp4' type='video/mp4'>
        <p class='vjs-no-js'>
            To view this video please enable JavaScript, and consider upgrading to a web browser that
            <a href='https://videojs.com/html5-video-support/' target='_blank'>supports HTML5 video</a>
        </p>
    </video>
    <script src='https://vjs.zencdn.net/7.5.4/video.js'></script>
</body>

</html>
)
code(Var)
return

videohtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <link href="https://vjs.zencdn.net/7.5.4/video-js.css" rel="stylesheet">
</head>

<body>
    <video id='my-video' class='video-js' controls preload='auto' width='640' height='264' poster='MY_VIDEO_POSTER.jpg' data-setup='{}'>
        <source src='http://192.168.31.97:8080/20190520_104851.mp4' type='video/mp4'>
        <p class='vjs-no-js'>
            To view this video please enable JavaScript, and consider upgrading to a web browser that
            <a href='https://videojs.com/html5-video-support/' target='_blank'>supports HTML5 video</a>
        </p>
    </video>
    <script src='https://vjs.zencdn.net/7.5.4/video.js'></script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

dgechartmaphtml:
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/map_demo.zip")
return

rightmenuhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    .menu {
        position: absolute;
        display: none;
    }

    .menu ul {
        list-style: none;
        background: #eee;
        padding: 0;
    }

    ul ul {
        display: none;
        position: absolute;
    }

    ul li {
        padding-left: 10px;
        padding-right: 20px;
        white-space: nowrap;
        height: 40px;
        line-height: 40px;
        box-sizing: border-box;
        border-bottom: 1px solid #999;
        cursor: pointer;
    }

    li:hover {
        background: #ccc;
    }

    li.hasNext::after {
        content: ' > ';
        position: absolute;
        right: 5px;
    }

    li.active>ul {
        display: block;
    }
    </style>
</head>

<body>
    <div id="app">
        <div class="menu">
            <ul>
                <li>春眠不觉晓，处处闻啼鸟。</li>
                <li>Any
                    <ul>
                        <li>lover</li>
                        <li>Gold
                            <ul>
                                <li>Dog</li>
                                <li>Cat</li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>华为
                    <ul>
                        <li>荣耀</li>
                        <li>青春
                            <ul>
                                <li>荷月</li>
                                <li>池塘</li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</body>
<script>
const liNodeList = document.querySelectorAll('li')
const menu = document.querySelector('.menu')

// 设置obj的宽度，拿到下面li标签里面最宽的，设置为ul的宽度
function setWidth(obj) {
    let maxWidth = 0

    for (i = 0; i < obj.children.length; i++) {
        let oLi = obj.children[i]
        let iWidth = oLi.clientWidth
        if (iWidth > maxWidth) maxWidth = iWidth
    }

    for (i = 0; i < obj.children.length; i++) {
        obj.children[i].style.width = maxWidth + "px"
    }
}

// 隐藏菜单方法
function hidden(target) {
    target.style.display = 'none'
    target.style.left = '-9999px'
    target.style.top = '-9999px'
}

Array.from(liNodeList).forEach(li => {
    const innerUlDom = li.querySelector('ul')
    // 当 li 下面有 ul标签的时候，添加一个小箭头的样式
    innerUlDom && li.classList.add('hasNext')

    li.addEventListener('mouseover', (e) => {
        if (innerUlDom) {
            li.classList.add('active')
            // 设置当前UL的宽度
            setWidth(innerUlDom)
            // 当前的top，就为li所在的top值
            let top = li.offsetTop
            // lef 就是li的宽度
            let left = li.offsetWidth
            innerUlDom.style.left = left + 'px'
            innerUlDom.style.top = top + 'px'
        }
        // 阻止冒泡，让逻辑正常
    }, true)

    // 为每一个li绑定一下事件
    li.onclick = (e) => {
        console.log('你点击了', e.target)
        e.stopPropagation()
        hidden(menu)
    }

    // 鼠标移出的时候，隐藏菜单
    li.onmouseout = () => {
        // 鼠标移开去掉 active 类
        li.classList.remove('active')
    }
})

window.onload = (e) => {
    // 这就是核心的拦截事件
    document.oncontextmenu = (e) => {
        // 拦截浏览器默认右键行为
        e.preventDefault()

        // 显示出菜单栏
        menu.style.display = 'block'

        const uls = document.querySelectorAll('ul')

        // 设置 ul 的宽度
        setWidth(uls[0])

        // 让菜单栏显示在鼠标所点的位置
        menu.style.left = e.pageX + 'px'
        menu.style.top = e.pageY + 'px'

        return false
    }

    // 当在其他地方点击的时候，隐藏菜单
    document.onclick = (e) => {
        console.log('你取消了菜单')
        hidden(menu)
    }
}
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

dropdivhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    .dialog {
        position: absolute;

        width: 480px;
        height: 300px;

        background: #eee;
    }

    .dialog-title {
        width: 480px;
        height: 40px;
        line-height: 40px;

        background: #999;
        text-align: center;
        cursor: move;
    }
    </style>
</head>

<body>
    <div id="app">
        <div class="dialog" id="canMove">
            <div class="dialog-title" id="canDrag">Title</div>
            <div class="content"></div>
        </div>
    </div>
</body>
<script>

// 定时器
let timer = null

const dragEle = document.getElementById('canDrag')
const canMove = document.getElementById('canMove')

// 禁止被选中
dragEle.onselectstart = canMove.onselectstart = () => false

// 记录当前鼠标移动的坐标点
const mouse = { x: 0, y: 0 }

// 鼠标按下时候距离 CanMove 左上角的距离
const distance = { topTop: 0, topLeft: 0 }

// 记录鼠标坐标
document.onmousemove = (e) => {
    mouse.x = e.pageX
    mouse.y = e.pageY
}

dragEle.onmousedown = (e) => {
    distance.topLeft = e.pageX - canMove.offsetLeft
    distance.topTop = e.pageY - canMove.offsetTop
    timer = setInterval(setPosition, 10)
}

// 鼠标弹起，清空定时器
document.onmouseup = document.ondrag = (e) => {
    clearInterval(timer)
    timer = null
}

function setPosition() {
    const maxX = (document.body.clientWidth || document.documentElement.clientWidth) - canMove.offsetWidth
    const maxY = (document.body.clientHeight || document.documentElement.clientHeight) - canMove.offsetHeight

    canMove.style.left = Math.max(Math.min((mouse.x - distance.topLeft), maxX), 0) + 'px'
    canMove.style.top = Math.max(Math.min((mouse.y - distance.topTop), maxY), 0) + 'px'
}


</script>

</html>
),  %name%
RunBy(name)
run, % name
return

AEhtml:
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/bodymovin-lottie.zip")
return

workerhtml:
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Worker.js</title>
</head>
<body>
    <div id="app"></div>
</body>
<script>
var worker = new Worker("worker.js")
var num = 1000
worker.postMessage(num)
</script>
</html>
---
// http://localhost/worker.js
onmessage = function (event) {
    console.log(event.data)
}
)
txtit(Var)
return

localForagehtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/localforage/1.7.3/localforage.min.js"></script>
    <script src="./data.js"></script>
</head>

<body>
    <div id="app"></div>
</body>
<script>
// https://localforage.github.io/localForage/#settings-api-config
localforage.config({
    driver: [localforage.WEBSQL,
             localforage.INDEXEDDB,
             localforage.LOCALSTORAGE],
    name: 'WebSQL-Rox',
    size: 1024 * 1024
});

localforage.setItem('key', data)
localforage.getItem('key').then(data => {
    console.log(data)
})
localforage.clear()
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

html2mdhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>
<title>Hello Strapdown</title>

<xmp theme="united" style="display:none;">
# Markdown text goes in here

## Chapter 1

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
et dolore magna aliqua. 

## Chapter 2

Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
culpa qui officia deserunt mollit anim id est laborum.
</xmp>

<script src="http://strapdownjs.com/v/0.2/strapdown.js"></script>
</html>
),  %name%
RunBy(name)
run, % name
return

webidehtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    </style>
</head>

<body>
</body>
<script>
/**
 * 加载script并且执行回调
 * @param {String} url 资源地址
 * @param {Function} cb 回调方法
 * https://www.cnblogs.com/_franky/archive/2010/06/20/1761370.html
 */
var onscriptload = function (url, cb) {
  var node = document.createElement("script")
  var head = document.getElementsByTagName('head')[0]
  var timeID
  var supportLoad = "onload" in node
  var onEvent = supportLoad ? "onload" : "onreadystatechange"
  node[onEvent] = function onLoad() {
      if (!supportLoad && !timeID && /complete|loaded/.test(node.readyState)) {
          timeID = setTimeout(onLoad)
          return
      }
      if (supportLoad || timeID) {
          clearTimeout(timeID)
          cb && cb()
      }
  }
  head.insertBefore(node, head.firstChild)
  node.src = url
}

// https://cdnjs.com/libraries/ace
onscriptload('https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.4/ace.js', function () {
	onscriptload('https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.4/mode-javascript.js', function () {
		onscriptload('https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.4/theme-monokai.js', function () {
			var div = document.createElement('div')
			div.style = 'position: absolute; top: 0; right: 0; bottom: 0; left: 0; z-index: 199307100337;'
			div.id = 'editor'
			document.body.insertBefore(div, document.body.firstChild) 

			var editor = ace.edit('editor');
			var JavaScriptMode = ace.require("ace/mode/javascript").Mode;
			editor.session.setMode(new JavaScriptMode());	

			editor.setTheme("ace/theme/monokai");

			document.addEventListener('keydown', event => {
				if (event.keyCode == 27) 
          div.style.display = div.style.display === 'none' ? 'block' : 'none'
			})
		})
	})
})
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

ajaxuploadhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <input type="file" name="" id="file">
</body>
<script>
document.getElementById('file').addEventListener('change', function(e) {
    const data  = new FormData()
    // https://www.cnblogs.com/qiumingcheng/p/6854933.html
    data.append('file', this.files[0])

    $.ajax({
        url: "http://192.168.8.89/index.php",
        type: "POST",
        data: data,
        processData: false,
        contentType: false,
        success: function(data) {
            
        },
        error: function(data) {
            
        }
    });
})
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

dgmap3Dhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>设置地图显示要素</title>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />
    <style>
    html,
    body,
    #container {
        width: 100`%;
        height: 100`%;
    }
    </style>
</head>

<body>
    <div id="container"></div>
    </div>
    <script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
    <script src="https://webapi.amap.com/maps?v=1.4.15&key=9f1c132e77dc10edf34fe44bec1208a9"></script>
    <script>
    //初始化地图
    var map = new AMap.Map('container', {
        resizeEnable: true, //是否监控地图容器尺寸变化
        zoom: 17,
        center: [113.758806, 23.024336],
        rotation: -15,
        pitch: 70,
        viewMode: '3D', //开启3D视图,默认为关闭
        features: ['bg', 'road', 'point'] // 'building' 
    });
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

prismhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.16.0/themes/prism-okaidia.min.css">
</head>

<body>
    <pre class="language-js"><code>
        $.ajax({
            url: "http://localhost:3000",
            type: "post",
            data: JSON.stringify({
                test: 123
            }),
            headers: {
                token: '123'
            },
            dataType: 'json',
            contentType: 'application/json;charset=utf-8',
            success: function (data) {
                console.log(20190614095436, data);
            },
            error: function(e, m){
               console.log('数据接口请求异常', e, m);
            }
        })
    </code></pre>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.16.0/prism.js"></script>
    <script>
        // 可以手动调用，也可以不要。
        Prism.highlightAll()
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

deepmergehtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src='https://unpkg.com/deepmerge@3.2.0/dist/umd.js'></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
    }

    #app {

    }
    </style>
</head>

<body>
    <div id="app"></div>
</body>
<script>
const storybook_json = {"name": "echarts-story-book", "version": "1.0.0", "description": "", "main": "index.js", "dependencies": {"_common-tags@1.8.0@common-tags": "^1.8.0", "_core-js@3.1.3@core-js": "^3.1.3", "_dom-walk@0.1.1@dom-walk": "^0.1.1", "_global@4.4.0@global": "^4.4.0", "_min-document@2.19.0@min-document": "^2.19.0", "_process@0.11.10@process": "^0.11.10", "_regenerator-runtime@0.12.1@regenerator-runtime": "^0.12.1", "highlight.js": "^9.15.8", "vue": "^2.6.10"}, "devDependencies": {"@babel/core": "^7.4.5", "@storybook/addon-actions": "^5.1.3", "@storybook/addon-info": "^5.1.4", "@storybook/addon-knobs": "^5.1.4", "@storybook/addon-links": "^5.1.3", "@storybook/addon-notes": "^5.1.4", "@storybook/addon-storysource": "^5.1.4", "@storybook/vue": "^5.1.3", "babel-loader": "^8.0.6", "babel-preset-vue": "^2.0.2", "css-loader": "^3.0.0", "html-loader": "^0.5.5", "markdown-loader": "^5.0.0", "storybook-readme": "^5.0.3", "style-loader": "^0.23.1", "vue-loader": "^15.7.0", "vue-template-compiler": "^2.6.10", "vuex": "^3.1.1"}, "scripts": {"start": "start-storybook"}, "keywords": [], "author": "", "license": "ISC"}
const my_project_json = {"name": "my-project", "version": "1.0.0", "description": "A Vue.js project", "author": "lizhaohong <928532756@qq.com>", "private": true, "scripts": {"dev": "webpack-dev-server --inline --host 0.0.0.0 --progress --config  build/webpack.dev.conf.js", "start": "npm run dev", "build": "node build/build.js"}, "dependencies": {"animate.css": "^3.7.0", "axios": "^0.18.0", "babel-polyfill": "^6.26.0", "compression-webpack-plugin": "^2.0.0", "echarts": "^4.2.0-rc.1", "element-ui": "^2.4.7", "fundebug-javascript": "^1.5.1", "jquery": "^3.3.1", "localforage": "^1.7.3", "moment": "^2.22.2", "node-sass": "^4.9.3", "nprogress": "^0.2.0", "quicklink": "^1.0.0", "sass-loader": "^7.1.0", "velocity-animate": "^1.5.2", "vue": "^2.5.2", "vue-awesome-swiper": "^3.1.3", "vue-count-to": "^1.0.13", "vue-router": "^3.0.1", "vuex": "^3.0.1", "whatwg-fetch": "^3.0.0"}, "devDependencies": {"autoprefixer": "^7.1.2", "babel-core": "^6.22.1", "babel-helper-vue-jsx-merge-props": "^2.0.0", "babel-loader": "^7.1.1", "babel-plugin-component": "^0.11.0", "babel-plugin-syntax-jsx": "^6.8.0", "babel-plugin-transform-runtime": "^6.22.0", "babel-plugin-transform-vue-jsx": "^3.3.0", "babel-preset-env": "^1.3.2", "babel-preset-es2015": "^6.24.1", "babel-preset-stage-2": "^6.22.0", "chalk": "^2.0.1", "copy-webpack-plugin": "^4.0.1", "css-loader": "^0.28.0", "extract-text-webpack-plugin": "^3.0.0", "file-loader": "^1.1.4", "friendly-errors-webpack-plugin": "^1.6.1", "html-webpack-plugin": "^2.30.1", "node-notifier": "^5.1.2", "optimize-css-assets-webpack-plugin": "^3.2.0", "ora": "^1.2.0", "page-skeleton-webpack-plugin": "^0.10.12", "portfinder": "^1.0.13", "postcss-import": "^11.0.0", "postcss-loader": "^2.0.8", "postcss-url": "^7.2.1", "rimraf": "^2.6.0", "semver": "^5.3.0", "shelljs": "^0.7.6", "uglifyjs-webpack-plugin": "^1.1.1", "url-loader": "^0.5.8", "vue-loader": "^13.3.0", "vue-style-loader": "^3.0.1", "vue-template-compiler": "^2.5.2", "webpack": "^3.6.0", "webpack-bundle-analyzer": "^2.9.0", "webpack-dev-server": "^2.9.1", "webpack-merge": "^4.1.0"}, "engines": {"node": ">= 6.0.0", "npm": ">= 3.0.0"}, "browserslist": ["last 99 versions"] }
const mergejson = deepmerge(storybook_json, my_project_json)
console.log(20190614144338, mergejson)
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

dom2imghtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/dom-to-image/2.6.0/dom-to-image.min.js"></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
    }

    #app {

    }

    .datav-btn {
        height: 26px;
        line-height: 26px;
        padding: 0 20px;
        font-size: 12px;

        color: #24b1ff;
        border: 1px solid #00baff;
        background: 0 0;

        text-align: center;
        display: inline-block;
        vertical-align: middle;
        transition: .3s ease;
        cursor: pointer;
        user-select: none;
        outline: 0;

        &:hover {
         color: #293f52;
         background-image: linear-gradient(-225deg,#00d3f1 0,#12b3ff 100`%);
         box-shadow: 0 0 15px 0 rgba(0,193,220,.37);
        }
    }
    </style>
</head>

<body>
    <div id="app">
        <button class='datav-btn'>123</button>
    </div>
</body>
<script>
    domtoimage.toPng(document.getElementById('app')).then(function (dataUrl) {
        var img = new Image();
        img.src = dataUrl;
        document.body.appendChild(img);
    }).catch(function (error) {
        console.error('oops, something went wrong!', error);
    });
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

dgmap3DZOOMhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>设置地图显示要素</title>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />
    <style>
    html,
    body,
    #container {
        width: 100`%;
        height: 100`%;
    }
    </style>
</head>

<body>
    <div id="container"></div>
    </div>
    <script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
    <script src="https://webapi.amap.com/maps?v=1.4.15&key=9f1c132e77dc10edf34fe44bec1208a9"></script>
    <script>
    //初始化地图
    var map = new AMap.Map('container', {
        resizeEnable: true, //是否监控地图容器尺寸变化
        zoom: 17,
        center: [113.758806, 23.024336],
        rotation: -15,
        pitch: 70,
        viewMode: '3D', //开启3D视图,默认为关闭
        features: ['bg', 'road', 'point'] // 'building'
    });

    map.on('zoomstart', e => {
        const v = event.wheelDelta
        console.log(20190709140120, v)
    })
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

echartciyunHTML:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <!-- https://github.com/ecomfe/echarts-wordcloud -->
    <script src='https://unpkg.com/echarts-wordcloud@1.1.3/dist/echarts-wordcloud.min.js'></script>
</head>
<style>
html,
body,
#main {
    width: 100`%;
    height: 100`%;
    margin: 0;
}
</style>
<div id='main'></div>
<script>
var chart = echarts.init(document.getElementById('main'));

var data = [{"name":"series","value":523.8988451981928},{"name":"xAxis","value":299.096974240797},{"name":"line","value":277.43467699622556},{"name":"legend","value":257.9030825717289},{"name":"data","value":246.33107802305418},{"name":"yAxis","value":239.37209528263733},{"name":"normal","value":222.4567373670665},{"name":"tooltip","value":208.37466256721328},{"name":"bar","value":207.52349264601347},{"name":"pie","value":197.30433345469126},{"name":"title","value":196.2065238466856},{"name":"label","value":193.6930561481232},{"name":"itemStyle","value":183.9483623194292},{"name":"textStyle","value":179.70531433432902},{"name":"grid","value":168.86681142249356},{"name":"toolbox","value":158.8143570336133},{"name":"dataZoom","value":156.03525242713584},{"name":"color","value":153.05554547287727},{"name":"type","value":151.34397906755325},{"name":"visualMap","value":148.99328843944616},{"name":"graph","value":148.97650821522163},{"name":"show","value":143.59665734271115},{"name":"map","value":142.42541907960108},{"name":"lineStyle","value":140.00357138301865},{"name":"markPoint","value":136.28646301082145},{"name":"axisLabel","value":132.34802605252563},{"name":"geo","value":130.01538370516005},{"name":"markLine","value":128.7555824032496},{"name":"radar","value":126.34872377669669},{"name":"name","value":124.16923934694937},{"name":"formatter","value":123.3450444890268},{"name":"feature","value":113.20335684068738},{"name":"axisLine","value":112.86274850454423},{"name":"gauge","value":110.95494581135173},{"name":"emphasis","value":109.78615577567146},{"name":"position","value":108.27280360275151},{"name":"scatter","value":103.52777405121778},{"name":"continuous","value":101.42977866484773},{"name":"timeline","value":100.5186549850325},{"name":"backgroundColor","value":97.05153270299239},{"name":"inside","value":94.40868604106298},{"name":"axisTick","value":93.9734004918413},{"name":"symbol","value":93.3702308018996},{"name":"interval","value":89.24124606929242},{"name":"nameTextStyle","value":86.46964785403026},{"name":"slider","value":85.06468127254695},{"name":"effectScatter","value":84.53993139339539},{"name":"splitLine","value":84.45708969648433},{"name":"radiusAxis","value":81.87795796183488},{"name":"left","value":80.46738469715541},{"name":"lines","value":80.01874780324921},{"name":"polar","value":79.24014134263012},{"name":"silent","value":75.78918128598566},{"name":"value","value":75.7099729229908},{"name":"angleAxis","value":73.95268757793728},{"name":"zlevel","value":73.21885003194191},{"name":"parallel","value":72.9314746868593},{"name":"areaStyle","value":72.86974680894672},{"name":"symbolSize","value":72.80109889280519},{"name":"axisPointer","value":72.42237223399962},{"name":"splitNumber","value":71.93747284969079},{"name":"gridIndex","value":71.73562573784382},{"name":"boundaryGap","value":71.22499561249548},{"name":"nameGap","value":69.9714227381436},{"name":"piecewise","value":69.8927750200262},{"name":"animation","value":69.57010852370435},{"name":"borderColor","value":69.3685807840985},{"name":"splitArea","value":69.10137480542626},{"name":"top","value":68.09552114493287},{"name":"min","value":67.08203932499369},{"name":"shadowBlur","value":67.02984409947557},{"name":"nameLocation","value":66.46803743153546},{"name":"width","value":65.86349520030045},{"name":"orient","value":64.8459713474939},{"name":"parallelAxis","value":63.474404290233394},{"name":"z","value":63.35613624582863},{"name":"treemap","value":62.16912416947821},{"name":"scale","value":62.120849961989414},{"name":"xAxisIndex","value":61.99193495931547},{"name":"trigger","value":61.96773353931867},{"name":"selectedMode","value":61.84658438426491},{"name":"labelLine","value":61.5223536610881},{"name":"shadowColor","value":61.40846847137616},{"name":"bottom","value":61.02458520956943},{"name":"inverse","value":60.876925020897694},{"name":"borderWidth","value":60.44832503882965},{"name":"coordinateSystem","value":60.18305409332431},{"name":"legendHoverLink","value":59.60704656330491},{"name":"padding","value":59},{"name":"animationDuration","value":58.52349955359813},{"name":"max","value":58.249463516842795},{"name":"fontSize","value":58.18934610390462},{"name":"fontStyle","value":58.1033561853358},{"name":"minInterval","value":57.37595315112421},{"name":"links","value":57.245087125446844},{"name":"magicType","value":57.23635208501674},{"name":"right","value":57.05260730238365},{"name":"itemGap","value":56.462376853972415},{"name":"candlestick","value":56.2672195865408},{"name":"heatmap","value":55.767373974394744},{"name":"opacity","value":55.65069631190611},{"name":"shadowOffsetX","value":55.190578906186516},{"name":"animationEasing","value":54.616847217685496},{"name":"sankey","value":54.15717865620402},{"name":"stack","value":53.91660226683428},{"name":"selected","value":53.67494760127857},{"name":"fontWeight","value":53.178943201233324},{"name":"icon","value":52.744667976962376},{"name":"dataView","value":52.478567053607705},{"name":"symbolRotate","value":52.459508194416},{"name":"saveAsImage","value":51.146847410177685},{"name":"align","value":51.068581339214816},{"name":"text","value":50.91168824543142},{"name":"symbolOffset","value":50.48762224545735},{"name":"yAxisIndex","value":50.28916384272063},{"name":"fontFamily","value":49.8998997994986},{"name":"shadowOffsetY","value":49.749371855331},{"name":"animationDelay","value":49.3051721424842},{"name":"center","value":49.24428900898052},{"name":"hoverAnimation","value":48.03123983409131},{"name":"animationDurationUpdate","value":47.52893855326458},{"name":"iconStyle","value":47.50789408087881},{"name":"funnel","value":47.30750469005948},{"name":"animationDelayUpdate","value":47.286361670147556},{"name":"animationEasingUpdate","value":47.042533945356304},{"name":"radius","value":45.858477951192405},{"name":"subtextStyle","value":45.45327270945405},{"name":"height","value":44.58699361921591},{"name":"regions","value":43.497126341863094},{"name":"showContent","value":43.04648650006177},{"name":"force","value":42.661458015403085},{"name":"roam","value":41.689327171351664},{"name":"itemWidth","value":41.617304093369626},{"name":"triggerOn","value":41.47288270665544},{"name":"containLabel","value":41.24318125460256},{"name":"barWidth","value":39},{"name":"polarIndex","value":38.157568056677825},{"name":"subtext","value":37.97367509209505},{"name":"target","value":37.8549864614954},{"name":"boxplot","value":37.33630940518894},{"name":"link","value":36.959437225152655},{"name":"scaleLimit","value":36.235341863986875},{"name":"smooth","value":35.98610843089316},{"name":"startAngle","value":35.958309192730404},{"name":"itemHeight","value":35.91656999213594},{"name":"alwaysShowContent","value":35.59494346111537},{"name":"nameMap","value":35.34119409414458},{"name":"showSymbol","value":35.31288716601915},{"name":"detail","value":34.72751070837067},{"name":"edgeLabel","value":34.46737587922817},{"name":"rotate","value":33.823069050575526},{"name":"barGap","value":33.075670817082454},{"name":"inRange","value":32.55764119219941},{"name":"length","value":32.55764119219941},{"name":"zoom","value":32.218007387174026},{"name":"clockwise","value":32.17141588429082},{"name":"margin","value":32.155870381627054},{"name":"categories","value":31.622776601683793},{"name":"transitionDuration","value":31.51190251317746},{"name":"roseType","value":31.12876483254676},{"name":"enterable","value":30.93541659651604},{"name":"showAllSymbol","value":30.692018506445613},{"name":"seriesIndex","value":30.577769702841312},{"name":"restore","value":30.528675044947494},{"name":"onZero","value":30.512292604784715},{"name":"effect","value":30.479501308256342},{"name":"extraCssText","value":30.01666203960727},{"name":"connectNulls","value":29.949958263743873},{"name":"coord","value":29.949958263743873},{"name":"showDelay","value":29.93325909419153},{"name":"calculable","value":29.647934160747187},{"name":"precision","value":29.631064780058107},{"name":"avoidLabelOverlap","value":29.49576240750525},{"name":"indicator","value":29.206163733020468},{"name":"layout","value":29.086079144497972},{"name":"barCategoryGap","value":28.75760768909681},{"name":"clipOverflow","value":28.74021572639983},{"name":"hideDelay","value":28.035691537752374},{"name":"start","value":27.910571473905726},{"name":"sampling","value":27.51363298439521},{"name":"barMaxWidth","value":27.331300737432898},{"name":"rippleEffect","value":26.888659319497503},{"name":"barBorderColor","value":26.851443164195103},{"name":"sublink","value":26.60826939130014},{"name":"valueIndex","value":26.5329983228432},{"name":"smoothMonotone","value":26.38181191654584},{"name":"x","value":26.153393661244042},{"name":"edgeSymbol","value":25.98076211353316},{"name":"selectedOffset","value":25.88435821108957},{"name":"subtarget","value":25.67099530598687},{"name":"option","value":25.573423705088842},{"name":"nodes","value":25.37715508089904},{"name":"filterMode","value":25.199206336708304},{"name":"areaColor","value":25.11971337416094},{"name":"realtime","value":25.11971337416094},{"name":"contoller","value":24.899799195977465},{"name":"pointer","value":24.289915602982237},{"name":"minAngle","value":24.289915602982237},{"name":"barMinHeight","value":23.979157616563597},{"name":"zoomLock","value":23.895606290697042}]
var maskImage = new Image();

var option = {
    series: [{
        type: 'wordCloud',
        sizeRange: [10, 100],
        rotationRange: [-90, 90],
        rotationStep: 45,
        gridSize: 2,
        shape: 'pentagon',
        maskImage: maskImage,
        drawOutOfBound: false,
        textStyle: {
            normal: {
                color: () => 'rgb(' + [Math.round(Math.random() * 160), Math.round(Math.random() * 160), Math.round(Math.random() * 160) ].join(',') + ')'
            },
            emphasis: {
                color: 'red'
            }
        },
        data: data
    }]
};

maskImage.onload = function() {
    option.series[0].maskImage
    chart.setOption(option);
}

maskImage.src = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAVAAAAEdCAMAAABt8M9ZAAAAM1BMVEUAAACpM0ypM0ypM0ypM0ypM0ypM0ypM0ypM0ypM0ypM0ypM0ypM0ypM0ypM0ypM0ypM0xYc4vQAAAAEHRSTlMA8BDAgGBA4DDQoCCwUJBwH2EXUQAACBdJREFUeNrsnQmy2zAMQylL3jfe/7T9aaaT+MeO4zQLKOIdASOJICjZ8lGKqkqpi7HVJSHGmFJZ9UIepBnTEHWfOqayEnKPppyiHqMdZqq6SjMPQZ8kTmMh5EJf7om5T0yNkBPN1OprqLtRvNNMtb6S4FrTPtX6ekLndO+XUd9FPbuzqf0U9K10rsxUNej7qUtxQtnqZwjJgzsta/0cIeV+mJa1fpgu51X6mJzc+A9StfodQpIM6aN+jzq7/qmY9LvEvNqnMejXmfI5SvuoCGSz72eA5XlmyGGRgizPM8H+IsVZnln4/GJQNGrLMVQFtjzP2LX5STGJNrd9gVSNlgSLLr+pFRh74XMJeXxe6MQWqMen1YO0U3xaO2F+0aoFzJQmI3qqBhseH7u82yv2DXh5t6aoLT3xFbWmJ7qi9vTEVtSinsiK2tQTV9HCqJ6qmIMRM37eSs9kV09MRS3kIdu0cNkTfl53n1awKNU6WImzVcN0zSw4FIYCpm2Awjzc+eYRAkxhsl6Q0ApTpbkwCQJ2O07QYzSPAxTnGJ01JwZ5AjpQZDdqORJZI/RyHDqmO0T5Jn1mG/7r+X1OFR6h0tvPmLByp5wsPYS9nzRPavkOjebKATPKioRbl/IJmUBipyxS+i16eQRaJmTrlPUCVW1kDy5Q7JY+8wW67+65QLGj5uwX6F6h5wLFLvQOFujOEmWTBN0u4X1J5B82O/pefVDKHZiDAueimQb1R8w9PROyc8o3WL6hkHVYkpDLUn6XRY5fwWWXBNwt5TvrPPKdPJpQXCvqasevjUK447H3vK8dv1XneWMZts57cvX3vD3ffKAO63xEy9cEWYXJHWaG52OYtGucGIzAXspxFIVekCU8QoEPUW9958YhymkSrBO1/bErwAjPXSP/7lGd+qSSC6xJyFVpVJ90soB9Emyv5C9quu2VWOSRU3v1SiVvoVCvlHKBYSiub/Lqmq59E10Tsm+ioCK0ochG1OX8g4KeMCKos4uM686ejRIFRYSCUlBsKOhf0D+Gp35J8gMFpaCwUFAKig0FpaDYjPIDBaWxh4WCmhCUeagwsYe+i+NYUDlBQdEF9TuXr+UEBUW/6ODzldLypRJv3wG38m4fgSwFZasE6+udvkW++RoWjSiqDfX6dva3DaURRbWhfi/ZJ7lA3wQ7AHHsm3pZwreJsN8W8/lsIcoClnnYmuQ1HhnlF3w+i/oNF5+Dz1auYVXC/vGXx6o0yhJWJeAj1GOv1MoNjERBXajH/wKspvVM8BDDZa+HaCc38BCFNU0OnWiQDZjag+54b8P5SjbgLBmzxnu7gzfJBsxE0cZzPiO8KOtwz7/8M5fFmIYYzqrHNBbc8/9jQvu51V+0qWez9GRJqgZdJZbc80+UpCrqJvXIPX/wqUK/U5Fjzzp/pEsqg+4QZu75LeJzTWJXsJ9/zDMVrT5EW7CfX6N++uphWzDD+9Pema03CsNQWJa8Y4Pf/2mn7cx0ScMSECQg/bfJDeezrcWStdCp965PixTVQtHleSZ0aYGiapYeGa7QZfa8NF7dLAWYpCttGqdm6cFMvQ9tCtPpnPkH83ZY2hRFMyTfidtn7XstIfkiM5hm0mLmTwxyODtePaf/DCwiZA3o/5GYvB3Uopy/eKaY0alz/0HPldYoWjf2jkE2FTT+ZN6oXpdoawH4VBh0ibbmgE8Fq9W3zSBjIwfBo+DlwqXMWYNMev/ZKmdLMWl7cmNt3iJt/iTW5i3SyjELa8BJQUWn7h1rIwdp96eHVdBUMC/au+9YBbVaLsrbalS1opm3XzMRUba1E2yX9nlFwGSHQkN63GuPmhxF1o75HQ898gLLG+uu74NlFLfp7b7PXJgqbdOXvV+zyihr0xsGr4mpFndolyDu/vBvQlHufb9/fiihpJg+wAiMmzOhpALHesCtRZGUyKMjHlsbJB2j/ogWoyjoGE1HZC9J0pXdcER+3QnyRk13QKt7kNS/lI64rnCSgvp8QJotiSp36pfqaQ4IcuMVTL3d/1N7WdU5efelE4TdKxOu+cxEvX0jU1hWAyDIeWrGP9g7m3r//ffaz4jqxDV/lw5GceZG/v7On/2kDr3Advo8IqkLN3JafPztBxL5QEGpv0Wyof2kRxilozaCEfrMiylD/JKn9r8+LHiYpBqWMhW8jKLvBPqg3aEgzNCNSAGSFR0lw+rXNEAV/Y3bYFJAFV3vSxYOQQGvYuvHcJsWl04R2BLrdKbdYHQuw0+M23Y5Sjrd5gcmbnwXOOsT2N8JcWvFzgArqVfIOHM8Y2vnUvaicviz4dE8OGaT1CHtYRV55AgV75A6WEecLfkRlsSfMe/zBMbRV/4qBykhy5hZB1vprnGQ9jxjZg3qGODZvph5cMQJFeuRpg62EZiHB3bnLsm1bHN7vQ6ubS14ts/vgY94VtuUkW09JQDx05VN5fv2gPCG7EWamTSwn4GB6EUaPOOHmwg7EM9k7i0yrqQQYR/cWXxS4lSgEMJe4CkCJ+OAkwo/EbfvLcKpqK/d4VA6OB0vfJSShzOC9jUlDeeU81UlDQ7OzKtJenI5X01SOr+cH7jXsPgnNUV3qU/3S00+oaM0RZdNex5hOJkbvwR0qT2HUuGixCcs0zBcbK/f4Eo7EJMjXB48SlOTL7vV5zVVNbeCdcfzNPUCdvodoqXGjinu2lZoBm+JU8xB5tK8wQ8ltK2k7FTMb6C3JbV1UD9cKExnJVabybSlpHcpRZ+YC4m+WluIQrsHEWVrvX/h8PwP8byyMUuatXkAAAAASUVORK5CYII=';

window.onresize = function() {
    chart.resize();
}
</script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

echartsZGDT:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>
<style>
html,
body,
#app {
    margin: 0;
    width: 100`%;
    height: 100`%;
}
</style>

<body>
    <div id="app"></div>
</body>
<script>
/*注：源码就是下面这些，只要复制到开发工具就行，然后把
地图json数据（下载地址：https://share.weiyun.com/5x12K4r）的路径放对，
并且要导入echarts就可以渲染出来地图了*/
const ROOT = 'https://gallery.echartsjs.com/asset/get/s/'

var zhongguo = ROOT + "data-1528971808162-BkOXf61WX.json"
var hainan = ROOT + "data-1528971693521-r18nZaybm.json"
var xizang = ROOT + "data-1528970391616-BJeoh2JW7.json"
var zhejiang = ROOT + "data-1528970380661-SkH93h1-m.json"
var yunnan = ROOT + "data-1528970362114-r1MK321WQ.json"
var xinjiang = ROOT + "data-1528970349852-H18u22kWX.json"
var tianjin = ROOT + "data-1528970339987-Hk2wnh1ZX.json"
var sichuan = ROOT + "data-1528970319531-Hy_8n3y-m.json"
var shanxi = ROOT + "data-1528970298351-HyzB32JZ7.json"
var shangxi = ROOT + "data-1528970273819-B1cmnnk-Q.json"
var shanghai = ROOT + "data-1528970254015-HJLfhnyWX.json"
var shangdong = ROOT + "data-1528970240242-Byu-hhybX.json"
var qinghai = ROOT + "data-1528970209434-Bytyh3kZ7.json"
var ningxia = ROOT + "data-1528970150882-SJJ2j2yWQ.json"
var neimenggu = ROOT + "data-1528970102554-HyJKo31bQ.json"
var liaoning = ROOT + "data-1528970052404-BJhHihkbQ.json"
var jilin = ROOT + "data-1528970024458-rkeEjhy-Q.json"
var jiangxi = ROOT + "data-1528969991368-BkkMi31Zm.json"
var jiangsu = ROOT + "data-1528969864934-BJ-qchkWQ.json"
var hunan = ROOT + "data-1528969831328-Sykuqh1bX.json"
var hubei = ROOT + "data-1528969822119-Bk8v93kZ7.json"
var henan = ROOT + "data-1528969802719-HyXIqhk-m.json"
var heilongjiang = ROOT + "data-1528969789631-ryLHcnJbm.json"
var hebei = ROOT + "data-1528969737020-HJWMqhy-Q.json"
var guizhou = ROOT + "data-1528969712502-Hy_g92yZQ.json"
var guangxi = ROOT + "data-1528969706270-HJMg5hkWQ.json"
var guangdong = ROOT + "data-1528969700634-BkT1qn1WQ.json"
var gansu = ROOT + "data-1528969694316-BJLkc2yZX.json"
var chongqing = ROOT + "data-1528969687660-r1ey9nkbX.json"
var aomen = ROOT + "data-1528969612486-rJ4qtnyZm.json"
var anhui = ROOT + "data-1528969607452-Hkk5tnJ-Q.json"
var beijing = ROOT + "data-1528969604941-Hk6Ytn1WQ.json"
var fujian = ROOT + "data-1528969599839-S1OFFn1ZQ.json"
var xianggang = ROOT + "data-1528969589857-S1ROthJWm.json"

echarts.extendsMap = function(id, opt) {
    // 实例
    var chart = this.init(document.getElementById(id));

    var curGeoJson = {};

    var cityMap = { '中国': zhongguo, '上海': shanghai, '河北': hebei, '山西': shangxi, '内蒙古': neimenggu, '辽宁': liaoning, '吉林': jilin, '黑龙江': heilongjiang, '江苏': jiangsu, '浙江': zhejiang, '安徽': anhui, '福建': fujian, '江西': jiangxi, '山东': shangdong, '河南': henan, '湖北': hubei, '湖南': hunan, '广东': guangdong, '广西': guangxi, '海南': hainan, '四川': sichuan, '贵州': guizhou, '云南': yunnan, '西藏': xizang, '陕西': shanxi, '甘肃': gansu, '青海': qinghai, '宁夏': ningxia, '新疆': xinjiang, '北京': beijing, '天津': tianjin, '重庆': chongqing, '香港': xianggang, '澳门': aomen };

    var levelColorMap = {
        '1': 'rgba(241, 109, 115, .8)',
        '2': 'rgba(255, 235, 59, .7)',
        '3': 'rgba(147, 235, 248, 1)'
    };

    var defaultOpt = {
        mapName: 'china', // 地图展示
        goDown: false, // 是否下钻
        bgColor: '#404a59', // 画布背景色
        activeArea: [], // 区域高亮,同echarts配置项
        data: [],
        // 下钻回调(点击的地图名、实例对象option、实例对象)
        callback: function(name, option, instance) {}
    };

    if (opt) opt = this.util.extend(defaultOpt, opt);

    // 层级索引
    var name = [opt.mapName];

    var idx = 0;

    var pos = { leftPlus: 115, leftCur: 150, left: 198, top: 50 };

    var line = [[0, 0], [8, 11], [0, 22] ];

    var style = {font: '18px "Microsoft YaHei", sans-serif', textColor: '#eee', lineColor: 'rgba(147, 235, 248, .8)'};

    var handleEvents = {
        /**
         * i 实例对象
         * o option
         * n 地图名
         **/
        resetOption: function(i, o, n) {
            var breadcrumb = this.createBreadcrumb(n);
            var j = name.indexOf(n);
            var l = o.graphic.length;
            if (j < 0) {
                o.graphic.push(breadcrumb);
                o.graphic[0].children[0].shape.x2 = 145;
                o.graphic[0].children[1].shape.x2 = 145;
                if (o.graphic.length > 2) {
                    var cityData = [];
                    var cityJson;
                    for (var x = 0; x < opt.data.length; x++) {
                        if (n === opt.data[x].city) {
                            $([opt.data[x]]).each(function(index, data) {
                                cityJson = { city: data.city, name: data.name, value: data.value, crew: data.crew, company: data.company, position: data.position, region: data.region };
                                cityData.push(cityJson)
                            })
                        }
                    }
                    if (cityData != null) {
                        o.series[0].data = handleEvents.initSeriesData(cityData);
                    } else {
                        o.series[0].data = [];
                    }
                }
                name.push(n);
                idx++;
            } else {
                o.graphic.splice(j + 2, l);
                if (o.graphic.length <= 2) {
                    o.graphic[0].children[0].shape.x2 = 60;
                    o.graphic[0].children[1].shape.x2 = 60;
                    o.series[0].data = handleEvents.initSeriesData(opt.data);
                };
                name.splice(j + 1, l);
                idx = j;
                pos.leftCur -= pos.leftPlus * (l - j - 1);
            };

            o.geo.map = n;
            o.geo.zoom = 0.4;
            i.clear();
            i.setOption(o);
            this.zoomAnimation();
            opt.callback(n, o, i);
        },

        /**
         * name 地图名
         **/
        createBreadcrumb: function(name) {
            var cityToPinyin = { '中国': 'zhongguo', '上海': 'shanghai', '河北': 'hebei', '山西': 'shangxi', '内蒙古': 'neimenggu', '辽宁': 'liaoning', '吉林': 'jilin', '黑龙江': 'heilongjiang', '江苏': 'jiangsu', '浙江': 'zhejiang', '安徽': 'anhui', '福建': 'fujian', '江西': 'jiangxi', '山东': 'shangdong', '河南': 'henan', '湖北': 'hubei', '湖南': 'hunan', '广东': 'guangdong', '广西': 'guangxi', '海南': 'hainan', '四川': 'sichuan', '贵州': 'guizhou', '云南': 'yunnan', '西藏': 'xizang', '陕西': 'shanxi', '甘肃': 'gansu', '青海': 'qinghai', '宁夏': 'ningxia', '新疆': 'xinjiang', '北京': 'beijing', '天津': 'tianjin', '重庆': 'chongqing', '香港': 'xianggang', '澳门': 'aomen' };
            var breadcrumb = {
                type: 'group',
                id: name,
                left: pos.leftCur + pos.leftPlus,
                top: pos.top + 3,
                children: [{
                    type: 'polyline',
                    left: -90,
                    top: -5,
                    shape: { points: line },
                    style: { stroke: '#fff', key: name },
                    onclick: function() {
                        var name = this.style.key;
                        handleEvents.resetOption(chart, option, name);
                    }
                }, {
                    type: 'text',
                    left: -68,
                    top: 'middle',
                    style: {
                        text: name,
                        textAlign: 'center',
                        fill: style.textColor,
                        font: style.font
                    },
                    onclick: function() {
                        var name = this.style.text;
                        handleEvents.resetOption(chart, option, name);
                    }
                }, {
                    type: 'text',
                    left: -68,
                    top: 10,
                    style: {
                        name: name,
                        text: cityToPinyin[name] ? cityToPinyin[name].toUpperCase() : '',
                        textAlign: 'center',
                        fill: style.textColor,
                        font: '12px "Microsoft YaHei", sans-serif',
                    },
                    onclick: function() {
                        // console.log(this.style);
                        var name = this.style.name;
                        handleEvents.resetOption(chart, option, name);
                    }
                }]
            }
            pos.leftCur += pos.leftPlus;

            return breadcrumb;
        },

        // 设置effectscatter
        initSeriesData: function(data) {
            var temp = [];
            for (var i = 0; i < data.length; i++) {
                var geoCoord = geoCoordMap[data[i].name];
                if (geoCoord) {
                    temp.push({
                        name: data[i].name,
                        value: geoCoord.concat(data[i].value),
                        crew: data[i].crew,
                        company: data[i].company,
                        position: data[i].position,
                        region: data[i].region
                    });
                }
            };
            return temp;
        },
        zoomAnimation: function() {
            var count = null;
            var zoom = function(per) {
                if (!count) count = per;
                count = count + per;
                // console.log(per,count);
                chart.setOption({
                    geo: {
                        zoom: count
                    }
                });
                if (count < 1) window.requestAnimationFrame(function() {
                    zoom(0.2);
                });
            };
            window.requestAnimationFrame(function() {
                zoom(0.2);
            });
        }
    };

    var option = {
        backgroundColor: opt.bgColor,
        graphic: [{
                type: 'group',
                left: pos.left,
                top: pos.top - 4,
                children: [
                    { type: 'line', left: 0, top: -20, shape: { x1: 0, y1: 0, x2: 60, y2: 0 }, style: { stroke: style.lineColor, } },
                    { type: 'line', left: 0, top: 20, shape: { x1: 0, y1: 0, x2: 60, y2: 0 }, style: { stroke: style.lineColor, } }
                ]
            },
            {
                id: name[idx],
                type: 'group',
                left: pos.left + 2,
                top: pos.top,
                children: [{
                    type: 'polyline',
                    left: 90,
                    top: -12,
                    shape: { points: line },
                    style: { stroke: 'transparent', key: name[0] },
                    onclick: function() {
                        var name = this.style.key;
                        handleEvents.resetOption(chart, option, name);
                    }
                }, {
                    type: 'text',
                    left: 0,
                    top: 'middle',
                    style: { text: '中国', textAlign: 'center', fill: style.textColor, font: style.font },
                    onclick: function() {
                        handleEvents.resetOption(chart, option, '中国');
                    }
                }, {
                    type: 'text',
                    left: 0,
                    top: 10,
                    style: { text: 'China', textAlign: 'center', fill: style.textColor, font: '12px "Microsoft YaHei", sans-serif', },
                    onclick: function() {
                        handleEvents.resetOption(chart, option, '中国');
                    }
                }]
            }
        ],
        geo: {
            map: opt.mapName,
            roam: true,
            zoom: 1,
            label: {
                normal: {
                    show: true,
                    textStyle: { color: '#fff' }
                },
                emphasis: {
                    textStyle: { color: '#fff' }
                }
            },
            itemStyle: {
                borderColor: 'rgba(147, 235, 248, 1)',
                borderWidth: 1,
                areaColor: {
                    type: 'radial',
                    x: 0.5,
                    y: 0.5,
                    r: 0.8,
                    colorStops: [{
                        offset: 0,
                        color: 'rgba(147, 235, 248, 0)'
                    }, {
                        offset: 1,
                        color: 'rgba(147, 235, 248, .2)'
                    }],
                    globalCoord: false
                },
                shadowColor: 'rgba(128, 217, 248, 1)',
                shadowOffsetX: -2,
                shadowOffsetY: 2,
                shadowBlur: 10
            },
            // 鼠标hover网格时的配置
            emphasis: {

            },
            regions: opt.activeArea.map(function(item) {
                if (typeof item !== 'string') {
                    return {
                        name: item.name,
                        itemStyle: { normal: { areaColor: item.areaColor || '#389BB7' } },
                        label: { normal: { show: item.showLabel, textStyle: { color: '#fff' } } }
                    }
                } else {
                    return {
                        name: item,
                        itemStyle: { normal: { borderColor: '#91e6ff', areaColor: '#389BB7' } }
                    }
                }
            })
        },
        series: [{
            type: 'effectScatter',
            coordinateSystem: 'geo',
            showEffectOn: 'render',
            rippleEffect: {
                period: 15,
                scale: 4,
                brushType: 'fill'
            },
            hoverAnimation: true,
            itemStyle: {
                normal: {
                    color: '#FFC848',
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: handleEvents.initSeriesData(opt.data)
        }]
    };

    chart.setOption(option);

    chart.on('click', function(params) {
        var _self = this;
        if (opt.goDown && params.name !== name[idx]) {
            if (cityMap[params.name]) {
                var url = cityMap[params.name];
                $.get(url, function(response) {
                    curGeoJson = response;
                    echarts.registerMap(params.name, response);
                    handleEvents.resetOption(_self, option, params.name);
                });
            }
        }
    });

    return chart;
};

$.getJSON(zhongguo, function(geoJson) {
    echarts.registerMap('中国', geoJson);
    var myChart = echarts.extendsMap('app', {
        bgColor: '#154e90', // 画布背景色
        mapName: '中国', // 地图名
        goDown: true, // 是否下钻
        // 下钻回调
        callback: function(name, option, instance) {},
    });
    window.onresize = myChart.resize
})
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

echartsZGDTchun:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>
<style>
html,
body,
#app {
    margin: 0;
    width: 100`%;
    height: 100`%;
}
</style>

<body>
    <div id="app"></div>
</body>
<script>
// 省份数据
const province = [{ "name": "黑龙江", "value": 7 }, { "name": "吉林", "value": 7 }, { "name": "辽宁", "value": 7 }, { "name": "上海", "value": 1 }, { "name": "江苏", "value": 1 }, { "name": "浙江", "value": 9 }, { "name": "安徽", "value": 5 }, { "name": "福建", "value": 9 }, { "name": "江西", "value": 4 }, { "name": "山东", "value": 5 }, { "name": "台湾", "value": 11 }, { "name": "北京", "value": 6 }, { "name": "天津", "value": 6 }, { "name": "山西", "value": 8 }, { "name": "河北", "value": 6 }, { "name": "内蒙古", "value": 8 }, { "name": "河南", "value": 3 }, { "name": "湖北", "value": 4 }, { "name": "湖南", "value": 4 }, { "name": "广东", "value": 2 }, { "name": "广西", "value": 2 }, { "name": "海南", "value": 2 }, { "name": "香港", "value": 2 }, { "name": "澳门", "value": 2 }, { "name": "重庆", "value": 10 }, { "name": "四川", "value": 10 }, { "name": "贵州", "value": 10 }, { "name": "云南", "value": 10 }, { "name": "西藏", "value": 10 }, { "name": "陕西", "value": 3 }, { "name": "甘肃", "value": 3 }, { "name": "青海", "value": 3 }, { "name": "宁夏", "value": 8 }, { "name": "新疆", "value": 8 }, { "name": "南海诸岛", "value": 11 }]
// 散点 - 示例数据
const demo = const demo = [{ "name": "中西", "value": "33.96", }, { "name": "江苏", "value": "55.50", }, { "name": "华中", "value": "88.00", }, { "name": "西南", "value": "95.73", }, { "name": "东南", "value": "85.35", }, { "name": "华南", "value": "61.26", } ]
// 散点对应的坐标位置
const geoCoordMap = { "东北": [123.38, 41.8], "北方": [111.65, 40.82], "华北": [116.46, 39.92], "华东": [117, 36.65], "中西": [113.65, 34.76], "江苏": [118.78, 32.04], "华中": [114.31, 30.52], "西南": [104.06, 30.67], "东南": [119.3, 26.08], "华南": [113.23, 23.16], "河南1": [112.586911, 32.718346], "河南2": [112.812566, 32.70498], "河南3": [113.361286, 33.632491], };

// 异步请求中国地图数据
// 地图json数据（下载地址：https://share.weiyun.com/5x12K4r）
$.getJSON("https://gallery.echartsjs.com/asset/get/s/data-1528971808162-BkOXf61WX.json", geoJson => {
    // 注册地图
    echarts.registerMap('china', geoJson);

    // 初始化
    const chart = echarts.init(document.getElementById('app'));

    window.onresize = chart.resize

    // 初始化散点数据
    const initSeriesData = data => data.map(_ => ({ name: _.name, value: geoCoordMap[_.name].concat(_.value) }))

    chart.setOption({
        backgroundColor: '#154e90',
        tooltip: {
            show: true,
            alwaysShowContent: false,
            backgroundColor: 'rgba(50,50,50,0.7)',
            hideDelay: 100,
            triggerOn: 'mousemove',
            enterable: true,
            formatter: params => '大区名称：' + params.name + '<br/>' + '年累容量：' + params.value[2] + ' MW'
        },
        geo: {
            map: 'china',
            roam: true,
            zoom: 1,
            label: {normal: {show: true, textStyle: {color: '#fff', fontSize: 16 } }, emphasis: {textStyle: {color: '#fff'} } },
            itemStyle: {
                normal: {
                    borderColor: 'rgba(255, 255, 255, .5)',
                    borderWidth: 1,
                    areaColor: {type: 'radial', x: 0.5, y: 0.5, r: 0.8, colorStops: [{offset: 0, color: 'rgba(147, 235, 248, 0)'}, {offset: 1, color: 'rgba(147, 235, 248, .5)'}], globalCoord: false },
                    shadowColor: 'rgba(255, 255, 255, .5)', shadowOffsetX: -2, shadowOffsetY: 2, shadowBlur: 10
                },
                emphasis: {
                    areaColor: 'rgba(249,157,51, .9)',
                    borderWidth: 0
                }
            },
        },
        series: [{
            type: 'effectScatter',
            coordinateSystem: 'geo',
            showEffectOn: 'render',
            hoverAnimation: true,
            rippleEffect: {scale: 7, period: 4, brushType: 'fill'},
            itemStyle: {color: '#FABC61', shadowBlur: 10, shadowColor: '#333'},
            data: initSeriesData(demo)
        }, {
            name: "map",
            type: 'map',
            mapType: 'china',
            geoIndex: 0,
            label: { normal: { show: true }, emphasis: { show: true } },
            tooltip: { show: false, },
            data: province,
        }],
        visualMap: {
            min: 0,
            max: 11,
            calculable: true,
            seriesIndex: '1',
            show: false,
            inRange: {color: ["#ffffff", "#ffc188", "#479fd2", "#fba853", "#48c7c0", "#fa8737", "#4bbdd6", "#ff6f5b", "#F4D5B1", "#ADE1E3", "#F4B387", "#F0F3F4"] }
        },
    });

})
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

skeletonHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    html,
    body {
        margin: 0;
        padding: 0;
    }

    .skeleton-list {
        height: 115px;
        width: 700px;
        margin: 20px;
        padding: 20px;
        box-shadow: 0 2px 12px 0 rgba(0,0,0,.1);
    }

    .skeleton-list .skeleton-row:first-of-type {
        width: 40`%;
    }

    .skeleton-list .skeleton-row:nth-of-type(2), .skeleton-list .skeleton-row:nth-of-type(3) {
        width: 80`%;
    }

    .skeleton-list .skeleton-row {
        height: 1.2rem;
        margin-bottom: 1.5em;
        background: linear-gradient(90deg, #fff, #c6cace, #fff);
        background-size: 480px 480px;
        animation: skeleton 1.5s linear infinite;
    }

    @keyframes skeleton {
        0`% {
            background-position: 0 0;
        }
        100`% {
            background-position: 480px 0;
        }
    }
    </style>
</head>

<body>
    <div class="skeleton-list shadow">
        <div class="skeleton-row"></div>
        <div class="skeleton-row"></div>
        <div class="skeleton-row"></div>
    </div>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

sandianchart:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <div id="app" style="width: 600px; height:400px;"></div>
</body>
<script>
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('app'))

// 随机配色1
const colors1 = ["#FFEE7D","#448EF6", "#769353", "#6DB193", "#FDBE34", "#75C2F6"];

// 随机配色2
const colors2 = ["#79DC96","#6E7DA2", "#346473", "#B689B0", "#FFE981", "#E4F9F5"];

// 获取 Series
const getSeries = data => data.map((_, index) => ({
    name: _.name,
    data: _.data,
    type: 'scatter',
    symbolSize: data => Math.sqrt(data[2]) * 2,
    label: {
        normal: { show: true, formatter: "", position: 'top', },
        emphasis: { show: true, formatter: param => param.data[3], position: 'top' }
    },
    itemStyle: {
        shadowBlur: 10,
        shadowColor: 'rgba(25, 100, 150, 0.5)',
        shadowOffsetY: 5,
        color: new echarts.graphic.RadialGradient(0.4, 0.3, 1, [
            { offset: 0, color: colors1[index] },
            { offset: 1, color: colors2[index] }
        ])
    }
}))

const data = [{
        name: '15届',
        data: [
            [66, 0.1935483870967742, 341, "土木工程学院"],
            [300, 0.7537688442211056, 398, "新闻与传播学院"],
            [118, 0.5728155339805825, 206, "化学化工学院"],
            [37, 0.22424242424242424, 165, "物理与电子工程学院"],
            [67, 0.4785714285714286, 140, "建筑与城市规划学院"],
            [167, 0.5921985815602837, 282, "美术与设计学院"],
            [120, 0.2146788990825688, 109, "生命科学学院"],
            [7, 0.07142857142857142, 98, "体育学院"],
        ]
    },
    {
        name: '14届',
        data: [
            [98, 0.6901408450704225, 142, "法学院"],
            [223, 0.2121212121212121, 165, "公共管理学院"],
            [168, 0.835820895522388, 201, "人文学院"],
            [47, 0.2974683544303797, 158, "生命科学学院"],
            [16, 0.15384615384615385, 104, "体育学院"],
            [165, 0.8918918918918919, 185, "外国语学院"],
            [235, 0.7704918032786885, 305, "新闻与传播学院"],
            [210, 0.5108108108108109, 111, "音乐舞蹈学院"],
        ]
    },
    {
        name: '13届',
        data: [
            [82, 0.5616438356164384, 146, "数学与信息科学学院"],
            [172, 0.6539923954372624, 263, "美术与设计学院"],
            [175, 0.8293838862559242, 211, "人文学院"],
            [213, 0.7526501766784452, 283, "新闻与传播学院"],
            [72, 0.35467980295566504, 203, "生命科学学院"],
            [270, 0.3649122807017544, 285, "土木工程学院"],
            [25, 0.10909090909090909, 110, "体育学院"],
            [160, 0.2962962962962963, 108, "音乐舞蹈学院"],
        ]
    },
]


var option = {
    tooltip: {
        trigger: "item",
        formatter: function(params) {
            return params.value[3] + ":" + parseInt(params.value[1] * 1000) / 10 + "`%"
        }
    },
    title: {
        text: "广州大学数据分析",
        subtext: "各学院人数比例及基数-Acring",
        left: "center"
    },
    legend: {
        right: 10,
        top: 5,
        data: data.map(_ => _.name)
    },
    grid: {
        top: '20`%',
        bottom: '10`%',
    },
    xAxis: {
        name: "数量",
        splitLine: {
            lineStyle: {
                type: 'dashed'
            }
        }
    },
    yAxis: {
        name: "占比",
        splitLine: {
            lineStyle: {
                type: 'dashed'
            }
        },
        scale: true
    },
    series: getSeries(data)
};

myChart.setOption(option);
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

yibiaopan:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <div id="app" style="width: 600px; height:400px;"></div>
</body>
<script>
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('app'))
var highlight = 'white';

this.demo = {
    data: {
        name: '项目进度',
        value: 60,
        unit: '`%',
        pos: ['50`%', '50`%'],
        range: [0, 100],
        colora: 'rgba(193,136,244,0.9)',
        colorb: 'rgba(242,166,200,0.6)'
    }
}

var option = {
    backgroundColor: '#212121',
    series: [
        // 内侧指针、数值显示
        {
            name: this.demo.data.name,
            type: 'gauge',
            center: this.demo.data.pos,
            radius: '60`%',
            startAngle: 225,
            endAngle: -45,
            min: 0,
            max: 100,
            axisLine: {
                show: true,
                lineStyle: {
                    width: 2,
                    color: [
                        [
                            this.demo.data.value / 100, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                        offset: 0,
                                        color: 'rgba(255,255,255,0)',
                                    },
                                    {
                                        offset: 1,
                                        color: 'white',
                                    }
                                ]
                            `)
                        ],
                        [
                            1, 'rgba(255,255,255, 0)'
                        ]
                    ]
                }
            },
            axisTick: {
                show: 0,
            },
            splitLine: {
                show: 0,
            },
            axisLabel: {
                show: 0
            },
            pointer: {
                show: 0,
            },
            detail: {
                show: 0
            },
            data: [{
                value: this.demo.data.value,
            }]
        },
        // 外围刻度
        {
            type: 'gauge',
            center: this.demo.data.pos,
            radius: '50`%', // 1行3个
            splitNumber: this.demo.data.splitNum || 10,
            min: 0,
            max: 100,
            startAngle: 225,
            endAngle: -45,
            axisLine: {
                show: true,
                lineStyle: {
                    width: 1,
                    color: [
                        [1, 'rgba(0,0,0,0)']
                    ]
                }
            }, //仪表盘轴线
            axisTick: {
                show: true,
                lineStyle: {
                    color: 'rgba(255,255,255,0.6)',
                    width: 1
                },
                length: -6
            }, //刻度样式
            splitLine: {
                show: true,
                length: 10,
                lineStyle: {
                    color: 'rgba(255,255,255,0.6)'
                }
            }, //分隔线样式
            axisLabel: {
                show: true,
                distance: 2,
                textStyle: {
                    color: highlight,
                    fontSize: '12',
                    fontWeight: 'bold'
                }
            },
            pointer: {
                show: 0
            },
            detail: {
                show: 0
            }
        },
        // 内侧指针、数值显示
        {
            name: this.demo.data.name,
            type: 'gauge',
            center: this.demo.data.pos,
            radius: '54`%',
            startAngle: 225,
            endAngle: -45,
            min: 0,
            max: 100,
            axisLine: {
                show: true,
                lineStyle: {
                    width: 50,
                    color: [
                        [
                            this.demo.data.value / 100, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                        offset: 0,
                                        color: 'rgba(0,0,0, 0)',
                                    },
                                    {
                                        offset: 1,
                                        color: this.demo.data.colorb,
                                    }
                                ]
                            `)
                        ],
                        [
                            1, 'rgba(255,255,255, 0)'
                        ]
                    ]
                }
            },
            axisTick: {
                show: 0,
            },
            splitLine: {
                show: 0,
            },
            axisLabel: {
                show: 0
            },
            pointer: {
                show: true,
                length: '102`%',
                width: 3
            },
            title: {
                show: true,
                offsetCenter: [0, '65`%'],
                color: 'white',
                fontSize: 20,
                borderRadius: 21,
                padding: 5
            },
            detail: {
                show: true,
                offsetCenter: [0, 0],
                textStyle: {
                    fontSize: 25,
                    color: '#fff'
                },
                formatter: [
                    '{value}' + (this.demo.data.unit || ''),
                ].join('\n'),

                rich: {
                    name: {
                        fontSize: 20,
                        lineHeight: 10,
                        color: '#ddd',
                        padding: [30, 0, 0, 0]
                    }
                }
            },
            itemStyle: {
                normal: {
                    color: highlight,
                }
            },
            data: [{
                value: this.demo.data.value,
                name: this.demo.data.name
            }]
        }

    ]
};

myChart.setOption(option);
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

reactHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>reactjs-slot-layout example</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />
</head>

<body>
    <!-- We will put our React component inside this div. -->
    <div id="root"></div>
    <!-- Load React. -->
    <script type="text/javascript">
    process = {
        env: {
            NODE_ENV: "development"
        }
    };
    </script>
    <!-- Note: when deploying, replace "development.js" with "production.min.js". -->
    <script src="https://unpkg.com/react@latest/umd/react.development.js" crossorigin></script>
    <script src="https://unpkg.com/react-dom@latest/umd/react-dom.development.js" crossorigin></script>
    <script src="https://unpkg.com/babel-standalone@latest/babel.min.js"></script>
    <script src="https://unpkg.com/react-router-dom/umd/react-router-dom.js" crossorigin></script>
    <script src="https://unpkg.com/reactjs-slot-layout@0/bundles/index.umd.js" crossorigin="anonymous"></script>
    <!-- Load our React component. -->
    <script type="text/babel" src="app.jsx"></script>
</body>

</html>
),  %name%

jsname := A_Desktop . "/app.jsx"

FileAppend,
(
const Router = ReactRouterDOM.Router;
const BrowserRouter = ReactRouterDOM.BrowserRouter;
const HashRouter = ReactRouterDOM.HashRouter;
const Route = ReactRouterDOM.Route;
const Link = ReactRouterDOM.Link;
const Page = ReactjsSlotLayout.Page;
const Section = ReactjsSlotLayout.Section;
const Slot = ReactjsSlotLayout.Slot;
const LayoutProvider = ReactjsSlotLayout.Provider;

const HeaderMenu = () => (
  <div className="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <Link className="my-0 mr-md-auto font-weight-normal h5" to={``/``}>
      Home
    </Link>
    <nav className="my-2 my-md-0 mr-md-3">
      <Link className="p-2 text-dark" to={``/one-column``}>
        OneColumn
      </Link>
      <Link className="p-2 text-dark" to={``/two-column-right``}>
        TwoColumnRight
      </Link>
      <Link className="p-2 text-dark" to={``/two-column-left``}>
        TwoColumnLeft
      </Link>
      <Link className="p-2 text-dark" to={``/three-column``}>
        ThreeColumn
      </Link>
    </nav>
  </div>
`);

const Footer = () => (
  <div className="row">
    <div className="col-12 col-md">
      <small className="d-block mb-3 text-muted">©2019 website.com</small>
    </div>
    <div className="col-6 col-md">
      <h5>Features</h5>
      <ul className="list-unstyled text-small">
        <li>
          <a className="text-muted" href="#">
            Link
          </a>
        </li>
      </ul>
    </div>
    <div className="col-6 col-md">
      <h5>Resources</h5>
      <ul className="list-unstyled text-small">
        <li>
          <a className="text-muted" href="#">
            Link
          </a>
        </li>
      </ul>
    </div>
    <div className="col-6 col-md">
      <h5>About</h5>
      <ul className="list-unstyled text-small">
        <li>
          <a className="text-muted" href="#">
            Link
          </a>
        </li>
      </ul>
    </div>
  </div>
`);

const OneColumnLayout = ({ sections }) => (
  <React.Fragment>
    <Slot sections={sections} name="header" component="<>">
      <HeaderMenu />
    </Slot>
    <Slot
      sections={sections}
      name="content-container"
      component="div"
      className="container"
    >
      <Slot sections={sections} name="content" component="<>" />
    </Slot>
    <Slot
      sections={sections}
      name="footer-container"
      component="div"
      className="container"
    >
      <Slot
        sections={sections}
        name="footer-tag"
        component="footer"
        className="pt-4 my-md-5 pt-md-5 border-top"
      >
        <Slot sections={sections} name="footer" component="<>">
          <Footer />
        </Slot>
      </Slot>
    </Slot>
  </React.Fragment>
`);

const TwoColumnRightLayout = ({ sections }) => (
  <React.Fragment>
    <Slot sections={sections} name="header" component="<>">
      <HeaderMenu />
    </Slot>
    <div className="container">
      <div className="row">
        <Slot
          sections={sections}
          name="content"
          component="div"
          className="col-md-8"
        />
        <Slot
          sections={sections}
          name="right-column"
          component="div"
          className="col-md-4"
        />
      </div>
    </div>
    <Slot
      sections={sections}
      name="footer-container"
      component="div"
      className="container"
    >
      <Slot
        sections={sections}
        name="footer-tag"
        component="footer"
        className="pt-4 my-md-5 pt-md-5 border-top"
      >
        <Slot sections={sections} name="footer" component="<>">
          <Footer />
        </Slot>
      </Slot>
    </Slot>
  </React.Fragment>
`);

const TwoColumnLeftLayout = ({ sections }) => (
  <React.Fragment>
    <Slot sections={sections} name="header" component="<>">
      <HeaderMenu />
    </Slot>
    <div className="container">
      <div className="row">
        <Slot
          sections={sections}
          name="left-column"
          component="div"
          className="col-md-4"
        />
        <Slot
          sections={sections}
          name="content"
          component="div"
          className="col-md-8"
        />
      </div>
    </div>
    <Slot
      sections={sections}
      name="footer-container"
      component="div"
      className="container"
    >
      <Slot
        sections={sections}
        name="footer-tag"
        component="footer"
        className="pt-4 my-md-5 pt-md-5 border-top"
      >
        <Slot sections={sections} name="footer" component="<>">
          <Footer />
        </Slot>
      </Slot>
    </Slot>
  </React.Fragment>
`);

const ThreeColumnLayout = ({ sections }) => (
  <React.Fragment>
    <Slot sections={sections} name="header" component="<>">
      <HeaderMenu />
    </Slot>
    <div className="container">
      <div className="row">
        <Slot
          sections={sections}
          name="column-1"
          component="div"
          className="col-md-3"
        />
        <Slot
          sections={sections}
          name="column-2"
          component="div"
          className="col-md-6"
        />
        <Slot
          sections={sections}
          name="column-3"
          component="div"
          className="col-md-3"
        />
      </div>
    </div>
    <Slot
      sections={sections}
      name="footer-container"
      component="div"
      className="container"
    >
      <Slot
        sections={sections}
        name="footer-tag"
        component="footer"
        className="pt-4 my-md-5 pt-md-5 border-top"
      >
        <Slot sections={sections} name="footer" component="<>">
          <Footer />
        </Slot>
      </Slot>
    </Slot>
  </React.Fragment>
`);

const layouts = {
  OneColumn: OneColumnLayout,
  TwoColumnRight: TwoColumnRightLayout,
  TwoColumnLeft: TwoColumnLeftLayout,
  ThreeColumn: ThreeColumnLayout
};

const Home = () => (
  <React.Fragment>
    <Page layout={"OneColumn"}>
      <Section slot="content">
        <h3 className="text-center">Home Content Example</h3>
        <h4 className="text-center">
          Change layout when you browse different routers
        </h4>
      </Section>
    </Page>
  </React.Fragment>
`);

const OneColumnPage = () => (
  <React.Fragment>
    <Page layout={"OneColumn"}>
      <Section slot="content">
        <h3 className="text-center">One Column Content Example</h3>
      </Section>
      <Section slot="footer">
        <h3 className="text-center text-danger">
          Override / Change Footer Content Section
        </h3>
        <pre>
          <code>
            &#x3C;Section slot=&#x27;footer&#x27;&#x3E; &#x3C;h3
            className=&#x27;text-center&#x27;&#x3E;Override / Change Footer
            Content Section&#x3C;/h3&#x3E; &#x3C;/pre&#x3E; &#x3C;/Section&#x3E;
          </code>
        </pre>
      </Section>
    </Page>
  </React.Fragment>
`);

const TwoColumnRight = () => (
  <React.Fragment>
    <Page layout={"TwoColumnRight"}>
      <Section slot="right-column">
        <h3>Right column</h3>
      </Section>
      <Section slot="content">
        <h3>Two Column Right Main Content Example</h3>
      </Section>
    </Page>
  </React.Fragment>
`);

const TwoColumnLeft = () => (
  <React.Fragment>
    <Page layout={"TwoColumnLeft"}>
      <Section slot="left-column">
        <h3>Left column</h3>
      </Section>
      <Section slot="content">
        <h3>Two Column Left Main Content Example</h3>
      </Section>
      <Section slot="footer">
        <h3 className="text-center text-danger">
          Override / Change Footer Content Section
        </h3>
      </Section>
    </Page>
  </React.Fragment>
`);

const ThreeColumn = () => (
  <React.Fragment>
    <Page layout={"ThreeColumn"}>
      <Section slot="column-1">
        <h3>Left column</h3>
      </Section>
      <Section slot="column-2">
        <h3>Middle / Main Column</h3>
      </Section>
      <Section slot="column-3">
        <h3>Right Column</h3>
      </Section>
    </Page>
  </React.Fragment>
`);

class App extends React.Component {
  render() {
    return (
      <React.Fragment>
        <Route exact path="/" component={Home} />
        <Route path="/one-column" component={OneColumnPage} />
        <Route path="/two-column-right" component={TwoColumnRight} />
        <Route path="/two-column-left" component={TwoColumnLeft} />
        <Route path="/three-column" component={ThreeColumn} />
      </React.Fragment>
    `);
  }
}

ReactDOM.render(
  <HashRouter>
    <LayoutProvider value={layouts}>
      <App />
    </LayoutProvider>
  </HashRouter>,
  document.getElementById("root")
`);
),  %jsname%

RunBy(name)
run, % name
return

dialogHTML:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>CodePen - &lt;dialog&gt;</title>
    <style>
        dialog {
          padding: 0;
          border: 0;
          border-radius: 0.6rem;
          box-shadow: 0 0 1em black;
        }

        dialog + .backdrop {
          position: fixed;
          top: 0;
          right: 0;
          bottom: 0;
          left: 0;
          background-color: rgba(0, 0, 0, 0.4);
        }

        dialog[open] {
            animation: slide-up 0.4s ease-out;
        }

        dialog {
          display: none;
          position: absolute;
          margin: 0 auto;
          max-width: 80vw;
          background-color: white;
        }

        dialog[open] {
          display: block;
        }

        .close {
          position: absolute;
          top: 0.2em;
          right: 0.2em;
          padding: 0.3em;
          line-height: 0.6;
          background-color: transparent;
          border: 0;
          font-size: 2em;
        }

        .modal-header,
        .modal-body,
        .modal-footer {
          padding: 1em;
        }

        .modal-header {
          margin: 0;
          padding-bottom: 0.6em;
          background-color: #ddedfd;
          border-top-left-radius: 0.6rem;
          border-top-right-radius: 0.6rem;
          border-bottom: 1px solid #78a4d3;
        }

        .modal-footer {
          border-top: 1px solid #78a4d3;
        }

        dialog button {
          padding: 0.4em 1em 0.2em;
          font-family: Glober, Helvetica, sans-serif;
        }

        @keyframes slide-up {
          0`% {
            opacity: 0;
            -webkit-transform: translate(0, 15px);
                    transform: translate(0, 15px);
          }
          100`% {
            opacity: 1;
            -webkit-transform: translate(0, 0);
                    transform: translate(0, 0);
          }
        }
    </style>
</head>

<body translate="no">
    <button id="open-modal" type="button">Show me the modal</button>
    <dialog id="demo-modal">
        <h3 class="modal-header">A native modal dialog box</h3>
        <div class="modal-body">
            <p>Finally, HTML has a native dialog box element! This is fantastic.</p>
            <p>And a polyfill makes this usable today.</p>
        </div>
        <footer class="modal-footer">
            <button id="like-it" type="button">I like it</button>
            <button id="love-it" type="button">I love it</button>
        </footer>
        <button id="close" class="close" type="button">&times;</button>
    </dialog>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/dialog-polyfill/0.4.9/dialog-polyfill.min.js'></script>
    <script id="rendered-js">
    const modal = document.getElementById('demo-modal');
    const open = document.getElementById('open-modal');
    const close = document.getElementById('close');
    const likeIt = document.getElementById('like-it');
    const loveIt = document.getElementById('love-it');
    const returnSpan = document.getElementById('return-value');

    dialogPolyfill.registerDialog(modal);
    open.addEventListener('click', () => {
        modal.showModal();
    });

    likeIt.addEventListener('click', () => {
        modal.close('Like it');
    });

    loveIt.addEventListener('click', () => {
        modal.close('Love it');
    });

    close.addEventListener('click', () => {
        modal.close('cancelled');
    });

    modal.addEventListener('cancel', () => {
        modal.close('cancelled');
    });

    modal.addEventListener('click', event => {
        if (event.target === modal) {
            modal.close('cancelled');
        }
    });

    modal.addEventListener('close', () => {
        returnSpan.innerHTML = modal.returnValue;
    });
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

quickbianimhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"

CSS =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    html,
    body {
        margin: 0;
        padding: 0;
    }

    .animation-box {
        position: relative;
        margin: 0 auto;
        width: 1258px;
        height: 592px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/animation-bg.png');
        background-repeat: no-repeat;
        background-size: contain
    }

    .animation-box div {
        position: absolute
    }

    .animation-box .factory-lights {
        left: 522px;
        top: 151px;
        width: 475.82px;
        height: 347.8px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/factory-lights.gif');
        background-repeat: no-repeat;
        background-size: contain
    }

    .animation-box .datasource-base-shell {
        left: 75px;
        top: 156px;
        width: 321.9px;
        height: 283.42px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/datasource-base-shell.gif');
        background-repeat: no-repeat;
        background-size: contain
    }

    .animation-box .dataset-base {
        left: 280px;
        top: 375px;
        width: 296.74px;
        height: 182.78px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/dataset-base.gif');
        background-repeat: no-repeat;
        background-size: contain
    }

    .animation-box .dataset-base .dataset-conveyor {
        left: 73px;
        top: -151px;
        width: 276.02px;
        height: 223.48px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/conveyor.gif');
        background-repeat: no-repeat;
        background-size: contain
    }

    .animation-box .worksheet-base {
        left: 456px;
        top: 70px;
        width: 162.8px;
        height: 156.14px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -13.32px -291.56px;
        background-repeat: no-repeat
    }

    .animation-box .worksheet-base .worksheet-updown {
        left: 37px;
        top: -21px;
        width: 86.58px;
        height: 110.26px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/worksheet-updown.gif');
        background-repeat: no-repeat;
        background-size: contain
    }

    .animation-box .fullscreen-base {
        left: 595px;
        top: 65px;
        width: 210.9px;
        height: 122.1px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -199.06px -307.1px;
        background-repeat: no-repeat
    }

    .animation-box .fullscreen-base .fullscreen-computer {
        left: 50px;
        top: -64px;
        width: 110.26px;
        height: 140.6px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -432.9px -288.6px;
        background-repeat: no-repeat
    }

    .animation-box .fullscreen-base .fullscreen-computer .fullscreen-computer-scale {
        left: 22px;
        top: 15px;
        width: 76.96px;
        height: 82.88px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/fullscreen-computer-scale.gif');
        background-repeat: no-repeat;
        background-size: contain
    }

    .animation-box .dashboard-base {
        left: 516px;
        top: 153px;
        width: 281.94px;
        height: 99.9px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -814px -53.28px;
        background-repeat: no-repeat
    }

    .animation-box .dashboard-base .dashboard-updown {
        left: 114px;
        top: -31px;
        width: 76.22px;
        height: 91.02px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/dashboard-updown.gif');
        background-repeat: no-repeat;
        background-size: contain
    }

    .animation-box .data-display {
        left: 706px;
        top: 284px
    }

    .animation-box .data-display .laptop {
        width: 271.58px;
        height: 257.52px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -566.1px -239.02px;
        background-repeat: no-repeat
    }

    .animation-box .data-display .laptop .laptop-light-data {
        top: 29px;
        left: 23px;
        width: 122.1px;
        height: 123.58px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/laptop-light-data.gif');
        background-repeat: no-repeat;
        background-size: contain
    }

    .animation-box .data-display .email-sender {
        left: 159px;
        top: -32px;
        width: 376.65999999999997px;
        height: 216.07999999999998px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -846.56px -180.56px;
        background-repeat: no-repeat
    }

    .animation-box .data-display .email-sender .sendmail-gif {
        top: -55px;
        left: 53px;
        width: 227.18px;
        height: 224.22px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sendmail.gif');
        background-repeat: no-repeat;
        background-size: contain
    }

    .hover-container.step-1 {
        top: 288px;
        left: 10px
    }

    .hover-container.step-1 .hover-trigger {
        left: 56px;
        top: -14px;
        width: 233px;
        height: 152px
    }

    .hover-container.step-2 {
        top: 389px;
        left: 224px
    }

    .hover-container.step-2 .hover-trigger {
        left: 55px;
        top: -1px;
        width: 274px;
        height: 151px
    }

    .hover-container.step-3-left .hover-trigger {
        left: 0;
        top: -9px;
        width: 140px;
        height: 102px
    }

    .hover-container.step-3-right .hover-trigger {
        left: 41px;
        top: -66px;
        width: 140px;
        height: 140px
    }

    .hover-container.step-3-bottom .hover-trigger {
        left: 33px;
        top: 7px;
        width: 244px;
        height: 92px
    }

    .hover-container.step-4-laptop {
        left: -56px;
        top: 106px
    }

    .hover-container.step-4-laptop .hover-trigger {
        left: 30px;
        top: -23px;
        width: 303px;
        height: 177px
    }

    .hover-container.step-4-sendmail {
        top: 37px;
        left: -1px
    }

    .hover-container.step-4-sendmail .hover-trigger {
        left: 38px;
        top: -52px;
        width: 282px;
        height: 185px
    }

    .create-container {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 100vh;
        overflow: auto;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/creation-bg-repeat.jpg')
    }

    .step-label {
        font-size: 14px
    }

    .step-label>i {
        position: absolute;
        display: block
    }

    .step-label .label-text {
        display: inline-block;
        -webkit-transform-origin: left top;
        transform-origin: left top;
        -webkit-transform: rotateX(56deg) rotateY(2deg) rotateZ(38deg) translateX(25px) translateY(-22px);
        transform: rotateX(56deg) rotateY(2deg) rotateZ(38deg) translateX(25px) translateY(-22px);
        font-size: 16px
    }

    .step-label.one {
        top: 388px;
        left: 45px
    }

    .step-label.one>i {
        top: -39px;
        left: -13px;
        width: 22.2px;
        height: 41.44px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -13.32px -591.26px;
        background-repeat: no-repeat
    }

    .step-label.two {
        top: 491px;
        left: 260px
    }

    .step-label.two>i {
        top: -66px;
        left: -10px;
        width: 22.2px;
        height: 41.44px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -45.14px -591.26px;
        background-repeat: no-repeat
    }

    .step-label.three {
        top: 417px;
        left: 522px
    }

    .step-label.three>i {
        top: -53px;
        left: 1px;
        width: 22.2px;
        height: 41.44px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -76.96px -591.26px;
        background-repeat: no-repeat
    }

    .step-label.four {
        top: 442px;
        left: 975px
    }

    .step-label.four>i {
        top: -8px;
        left: -15px;
        width: 20.72px;
        height: 34.78px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -108.78px -591.26px;
        background-repeat: no-repeat
    }

    .step-label.four .label-text {
        -webkit-transform: rotateX(56deg) rotateY(2deg) rotateZ(-44deg) translateX(25px) translateY(22px);
        transform: rotateX(56deg) rotateY(2deg) rotateZ(-44deg) translateX(25px) translateY(22px)
    }

    .outside-label {
        font-size: 14px
    }

    .outside-label.worksheet {
        top: 101px;
        left: 311px
    }

    .outside-label.worksheet .link-line {
        left: 61px;
        top: 11px;
        width: 78.44px;
        height: 25.16px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -129.5px -684.5px;
        background-repeat: no-repeat
    }

    .outside-label.dashboard {
        top: 241px;
        left: 842px
    }

    .outside-label.dashboard .link-line {
        left: -86px;
        top: -10px;
        width: 78.44px;
        height: 25.16px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -21.46px -746.66px;
        background-repeat: no-repeat
    }

    .outside-label.fullscreen {
        top: 91px;
        left: 895px
    }

    .outside-label.fullscreen .link-line {
        left: -87px;
        top: 10px;
        width: 78.44px;
        height: 25.16px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -21.46px -684.5px;
        background-repeat: no-repeat
    }

    .workspace-modal-content {
        text-align: center;
        margin-bottom: 15px;
        padding-top: 5px
    }

    .workspace-modal-content .perm-list {
        color: #17b4d6
    }

    .hover-container .hover-shape {
        opacity: 0;
        transition: transform .5s ease;
    }

    .hover-container .hover-trigger {
        cursor: pointer;
        z-index: 99
    }

    .hover-container .hover-trigger:hover~.hover-shape.layer-1 {
        opacity: 1;
        -webkit-transform: translateY(-15px);
        transform: translateY(-15px)
    }

    .hover-container .hover-trigger:hover~.hover-shape.layer-2 {
        opacity: .7;
        -webkit-transform: translateY(-7.5px);
        transform: translateY(-7.5px)
    }

    .hover-container .hover-trigger:hover~.hover-shape.layer-3 {
        opacity: .3
    }

    .hover-container.diamond .hover-shape {
        width: 378.14px;
        height: 180.56px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -250.85999999999999px -529.1px;
        background-repeat: no-repeat
    }

    .hover-container.left-cornor .hover-shape {
        width: 162.8px;
        height: 133.94px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -651.2px -529.84px;
        background-repeat: no-repeat
    }

    .hover-container.right-cornor .hover-shape {
        width: 210.9px;
        height: 99.9px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -836.9399999999999px -529.84px;
        background-repeat: no-repeat
    }

    .hover-container.bottom-cornor .hover-shape {
        width: 281.94px;
        height: 77.7px;
        background-image: url('http://g.alicdn.com/qbi/qbi/3.3.32/release/sprites.png');
        background-size: 1258px;
        background-position: -923.52px -421.8px;
        background-repeat: no-repeat
    }
    </style>
</head>
)

FileAppend,
(
%CSS%
<body>
    <div id="app">
        <div class="create-container">
            <div class="animation-box">
                <div class="factory-lights"></div>
                <qbi-hover-shape wrapclass="step-1">
                    <div class="hover-container step-1 diamond">
                        <div class="hover-trigger"></div>
                        <div class="hover-shape layer-3"></div>
                        <div class="hover-shape layer-2"></div>
                        <div class="hover-shape layer-1"></div>
                    </div>
                </qbi-hover-shape>
                <qbi-hover-shape wrapclass="step-2">
                    <div class="hover-container step-2 diamond">
                        <div class="hover-trigger"></div>
                        <div class="hover-shape layer-3"></div>
                        <div class="hover-shape layer-2"></div>
                        <div class="hover-shape layer-1"></div>
                    </div>
                </qbi-hover-shape>
                <div class="datasource-base-shell"></div>
                <div class="dataset-base">
                    <div class="dataset-conveyor"></div>
                </div>
                <div class="worksheet-base">
                    <qbi-hover-shape shape="left-cornor" wrapclass="step-3-left">
                        <div class="hover-container step-3-left left-cornor">
                            <div class="hover-trigger"></div>
                            <div class="hover-shape layer-3"></div>
                            <div class="hover-shape layer-2"></div>
                            <div class="hover-shape layer-1"></div>
                        </div>
                    </qbi-hover-shape>
                    <div class="worksheet-updown"></div>
                </div>
                <div class="fullscreen-base">
                    <qbi-hover-shape shape="right-cornor" wrapclass="step-3-right">
                        <div class="hover-container step-3-right right-cornor">
                            <div class="hover-trigger"></div>
                            <div class="hover-shape layer-3"></div>
                            <div class="hover-shape layer-2"></div>
                            <div class="hover-shape layer-1"></div>
                        </div>
                    </qbi-hover-shape>
                    <div class="fullscreen-computer">
                        <div class="fullscreen-computer-scale"></div>
                    </div>
                </div>
                <div class="dashboard-base">
                    <qbi-hover-shape shape="bottom-cornor" wrapclass="step-3-bottom">
                        <div class="hover-container step-3-bottom bottom-cornor">
                            <div class="hover-trigger"></div>
                            <div class="hover-shape layer-3"></div>
                            <div class="hover-shape layer-2"></div>
                            <div class="hover-shape layer-1"></div>
                        </div>
                    </qbi-hover-shape>
                    <div class="dashboard-updown"></div>
                </div>
                <div class="data-display">
                    <qbi-hover-shape wrapclass="step-4-laptop">
                        <div class="hover-container step-4-laptop diamond">
                            <div class="hover-trigger"></div>
                            <div class="hover-shape layer-3"></div>
                            <div class="hover-shape layer-2"></div>
                            <div class="hover-shape layer-1"></div>
                        </div>
                    </qbi-hover-shape>
                    <div class="laptop">
                        <div class="laptop-light-data"></div>
                    </div>
                    <div class="email-sender">
                        <qbi-hover-shape wrapclass="step-4-sendmail">
                            <div class="hover-container step-4-sendmail diamond">
                                <div class="hover-trigger"></div>
                                <div class="hover-shape layer-3"></div>
                                <div class="hover-shape layer-2"></div>
                                <div class="hover-shape layer-1"></div>
                            </div>
                        </qbi-hover-shape>
                        <div class="sendmail-gif"></div>
                    </div>
                </div>
                <div class="step-label one"><i></i><span class="label-text">获取数据</span></div>
                <div class="step-label two"><i></i><span class="label-text">创建数据集</span></div>
                <div class="step-label three"><i></i><span class="label-text">数据分析</span></div>
                <div class="step-label four"><i></i><span class="label-text">数据展示</span></div>
                <div class="outside-label worksheet"> 电子表格 <div class="link-line"></div>
                </div>
                <div class="outside-label dashboard"> 仪表板 <div class="link-line"></div>
                </div>
                <div class="outside-label fullscreen"> 全屏模式 <div class="link-line"></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
),  %name%
RunBy(name)
run, % name
return

dataSetBar2:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    myChart.setOption({
        dataset: {
            source: {
                '时间': ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                '数值': [220, 182, 191, 234, 290, 330, 310],
                '数值2': [220, 182, 191, 234, 290, 330, 310],
            }
        },
        /* 
        { 
              dataset: { 
                  source: {...rows, ...values}
              }
        }
         */
        /* 
        {
            "dataset":
            {
                "source":
                {
                    "TB_0_TOWN": ["厚街", "大朗", "麻涌", "长安", "黄江", "虎门"],
                    "TB_0_FISHERY": ["16", "16", "16", "16", "16", "16"]
                    "TB_0_FISHERY2": ["16", "16", "16", "16", "16", "16"]
                }
            }
        }
         */
        xAxis: {
            type: 'category',
            show: true,
            axisLabel: {
                fontSize: '12',
                color: '#333',
                fontWeight: 'normal',
            },
        },
        yAxis: {
            axisLine: {
                show: false
            },
            axisTick: {
                show: false
            },
            axisLabel: {
                fontSize: '12',
                color: '#333',
                fontWeight: 'normal',
            },
        },
        tooltip: {},
        series: [
            { type: 'bar' },
            { type: 'bar' },
        ]
    });
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

dataSetBar:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    myChart.setOption({
        dataset: {
            source: {
                '时间': ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                '数值': [220, 182, 191, 234, 290, 330, 310],
            }
        },
        /* 
        { 
              dataset: { 
                  source: {...rows, ...values}
              }
        }
         */
        /* 
        {
            "dataset":
            {
                "source":
                {
                    "TB_0_TOWN": ["厚街", "大朗", "麻涌", "长安", "黄江", "虎门"],
                    "TB_0_FISHERY": ["16", "16", "16", "16", "16", "16"]
                    "TB_0_FISHERY2": ["16", "16", "16", "16", "16", "16"]
                }
            }
        }
         */
        xAxis: {
            type: 'category',
            show: true,
            axisLabel: {
                fontSize: '12',
                color: '#333',
                fontWeight: 'normal',
            },
        },
        yAxis: {
            axisLine: {
                show: false
            },
            axisTick: {
                show: false
            },
            axisLabel: {
                fontSize: '12',
                color: '#333',
                fontWeight: 'normal',
            },
        },
        tooltip: {},
        series: [{
            type: 'bar',
            barWidth: 25,
            itemStyle: {
                normal: {
                    color: new echarts.graphic.LinearGradient(
                        0, 0, 0, 1,
                        [
                            { offset: 0, color: '#83bff6' },
                            { offset: 0.5, color: '#188df0' },
                            { offset: 1, color: '#188df0' }
                        ]
                    `)
                },
                emphasis: {
                    color: new echarts.graphic.LinearGradient(
                        0, 0, 0, 1,
                        [
                            { offset: 0, color: '#2378f7' },
                            { offset: 0.7, color: '#2378f7' },
                            { offset: 1, color: '#83bff6' }
                        ]
                    `)
                }
            },
        }]
    });
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

hackdiguo:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    html,
    body {
        height: 100`%;
        margin: 0;
        overflow: hidden;
    }

    body {
        display: flex;
        align-items: center;
        justify-content: center;
        background: #000;
    }

    #app {
        display: flex;
    }

    #app p {
        line-height: 1;
    }

    #app span {
        display: block;
        width: 2vmax;
        height: 2vmax;
        font-size: 2vmax;
        color: #9bff9b11;
        text-align: center;
        font-family: "Helvetica Neue", Helvetica, sans-serif;
    }
    </style>
</head>

<body>
    <div id="app">
    </div>
</body>
<script>
function r(from, to) {
    return ~~(Math.random() * (to - from + 1) + from);
}

function pick() {
    return arguments[r(0, arguments.length - 1)];
}

function getChar() {
    return String.fromCharCode(pick(
        r(0x3041, 0x30ff),
        r(0x2000, 0x206f),
        r(0x0020, 0x003f)
    `)`);
}

function loop(fn, delay) {
    let stamp = Date.now();

    function _loop() {
        if (Date.now() - stamp >= delay) {
            fn();
            stamp = Date.now();
        }
        requestAnimationFrame(_loop);
    }
    requestAnimationFrame(_loop);
}
class Char {
    constructor() {
        this.element = document.createElement('span');
        this.mutate();
    }
    mutate() {
        this.element.textContent = getChar();
    }
}
class Trail {
    constructor(list = [], options) {
        this.list = list;
        this.options = Object.assign({ size: 10, offset: 0 }, options);
        this.body = [];
        this.move();
    }
    traverse(fn) {
        this.body.forEach((n, i) => {
            let last = (i == this.body.length - 1);
            if (n) fn(n, i, last);
        });
    }
    move() {
        this.body = [];
        let { offset, size } = this.options;
        for (let i = 0; i < size; ++i) {
            let item = this.list[offset + i - size + 1];
            this.body.push(item);
        }
        this.options.offset =
            (offset + 1) `% (this.list.length + size - 1);
    }
}
class Rain {
    constructor({ target, row }) {
        this.element = document.createElement('p');
        this.build(row);
        if (target) {
            target.appendChild(this.element);
        }
        this.drop();
    }
    build(row = 20) {
        let root = document.createDocumentFragment();
        let chars = [];
        for (let i = 0; i < row; ++i) {
            let c = new Char();
            root.appendChild(c.element);
            chars.push(c);
            if (Math.random() < .5) {
                loop(() => c.mutate(), r(1e3, 5e3));
            }
        }
        this.trail = new Trail(chars, {
            size: r(10, 30),
            offset: r(0, 100)
        });
        this.element.appendChild(root);
    }
    drop() {
        let trail = this.trail;
        let len = trail.body.length;
        let delay = r(10, 100);
        loop(() => {
            trail.move();
            trail.traverse((c, i, last) => {
                c.element.style = `` color: hsl(136, 100`%, ${85 / len * (i + 1)}`%) ``;
                if (last) {
                    c.mutate();
                    c.element.style = `` color: hsl(136, 100`%, 85`%); text-shadow: 0 0 .5em #fff, 0 0 .5em currentColor; ``;
                }
            });
        }, delay);
    }
}

const app = document.getElementById('app')
for (let i = 0; i < 50; ++i) {
    new Rain({ target: app, row: 50 });
}
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

directivehtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
</head>

<body>
    <div id="app">
        <input type="text" v-model='text' v-max-number=100></input>
    </div>
</body>
<script>

Vue.directive('max-number', {
  bind(el, binding) {
    // 用户传入的参数
    const max = binding.value

    // 监听Input事件
    el.addEventListener('input', e => {
      // 当前值
      const v = e.target.value

      // 如果不是数字的话，那么清空
      if (!isNaN(+v) === false) {
        e.target.value = ''
        return
      }

      // 如果超出最大值的话，那么变成最大值
      if (v > max) {
        e.target.value = max
        return
      }
    }, false);
  }
})

var vue = new Vue({
    el: '#app',
    data: {
        text: 0
    },
})

/* 
const maxNumber = {};
maxNumber.install = (Vue, options = {}) => {
  Vue.directive('maxNumber', {
    bind(el, binding) { 
       // ...
    }
  })
};

export default maxNumber;

//////////////////////////////////////////////
main.js 中这样注册使用
import maxNumber from './directive/maxNumber.js'
Vue.use(maxNumber)

<input type="text" v-model='text' v-max-number=100></input>
//////////////////////////////////////////////
 */
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

fakerHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
    <!-- faker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Faker/3.1.0/faker.min.js"></script>
</head>

<body>
    <div id="app">
    	<p>{{ randomName }}</p>
    	<p>{{ randomEmail }}</p>
    	<p>{{ randomCard }}</p>
    </div>
</body>
<script>
	
// zh_CN
faker.locale = "en"

var vue = new Vue({
    el: '#app',
    data: {
        randomName: '',
        randomEmail: '',
        randomCard: '',
    },
    beforeMount: function () {
	    this.randomName = faker.name.findName();   // Caitlyn Kerluke
	    this.randomEmail = faker.internet.email(); // Rusty@arne.info
	    this.randomCard = faker.date.recent();     // random contact card containing many properties
    }
})
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

NewvuetransitiongroupHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
    }

    #app {

    }

    ::-webkit-scrollbar {
        width: 5px;
        height: 0;
    }
    ::-webkit-scrollbar-thumb {
        border-radius: 2px;
        -webkit-box-shadow: inset 0 0 2px rgba(0,0,0,0.2);
        background: #d1d4db;
    }
    ::-webkit-scrollbar-track {
        -webkit-box-shadow: none;
        border-radius: 0px;
        background: #EDEDED;
    }

    .container {
        overflow: scroll;
        height: 145px;
        width: 250px;
    }

    /* 只要数据变化，就会调用这个钩子。所以你是动画移动的 */
    .cell-move {
       transition: all .8s ease-out;
    }

    /* 运动过程中会执行 */
    .cell-enter-active {
       transition: all .8s ease-out;
    }

    /* 定义开始状态 */
    .cell-enter {
        opacity: 0;
        transform: translateX(100px);
    }

    /* 定义目标状态 */
    .cell-enter-to {
        opacity: 1;
        transform: translateX(0px);
    }
    </style>
</head>

<body>
    <div id="app">
        <transition-group name="cell" tag="ul" class="container">
            <li v-for='(item, index) in items' :key='item'>{{ item }}</li>
        </transition-group>
        <button class="shuffle" @click="handleClick"> add </button>
    </div>
</body>
<script>
var vue = new Vue({
    el: '#app',
    data: {
        items: [
            '三亚发生3.2级地震新',
            '刘强东章泽天同框',
            '五部门打击校闹新',
            '汶川泥石流',
            '梁铉锡被禁止出国新',
            '老挝车祸13人遇难',
            '张予曦承认分手',
        ],
        text: '',
    },
    methods: {
        handleClick: function () {
            this.items.unshift(+new Date())
        }
    },
    beforeMount: function () {

    }
})
</script>
</html>
),  %name%
RunBy(name)
run, % name
return


socketHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
    <style>
    html,
    body {
        margin: 0;
        padding: 0;
    }

    #app {}
    </style>
</head>

<body>
    <div id="app">
        <ul>
            <li v-for='(item, index) in items' :key='item'>{{ item }}</li>
        </ul>
    </div>
</body>
<script>
var vue = new Vue({
    el: '#app',
    data: {
        items: []
    },
    methods: {
        initWebSocket() {
            this.websock = new WebSocket("ws://api/websocket/total/")
            this.websock.onopen = this.websocketonopen;
            this.websock.onerror = this.websocketonerror;
            this.websock.onmessage = this.websocketonmessage;
            this.websock.onclose = this.websocketclose;
        },
        websocketonopen() {
            console.log("WebSocket连接成功");
        },
        websocketonerror: function(e) {
            console.log("WebSocket连接发生错误");
        },
        websocketonmessage: function(e) {
            var da = JSON.parse(e.data);
            console.log(da);
            this.items.unshift(da);
        },
        websocketclose: function(e) {
            console.log("connection closed (" + e.code + ")");
        }
    },
    created() {
        this.initWebSocket()
    },
    destroyed() {
        this.websocketclose();
    },
})

/* 
如果是vue 的话，一般地址是会用 proxyTable改写的。所以是这样：
proxyTable: {
    '/api': {
        // 我要请求的地址
        target: 'http://12345v2.alltosea.com:6080/',  
        //是否跨域 
        changeOrigin: true, 
        pathRewrite: {
          '^/api': '/api'
        }
    }
},

methods: {
      initWebSocket() {
          this.websock = new WebSocket("ws://12345v2.alltosea.com:6080/api/websocket/total/")
          this.websock.onopen = this.websocketonopen;
          this.websock.onerror = this.websocketonerror;
          this.websock.onmessage = this.websocketonmessage;
          this.websock.onclose = this.websocketclose;
      },
      websocketonopen() {
          console.log("WebSocket连接成功");
      },
      websocketonerror: function(e) {
          console.log("WebSocket连接发生错误");
      },
      websocketonmessage: function(e) {
          var da = JSON.parse(e.data);
          console.log(da);
          // this.items.unshift(da);
      },
      websocketclose: function(e) {
          console.log("connection closed (" + e.code + ")");
      }
  },
  created() {
      this.initWebSocket()
  },
  destroyed() {
      this.websocketclose();
  },
 */
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

randcolorHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src='https://cdn.staticfile.org/randomcolor/0.5.4/randomColor.min.js'></script>
    <style>
    html,
    body {
        margin: 0;
        padding: 0;
        height: 100`%;
    }
    #app {}
    </style>
</head>

<body>
    <div id="app"></div>
</body>
<script>
// 从一个范围内取随机值
const random = (min = 0, max = 1) => min + Math.floor(Math.random() * (max - min + 1))

// 从 30 ~ 60 取值，并且随机正负数
const getRange = () => Math.random() >= .5 ?  -(random(30, 60)) : random(30, 60)

// 随机取两个不同的明亮颜色
const randcolorA = randomColor({ luminosity: 'light' })
const randcolorB = randomColor({ luminosity: 'light' })

// 组合
const color = `linear-gradient(${getRange()}deg, ${randcolorA}, ${randcolorB})`

// test
document.querySelector('body').style = 'background:' + color
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

cssskeletonHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>

    .app:empty {
        margin: auto;
        width: 500px;
        height: 600px;

        background-image: 
                /* circle */
                radial-gradient(circle 50px at 50px 50px, lightgray 99`%, transparent 0), 
                /* highlight */
                linear-gradient(100deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.5) 50`%, rgba(255, 255, 255, 0) 80`%),
                /* bar */
                linear-gradient(lightgray 20px, transparent 0),
                linear-gradient(lightgray 20px, transparent 0),
                linear-gradient(lightgray 20px, transparent 0),
                linear-gradient(lightgray 20px, transparent 0);

        background-size: 
                /* circle */
                100px 200px,
                /* highlight */
                50px 200px,
                /* bar */
                150px 200px, 
                350px 200px, 
                300px 200px, 
                250px 200px;

        background-position: 
                /* circle */
                0 0,
                /* highlight */
                0 0,
                /* bar */
                120px 0, 
                120px 40px, 
                120px 80px, 
                120px 120px;

        background-repeat: repeat-y;
        animation: shine 1s infinite;
    }

    @keyframes shine {
        100`% {
            background-position:
                /* circle */
                0 0,
                /* highlight（animate） */
                100`% 0,
                /* bar */
                120px 0, 
                120px 40px, 
                120px 80px, 
                120px 120px;
        }
    }
    </style>
</head>

<body>
    <div class="app"></div>
</body>
<script>
</script>

</html>
),  %name%
RunBy(name)
run, % name
return


chromeextensions:
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/chrome-extensions.zip")
return

inputyanhua:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
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
        height: 100`%; /* 注意，应该是html和body同时设置才可以 */
    }

    #app {
		position: absolute;
		left: 50`%;
		top: 50`%;
		transform: translate(-50`%, -50`%);
    }
    </style>
</head>

<body>
    <div id="app">
        <input type="text">
    </div>
</body>
<script>
(function webpackUniversalModuleDefinition(a, b) {
    if (typeof exports === "object" && typeof module === "object") {
        module.exports = b()
    } else {
        if (typeof define === "function" && define.amd) {
            define([], b)
        } else {
            if (typeof exports === "object") {
                exports["POWERMODE"] = b()
            } else {
                a["POWERMODE"] = b()
            }
        }
    }
})(this, function() {
    return (function(a) {
        var b = {};

        function c(e) {
            if (b[e]) {
                return b[e].exports
            }
            var d = b[e] = {
                exports: {},
                id: e,
                loaded: false
            };
            a[e].call(d.exports, d, d.exports, c);
            d.loaded = true;
            return d.exports
        }
        c.m = a;
        c.c = b;
        c.p = "";
        return c(0)
    })([function(c, g, b) {
        var d = document.createElement("canvas");
        d.width = window.innerWidth;
        d.height = window.innerHeight;
        d.style.cssText = "position:fixed;top:0;left:0;pointer-events:none;z-index:999999";
        window.addEventListener("resize", function() {
            d.width = window.innerWidth;
            d.height = window.innerHeight
        });
        document.body.appendChild(d);
        var a = d.getContext("2d");
        var n = [];
        var j = 0;
        var k = 120;
        var f = k;
        var p = false;
        o.shake = true;

        function l(r, q) {
            return Math.random() * (q - r) + r
        }

        function m(r) {
            if (o.colorful) {
                var q = l(0, 360);
                return "hsla(" + l(q - 10, q + 10) + ", 100`%, " + l(50, 80) + "`%, " + 1 + ")"
            } else {
                return window.getComputedStyle(r).color
            }
        }

        function e() {
            var t = document.activeElement;
            var v;
            if (t.tagName === "TEXTAREA" || (t.tagName === "INPUT" && t.getAttribute("type") === "text")) {
                var u = b(1)(t, t.selectionStart);
                v = t.getBoundingClientRect();
                return {
                    x: u.left + v.left,
                    y: u.top + v.top,
                    color: m(t)
                }
            }
            var s = window.getSelection();
            if (s.rangeCount) {
                var q = s.getRangeAt(0);
                var r = q.startContainer;
                if (r.nodeType === document.TEXT_NODE) {
                    r = r.parentNode
                }
                v = q.getBoundingClientRect();
                return {
                    x: v.left,
                    y: v.top,
                    color: m(r)
                }
            }
            return {
                x: 0,
                y: 0,
                color: "transparent"
            }
        }

        function h(q, s, r) {
            return {
                x: q,
                y: s,
                alpha: 1,
                color: r,
                velocity: {
                    x: -1 + Math.random() * 2,
                    y: -3.5 + Math.random() * 2
                }
            }
        }

        function o() {
            var t = e();
            var s = 5 + Math.round(Math.random() * 10);
            while (s--) {
                n[j] = h(t.x, t.y, t.color);
                j = (j + 1) `% 500
            }
            f = k;
            if (!p) {
                requestAnimationFrame(i)
            }
            if (o.shake) {
                var r = 1 + 2 * Math.random();
                var q = r * (Math.random() > 0.5 ? -1 : 1);
                var u = r * (Math.random() > 0.5 ? -1 : 1);
                document.body.style.marginLeft = q + "px";
                document.body.style.marginTop = u + "px";
                setTimeout(function() {
                    document.body.style.marginLeft = "";
                    document.body.style.marginTop = ""
                }, 75)
            }
        }
        o.colorful = false;

        function i() {
            if (f > 0) {
                requestAnimationFrame(i);
                f--;
                p = true
            } else {
                p = false
            }
            a.clearRect(0, 0, d.width, d.height);
            for (var q = 0; q < n.length; ++q) {
                var r = n[q];
                if (r.alpha <= 0.1) {
                    continue
                }
                r.velocity.y += 0.075;
                r.x += r.velocity.x;
                r.y += r.velocity.y;
                r.alpha *= 0.96;
                a.globalAlpha = r.alpha;
                a.fillStyle = r.color;
                a.fillRect(Math.round(r.x - 1.5), Math.round(r.y - 1.5), 3, 3)
            }
        }
        requestAnimationFrame(i);
        c.exports = o
    }, function(b, a) {
        (function() {
            var d = ["direction", "boxSizing", "width", "height", "overflowX", "overflowY", "borderTopWidth", "borderRightWidth", "borderBottomWidth", "borderLeftWidth", "borderStyle", "paddingTop", "paddingRight", "paddingBottom", "paddingLeft", "fontStyle", "fontVariant", "fontWeight", "fontStretch", "fontSize", "fontSizeAdjust", "lineHeight", "fontFamily", "textAlign", "textTransform", "textIndent", "textDecoration", "letterSpacing", "wordSpacing", "tabSize", "MozTabSize"];
            var e = window.mozInnerScreenX != null;

            function c(k, l, o) {
                var h = o && o.debug || false;
                if (h) {
                    var i = document.querySelector("#input-textarea-caret-position-mirror-div");
                    if (i) {
                        i.parentNode.removeChild(i)
                    }
                }
                var f = document.createElement("div");
                f.id = "input-textarea-caret-position-mirror-div";
                document.body.appendChild(f);
                var g = f.style;
                var j = window.getComputedStyle ? getComputedStyle(k) : k.currentStyle;
                g.whiteSpace = "pre-wrap";
                if (k.nodeName !== "INPUT") {
                    g.wordWrap = "break-word"
                }
                g.position = "absolute";
                if (!h) {
                    g.visibility = "hidden"
                }
                d.forEach(function(p) {
                    g[p] = j[p]
                });
                if (e) {
                    if (k.scrollHeight > parseInt(j.height)) {
                        g.overflowY = "scroll"
                    }
                } else {
                    g.overflow = "hidden"
                }
                f.textContent = k.value.substring(0, l);
                if (k.nodeName === "INPUT") {
                    f.textContent = f.textContent.replace(/\s/g, "\u00a0")
                }
                var n = document.createElement("span");
                n.textContent = k.value.substring(l) || ".";
                f.appendChild(n);
                var m = {
                    top: n.offsetTop + parseInt(j["borderTopWidth"]),
                    left: n.offsetLeft + parseInt(j["borderLeftWidth"])
                };
                if (h) {
                    n.style.backgroundColor = "#aaa"
                } else {
                    document.body.removeChild(f)
                }
                return m
            }
            if (typeof b != "undefined" && typeof b.exports != "undefined") {
                b.exports = c
            } else {
                window.getCaretCoordinates = c
            }
        }())
    }])
});
POWERMODE.colorful = true;
POWERMODE.shake = false;
document.body.addEventListener("input", POWERMODE);
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

test17280:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>测试17280兼容性</title>
    <style>
    html, body{
        margin: 0;
        padding: 0;
        height: 100`%;
        width: 17280px;
    }

    #app {
        width: 100`%;
        height: 100`%;
        display: flex;
        justify-content: flex-start;
        align-items: flex-start;
    }

    .block {
        width: 1728px;
        height: 100`%;
        font-size: 50em;
        font-weight: bold;
        color: #fff;
        display: flex;
        justify-content: center;
        align-items: center;        
    }

    .block-1 { background-color: #594129; }
    .block-2 { background-color: #ED1250; }
    .block-3 { background-color: #21294C; }
    .block-4 { background-color: #F4D143; }
    .block-5 { background-color: #A888FF; }
    .block-6 { background-color: #EF832A; }
    .block-7 { background-color: #438A70; }
    .block-8 { background-color: #FFC045; }
    .block-9 { background-color: #F6D365; }
    .block-10 { background-color: #9182C4; }
    </style>
</head>

<body>
    <div id="app">
        <div class="block block-1">1</div>
        <div class="block block-2">2</div>
        <div class="block block-3">3</div>
        <div class="block block-4">4</div>
        <div class="block block-5">5</div>
        <div class="block block-6">6</div>
        <div class="block block-7">7</div>
        <div class="block block-8">8</div>
        <div class="block block-9">9</div>
        <div class="block block-10">10</div>
    </div>
</body>
</html>
),  %name%
RunBy(name)
run, % name
return

funnelhtml:
Var =
(
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

    <!-- echarts -->
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="http://echarts.baidu.com/resource/echarts-gl-latest/dist/echarts-gl.min.js"></script>
    <script src="http://gallerybox.echartsjs.com/dep/echarts/map/js/china.js"></script>

	<!-- 百度地图插件 -->
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=1XjLLEhZhQNUzd93EjU5nOGQ"></script>
    <!-- 百度地图 - 聚合图相关的插件 -->
    <script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>

    <!-- echarts 百度地图扩展插件 -->
    <script src="http://echarts.baidu.com/examples/vendors/echarts/extension/bmap.js?_v_=1536959211921"></script>
</head>
<style>
	#main {
		width: 100`%;
		height: 100vh;
	}
</style>

<body>
    <div id="main"></div>
</body>

<script type="text/javascript">
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main'));

// 预定义配置
var option = {}

var baseURL = 'https://gallery.echartsjs.com'

//////////////////////////////////////////////
option = {
    title: {
        text: '漏斗图',
        subtext: '纯属虚构'
    },
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c}`%"
    },
    toolbox: {
        feature: {
            dataView: {readOnly: false},
            restore: {},
            saveAsImage: {}
        }
    },
    legend: {
        data: ['展现','点击','访问','咨询','订单']
    },
    calculable: true,
    series: [
        {
            name:'漏斗图',
            type:'funnel',
            left: '10`%',
            top: 60,
            bottom: 60,
            width: '80`%',
            min: 0,
            max: 100,
            minSize: '0`%',
            maxSize: '100`%',
            sort: 'descending',
            gap: 2,
            label: {
                show: true,
                position: 'inside'
            },
            labelLine: {
                length: 10,
                lineStyle: {
                    width: 1,
                    type: 'solid'
                }
            },
            itemStyle: {
                borderColor: '#fff',
                borderWidth: 1
            },
            emphasis: {
                label: {
                    fontSize: 20
                }
            },
            data: [
                {value: 60, name: '访问'},
                {value: 40, name: '咨询'},
                {value: 20, name: '订单'},
                {value: 80, name: '点击'},
                {value: 100, name: '展现'}
            ]
        }
    ]
};
//////////////////////////////////////////////

myChart.setOption(option);
</script>
</html>
)
code(Var)
return

datasetfunnel:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

    <!-- echarts -->
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="http://echarts.baidu.com/resource/echarts-gl-latest/dist/echarts-gl.min.js"></script>
    <script src="http://gallerybox.echartsjs.com/dep/echarts/map/js/china.js"></script>

	<!-- 百度地图插件 -->
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=1XjLLEhZhQNUzd93EjU5nOGQ"></script>
    <!-- 百度地图 - 聚合图相关的插件 -->
    <script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>

    <!-- echarts 百度地图扩展插件 -->
    <script src="http://echarts.baidu.com/examples/vendors/echarts/extension/bmap.js?_v_=1536959211921"></script>
</head>
<style>
	#main {
		width: 100`%;
		height: 100vh;
	}
</style>

<body>
    <div id="main"></div>
</body>

<script type="text/javascript">
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main'));

// 预定义配置
var option = {}

var baseURL = 'https://gallery.echartsjs.com'

//////////////////////////////////////////////
option = {
    dataset: {
        source: {
            '名称': ['访问', '咨询', '订单', '点击', '展现',],
            '数值': [60, 40, 20, 80, 100,],
        }
    },
    title: {
        text: '漏斗图',
        subtext: '纯属虚构'
    },
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c}`%"
    },
    legend: {
        data: ['展现','点击','访问','咨询','订单']
    },
    calculable: true,
    series: [
        {
            name:'漏斗图',
            type:'funnel',
            left: '10`%',
            top: 60,
            bottom: 60,
            width: '80`%',
            min: 0,
            max: 100,
            minSize: '0`%',
            maxSize: '100`%',
            sort: 'descending',
            gap: 2,
            label: {
                show: true,
                position: 'inside'
            },
            labelLine: {
                length: 10,
                lineStyle: {
                    width: 1,
                    type: 'solid'
                }
            },
            itemStyle: {
                borderColor: '#fff',
                borderWidth: 1
            },
            emphasis: {
                label: {
                    fontSize: 20
                }
            },
        }
    ]
};
//////////////////////////////////////////////

myChart.setOption(option);
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

dgmap3DhtmlWMTS:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>WMTS</title>
    <style>
    html,
    body,
    #container {
        width: 100`%;
        height: 100`%;
    }
    </style>
</head>

<body>
    <div id="container"></div>
    </div>
    <script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
    <script src="https://webapi.amap.com/maps?v=1.4.15&key=9f1c132e77dc10edf34fe44bec1208a9"></script>
    <script>

      // 高德地图WMTS 文档：https://lbs.amap.com/api/javascript-api/reference/wms/
      // 天地图WMTS服务文档：http://lbs.tianditu.gov.cn/server/MapService.html

      // 大为提供的正确访问参数和姿势：
      /* 
        http://t0.tianditu.gov.cn/img_c/wmts?tk=63c5c4f101d68229494bb45d3bf60277&SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=img&STYLE=default&TILEMATRIXSET=c&TILEMATRIX=16&TILEROW=12190&TILECOL=53472&FORMAT=tiles
       */


      var map = new AMap.Map('container', {
        zoom: 15,
        center: [113.757656, 23.026731],
        mapStyle: "amap://styles/darkblue",
      });


      var wms  = new AMap.TileLayer.WMTS({
            url: 'https://services.arcgisonline.com/arcgis/rest/services/Demographics/USA_Population_Density/MapServer/WMTS/',
            params: {
                Layer: 'img',
                VERSION:'1.0.0',
                FORMAT: 'tiles',
                STYLE: 'default',
            }
      })

      wms.setMap(map)
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

NodeHttp:
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/nodejs-pure-http.zip", "node app.js")
return

websocketHTML:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!-- 
const WebSocket = require('ws')

const WS = new WebSocket.Server({ port: 1234 })

WS.on('connection', ws => {

    ws.on('message', msg => {
        ws.send('i received: ' + msg)
    })

    // 建立连接后，主动发送第一条初始化消息
    ws.send('server OK')
})
 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WebSocket Test</title>
</head>

<body>
    <div id="app"></div>
</body>
<script>
    const ws = new WebSocket('ws://localhost:1234')

    ws.addEventListener('open', () => {
        ws.send('client ok')
    })

    ws.addEventListener('message', e => {
        console.log(e.data)
    })
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

xiexianhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
    <!-- mockjs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Mock.js/1.0.0/mock-min.js"></script>
    <!-- axios -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js"></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
        height: 100`%;
    }

    #app {
        
    }   

    ul {
		margin: 0;
		padding: 0;
    }

    #contaoler {
        width: 800px;
        display: flex;
        justify-content: space-between;
    }

    .item {
        position: relative;
        width: 200px;
        height: 30px;
        line-height: 30px;
        margin: 10px;

        border: 1px solid #ccc;
        margin-top: 10px;
        text-align: center;
        display: inline-block;
        transition: .3s all;
        cursor: pointer;
    }

    	.item .line {
    		display: none;
    		position: absolute;
    		top: 50`%;
    		left: calc(100`% + 1px);
			transform-origin: 0`% 0`%;
    	}

	    .item.active {
			color:#fff;
		  	animation: Pulse 2s infinite;
	    }

        .item.active .line {
        	display: block;
        	border-bottom: 1px dashed #999;
        }

        .item.determine .line {
        	display: block;
        	border-bottom: 1px solid red;
        } 

	.hover-shadow-box-animation {
	  display: inline-block;
	  vertical-align: middle;
	  transform: perspective(1px) translateZ(0);
	  box-shadow: 0 0 1px transparent;
	  transition-duration: 0.3s;
	  transition-property: box-shadow, transform;
	}

	.hover-shadow-box-animation:hover,
	.hover-shadow-box-animation:focus,
	.hover-shadow-box-animation:active {
	  box-shadow: 1px 10px 10px -10px rgba(0, 0, 24, 0.5);
	  transform: scale(1.2);
	}


    @keyframes Pulse {
        0`%   { background-color: #036075; box-shadow: 0 0 9px #333; }
        50`%  { background-color: #2daebf; box-shadow: 0 0 27px #2daebf; }
        100`% { background-color: #036075; box-shadow: 0 0 9px #333; }
    }
    </style>
</head>

<body>
    <div id="app">
        <div id='contaoler'>
            <ul class='ul-left'>
                <li class='item hover-shadow-box-animation' 
                	:ref='`item__${item.book_id}`'
                	:class='{"active": item.book_id === active, "determine": item.determine != null}'
                	v-for='(item, index) in items' 
                	:key='item.book_id'
                	@click='active = item.book_id'>
                		{{ item.book_name }}
                	<i class='line' :style='{width: `${item.width || 0}px`, transform: `rotate(${item.rotate || 0}deg)`}'></i>
            	</li>
            </ul>
            
            <ul class='ul-right'>
                <li class='item hover-shadow-box-animation' 
                	v-for='(item, index) in items' 
                	:key='item.book_id'
                	@mouseover='link($event)' 
                	@click='determine(item.book_id)'>
                		{{ item.book_name }}
        		</li>
            </ul>
        </div>
    </div>
</body>
<script>
Mock.mock("/book/list", "get", {
    "booklist|10": [
        {"book_id|+1": 101, "book_name": "@ctitle", "book_price|50-100.1-2": 0, "book_time": "@date('yyyy-mm-dd')"}
    ]
})

// 勾股定理：a^2 + b^2 = c^2
var get_c = (a, b) => Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2))

var vue = new Vue({
    el: '#app',
    data: {
        active: null, 
        items: [],
    },
    methods: {
        getWidthAndRotation (left, right) {
            const left_rect = left.getBoundingClientRect()
            const right_rect = right.getBoundingClientRect()

			const x1 = left_rect.x + left_rect.width,
				  y1 = left_rect.y + left_rect.height / 2;

			const x2 = right_rect.x,
				  y2 = right_rect.y + right_rect.height / 2;

			const a = x2 - x1
			const b = y2 - y1
			const c = get_c(a, b)
			const rotate = Math.atan2(b, a) * 180 / Math.PI

			return { c, rotate }
        },
        determine (book_id) {
        	const index = this.items.findIndex(_ => _.book_id === this.active)
        	this.$set(this.items[index], 'determine', true)
        	this.active = null
        },
        link (event) {
			 // 1、 hover 的时候，判断是否当前有active。
        	 if (this.active) {
				// 2、 如果有的话，那么找到该id所在的ref的dom
				const left = this.$refs[`item__${this.active}`][0]
				// 获取右侧的
				const right = event.target

				// 3、 通过计算，返回 c 和 rotate
				const  { c, rotate } = this.getWidthAndRotation(left, right)

				// 4、 设置到到该数据源中，完成
				const index = this.items.findIndex(_ => _.book_id === this.active)
				this.$set(this.items[index], 'width', c)
				this.$set(this.items[index], 'rotate', rotate)
        	 }
        },
    },
    beforeMount: function () {
        axios.get("/book/list").then(res => {
            this.items = res.data.booklist
        })
    }
})
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

tianditujuhetuhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no" />
    <title>天地图</title>
    <style>
    html,
    body{
        padding: 0;
        margin: 0;
        height: 100`%;
        width: 100`%;
    }

    #container {
        position: absolute;
        left: 50`%;
        top: 50`%;
        transform: translate(-50`%, -50`%);

        height: 70`%;
        width: 70`%;

        /*height: 100`%;*/
        /*width: 100`%;*/
        /*transform-origin: 0`% 0`%;*/
    }
    </style>
</head>

<body>
    <div id="container"></div>
</body>
<script src="http://api.tianditu.gov.cn/api?v=4.0&tk=63c5c4f101d68229494bb45d3bf60277"></script>
<script>
    var zoom = 3;
     var map = new T.Map('container', {
          attributionControl: false,
          inertia: false
      });
      map.centerAndZoom(new T.LngLat(116.40969, 37.43997405227057), zoom);

      var arrayObj = new Array();
      for (var i = 0; i < 500; i++) {
          var marker = new T.Marker(new T.LngLat(Math.random() * 40 + 85, Math.random() * 30 + 21), {title: i});
          arrayObj.push(marker);
      }
      var markers = new T.MarkerClusterer(map, {markers: arrayObj});


      setTimeout(() => {
            // 获取容器当前宽度
            const { clientWidth, clientHeight } = document.getElementById('container')
            // 获取屏幕宽度
            const { clientWidth: w, clientHeight: h } = document.documentElement
            // 设置缩放比        
            document.getElementById('container').style.transform = `translate(-50`%, -50`%) scale(${w/clientWidth}, ${h/clientHeight})`
      }, 1000);
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

scriptzhuruhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    </style>
</head>

<body>
    <a onclick="alert('请将此链接拖拽到书签栏'); return false;" href="javascript:;(function() { var o = document.createElement('script'); o.src = 'https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js'; document.documentElement.appendChild(o); window.alert('jquery加载完毕') }())" id="clipper-bd">Pandora</a>
</body>
<script>
    /* 
    核心逻辑：
    1、<a href="javscript:;我的代码">
    2、将a标签拖拽到标签栏
    3、点击标签栏，实际上执行的是我的代码
    4、我的代码是执行在你的页面的，而我直接创建一个script，导入另外一段代码注入到你的页面。这样我就可以为所欲为了。
     */
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

word2HTML:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <!-- element -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/element-ui/2.10.1/index.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/element-ui/2.10.1/theme-chalk/index.css">

    <style>
    html, body{
        margin: 0;
        padding: 0;
        height: 100`%;
        width: 649px;
        margin: auto;
        font-family: "Helvetica Neue",Helvetica,"PingFang SC","Hiragino Sans GB","Microsoft YaHei","微软雅黑",Arial,sans-serif;
    }

    #app {

    }

    ul li {
        list-style: none;
    }

    h1 { 
        font-size: 20px; 
    }

    h2 { 
        font-size: 16px; 
    }

    .el-table__body, .el-table__header {
        width: 100`% !important;
    }

    .el-table .cell {
        text-align: center;
    }
    </style>
</head>

<body>
    <div id="app">
        <article v-for='(item, index) in items' :key='index'>
            <h1>{{ index + 1 }}、{{ item.queryName }}</h1>
            <h2>{{ index + 1 }}.1 接口详情</h2>
            <ul>
                <li>描述：{{ item.queryDesc || '（空）' }}</li>
                <li>接口地址：{{ item.queryUrl }}</li>
            </ul>
            <h2>{{ index + 1 }}.2 请求参数</h2>
            <el-table :data="item.apiRequests" border>
                <el-table-column  prop="columnDefinition" label="参数名称"></el-table-column>
                <el-table-column  prop="columnDesc" label="字段说明"></el-table-column>
                <el-table-column  prop="columnType" label="字段类型"></el-table-column>
                <el-table-column  label="是否必须">
                    <template slot-scope="scope">
                      {{ scope.row.requiredMark ? '必填' : '可选' }}
                    </template>
                </el-table-column>
                <el-table-column  label="示例">
                    <template slot-scope="scope">
                      {{ scope.row.exampleValue}}
                    </template>
                </el-table-column>
            </el-table>
            <h2>{{ index + 1 }}.3 返回参数</h2>
            <el-table :data="item.apiResponses" border>
                <el-table-column  prop="columnDefinition" label="参数名称"></el-table-column>
                <el-table-column  prop="columnDesc" label="字段说明"></el-table-column>
                <el-table-column  prop="columnType" label="字段类型"></el-table-column>
                <el-table-column  label="示例">
                    <template slot-scope="scope">
                      {{ scope.row.exampleValue }}
                    </template>
                </el-table-column>
            </el-table>
            <h2>{{ index + 1 }}. 返回示例</h2>
            <pre class="language-js"><code>{ "data": {{ item.result.data }}, "page": 0, "size": 500, "total": {{ item.result.total }}, "messageList": {{ item.result.messageList }} }    
            </code></pre>
        </article>
    </div>
</body>


<script>

var vue = new Vue({
    el: '#app',
    data: {
        items: [],
        text: '',
    },
    methods: {
        handleClick () {

        }
    },
    async beforeMount () {
       const items = await $.getJSON('./data.json')
       this.items = items.slice(0)
       // 高亮
       this.$nextTick(() => {
        document.querySelectorAll('td, th').forEach((val, key) => val.setAttribute('width', '130'))
       })
    }
})
</script>
</html>
),  %name%
RunBy(name)
run, % name
return


echartsqipaodongtai:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <div id="app" style="width: 600px; height:400px;"></div>
</body>
<script>
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('app'))

const colors = ["rgb(27, 94, 93)", "rgb(206, 188, 11)", "rgb(165, 190, 198)", "rgb(98, 41, 72)", "rgb(175, 20, 143)", "rgb(77, 231, 55)", "rgb(26, 83, 246)", "rgb(155, 118, 127)", "rgb(116, 207, 18)", "rgb(98, 224, 224)", "rgb(137, 37, 21)", "rgb(81, 27, 15)"]

// 生成配置数据
const getData = data => data.map((_, i) => {
    // 索引
    const index = [i `% colors.length]
    // 获取当前颜色
    const color = colors[index]
    // 可拖动的球
    return {
        "name": _.name,
        "value": _.value,
        "draggable": true,
        "itemStyle": {
            "normal": {
                "borderColor": color,
                "shadowColor": color,
                "color": color,
                "borderWidth": 4,
                "shadowBlur": 100,
            }
        }
    }
})

const mockData = [{ "name": "考研", "value": 10000, }, { "name": "兼职", "value": 6181, }, { "name": "食堂", "value": 4386, }, { "name": "家教", "value": 4055, }, { "name": "大四", "value": 2467, }, { "name": "研友", "value": 2244, }, { "name": "论文", "value": 1898, }]


// 核心配置
var option = {
    backgroundColor: '#fff',
    tooltip: {},
    animationDurationUpdate: idx => idx * 100,
    animationEasingUpdate: 'bounceIn',
    series: [{
        type: 'graph',
        layout: 'force',
        symbolSize: val => {
            // 获取所有values
            const values = mockData.map(_ => _.value)
            // 获取最大值
            const max = Math.max(Math.max(...values))
            // 获取最小值
            const min = Math.min(...values)
            // 定义最大气泡
            const maxSize4Pin = 130
            // 定义最小气泡
            const minSize4Pin = 45
            // 固定套路
            var a = (maxSize4Pin - minSize4Pin) / (max - min);
            var b = minSize4Pin - a * min;
            b = maxSize4Pin - a * max;
            return a * val + b;
        },
        force: {
            repulsion: 500,
            edgeLength: 10
        },
        roam: true,
        label: {
            normal: {
                show: true
            }
        },
        data: getData(mockData)
    }]
}

myChart.setOption(option);
</script>

</html>
),  %name%
RunBy(name)
run, % name
return


vueDeepSethtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>$deepSet</title>
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
</head>

<body>
    <div id="app">
        {{ items }}
    </div>
</body>
<script>
var vue = new Vue({
    el: '#app',
    data: {
        items: {
            test: 123
        },
    },
    methods: {
        $deepSet(ref, path, value) {
            // （重要）保存引用
            let obj = ref

            // 路径分割，这里没有做其他判断处理，请自行优化补全
            const _path = path.split('.')

            // 不断轮询路径
            while (_path.length) {
                // 从左往右取出路径
                const key = _path.shift()
                // 到最后一个了？
                if (_path.length === 0) {
                    // 直接赋值
                    this.$set(obj, key, value)
                    // 如果不存在则定义该对象
                } else if (!obj[key]) {
                    this.$set(obj, key, {})
                }

                // 获取当前路径的值
                obj = obj[key]
            }

            return obj
        }
    },
    beforeMount() {
        setTimeout(() => {
            console.log('🚀', this.$deepSet(this.items, 'a.b.c.d.e', 'fuckyou'))
        }, 1000);
    }
})
</script>

</html>
),  %name%
RunBy(name)
run, % name
return

VueComponentHtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
</head>

<body>
    <div id="app">
        <!-- <component :is='"abc"' :option='`{text: "fuck"`}' ref='abc'></component>  -->
        
        <abc ref='abc'></abc>

        <button @click='handleClick'>handleClick</button>
    </div>
</body>
<script>
var abc = Vue.extend({
    template: ``<label>abc</label> ``,
    data () {
       return {
           text: '',
       }
    },
    props: {

    },
    beforeMount() {
        
    }
});

Vue.component('abc', abc)

var vue = new Vue({
    el: '#app',
    data: {
       abc: null
    },
    methods: {
        handleClick () {
        }
    },
    mounted () {
        // 或者
        // const instance = new abc({
        // })
        // instance.$mount('#app')


        // 再或者
        // const instance = new abc({
        //     el: document.createElement('div')
        // })
        // document.getElementById('app').appendChild(instance.$el)     
    }
})
</script>
</html>
),  %name%
RunBy(name)
run, % name
return

vuelistenhtml:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>vue测试</title>
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
</head>

<body>
    <div id="app">
        <base-input label="基础输入组件" 
                    placeholder="请输入您的名字" 
                    class="username-input" 
                    v-model="username" 
                    :fuck='fuckgod'
                    :shit='"fuckyou"'
                    @click="handleBaseInputClick" 
                    @focus="handleBaseInputFocus"
        />
    </div>
    <script>
    // 因为base-input的外层是一个label元素，所以默认情况下使用v-on:focus是无效的，所以需要配合this.$listeners使用，
    // 该属性可以把事件的监听指向组件中某个特定的元素
    // 注意：如果父级的事件添加了.native修饰符，在$listeners中不会体现出来的
    Vue.component('base-input', {
        template: `
            <label id="base-label">
                {{label}}
                <input v-bind:value="value" v-bind="$attrs" v-on="inputListeners"/>
            </label>
        `,
        data: function() {
            return {

            }
        },
        // 请注意，这里的value，其实就是v-model
        props: ['label', 'value', 'fuck'],
        computed: {
            inputListeners() {
                return Object.assign({}, this.$listeners, {
                    input: event => {
                        this.$emit('input', event)
                    },
                    focus: event => {
                        this.$emit('focus', event)
                    }
                })
            }
        },
        mounted() {
            // 所有绑定的事件
            console.log(this.$listeners)

            // 在 props 注册的属性会集中在这里
            console.log(this.$props)

            // 没有注册的，会作为非响应式属性记录在这里
            console.log(this.$attrs)
        },
    })


    const fuckvue = new Vue({
        el: '#app',
        data: {
            username: ''
        },
        methods: {
            handleBaseInputFocus(ev) {
                console.log(20191110233342, ev)
            },
            handleBaseInputClick(ev) {
                console.log(20191110233345, ev)
            }
        },
        beforeUpdate: function() {
            console.log(this.username)
        },
    })
    </script>
</body>

</html>
),  %name%
RunBy(name)
run, % name
return

echartsleidatu:
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <!-- echarts -->
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="http://echarts.baidu.com/resource/echarts-gl-latest/dist/echarts-gl.min.js"></script>
    <script src="http://gallerybox.echartsjs.com/dep/echarts/map/js/china.js"></script>
    <!-- 百度地图插件 -->
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=1XjLLEhZhQNUzd93EjU5nOGQ"></script>
    <!-- 百度地图 - 聚合图相关的插件 -->
    <script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>
    <!-- echarts 百度地图扩展插件 -->
    <script src="http://echarts.baidu.com/examples/vendors/echarts/extension/bmap.js?_v_=1536959211921"></script>
</head>
<style>
    #main {
        width: 100`%;
        height:100vh;
    }
</style>

<body>
    <div id="main"></div>
</body>
<script type="text/javascript">
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main'));

// 预定义配置
var option = {}

var baseURL = 'https://gallery.echartsjs.com'

//////////////////////////////////////////////

// 注意雷达图是 顶级的radar配置：https://www.echartsjs.com/zh/option.html#radar.triggerEvent
option = {
    title: {
        text: '基础雷达图'
    },
    tooltip: {},
    legend: {
        data: ['预算分配（Allocated Budget）', '实际开销（Actual Spending）']
    },
    radar: {
        triggerEvent: true,
        name: {
            formatter: (value, ...args) => {
                return ``{a|${value}}``
            },
            rich: {
                a: {
                    color: 'red',
                    height: 30,
                    fontSize: 20,
                },
            },
            textStyle: {
                color: '#fff',
                backgroundColor: '#999',
                borderRadius: 3,
                padding: [3, 5],

            }
        },
        indicator: [
            { name: '销售（sales）', max: 6500 },
            { name: '管理（Administration）', max: 16000 },
            { name: '信息技术（Information Techology）', max: 30000 },
            { name: '客服（Customer Support）', max: 38000 },
            { name: '研发（Development）', max: 52000 },
            { name: '市场（Marketing）', max: 25000 }
        ]
    },
    series: [{
        name: '预算 vs 开销（Budget vs spending）',
        type: 'radar',
        // areaStyle: {normal: {}},
        data: [{
                value: [4300, 10000, 28000, 35000, 50000, 19000],
                name: '预算分配（Allocated Budget）'
            },
            {
                value: [5000, 14000, 28000, 31000, 42000, 21000],
                name: '实际开销（Actual Spending）'
            }
        ]
    }]
};

myChart.on('click', params => {
    console.log(20191121003913, params)
})

//////////////////////////////////////////////

myChart.setOption(option);
</script>

</html>
),  %name%
RunBy(name)
run, % name
return