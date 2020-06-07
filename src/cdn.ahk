::cdn-mock::
Var =
(
<!-- mockjs -->
<script src="https://cdn.staticfile.org/Mock.js/1.0.0/mock-min.js"></script>
)
code(Var)
return

::cdn-new::
::new.css::
Var =
(
<link rel="stylesheet" href="https://newcss.net/new.min.css">
)
code(Var)
return

::cdn-gaode::
::cdn-map::
Var =
(
<!-- 高德地图 -->
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.10&key=02b84c6bb891ece41093dc5f4d9c5868"></script>
)
code(Var)
return

::cdn-shunfeng::
::cdn-tail::
::cdn-wind::
::cdn-tailwind::
::cdn-utils::
::cdn-utils::
::cdn-css::
Var =
(
<!-- tailwind：https://tailwindcss.com/docs/width -->
<link rel="stylesheet" href="https://cdn.staticfile.org/tailwindcss/1.1.4/tailwind.min.css">
)
code(Var)
return

::cdn-wl::
::cdn-cache::
::cdn-local::
Var =
(
<!-- localforage -->
<script src="https://cdn.staticfile.org/localforage/1.7.3/localforage.min.js"></script>
)
code(Var)
return

::cdn-gaoliang::
::cdn-high::
::cdn-code::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 代码高亮 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/prism/1.16.0/themes/prism-okaidia.min.css">
    <script src="https://cdn.staticfile.org/prism/1.16.0/prism.js"></script>

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
    <script>
        // 可以手动调用，也可以不要。
        Prism.highlightAll()
    </script>
</body>

</html>
)
code(Var)
return

::cdn-tianditu::
::cdn-tianmap::
Var =
(
<script src="http://api.tianditu.gov.cn/api?v=4.0&tk=63c5c4f101d68229494bb45d3bf60277"></script>
)
code(Var)
return

::cdn-amp::
::cdn-amap::
Var =
(
<script src="//webapi.amap.com/maps?v=1.4.15&key=9f1c132e77dc10edf34fe44bec1208a9"></script>
)
code(Var)
return

::cdn-dom2img::
::cdn-dom2image::
::cdn-image::
Var =
(
<!-- https://github.com/tsayen/dom-to-image -->
<script src="https://cdn.staticfile.org/dom-to-image/2.6.0/dom-to-image.min.js"></script>
)
code(Var)
return

::cdn-fake::
::cdn-faker::
Var =
(
<!-- faker -->
<script src="https://cdn.staticfile.org/Faker/3.1.0/faker.min.js"></script>
)
code(Var)
return

::cdn-ele::
::cdn-element::
::cdn-elm::
Var =
(
<!-- element -->
<script src='https://cdn.staticfile.org/element-ui/2.10.1/index.js'></script>
<link rel="stylesheet" href="https://cdn.staticfile.org/element-ui/2.10.1/theme-chalk/index.css">
)
code(Var)
return

::cdn-qiliao::
::cdn-live::
Var =
(
<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css"/>
<script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/autoload.js"></script>
)
code(Var)
return

::cdn-vchart::
::cdn-vuechart::
::cdn-vuechart::
Var =
(
<script src="https://cdn.staticfile.org/vue-chartjs/3.4.2/vue-chartjs.min.js"></script>
)
code(Var)
return

::cdn-water::
Var =
(
<link rel='stylesheet' href='https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/dark.min.css'>
)
code(Var)
return

::cdn-md::
::cdn-mdui::
Var =
(
<!-- https://materializecss.com/getting-started.html -->
<link rel="stylesheet" href="https://cdn.staticfile.org/materialize/1.0.0/css/materialize.min.css">
<script src="https://cdn.staticfile.org/materialize/1.0.0/js/materialize.min.js"></script>
)
code(Var)
return

::cdn-alert::
::cdn-sweetalert::
::cdn-swal::
::cdn-swa::
Var =
(
<!-- https://sweetalert.js.org/guides/ -->
<script src="https://cdn.staticfile.org/sweetalert/2.1.2/sweetalert.min.js"></script>
)
code(Var)
return

