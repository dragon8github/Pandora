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


::form::
::css.form::
Var =
(
<div class="flex items-center h-screen w-full bg-teal-lighter">
    <div class="w-full bg-white rounded shadow-lg p-8 m-4">
        <h1 class="block w-full text-center text-grey-darkest mb-6">Sign Up</h1>
        <form class="mb-4" action="/" method="post">
            <div class="flex flex-col mb-4">
                <label class="mb-2 uppercase font-bold text-lg text-grey-darkest" for="first_name">First Name</label>
                <input class="border py-2 px-3 text-grey-darkest" type="text" name="first_name" id="first_name" />
            </div>
            <div class="flex flex-col mb-4">
                <label class="mb-2 uppercase font-bold text-lg text-grey-darkest" for="last_name">Last Name</label>
                <input class="border py-2 px-3 text-grey-darkest" type="text" name="last_name" id="last_name" />
            </div>
            <div class="flex flex-col mb-4">
                <label class="mb-2 uppercase font-bold text-lg text-grey-darkest" for="email">Email</label>
                <input class="border py-2 px-3 text-grey-darkest" type="email" name="email" id="email" />
            </div>
            <div class="flex flex-col mb-6">
                <label class="mb-2 uppercase font-bold text-lg text-grey-darkest" for="password">Password</label>
                <input class="border py-2 px-3 text-grey-darkest" type="password" name="password" id="password" />
            </div>
            <button class="block bg-blue-700 hover:bg-teal-dark text-white uppercase text-lg mx-auto p-4 rounded" type="submit">Create Account</button>
        </form>
        <a class="block w-full text-center no-underline text-sm text-grey-dark hover:text-grey-darker" href="/login">Already have an account?</a>
    </div>
</div>
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



::html.card::
::card::
Var =
(
<div class="container mx-auto py-10">
            <div class="border m-6 rounded-lg  bg-white mx-auto max-w-sm shadow-lg rounded-lg overflow-hidden">
                <div class="sm:flex sm:items-center px-6 py-4">
                    <img class="block h-16 sm:h-24 rounded-full mx-auto mb-4 sm:mb-0 sm:mr-4 sm:ml-0" src="https://api.adorable.io/avatars/196/abott@adorable.png" alt="" />
                    <div class="text-center sm:text-left sm:flex-grow">
                        <div class="mb-4">
                            <p class="text-xl leading-tight">Jane Doe</p>
                            <p class="text-sm leading-tight text-grey-dark">Software Developer at SpongeBob LLC.</p>
                        </div>
                        <div class="flex flex-wrap">
                            <button class=" text-xs font-semibold rounded-full px-4 py-1 mx-3  leading-normal bg-white border border-blue text-blue hover:bg-blue hover:text-white">Call</button>
                            <button class="  text-xs font-semibold rounded-full px-4 py-1 leading-normal bg-white border border-purple text-purple hover:bg-purple hover:text-white">Message</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
)
code(Var)
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

::socket::
Var =
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
)
code(Var)
return

::css.table::
::table::
Var =
(
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

::div#box::
::divbox::
::box::
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
    <!-- tailwind：https://tailwindcss.com/docs/width -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/tailwindcss/1.1.4/tailwind.min.css">
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
    <script src='https://cdn.staticfile.org/element-ui/2.10.1/index.js'></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/element-ui/2.10.1/theme-chalk/index.css">
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
<img src="https://iph.href.lu/400x400" alt="..." />
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
code(Var)
return
