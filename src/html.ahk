::zhibiao::
::guangbiao::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style type="text/css">
    html,
    body {
        height: 100`%;
        width: 100`%;
        margin: 0;
        padding: 0;
        background: radial-gradient(ellipse at bottom, #1B2735 0`%, #090A0F 100`%);
    }

    *,
    *::after,
    *::before {
        box-sizing: border-box;
    }

    .cursor {
        position: fixed;
        width: 50px;
        height: 50px;
        border: 1px solid #c6c6c6;
        border-radius: 50`%;
        left: 0;
        top: 0;
        pointer-events: none;
        transform: translate(-50`%, -50`%);
        transition: .1s;
    }

    .cursor2 {
        position: fixed;
        width: 8px;
        height: 8px;
        background-color: #c6c6c6;
        border-radius: 50`%;
        left: 0;
        top: 0;
        pointer-events: none;
        transform: translate(-50`%, -50`%);
        transition: .15s;
    }

    .content:hover~.cursor {
        transform: translate(-50`%, -50`%) scale(1.5);
        background-color: #c6c6c6;
        opacity: .5;
    }

    .content:hover~.cursor2 {
        opacity: 0;
    }
    </style>
</head>

<body>
    <div class="cursor"></div>
    <div class="cursor2"></div>
    <script>
    var cursor = document.querySelector(".cursor");
    var cursor2 = document.querySelector(".cursor2");
    document.addEventListener("mousemove", function(e) {
        cursor.style.cssText = cursor2.style.cssText = "left: " + e.clientX + "px; top: " + e.clientY + "px;";
    });
    </script>
</body>

</html>
---
<template>
    <div class="coolCursor">
        <div class="cursor" ref="cursor"></div>
        <div class="cursor2" ref="cursor2"></div>
    </div>
</template>

<script>
export default {
    name: 'coolCursor',
    created() {
        document.addEventListener('mousemove', e => {
            this.$refs.cursor.style.cssText = this.$refs.cursor2.style.cssText = 'left: ' + e.clientX + 'px; top: ' + e.clientY + 'px;'
        })
    },
}
</script>

<style lang="scss" scoped>
.cursor {
    position: fixed;
    width: rem(50);
    height: rem(50);
    border: rem(1) solid #c6c6c6;
    border-radius: 50`%;
    left: 0;
    top: 0;
    pointer-events: none;
    transform: translate(-50`%, -50`%);
    z-index: 1993100337;
}

.cursor2 {
    position: fixed;
    width: rem(8);
    height: rem(8);
    background-color: #c6c6c6;
    border-radius: 50`%;
    left: 0;
    top: 0;
    pointer-events: none;
    transform: translate(-50`%, -50`%);
    // transition: 0.01s;
    z-index: 1993100337;
}

.content:hover ~ .cursor {
    transform: translate(-50`%, -50`%) scale(1.5);
    background-color: #c6c6c6;
    opacity: 0.5;
}

.content:hover ~ .cursor2 {
    opacity: 0;
}
</style>
)
txtit(Var)
return

::shoufengqin::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style>
    * {
        margin: 0;
        padding: 0;
    }

    .panel {
        width: 480px;
        min-height: 160px;
        margin: 50px auto;
        background: #eee;
    }

    .panel dt {
        min-height: 40px;
        line-height: 40px;
        background: #f9f9f9;
        padding-left: 10px;
        cursor: pointer;
    }

    .panel dd {
        padding-left: 10px;
        height: 0;
        overflow: hidden;
        transition: height .5s;
    }
    </style>
</head>

<body>
    <div id="app">
        <div class="panel">
            <dl>
                <dt>One Item</dt>
                <dd>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</dd>
                <dt>two Item</dt>
                <dd>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</dd>
                <dt>3 Item</dt>
                <dd>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</dd>
                <dt>4 Item</dt>
                <dd>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</dd>
            </dl>
        </div>
    </div>
</body>

<script>
    const dtDoms = document.querySelectorAll('dt')

    Array.from(dtDoms).forEach(dtDom => {
        dtDom.onclick = e => {
            // 被点击的dt的下一个dd元素
            const dd = e.target.nextElementSibling
            toggle(dd)
        }
    })

    function toggle(target) {
        const ddDoms = document.querySelectorAll('dd')

        // 第一次的时候 height 为 '' 空字符串
        if (target.style.height === '' || target.style.height === '0px') {

            // 收起其他展开的手风琴
            for (dd of ddDoms) {
                dd.style.height = '0px'
            }

            // 注意这里的套路，是实现动画 height 的核心
            Object.assign(target.style, { position: 'absolute', left: '-2000px', top: '-2000px', height: 'auto', width: '480px' })
            const height = target.offsetHeight

            target.style.cssText = 'height: 0px'
            requestAnimationFrame(() => target.style.cssText = 'height: ' + height + 'px')
            
        } else {
            target.style.height = '0px'
        }
    }
</script>
</html>
---
<template>
  <div class="mb-2">
    <div @click="shrink" >
      <slot name="title">
        <div class="c__title--head flex-be">
          <p class="c__title--name full-h">{{textName}}</p>
          <span :class="['cup icon__run mr-1', maybe(_ => isShow, false) ? 'is-active' : '']"></span>
        </div>
      </slot>
    </div>

    <transition
      @before-enter="beforeEnter"
      @enter="enter"
      @after-enter="afterEnter"
      @before-leave="beforeLeave"
      @leave="leave"
      @after-leave="afterLeave"
    >
      <div v-show="isShow">
        <slot></slot>
      </div>
    </transition>
  </div>
</template>

<script>
const transitionStyle = '0.3s height ease-in-out';

export default {
  name: 'CollapseItem',
  components: {},
  props: {
    textName: {
      type: String,
      default: '标题'
    }
  },
  data() {
    return {
      item: {},

      isShow: true
    }
  },
  watch: {},
  computed: {},
  created(){},
  beforeMount(){},
  methods: {
    shrink () {
      this.$parent.changeState(this._uid)
    },

    // css控制
    beforeEnter (el) {
      // 动画之前
      el.style.transition = transitionStyle
      if (!el.dataset) el.dataset = {}

      el.style.height = 0
    },
    enter (el, done) {
      if (el.scrollHeight !== 0) {
        el.style.height = `${el.scrollHeight}px`
      } else {
        el.style.height = ''
      }

      el.style.overflow = 'hidden'
    },
    afterEnter (el) {
      // 动画之后
      el.style.transition = ''
      el.style.height = ''

      console.log('展开动画完成')
    },
    beforeLeave(el) {
      if (!el.dataset) el.dataset = {}
      el.style.height = `${el.scrollHeight}px`
      el.style.overflow = 'hidden'
    },
    leave (el, done) {
      // 动画过程
      if (el.scrollHeight !== 0) {
        el.style.transition = transitionStyle
        el.style.height = 0
      }
    },
    afterLeave (el) {
      el.style.transition = ''
      el.style.height = ''

      console.log('关闭动画完成')
    }
  }
}

</script>


