!space::
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
    </style>
</head>

<body>
    <div id="app"></div>
</body>
<script>
$(function() {
    console.log('hello world');
});
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