; ::cdn-animate::
; ::cdn-animte::
; ::cdn-anime::
; Var =
; (
; <script src="https://cdn.bootcss.com/animejs/2.2.0/anime.min.js"></script>
; )
; code(Var)
; return

::cdn-mapbox::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <title>Document</title>
    <script src="https://cdn.bootcss.com/mapbox-gl/0.52.0-beta.2/mapbox-gl.js"></script>
    <link rel="stylesheet" href="https://cdn.bootcss.com/mapbox-gl/0.52.0-beta.2/mapbox-gl.css"/>
</head>
<style>
</style>

<body>
    <div id='map' style='width: 400px; height: 300px;'></div>
</body>
<script>
mapboxgl.accessToken = 'pk.eyJ1IjoiZHJhZ29uOG1hcGJveCIsImEiOiJjanIwZjZ1aWIwNjZ5NDVxbGZlOXYwY2kwIn0.w2vjF9k4LP3w_BN5xgmdlg';
var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11'
});
</script>

</html>
)
code(Var)
return

::cdn-loda::
::cdn-load::
::cdn-_::
::cdn_::
::cdn-lodash::
Var =
(
<script src="https://cdn.bootcss.com/lodash.js/4.17.11/lodash.min.js"></script>
)
code(Var)
return

::cdn-bs4::
Var =
(
<script src="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
)
code(Var)
return

::cdn-qs::
Var =
(
<script src="https://cdn.bootcss.com/qs/6.5.2/qs.min.js"></script>

Qs.stringify({
  userAccount: 'dgeduc-b',
  userPwd: '123456',
  type: 'account',
})
)
code(Var)
return

::cdn-dragscroll::
::cdn-drag::
Var =
(
<script src="https://cdn.bootcss.com/dragscroll/0.0.8/dragscroll.min.js"></script>
)
code(Var)
return

::cdn-vconsole::
::cdn-console::
Var =
(
<script src="https://cdn.bootcss.com/vConsole/3.2.0/vconsole.min.js"></script>
)
code(Var)
return

::cdn-log4::
::cdn-log::
::cdn-log4js::
Var =
(
<script src="https://cdn.bootcss.com/log4javascript/1.4.9/log4javascript_lite.min.js"></script>
)
code(Var)
return

::cdn-ramda::
::cdn-ramda.js::
Var =
(
<script src="https://cdn.bootcss.com/ramda/0.25.0/ramda.min.js"></script>
)
code(Var)
return

::cdn-rx::
::cdn-rxjs::
::cdn-rx.js::
Var =
(
<!-- <script src="https://cdn.bootcss.com/rxjs/6.4.0/rxjs.umd.min.js"></script> -->
<script src="https://unpkg.com/rxjs/bundles/rxjs.umd.min.js"></script>
)
code(Var)
return

::cdn-moment::
Var =
(
<script src="https://cdn.bootcss.com/moment.js/2.23.0/moment.min.js"></script>
<script src="https://cdn.staticfile.org/moment.js/2.22.1/locale/zh-cn.js"></script>
)
code(Var)
return

::cdn-3d::
::cdn-three::
::cdn-threejs::
Var =
(
<script src="https://cdn.staticfile.org/three.js/92/three.min.js"></script>
)
code(Var)
return


::cdn-req::
::cdn-require::
::cdn-requirejs::
::cdn-require.js::
Var =
(
<script src="https://cdn.staticfile.org/require.js/2.3.5/require.min.js"></script>
)
code(Var)
return


::cdn-scroll::
::cdn-nice::
::cdn-nicescroll::
Var =
(
<script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
)
code(Var)
return