<style lang='scss' scoped>
.c__wrapper {

  .c__title--head {
    width: rem(608);
    height: rem(32);
    background-color: #082C25;
    

    .c__title--name {
      border-left: solid rem(3) #32ffee;
      padding-left: rem(13);
      color: #32ffee;
      line-height: rem(32);
    }

    .icon__run {
      margin-bottom: rem(8);
      width: rem(18);
      height: rem(16);
      display: inline-block;
      transition: transform .3s;
      background: transparent url('~@/assets/Layer/箭头-收起.png') left center / 100`% 100`% no-repeat;
  
      &.is-active {
        transform: rotate(180deg);
      }
    }

  }
}
</style>
---
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style>
    /* 标题样式 */
        [id^="toggle"] + label {
      display: block;
      padding: 0.5em 1em;
      background: #ACE;
      cursor: pointer;
    }

    /* 标题文本 */
    [id^="toggle"] + label:after {content:"Show Content"; }
    [id^="toggle"]:checked + label:after {content:"Hide Content"; }

    /* 箭头 */
    [id^="toggle"] + label:before {float:right; content:"\25BC"; }
    [id^="toggle"]:checked + label:before {content:"\25B2"; }

    /* 内容区域 */
    [id^="toggle"] + label + * {overflow: hidden; height: 0; transition:height 0.5s; background: #FFF; }

    /* --calc-height 默认为 auto */
    [id^="toggle"]:checked + label + * { height:var(--calc-height); }


    /* 另一种方案，更加舒服 */
    #toggle2:checked + label + * > div {
      bottom: 0;
    }
    
    #toggle2 + label + * > div {
      position: relative;
      bottom: var(--calc-height);
      transition: bottom 0.5s;
    }
    </style>
</head>

<body>
    <div id="app">
        <main>
            <input type="checkbox" id="toggle1" hidden>
            <label for="toggle1" hidden></label>
            <div class="calcChildSize">
                <div>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor neque, commodo quis leo ut, auctor tincidunt mauris. Nunc fringilla tincidunt metus, non gravida lorem condimentum non. Duis ornare purus nisl, at porta arcu eleifend eget. Integer lorem ante, porta vulputate dui ut, blandit tempor tellus. Proin facilisis bibendum diam, sit amet rutrum est feugiat ut. Mauris rhoncus convallis arcu in condimentum. Donec volutpat dui eu mollis vulputate. Nunc commodo lobortis nunc at ultrices. Suspendisse in lobortis diam. Suspendisse eget vestibulum ex.
                    </p>
                </div>
            </div>
            <p>Data after show/hide</p>
            <input type="checkbox" id="toggle2" hidden>
            <label for="toggle2" hidden></label>
            <div class="calcChildSize">
                <div>
                    <p>
                        Maecenas laoreet nunc sit amet nulla ultrices auctor. Vivamus sed nisi vitae nibh condimentum pulvinar eu vel lorem. Sed pretium viverra eros ut facilisis. In ut fringilla magna. Sed a tempor libero. Donec sapien libero, lacinia sed aliquet ut, imperdiet finibus tellus. Nunc tellus lectus, rhoncus in posuere quis, tempus sit amet enim. Morbi et erat ac velit fringilla dignissim. Donec commodo, est id accumsan cursus, diam dui hendrerit nisi, vel hendrerit purus dolor ut risus. Phasellus mattis egestas ipsum sed ullamcorper. In diam ligula, rhoncus vel enim et, imperdiet porta justo. Curabitur vulputate hendrerit nisl, et ultricies diam. Maecenas ac leo a diam cursus ornare nec eu quam.
                    </p>
                    <p>
                        Sed non vulputate purus, sed consectetur odio. Sed non nibh fringilla, imperdiet odio nec, efficitur ex. Suspendisse ut dignissim enim. Maecenas felis augue, tempor sit amet sem fringilla, accumsan fringilla nibh. Quisque posuere lacus tortor, quis malesuada magna elementum a. Nullam id purus in ante molestie tincidunt. Morbi luctus orci eu egestas dignissim. Sed tincidunt, libero quis scelerisque bibendum, ligula nisi gravida libero, id lacinia nulla leo in elit.
                    </p>
                    <p>
                        Aenean aliquam risus id consectetur sagittis. Aliquam aliquam nisl eu augue accumsan, vel maximus lorem viverra. Aliquam ipsum dolor, tempor et justo ac, fermentum mattis dui. Etiam at posuere ligula. Vestibulum tortor metus, viverra vitae mi non, laoreet iaculis purus. Praesent vel semper nibh. Curabitur a congue lacus. In et pellentesque lorem. Morbi posuere felis non diam vulputate, non vulputate ex vehicula. Vivamus ultricies, massa id sagittis consequat, sem mauris tincidunt nunc, eu vehicula augue quam ut mauris.
                    </p>
                </div>
            </div>
        </main>
    </div>
</body>
<script>
(function(d, w) {
    var calcTargets = d.getElementsByClassName("calcChildSize")
    d.body.style.setProperty("--calc-height", "auto")

    function resize() {
        for (var target of calcTargets) {
            var value = target.firstElementChild.offsetHeight + "px"
            if (target.style.getPropertyValue("--calc-height") !== value) {
                target.style.setProperty("--calc-height", value)
            }
        }
    }
    w.addEventListener("resize", resize, false)
    w.addEventListener("load", resize, false)

})(document, window)
</script>

</html>
)
txtit(Var)
return

::svg::
Var =
(
<svg role="img" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <title id="loading-aria">Loading...</title>
    <rect x="0" y="0" width="100`%" height="100`%" clip-path="url(#clip-path)" style='fill: url("#fill");'></rect>
    <defs>
        <clipPath id="clip-path">
            <circle cx="10" cy="20" r="8" />
            <rect x="25" y="15" rx="5" ry="5" width="240" height="10" />
            <circle cx="10" cy="50" r="8" />
            <rect x="25" y="45" rx="5" ry="5" width="240" height="10" />
            <circle cx="10" cy="80" r="8" />
            <rect x="25" y="75" rx="5" ry="5" width="240" height="10" />
            <circle cx="10" cy="110" r="8" />
            <rect x="25" y="105" rx="5" ry="5" width="240" height="10" />
        </clipPath>
        <linearGradient id="fill">
            <stop offset="0.599964" stop-color="#f3f3f3" stop-opacity="1">
                <animate attributeName="offset" values="-2; -2; 1" keyTimes="0; 0.25; 1" dur="2s" repeatCount="indefinite"></animate>
            </stop>
            <stop offset="1.59996" stop-color="#ecebeb" stop-opacity="1">
                <animate attributeName="offset" values="-1; -1; 2" keyTimes="0; 0.25; 1" dur="2s" repeatCount="indefinite"></animate>
            </stop>
            <stop offset="2.59996" stop-color="#f3f3f3" stop-opacity="1">
                <animate attributeName="offset" values="0; 0; 3" keyTimes="0; 0.25; 1" dur="2s" repeatCount="indefinite"></animate>
            </stop>
        </linearGradient>
    </defs>
</svg>
)
txtit(Var)
return

::speak::
::pinyin::
::yanjiang::
::shuohua::
Var =
(
<!DOCTYPE html>
<html lang="en">

<body>
    <div id='app'>
        你好 hello world
    </div>

    <button id='read'>阅读</button>
</body>
<script>
    function speak(content) {
        var synth = window.speechSynthesis
        
        /**
         * 可以过滤语言，譬如只阅读中文（zh）或者只阅读英文（en）
         * let voices = synth.getVoices().filter(voice => voice.lang.startsWith(document.querySelector('html').lang))
         */
        let voices = synth.getVoices()

        if (voices.length === 0) 
            return

        let utterThis = new SpeechSynthesisUtterance(content)

        utterThis.voice = voices[0]

        synth.speak(utterThis)
    }

    // 只能通过点击调用、或者控制台调用
    read.addEventListener('click', event => {
        speak(document.getElementById('app').innerText)
    })
</script>
</html>
)
code(Var)
return

