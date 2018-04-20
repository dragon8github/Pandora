; ____________ CDN _______________
::cdn-jquery3::
    SendInput, <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
Return

::cdn-jquery1.9::
    SendInput, <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
Return

::cdn-jquery::
    SendInput, <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
Return

::cdn-jq::
    SendInput, <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
Return

::cdn-vue::
    SendInput, <script src="https://cdn.bootcss.com/vue/2.5.16/vue.min.js"></script>
Return

::cdn-bs::
    SendInput,
(
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
)
Return

::cdn-bootstrap::
    SendInput,
(
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
)
Return

::cdn-layui::
    SendInput,
(
<link rel="stylesheet" href="http://res.layui.com/layui/dist/css/layui.css?t=1522709297490" media="all">
<script src="http://res.layui.com/layui/dist/layui.js?t=1522709297490"></script>
)
Return

; ____________ Common _______________

::html::
    SendInput,
(
<{!}DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
</head>
<body>

</body>
</html>
)
Return

>^d::
    SendInput, debugger{;}
Return

::$each::
    SendInput, $.each(function (i, e) {{}{}})`;{left 3}{enter} console.log(i, e)`;
Return

::each::
    SendInput, [1,2,3,4].forEach(function (e, i) {{}{}})`;{left 3}{enter} console.log(i, e)`;
Return

::dg::
    SendInput, document.getElementById('')`;{left 3}
Return

::ds::
    SendInput, document.querySelectorAll('')`;{left 3}
Return

>^j::
    RUN, http://youmightnotneedjquery.com/
Return

>^c:: 
    SendInput, console.log('')`;{left 3}
Return

::.then:: 
    SendInput, .then(){left} _=> {{}{}}{left}{enter}// ...
Return

::throw::
    SendInput, throw new Error(e.message){left}^+{left}^+{left}
Return

>!f::
    SendInput, for (var i = 0; i < Things.length; i++) {{}{}}{left}{enter}Things[i]{left 3}^+{left}!{F3}
Return

!f::
    Send, for (var i = 0; i < Things.length; i++) {{}{}}{left}{enter}Things[i]{left 3}^+{left}!{F3}
Return

::$create::
    SendInput, 
(
var wrap = document.createElement("div");
var first = document.body.firstChild;
var wraphtml = document.body.insertBefore(wrap,first);
)
Return

>^a::
    SendInput,
(
$.ajax({{}
url: "http://localhost:8089/index.php",
type: "post",
data: {{}{}},
success: function (data) {{}{}}{left}{enter}console.log(data)`;
)
Return

;_______________ Vue ______________________

>^b:: 
    SendInput, beforeMount () {{}{}}{left}{enter}
Return

>^r:: 
    SendInput, this.$router.push(''){left 2}
Return

>^p:: 
    SendInput, this.$router.push(''){left 2}
Return

>^s:: 
    SendInput, this.$store.state
Return

::dispatch:: 
    SendInput, this.$store.dispatch('').then(_ => {{} {}}){left 2}{enter 2}{up}{tab} // ...
Return

>^f::
    SendInput, v-for='(item, index) in items' :key='index'
Return

::v-for::
    SendInput, v-for='(item, index) in items' :key='index'
Return

;____________________ CSS __________________

::wh::
    SendInput,
(
width: px`;
height: px`;^!{up}^{left}
)
Return

::w::
    SendInput, width: px;^{left}
Return

::h::
    SendInput, height: px;^{left}
Return

::lh::
    SendInput, 
(
height: px;
line-height: px;^!{up}^{left}
)
Return

::text-a::
    SendInput, text-align: center`;
Return

::ta::
    SendInput, text-align: center`;
Return

::fl::
    SendInput, float: left`;
Return

::fr::
    SendInput, float: right`;
Return

::mb::
    SendInput, margin-bottom: px`;{left 3}
Return

::mt::
    SendInput, margin-top: px`;{left 3}
Return

::ml::
    SendInput, margin-left: px`;{left 3}
Return

::mr::
    SendInput, margin-right: px`;{left 3}
Return

::pb::
    SendInput, padding-bottom: px`;{left 3}
Return

::pt::
    SendInput, padding-top: px`;{left 3}
Return

::pl::
    SendInput, padding-left: px`;{left 3}
Return

::pr::
    SendInput, padding-right: px`;{left 3}
Return

::abs::
    SendInput, 
(
position: absolute`;
top: 0px`;
right: 0px`;
bottom: 0px`;
left: 0px`;
)
Return

::b-t::
    SendInput, border-top: 1px solid {#}ccc`;
Return

::b-r::
    SendInput, border-right: 1px solid {#}ccc`;
Return

::b-b::
    SendInput, border-bottom: 1px solid {#}ccc`;
Return

::b-l::
    SendInput, border-left: 1px solid {#}ccc`;
Return

::t-a::
    SendInput, text-align:center`;
Return

::t-c::
    SendInput, text-align:center`;
Return

::t-r::
    SendInput, text-align:right`;
Return

::t-l::
    SendInput, text-align:left`;
Return

::flexc::
    SendInput,
(
display: flex`;
justify-content: center`;
)
Return

::flexa::
    SendInput, 
(
display: flex`;
justify-content: space-around`;
)
Return

::flexs::
    SendInput, 
(
display: flex`;
justify-content: flex-start`;
)
Return

::flexe::
    SendInput, 
(
display: flex`;
justify-content: flex-end`;
)
Return

::flexcc::
    SendInput, 
(
display: flex`;
justify-content: center`;
align-items: center`;
)
Return

::flexac::
    SendInput, 
(
display: flex`;
justify-content: space-around`;
align-items: center`;
)
Return

::flexss::
    SendInput, 
(
display: flex`;
justify-content: flex-start`;
align-items: flex-start`;
)
Return

::flexee::
    SendInput, 
(
display: flex`;
justify-content: flex-end`;
align-items: flex-end`;
)
Return

::before::
    SendInput,
(
::before {{}{}}{left}
content: " "`;
position:absolute`;

)
Return

::after::
    SendInput,
(
::after {{}{}}{left}
content: " "`;
position:absolute`;

)
Return

::center::
    SendInput, 
(
position: absolute`;
left: 50`%`;
top: 50`%`;
transform: translate(-50`%, -50`%)`;
)
Return

::xcenter::
    SendInput, 
(
position: absolute`;
left: 50`%`;
transform: translateX(-50`%)`;
)
Return

::ycenter::
    SendInput, 
(
position: absolute`;
top: 50`%`;
transform: translateY(-50`%)`;
)
Return