::cdn-bd::
::cdn-bdmap::
::cdn-bmap::
::cdn-baidu::
::cdn-baidumap::
::cdn-echartbd::
::cdn-echartsbd::
Var =
(
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=1XjLLEhZhQNUzd93EjU5nOGQ"></script>
<script src="http://echartsjs.com/examples/vendors/echarts/extension/bmap.js?_v_=1536959211921"></script>
<!-- 聚合图相关的插件 -->
<script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>
)
code(Var)
return

::cdn-echarts::
::cdn-echart::
Var =
(
<script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
)
code(Var)
return

::cdn-prop::
::cdn-propTypes::
::cdn-propType::
Var =
(
<!-- https://github.com/facebook/prop-types -->
<script src="https://cdn.staticfile.org/prop-types/15.6.1/prop-types.min.js"></script>
)
code(Var)
return

::cdn-upload::
::cdn-webupload::
Var =
(
<!-- https://www.bootcdn.cn/webuploader/ -->
<script src="https://cdn.staticfile.org/webuploader/0.1.1/webuploader.min.js"></script>
<link href="https://cdn.staticfile.org/webuploader/0.1.1/webuploader.css" rel="stylesheet">
)
code(Var)
return


::cdn-redux::
Var =
(
<script src="https://cdn.staticfile.org/redux/4.0.0/redux.min.js"></script>
)
code(Var)
return

::cdn-ie::
::cdn-html5::
Var =
(
<!--[if lt IE 9]>
　　<script src="//cdn.bootcss.com/respond.js/1.4.2/respond.js"></script>
　　<script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<![endif]-->
)
code(Var)
return


::cdn-store::
Var = 
(
<!-- https://github.com/marcuswestin/store.js -->
<script src="https://cdn.staticfile.org/store.js/1.3.20/store.min.js"></script>
)
return

::cdn-eruda::
::cdn-vconsole::
::cdn-console::
::cdn-log::
::cdn-debug::
::cdn-debugger::
::vconsole::
Var = 
(
<script src="//cdn.bootcss.com/eruda/1.4.2/eruda.min.js"></script>
<script>eruda.init();</script>
)
code(Var)
return

::cdn-animate::
::cdn-anim::
Var = 
(
<!-- https://github.com/daneden/animate.css | https://daneden.github.io/animate.css/ | <h1 class="bounce animated">Example</h1> -->
<link href="https://cdn.staticfile.org/animate.css/3.5.2/animate.min.css" rel="stylesheet">
)
code(Var)
return

::cdn-iview::
Var = 
(
<script type="text/javascript" src="http://unpkg.com/iview/dist/iview.min.js"></script>
<link rel="stylesheet" type="text/css" href="http://unpkg.com/iview/dist/styles/iview.css">
)
code(Var)
return

::cdn-fa::
::cdn-font::
Var =
(
<link href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
)
code(Var)
return

::cdn-axios::
Var =
(
<script src="https://libs.cdnjs.net/axios/0.19.2/axios.min.js"></script>
)
code(Var)
Return

::cdn-swiper::
Var = 
(
<link href="https://cdn.staticfile.org/Swiper/4.2.2/css/swiper.css" rel="stylesheet">
<script src="https://cdn.staticfile.org/Swiper/4.2.2/js/swiper.min.js"></script>
)
code(Var)
Return

::cdn-jquery3::
::cdn-jq3::
Var = 
(
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
)
code(Var)
Return

::cdn-jq::
::cdn-jquery1.9::
::cdn-jquery::
Var = 
(
<script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
)
code(Var)
Return


::cdn-vue::
Var = 
(
<script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
)
code(Var)
Return

::cdn-bs::
::cdn-bootstrap::
::cdn-bs3::
Var = 
(
<!-- bootstrap 3.3.6 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
)
code(Var)
Return

::cdn-reset::
Var = 
(
<link href="https://cdn.staticfile.org/minireset.css/0.0.2/minireset.min.css" rel="stylesheet">
)
code(Var)
return

::cdn-normalize::
Var = 
(
<link href="https://cdn.staticfile.org/normalize/8.0.0/normalize.min.css" rel="stylesheet">
)
code(Var)
return