:?:htmlmp3::
:?:htmlmp4::
:?:html.mp3::
:?:html.mp4::
:?:mp3::
:?:mp4::
::music::
Var =
(
<!-- 如果想要播放器就删除 「controls」 属性 -->
<!-- 注意，必须是服务器运行才可以获取 mp3 这种文件，除非你的 mp3 是 url 就可以直接播放 -->
<!-- http://ioc-demo.biubiuonline.com/曾志豪 - 神威千重.mp3 -->
<!-- http://ioc-demo.biubiuonline.com/曾志豪 - 仗剑 (1).mp3 -->
<!-- http://ioc-demo.biubiuonline.com/林坤信 - 兵凶战危.mp3 -->
<!-- http://ioc-demo.biubiuonline.com/林坤信 - 逆天而行 1.mp3 -->
<!-- http://ioc-demo.biubiuonline.com/林坤信 - 势如破竹.mp3 -->
<!-- http://ioc-demo.biubiuonline.com/林坤信 - 心急如焚 1.mp3 -->
<!-- http://ioc-demo.biubiuonline.com/群星 - 会心一击.mp3 -->
<!-- http://ioc-demo.biubiuonline.com/周志华 - 浣花洗剑·变奏.mp3 -->
<audio id="bgMusic" src="http://ioc-demo.biubiuonline.com/曾志豪 - 神威千重.mp3" controls autoplay loop></audio>

<script>
    // 暂停
    document.querySelector('#bgMusic').pause()
    // 播放
    document.querySelector('#bgMusic').play()
    // 重新播放
    document.querySelector('#bgMusic').currentTime = 0
</script>
---
<style type="text/css">    
    li:hover {
        background-color: yellow;
    }
</style>
<div id="app">
    <ul>
        <li>1</li>
        <li>1</li>
        <li>1</li>
        <li>1</li>
        <li>1</li>
        <li>1</li>
        <li>1</li>
        <li>1</li>
        <li>1</li>
        <li>1</li>
    </ul>

    <button id='button'>refresh</button>
</div>
<script>
;(function(doc, win) {
    const createAudio = src => {
        const audio = doc.createElement('audio')
        audio.src = src
        document.body.append(audio)
        return audio
    }

    const _click = createAudio('http://ioc-demo.biubiuonline.com/click.mp3')
    const _tab = createAudio('http://ioc-demo.biubiuonline.com/tab.mp3')
    const _hover = createAudio('http://ioc-demo.biubiuonline.com/hover.mp3')
    const _mouseover = createAudio('http://ioc-demo.biubiuonline.com/mouseover.mp3')
    const _effect = createAudio('http://ioc-demo.biubiuonline.com/effect.mp3')

    win.$music = {
        click: () => _click.play(),
        tab: () => _tab.play(),
        hover: () => _hover.play(),
        effect: () => _effect.play(),
        mouseover: () => _mouseover.play(),
    }
}(document, window));

document.querySelectorAll('li').forEach((val, key) => {
    val.addEventListener('click', (event) => {
        window.$music.click()
    })

    val.addEventListener('mouseover', (event) => {
        window.$music.mouseover()
    })
})

button.addEventListener('mouseover', (event) => {
   window.$music.tab()
})

button.addEventListener('click', (event) => {
   window.$music.effect()
})
</script>
)
txtit(Var)
return

::head-utf8::
::headutf::
::headutf8::
Var =
(
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
)
code(Var)
return

::radio::
Var =
(
<style>
    label {
  font-size: 20px;
  position: relative;
  padding-left: 30px;
  cursor: pointer;
}

input[type=radio] {
  width: 0;
  height: 0;
  position: absolute;
  left: 0;
  top: 0;
}

input[type=radio]:before {
  content: '';
  display: inline-block;
  width: 15px;
  height: 15px;
  background: transparent;
  border: 2px solid #004ecb;
  border-radius: 50`%;
}

input[type=radio]:checked:after {
  content: '';
  display: inline-block;
  width: 7px;
  height: 7px;
  background: #004ecb;
  border: 2px solid #004ecb;
  border-radius: 50`%;
  position: absolute;
  left: 4px;
  top: 4px;
}
</style>

<form>
    <label>
        <input type="radio" name="radio" />
        First element
    </label>
    <br />
    <label>
        <input type="radio" name="radio" />
        Second element
    </label>
</form>
)
code(Var)
return

::container::
::pageload::
::page.animage::
::css.page::
::page.css::
::animate.page::
Var =
(
.container {
    animation: fadeIn 0.5s;
}

@keyframes fadeIn {
    from {opacity: 0.25; transform: translateY(-10px); }
    to {opacity: 1; transform: translateY(0px); }
}
)
code(Var)
return


::randomimg::
::rimg::
::img2::
::randimg::
::randgeimg::
p("<img src='http://source.unsplash.com/random' alt='...' />")
return





::daomagaoliang::
::gaoliang::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/prism/1.16.0/themes/prism-okaidia.min.css">
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
    <script src="https://cdn.staticfile.org/prism/1.16.0/prism.js"></script>
    <script>
        // 可以手动调用，也可以不要。
        Prism.highlightAll()
    </script>
</body>

</html>
)
code(Var)
return

::css.table::
::table::
Var =
(
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Document</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <style>
            html,
            body {
                margin: 0;
                padding: 0;
                height: 100`%;
            }

            #app {
                width: 100`%;
                height: 100`%;
            }

            .table {
                width: 100`%;
                color: #333;
                font-size: 12px;
                text-align: center;
                border-collapse: collapse;
                border-spacing: 0;
                border: 1px solid #D3D3D3;
            }
            
            td,
            th {
                border-left: 1px solid #ccc;
                border-top: 1px solid #ccc;
                padding: 20px;
                text-align: center;
            }

            th {
                background-color: rgba(0, 255, 246, .03);
            }
        </style>
    </head>

    <body>
        <div id="app">
            <table class="table" border="0" cellspacing="0" cellpadding="0">
                <thead>
                    <tr>
                        <th colspan="1" rowspan="2"><div>镇街名称</div></th>
                        <th colspan="3" rowspan="1"><div>第一剂已接种人数</div></th>
                        <th colspan="3" rowspan="1"><div>第二剂已接种人数</div></th>
                    </tr>
                    <tr>
                        <th colspan="1" rowspan="1"><div>接种任务</div></th>
                        <th colspan="1" rowspan="1"><div>已完成</div></th>
                        <th colspan="1" rowspan="1"><div>完成率</div></th>

                        <th colspan="1" rowspan="1"><div>接种任务</div></th>
                        <th colspan="1" rowspan="1"><div>已完成</div></th>
                        <th colspan="1" rowspan="1"><div>完成率</div></th>
                    </tr>
                </thead>
                <tbody>
                    <tr> <td><div>1</div></td> <td><div>2</div></td> <td><div>3</div></td> <td><div>4</div></td> <td><div>5</div></td> <td><div>6</div></td> <td><div>7</div></td> </tr>
                    <tr> <td><div>1</div></td> <td><div>2</div></td> <td><div>3</div></td> <td><div>4</div></td> <td><div>5</div></td> <td><div>6</div></td> <td><div>7</div></td> </tr>
                    <tr> <td><div>1</div></td> <td><div>2</div></td> <td><div>3</div></td> <td><div>4</div></td> <td><div>5</div></td> <td><div>6</div></td> <td><div>7</div></td> </tr>
                    <tr> <td><div>1</div></td> <td><div>2</div></td> <td><div>3</div></td> <td><div>4</div></td> <td><div>5</div></td> <td><div>6</div></td> <td><div>7</div></td> </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>

---
<table class="bordered">
    <thead>
        <tr>
            <th>字段</th>
            <th>类型</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>x</td>
            <td>OBJECT</td>
        </tr>
    </tbody>
    <tbody>
        <tr>
            <td>data</td>
            <td>OBJECT</td>
        </tr>
    </tbody>
</table>

.bordered {
    width: 100`%;
    border-spacing: 0;
    border: solid #ccc 1px;
    border-radius: 6px;
    box-shadow: 0 1px 1px #ccc;
    font-size: 12px;
    font-family: 'trebuchet MS', 'Lucida sans', Arial;

    tr {
        transition: all 0.1s ease-in-out;
    }

    .highlight,
    tr:hover {
        background: #fbf8e9;
    }

    td,
    th {
        border-left: 1px solid #ccc;
        border-top: 1px solid #ccc;
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #dce9f9;
        background-image: linear-gradient(top, #ebf3fc, #dce9f9);
        box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
        border-top: none;
        text-shadow: 0 1px 0 rgba(255, 255, 255, .5);
    }

    td:first-child,
    th:first-child {
        border-left: none;
    }

    th:first-child {
        border-radius: 6px 0 0 0;
    }

    th:last-child {
        border-radius: 0 6px 0 0;
    }

    tr:last-child td:first-child {
        border-radius: 0 0 0 6px;
    }

    tr:last-child td:last-child {
        border-radius: 0 0 6px 0;
    }
}
---
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
    <!-- sass -->
    <script src='https://cdn.staticfile.org/sass.js/0.11.0/sass.sync.min.js'></script>
    <style>

    #app {}

    .u-table-bordered {
        width: 100`%;
        border-spacing: 0;
        border-right: 1px solid #ccc;
        border-bottom: 1px solid #ccc;
        font-size: 26px;

        td,
        th {
            border-left: 1px solid #ccc;
            border-top: 1px solid #ccc;
            padding: 20px;
            text-align: center;
        }

        th {
            background-color: #FBF8FB;
        }

        a {
            color: rgb(0, 0, 238);
        }
    }
    </style>
    <script>
    // 获取第一个 <style>
    const style = document.getElementsByTagName('style')[0]
    // 获取第一个
    const scss = style.innerHTML
    // 开始编译
    Sass.compile(scss, result => {
        // 替换为编译好的 css
        style.innerHTML = result.text
    })
    </script>
</head>

<body>
    <div id="app">
        <table class='u-table-bordered'>
            <tr>
                <th colspan='3'>东莞市发热门诊重点医院名单</th>
            </tr>
            <tr>
                <th>区</th>
                <th>医院</th>
                <th>电话</th>
            </tr>
            <tr v-for='(item, index) in items' :key='index'>
                <td v-if='v(item, index, items)' :rowspan='t(item, items)'> {{ item.city }} </td>
                <td>{{ item.name }}</td>
                <td>查看地址</a> / <a :href="'tel:' + item.mobile">电话</a></td>
            </tr>
            <!--
            <tr>
                <td rowspan="2">万江</td>
                <td>东莞市人民医院</td>
                <td><a @click='go("23.03086,113.707293","东莞市人民医院", "东莞市万江区新谷涌万道路南3号")'>查看地址</a> / <a href="tel:10086">电话</a></td>
            </tr>
            <tr>
                <td>东莞市万江医院</td>
                <td><a @click='go("23.060724,113.725853", "东莞市万江医院", "东莞市石美社区卢慈涡村107国道(石美牌楼斜对面)")'>查看地址</a> / <a href="tel:10086">电话</a></td>
            </tr>
            <tr>
                <td rowspan="2">虎门</td>
                <td>东莞市滨海湾中心医院</td>
                <td><a @click='go("22.826544,113.688089", "东莞市滨海湾中心医院", "东莞市虎门镇虎门大道154号")'>查看地址</a> / <a href="tel:10086">电话</a></td>
            </tr>
            <tr>
                <td>东莞市虎门医院</td>
                <td><a @click='go("22.824852,113.675303", "东莞市虎门医院", "东莞市虎门镇则徐路145号")'>查看地址</a> / <a href="tel:10086">电话</a></td>
            </tr>
            <tr>
                <td rowspan="3">东城</td>
                <td>东莞市中医院</td>
                <td><a @click='go("22.998178,113.831617","东莞市中医院", "东莞市松山湖大道22号")'>查看地址</a> / <a href="tel:10086">电话</a></td>
            </tr>
            <tr>
                <td>东莞市东华医院</td>
                <td><a @click='go("23.036908,113.792533" ,"东莞市东华医院", "东莞市东城区东城东路1号")'>查看地址</a> / <a href="tel:10086">电话</a></td>
            </tr>
            <tr>
                <td>东莞市东城医院</td>
                <td><a @click='go("23.043518,113.763556","东莞市东城医院", "东莞市南城街道南城路56号")'>查看地址</a> / <a href="tel:10086">电话</a></td>
            </tr>
            <tr>
                <td rowspan="1">石龙</td>
                <td>东莞市松山湖中心医院</td>
                <td><a @click='go("23.121759,113.890552","东莞市松山湖中心医院", "东莞市石龙镇祥龙路1号")'>查看地址</a> / <a href="tel:10086">电话</a></td>
            </tr> -->
        </table>
    </div>
</body>
<script>
var vue = new Vue({
    el: '#app',
    data() {
        return {
            items: [
                { city: '莞城街道', name: '东莞市第九人民医院', address: '广东省东莞市莞城区沙地塘88号', mobile: 10086 },
                { city: '莞城街道', name: '东莞市莞城医院', address: '东莞市莞城街道莞太路78号', mobile: 10086 },
                { city: '虎门镇', name: '东莞市滨海湾中心医院', address: '东莞市虎门镇虎门大道154号', mobile: 10086 },
                { city: '虎门镇', name: '东莞市虎门医院', address: '东莞市虎门镇则徐路145号', mobile: 10086 },
                { city: '东城街道', name: '东莞市中医院', address: '东莞市松山湖大道22号', mobile: 10086 },
                { city: '东城街道', name: '东莞东华医院', address: '广东省东莞市东城区东城东路1号', mobile: 10086 },
                { city: '东城街道', name: '东莞市东城医院', address: '东莞市南城街道南城路56号', mobile: 10086 },
                { city: '万江街道', name: '东莞市人民医院', address: '东莞市万江区新谷涌万道路南3号', mobile: 10086 },
                { city: '万江街道', name: '东莞市万江医院', address: '广东省东莞市石美社区卢慈涡村107国道（石美牌楼斜对面）', mobile: 10086 },
                { city: '南城街道', name: '东莞市南城医院', address: '东莞市南城区莞太路55号', mobile: 10086 },
                { city: '南城街道', name: '东莞康华医院', address: '东莞市东莞大道1000号', mobile: 10086 },
                { city: '中堂镇', name: '东莞市中堂医院', address: '东莞市中堂镇中麻路53号', mobile: 10086 },
                { city: '石龙镇', name: '东莞市松山湖中心医院', address: '广东省东莞市石龙镇祥龙路1号', mobile: 10086 },
                { city: '望牛墩镇', name: '东莞市望牛墩医院', address: '东莞市望牛墩镇望联村芙蓉路芙蓉沙桥旁', mobile: 10086 },
                { city: '麻涌镇', name: '东莞市水乡中心医院', address: '东莞市麻涌镇南峰路2号', mobile: 10086 },
                { city: '石碣镇', name: '东莞市石碣医院', address: '广东省东莞市石碣镇崇焕中路39号', mobile: 10086 },
                { city: '高埗镇', name: '东莞市高埗医院', address: '东莞市高埗镇创兴中路2号', mobile: 10086 },
                { city: '洪梅镇', name: '东莞市洪梅医院', address: '东莞市洪梅镇迎宾南路延伸段（洪梅车站旁）', mobile: 10086 },
                { city: '道滘镇', name: '东莞市道滘医院', address: '东莞市道滘镇金牛新村南路69号', mobile: 10086 },
                { city: '厚街镇', name: '东莞市厚街医院', address: '东莞市厚街镇河田大道21号', mobile: 10086 },
                { city: '沙田镇', name: '东莞市沙田医院', address: '东莞市沙田镇中心区站前路', mobile: 10086 },
                { city: '长安镇', name: '东莞市长安医院', address: '东莞市长安镇长青南路171号', mobile: 10086 },
                { city: '寮步镇', name: '东莞市寮步医院', address: '广东省东莞市寮步镇寮城西路107号', mobile: 10086 },
                { city: '大岭山镇', name: '东莞市中西医结合医院', address: '广东省东莞市大岭山镇上场路2号', mobile: 10086 },
                { city: '大朗镇', name: '东莞市大朗医院', address: '东莞市大朗镇金朗中路85号', mobile: 10086 },
                { city: '黄江镇', name: '东莞市黄江医院', address: '东莞市黄江镇西环路南段1号', mobile: 10086 },
                { city: '樟木头镇', name: '东莞市樟木头医院', address: '东莞市樟木头镇银河北路15号', mobile: 10086 },
                { city: '凤岗镇', name: '东莞市凤岗医院', address: '广东省东莞市凤岗镇凤平路13号', mobile: 10086 },
                { city: '塘厦镇', name: '东莞市东南部中心医院', address: '东莞市塘厦镇蛟坪大道113号', mobile: 10086 },
                { city: '谢岗镇', name: '东莞市谢岗医院', address: '东莞市谢岗镇花园大道', mobile: 10086 },
                { city: '清溪镇', name: '东莞市清溪医院', address: '东莞市清溪镇香芒中路6号', mobile: 10086 },
                { city: '常平镇', name: '东莞市东部中心医院', address: '广东省东莞市常平镇常东璐88号', mobile: 10086 },
                { city: '桥头镇', name: '东莞市桥头医院', address: '东莞市桥头镇工业路43号', mobile: 10086 },
                { city: '横沥镇', name: '东莞市横沥医院', address: '东莞市横沥镇天桥路205号', mobile: 10086 },
                { city: '东坑镇', name: '东莞市东坑医院', address: '东莞市东坑镇沿河西路41号', mobile: 10086 },
                { city: '企石镇', name: '东莞市企石医院', address: '东莞市企石镇宝华路115号', mobile: 10086 },
                { city: '石排镇', name: '东莞市石排医院', address: '东莞市石排镇石排大道中198号', mobile: 10086 },
                { city: '茶山镇', name: '东莞市茶山医院', address: '广东省东莞市茶山镇彩虹路92号', mobile: 10086 },
                { city: '松山湖', name: '东莞东华医院松山湖园区', address: '广东省东莞市松山湖科发七路1号', mobile: 10086 },
            ]
        }
    },
    methods: {
        t(item, items) {
            return items.filter(_ => _.city === item.city).length
        },
        v(item, index, items) {
            return this.t(item, items) === 1 || index === 0 || (items[index - 1] && items[index - 1].city != item.city)
        },
    },
})
</script>

</html>
---
<table class='dgtable' cellspacing = '0'>
  <thead class='dgtable__thead'>
    <tr>
      <th></th>
      <th>诉求标题</th>
      <th>处理部门</th>
      <th>镇街</th>
      <th>事项</th>
      <th>事项二级分类</th>
      <th>红黄牌</th>
      <th>满意度</th>
      <th>诉求类型</th>
      <th>受理时间</th>
    </tr>
  </thead>
  <tbody class='dgtable__tbody'>
      <tr v-for='(item, index) in items' :key='index'>
          <td>{{ index }}</td>
          <td>从事城市生活垃圾经营性</td>
          <td>市环保局</td>
          <td>虎门</td>
          <td>环境保护类</td>
          <td>大气污染 </td>
          <td><div :class="['is-red', 'is-yellow', 'is-warning'][index `% 3]"></div></td>
          <td>非常满意</td>
          <td>投诉</td>
          <td>2018-08-12 14:12:32</td>
      </tr>        
  </tbody>
</table>

.dgtable {
    margin-top: 17px;
    text-align: center;
    width: 100`%;
    border: solid 1px #e4e4e4;
 }

     .dgtable__thead {
        background-image: linear-gradient(0deg, rgba(212, 212, 212, 0.03) 0`%, rgba(238, 238, 238, 0.03) 100`%), linear-gradient(#ededed, #ededed);
        background-blend-mode: normal, normal;
        font-size: 18px;

        tr {
          height: 58px;
        }

        th {
          font-weight: normal;
        }

        th + th {
          border-left: 1px solid #d0d0d0;
        }
     }

     .dgtable__tbody {
        font-size: 16px;

        td {
          border-top: solid 1px #d1d1d1;
        }

        tr {
          height: 40px;
        }

        tr:nth-child(even) {
            background-color: #f1f1f1;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        td + td {
          border-left: 1px solid #d0d0d0;
        }
     }
---
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style>
    html,
    body {
        margin: 0;
        padding: 0;
    }

    #app {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .styled-table {
        border-collapse: collapse;
        margin: 25px 0;
        font-size: 0.9em;
        font-family: sans-serif;
        min-width: 400px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }

    .styled-table thead tr {
        background-color: #009879;
        color: #ffffff;
        text-align: left;
    }

    .styled-table th,
    .styled-table td {
        padding: 12px 15px;
    }

    .styled-table tbody tr {
        border-bottom: 1px solid #dddddd;
    }

    .styled-table tbody tr:nth-of-type(even) {
        background-color: #f3f3f3;
    }

    .styled-table tbody tr:last-of-type {
        border-bottom: 2px solid #009879;
    }

    .styled-table tbody tr.active-row {
        font-weight: bold;
        color: #009879;
    }
    </style>
</head>

<body>
    <div id="app">
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Points</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Dom</td>
                    <td>6000</td>
                </tr>
                <tr>
                    <td>Dom</td>
                    <td>6000</td>
                </tr>
                <tr>
                    <td>Dom</td>
                    <td>6000</td>
                </tr>
                <tr class="active-row">
                    <td>Melissa</td>
                    <td>5150</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
<script>
</script>

</html>
)
txtit(Var)
return

::iconf::
::iconfont::
Var =
(
<i class='iconfont icon-back'></i>
)
code(Var)
Send, {left 6}
send, +{left 4}
return

::shipin::
::video::
::vedio::
Var =
(
<video autoplay loop muted id="myVideo">
    <source src="./saber.mp4" type="video/mp4">
</video>
)
code(Var)
return

::`:src::
Var =
(
<script src="./"></script>
)
code(Var)
SendInput, {left 11}
return

::`:href::
Var =
(
<link rel="stylesheet" href="./">
)
code(Var)
SendInput, {left 2}
return

::test.html::
Var := ajax("https://raw.githubusercontent.com/cbracco/html5-test-page/master/index.html")
code(Var)
return

:?:div#box::
:?:divbox::
:?:boxdiv::
:?:div.box::
:?:box.div::
Var =
(
<div id='box' style='position: absolute;top: 0;left: 0;background:red; width: 10px; height: 10px; border-radius:50`%'></div>
)
code(Var)
return

::wufengscroll::
::scrollforevery::
::foreveryscroll::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/dragscroll/0.0.8/dragscroll.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
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
)
code(Var)
return  

::aotoscroll.html::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/dragscroll/0.0.8/dragscroll.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
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
)
code(Var)
return

::html.div::
Var =
(
<div style='background:red; position:absolute; width: 200px; height: 200px; left: 0px; right: 0px;' id='fuck'>123</div>
)
code(Var)
return

::rx.html::
::rxjs.html::
Var =
(
<!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <title>rxjs demo</title>
    <script src="https://cdn.bootcss.com/rxjs/6.3.3/rxjs.umd.min.js"></script>
</head>
<body>
  <button>test</button>
</body>
<script>
   // https://rxjs-dev.firebaseapp.com/guide/overview#purity
   const button = document.querySelector('button');
   const { fromEvent } = rxjs;
   const { scan } = rxjs.operators;

   fromEvent(button, 'click').pipe(scan(count => count + 1, 0))
        .subscribe(count => console.log(`Clicked ${count} times`));
</script>
)
code(Var)
return

::axios.html::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://libs.cdnjs.net/axios/0.19.2/axios.min.js"></script>
</head>

<body>
    <div id="app"></div>
</body>
<script>

/**
 * get 请求
 */
axios.get('http://192.168.31.97/index.php?a=123').then(response => {
    console.log(20181021221522, response)
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
    console.log(20181021221338, response)
})

/**
 * post application/json;charset=utf-8
 */
axios.post('http://192.168.31.97/index.php', {a: 123}).then(response => {
    console.log(20181021221338, response)
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
	console.log(20181021225057, response)
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
	console.log(20181021225057, response)
})
</script>
</html>
)
code(Var)
return

::wuxianping::
::wuxianp::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>
    <style>
      b { font-size: 24px; }
    </style>
    <body>
       <div id="app">
          <p>alpha(z): 手机在水平面上旋转的角度，当设备的顶部指向正北时其值为 0°。 当设备逆时针旋转时值增加。【0 -360】: <b>{{ alpha }}</b></p>
          <p>beta(x): 围绕x轴上下翻转的角度，当设备的顶部和底部与地球表面等距时其值为 0。【向上翻为负值，-180 - 180】: <b>{{ beta }}</b></p>
          <p>gamma(y): 围绕y轴左右翻转的角度，当设备的左侧和右侧与地球表面等距时 其值为 0。【向左翻为负值， -180 - 180】: <b>{{ gamma }}</b></p>
       </div>
    </body>
    <script>
      // 函数节流（throttle）
      var throttle = function(func, wait, options) {
          var timeout, context, args, result;
          // 标记时间戳
          var previous = 0;
          // options可选属性 leading: true/false 表示第一次事件马上触发回调/等待wait时间后触发
          // options可选属性 trailing: true/false 表示最后一次回调触发/最后一次回调不触发
          if (!options) options = {};

          var later = function() {
            previous = options.leading === false ? 0 : +(new Date());
            timeout = null;
            result = func.apply(context, args);
            if (!timeout) context = args = null;
          };

          var throttled = function() {
            // 记录当前时间戳
            var now = +(new Date());
            // 如果是第一次触发且选项设置不立即执行回调
            if (!previous && options.leading === false)
            // 将记录的上次执行的时间戳置为当前
            previous = now;
            // 距离下次触发回调还需等待的时间
            var remaining = wait - (now - previous);
            context = this;
            args = arguments;

            // 等待时间 <= 0或者不科学地 > wait（异常情况）
            if (remaining <= 0 || remaining > wait) {
              if (timeout) {
                  // 清除定时器
                clearTimeout(timeout);
                // 解除引用
                timeout = null;
              }
              // 将记录的上次执行的时间戳置为当前
              previous = now;

              // 触发回调
              result = func.apply(context, args);
              if (!timeout) context = args = null;
            }
            // 在定时器不存在且选项设置最后一次触发需要执行回调的情况下
            // 设置定时器，间隔remaining时间后执行later
            else if (!timeout && options.trailing !== false)    {
              timeout = setTimeout(later, remaining);
            }
           return result;
          };

          throttled.cancel = function() {
            clearTimeout(timeout);
            previous = 0;
            timeout = context = args = null;
          };

          return throttled;
      };

      var vue = new Vue({
          el: '#app',
          data: {
              alpha: "",
              beta: "",
              gamma: "",
          },
          methods: {
            render (orientData) {
                this.alpha = orientData.alpha || 'null';
                this.beta =  orientData.beta || 'null';
                this.gamma = orientData.gamma || 'null';
            }
          },
          beforeMount: function () {
              const throttle_render = throttle(this.render, 150, { leading: true, trailing: false });
              window.addEventListener('deviceorientation', throttle_render);
          }
      })
    </script>
</html>
)
code(Var)
return

::bd.map::
::bd-map::
::baidu.map::
::baidu-map::
::map.html::
::maphtml::
Var =
(
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style type="text/css">
    html, body {width: 100`%; height: 100`%; margin: 0; padding: 0; overflow: hidden; }
    #container {width: 100`%; height: 100`%; }
    /* 隐藏百度Logo */
    .BMap_cpyCtrl, .anchorBL {display: none; }    </style>
</head>

<body>
    <div id="container"></div>
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=1XjLLEhZhQNUzd93EjU5nOGQ"></script>
    <script type="text/javascript">
    var map = new BMap.Map("container");
    // 创建地图实例（东莞市）
    var point = new BMap.Point(113.76343399, 23.04302382);
    // 创建点坐标
    map.centerAndZoom(point, 13);
    // 是否开启滑轮滚动（默认：false）
    map.enableScrollWheelZoom(true)
    //清除地图覆盖物
    map.clearOverlays(); 
    // 地图自定义样式（午夜风格）
    map.setMapStyle({ style: 'midnight' });
    // 东莞东城区域数据（数据请在这里拿：https://www.cnblogs.com/CyLee/p/9416183.html）
    const data = ''
    // 建立覆盖物
    var ply = new BMap.Polygon(data, {
        strokeWeight: 2,        // 设置线粗
        strokeOpacity: 1,       // 设置透明度0-1
        StrokeStyle: "solid",   // 设置样式为实线solid或虚线dashed
        strokeColor: "#ff0000", // 设置颜色
    }); 
    // 添加覆盖物
    map.addOverlay(ply);       
    // 调整视野     
    map.setViewport(ply.getPath()); 
    </script>
</body>

</html>
)
code(Var)
return

::bootstrap-validate::
::bs.validate::
::bs.validator::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <!-- bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <!-- validator：http://1000hz.github.io/bootstrap-validator/#validator-usage -->
    <script src="https://cdn.staticfile.org/1000hz-bootstrap-validator/0.11.9/validator.js"></script>
    <style>

    </style>

    <body>
        <div id="app">
            <form data-toggle="validator" role="form" id="myForm">
                <div class="form-group">
                    <label for="inputName" class="control-label" >Name</label>
                    <input type="text" class="form-control" v-model="join.name" id="inputName" placeholder="Cina Saffary" required>
                </div>
                <div class="form-group">
                    <label for="inputEmail" class="control-label">Email</label>
                    <input type="email" v-model="join.email" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required>
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>

                <div class="form-group">
                    <input type="button" id="fuck" class="btn btn-primary" @click="handleClick" value="清空数据">
                </div>

                <div class="form-group">
                    <input type="button" id="fuck" class="btn btn-primary" @click="handleClick2" value="添加数据">
                </div>
            </form>
        </div>
    </body>
    <script>
    $(function() {
    	// 手动调用
        // $('#myForm').validator()
    })

    var vue = new Vue({
        el: '#app',
        data: {
            join: {
            	name: '',
            	email: '',
            }
        },
        beforeMount() {
            console.log('hello world');
        },
        methods: {
            handleClick2: function() {
            	this.join = {
            		name: 123,
            		email: '928532756@qq.com'
            	}
            	// 这个的意思是，等数据绑定到UI后，渲染完成之后才触发
            	this.$nextTick(() => {
            		// 原来重置表单是这个API，而不是Update
            		$('#myForm').validator('validate')
            	})
            },
            handleClick: function() {
            	this.join = {}
            }
        }
    })
    </script>

</html>
)
code(Var)
return

::bs.time::
::bs-time::
::bs.date::
::bs-date::
::bs.datepick::
::bs-datepick::
::bootstrap.time::
::bootstrap.date::
::bootstrap:datetime::
::bootstrap-datepick::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

    <!-- bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <!-- bootstrap-datepicker -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css">
    <script src="https://cdn.staticfile.org/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdn.staticfile.org/bootstrap-datepicker/1.8.0/locales/bootstrap-datepicker.zh-CN.min.js"></script>
    <style>
    </style>
<body>
   
<div id="sandbox-container">
    <div class="input-group date">
        <input type="text" class="form-control">
        <div class="input-group-addon">
            <span class="glyphicon glyphicon-th"></span>
        </div>
    </div>
</div>

</body>
<script>
    
    var today = (function(){
        var date = new Date()
        var year = date.getFullYear()
        var month = date.getMonth() + 1
        var day = date.getDate()
        var hours = date.getHours()
        var minu = date.getMinutes()
        var second = date.getSeconds()
        var arr = [month, day, hours, minu, second]
        arr.forEach((item, index) => { arr[index] = item < 10 ? "0" + item : item; })
        return year + '/' + arr[0] + '/' + arr[1]
    }());
    
    /**
     * github: https://github.com/uxsolutions/bootstrap-datepicker
     * 在线配置：https://uxsolutions.github.io/bootstrap-datepicker/
     * 文档地址：https://bootstrap-datepicker.readthedocs.io/en/latest/
     */
    $('#sandbox-container input').val(today).datepicker({
        //...
        format: 'yyyy/mm/dd',
        language: 'zh-CN',
        todayBtn: true,
        todayHighlight: true,
    }).on('changeDate', function(e) {
        console.log('当前值为：', $(e.target).datepicker('getFormattedDate'))
    });
</script>
</html>
)
code(Var)
return

::aa::
::alink::
::ahref::
Var = 
(
<a href="http://www.baidu.com" target='_blank'>百度一下</a>
)
code(Var)
return

::vuehtml::
::vue.html::
::html-all::
::html`:all::
::html.all::
::htmlall::
::allhtml::
::myhtml::
Var = 
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- normalize -->
    <link href="https://cdn.staticfile.org/normalize/8.0.0/normalize.min.css" rel="stylesheet">

    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>

    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

    <!-- bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
)
code(Var)
return

::htmlpure::
::html2::
::purehtml::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
        height: 100`%;
    }

    #app {

    }
    </style>
</head>

<body>
    <div id="app">
      
    </div>
</body>
<script>
    
</script>
</html>
)
code(Var)
return

::html::
::html5::
::html`:5::
Var = 
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/element-ui/2.15.3/index.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/element-ui/2.15.3/theme-chalk/index.min.css" />
    <!-- lodash -->
    <script src="https://cdn.bootcss.com/lodash.js/4.17.11/lodash.min.js"></script>
    <!-- mockjs -->
    <script src="https://cdn.staticfile.org/Mock.js/1.0.0/mock-min.js"></script>
    <!-- axios -->
    <script src="https://cdn.staticfile.org/axios/0.19.0/axios.min.js"></script>
    <!-- moment -->
    <script src="https://cdn.bootcss.com/moment.js/2.23.0/moment.min.js"></script>
    <script src="https://cdn.staticfile.org/moment.js/2.22.1/locale/zh-cn.js"></script>
    
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
}).setup({
    timeout: '1000-3000'
})


$(function() {
    console.log('hello world');
});

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
    beforeMount: function () {
        axios.get("/book/list").then(res => {
            ELEMENT.Message('数据加载完成')
            this.items = res.data.booklist
        })
    }
})
</script>
</html>
)
code(Var)
Return

::meta::
Var = 
(
<meta charset="UTF-8">
<!-- 禁止缩放 -->
<meta name="viewport"content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!-- 设置缩放 -->
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui" />
<!-- 可隐藏地址栏，仅针对IOS的Safari（注：IOS7.0版本以后，safari上已看不到效果） -->
<meta name="apple-mobile-web-app-capable" content="yes" />
<!-- 仅针对IOS的Safari顶端状态条的样式（可选default/black/black-translucent ） -->
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<!-- IOS中禁用将数字识别为电话号码/忽略Android平台中对邮箱地址的识别 -->
<meta name="format-detection"content="telephone=no, email=no" />
其他meta标签
<!-- 启用360浏览器的极速模式(webkit) -->
<meta name="renderer" content="webkit">
<!-- 避免IE使用兼容模式 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 针对手持设备优化，主要是针对一些老的不识别viewport的浏览器，比如黑莓 -->
<meta name="HandheldFriendly" content="true">
<!-- 微软的老式浏览器 -->
<meta name="MobileOptimized" content="320">
<!-- uc强制竖屏 -->
<meta name="screen-orientation" content="portrait">
<!-- QQ强制竖屏 -->
<meta name="x5-orientation" content="portrait">
<!-- UC强制全屏 -->
<meta name="full-screen" content="yes">
<!-- QQ强制全屏 -->
<meta name="x5-fullscreen" content="true">
<!-- UC应用模式 -->
<meta name="browsermode" content="application">
<!-- QQ应用模式 -->
<meta name="x5-page-mode" content="app">
<!-- windows phone 点击无高光 -->
<meta name="msapplication-tap-highlight" content="no">
)
code(Var)
Return

::nocache::
Var =
(
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  
<!-- HTTP 1.1 -->  
<meta http-equiv="pragma" content="no-cache">  
<!-- HTTP 1.0 -->  
<meta http-equiv="cache-control" content="no-cache">  
<!-- Prevent caching at the proxy server -->  
<meta http-equiv="expires" content="0">  
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />  
)
code(Var)
Return

::art::
code("<article></article>")
send, {left 10}
return

::middle::
    SendRaw, vertical-align: middle;
return

::validateimg::
::fetchimg::
Var =
(
// 极限封装版本：
// const validateImage = src => new Promise((onload, onerror) => Object.assign(new Image(), { src, onload, onerror }))

// 正常版本
const validateImage = imgurl => new Promise((resolve, reject) => {
  const ImgObj = new Image()
  ImgObj.src = imgurl
  ImgObj.onload = resolve
  ImgObj.onerror = reject
})

// 多图片验证版本
const validateImages = imgs => imgs.map(img => validateImage(img))

// 使用方式：
;(async function(){
    const pendings = validateImages(fullImages)
    const result = await Promise.all(pendings)
}())
)
code(Var)
return

::img::
Var =
(
<img src="https://via.placeholder.com/100x100" alt="..." />
)
code(Var)
Return


::vuehtml2::
Var = 
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vue -->
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <body>
        <div id="app">
            <div v-for="(v,i) in list">
                <input v-model="list[i].a"></input>
                <select v-model="list[i].b">
                    <option disabled value="">Please select one</option>
                    <option value='1'>A</option>
                    <option value='2'>B</option>
                    <option value='3'>C</option>
                </select>
                <button @click="handleDel"> X </button>
            </div>
            <button @click="handleClick">添加一行</button>
            <button @click="handleSublimt">提交</button>
        </div>
    </body>
    <script>
        // Vue
        new Vue({
            el: '#app',
            data: {
                selected: '',
                list: [
                  {a: '', b: ''},
                  {a: '', b: ''},
                  {a: '', b: ''}
                ]
            },
            methods: {
                handleClick () {
                    this.list.push({a: '', b: ''})
                },
                handleSublimt () {
                    console.log(20180726102759, this.list)
                },
                handleDel (e) {
                    // 这就是使用jquery的好处，这里看情况，不一定只是parent，也可能是parents(xxxx)
                    var index = $(e.target).parent().index()
                    // 删除索引
                    this.list.splice(index, 1)
                }
            }
        })
    </script>

</html>
)
code(Var)
return

::gujia::
::gujiatu::
::newloading::
::Skeleton::
Var =
(
<svg role="img" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <title id="loading-aria">Loading...</title>
    <rect x="0" y="0" width="100`%" height="100`%" clip-path="url(#clip-path)" style='fill: url("#fill");'></rect>
    <defs>
        <clipPath id="clip-path">
            <circle cx="10" cy="20" r="8" />
            <rect x="25" y="15" rx="5" ry="5" width="240" height="10" />
            <circle cx="10" cy="50" r="8" />
            <rect x="25" y="45" rx="5" ry="5" width="240" height="10" />
            <circle cx="10" cy="80" r="8" />
            <rect x="25" y="75" rx="5" ry="5" width="240" height="10" />
            <circle cx="10" cy="110" r="8" />
            <rect x="25" y="105" rx="5" ry="5" width="240" height="10" />
        </clipPath>
        <linearGradient id="fill">
            <stop offset="0.599964" stop-color="#f3f3f3" stop-opacity="1">
                <animate attributeName="offset" values="-2; -2; 1" keyTimes="0; 0.25; 1" dur="2s" repeatCount="indefinite"></animate>
            </stop>
            <stop offset="1.59996" stop-color="#ecebeb" stop-opacity="1">
                <animate attributeName="offset" values="-1; -1; 2" keyTimes="0; 0.25; 1" dur="2s" repeatCount="indefinite"></animate>
            </stop>
            <stop offset="2.59996" stop-color="#f3f3f3" stop-opacity="1">
                <animate attributeName="offset" values="0; 0; 3" keyTimes="0; 0.25; 1" dur="2s" repeatCount="indefinite"></animate>
            </stop>
        </linearGradient>
    </defs>
</svg>
---
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>
<style>
.timeline-item {
   background: #fff;
   border: 1px solid;
   border-color: #e5e6e9 #dfe0e4 #d0d1d5;
   border-radius: 3px;
   padding: 12px;
   margin: 0 auto;
   max-width: 472px;
   min-height: 200px;
}


@keyframes placeHolderShimmer{
    0`% {
        background-position: -468px 0
    }
    100`%{
        background-position: 468px 0
    }
}

.animated-background {
    animation-duration: 1s;
    animation-fill-mode: forwards;
    animation-iteration-count: infinite;
    animation-name: placeHolderShimmer;
    animation-timing-function: linear;
    background: #f6f7f8;
    background: linear-gradient(to right, #eeeeee 8`%, #dddddd 18`%, #eeeeee 33`%);
    background-size: 800px 104px;
    height: 40px;
    position: relative;
}


.background-masker {
    background: #fff;
    position: absolute;
}

.background-masker.header-top,
.background-masker.header-bottom,
.background-masker.subheader-bottom {
    top: 0;
    left: 40px;
    right: 0;
    height: 10px;
}

.background-masker.header-left,
.background-masker.subheader-left,
.background-masker.header-right,
.background-masker.subheader-right {
    top: 10px;
    left: 40px;
    height: 8px;
    width: 10px;
}

.background-masker.header-bottom {
    top: 18px;
    height: 6px;
}

.background-masker.subheader-left,
.background-masker.subheader-right {
    top: 24px;
    height: 6px;
}


.background-masker.header-right,
.background-masker.subheader-right {
    width: auto;
    left: 300px;
    right: 0;
}

.background-masker.subheader-right {
    left: 230px;
}

.background-masker.subheader-bottom {
    top: 30px;
    height: 10px;
}

.background-masker.content-top,
.background-masker.content-second-line,
.background-masker.content-third-line,
.background-masker.content-second-end,
.background-masker.content-third-end,
.background-masker.content-first-end {
    top: 40px;
    left: 0;
    right: 0;
    height: 6px;
}

.background-masker.content-top {
    height:20px;
}

.background-masker.content-first-end,
.background-masker.content-second-end,
.background-masker.content-third-end{
    width: auto;
    left: 380px;
    right: 0;
    top: 60px;
    height: 8px;
}

.background-masker.content-second-line  {
    top: 68px;
}

.background-masker.content-second-end {
    left: 420px;
    top: 74px;
}

.background-masker.content-third-line {
    top: 82px;
}

.background-masker.content-third-end {
    left: 300px;
    top: 88px;
}
</style>
<body>
    <div id="app">
      <div v-for="user in users" class="items" v-if="loading">
        <user-item :name="user.name" :email="user.email"></user-item>
      </div>
      <div v-for="load in loades" v-if="!loading">
        <loading-item></loading-item>
      </div>
    </div>
</body>
<script>
    // https://cloud.tencent.com/developer/article/1006169
    Vue.component('user-item', {
      props: ['email', 'name'],
      template: ``<div>
          <h2 v-text="name"></h2>
          <p v-text="email"></p>
        </div>``
    })

    Vue.component('loading-item', {
      template: ``<div class="animated-background">
         <div class="background-masker header-top"></div>
         <div class="background-masker header-left"></div>
         <div class="background-masker header-right"></div>
         <div class="background-masker header-bottom"></div>
         <div class="background-masker subheader-left"></div>
         <div class="background-masker subheader-right"></div>
         <div class="background-masker subheader-bottom"></div>
       </div>``
    })

    var app = new Vue({
      el: '#app',
      data: {
        users: [],
        loading: false,
        loades: 10
      },
      methods: {
        getUserDetails: function() {
          fetch('https://jsonplaceholder.typicode.com/users')
            .then(result => result.json())
            .then(result => {
              this.users = result
              this.loading = true
            });
        }
      },
      beforeMount: function() {
        setTimeout(() => {
          this.getUserDetails()
        }, 3000);
      }
    });
</script>
</html>
)
txtit(Var)
return
