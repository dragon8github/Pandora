; ____________ CDN _______________
::cdn-jquery3::
    Send, <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
Return

::cdn-jquery1.9::
    Send, <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
Return

::cdn-jquery::
    Send, <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
Return

::cdn-jq::
    Send, <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
Return

::cdn-vue::
    Send, <script src="https://cdn.bootcss.com/vue/2.5.16/vue.min.js"></script>
Return

::cdn-bs::
    Send,
(
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
)
Return

::cdn-bootstrap::
    Send,
(
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
)
Return

::cdn-layui::
    Send,
(
<link rel="stylesheet" href="http://res.layui.com/layui/dist/css/layui.css?t=1522709297490" media="all">
<script src="http://res.layui.com/layui/dist/layui.js?t=1522709297490"></script>
)
Return

; ____________ Common _______________

::$each::
    Send, 
(
$.each(function (i, e) {{}{}})`;{left 3}{enter} console.log(i, e)`;
)
Return

::each::
    Send, 
(
[1,2,3,4].forEach(function (e, i) {{}{}})`;{left 3}{enter} console.log(i, e)`;
)
Return

::dg::
    Send, document.getElementById('')`;{left 3}
Return

::ds::
    Send, document.querySelectorAll('')`;{left 3}
Return

>^j::
    RUN, http://youmightnotneedjquery.com/
Return

>^c:: 
    Send, console.log('')`;{left 3}
Return

:*:.then:: 
    Send, .then(){left} _=> {{}{}}{left}{enter}// ...
Return

:*:throw::
    Send, throw new Error(e.message){left}^+{left}^+{left}
Return

>!f::
    Send, for (var i = 0; i < Things.length; i++) {{}{}}{left}{enter}Things[i]{left 3}^+{left}!{F3}
Return

+f::
    Send, for (var i = 0; i < Things.length; i++) {{}{}}{left}{enter}Things[i]{left 3}^+{left}!{F3}
Return

::$create::
    Send, 
(
var wrap = document.createElement("div");
var first = document.body.firstChild;
var wraphtml = document.body.insertBefore(wrap,first);
)
Return

>^a::
    Send,
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
    Send, beforeMount () {{}{}}{left}{enter}
Return

>^r:: 
    Send, this.$router.push(''){left 2}
Return

>^p:: 
    Send, this.$router.push(''){left 2}
Return

>^s:: 
    Send, this.$store.state
Return

>^d:: 
    Send, this.$store.dispatch('').then(_ => {{} {}}){left 2}{enter 2}{up}{tab} // ...
Return

>^f::
    Send, v-for='(item, index) in items' :key='index'
Return

:*:v-for::
    Send, v-for='(item, index) in items' :key='index'
Return

;____________________ CSS __________________

::wh::
    Send,
(
width: px`;
height: px`;^!{up}^{left}
)
Return

+w::
    Send, width: px;^{left}
Return

+h::
    Send, height: px;^{left}
Return

::lh::
    Send, 
(
height: px;
line-height: px;^!{up}^{left}
)
Return

::text-a::
    Send, text-align: center`;
Return

::ta::
    Send, text-align: center`;
Return

::fl::
    Send, float: left`;
Return

::fr::
    Send, float: right`;
Return

::mb::
    Send, margin-bottom: px`;{left 3}
Return

::mt::
    Send, margin-top: px`;{left 3}
Return

::ml::
    Send, margin-left: px`;{left 3}
Return

::mr::
    Send, margin-right: px`;{left 3}
Return

::pb::
    Send, padding-bottom: px`;{left 3}
Return

::pt::
    Send, padding-top: px`;{left 3}
Return

::pl::
    Send, padding-left: px`;{left 3}
Return

::pr::
    Send, padding-right: px`;{left 3}
Return

::abs::
    Send, 
(
position: absolute`;
top: 0px`;
right: 0px`;
bottom: 0px`;
left: 0px`;
)
Return

::b-t::
    Send, border-top: 1px solid {#}ccc`;
Return

::b-r::
    Send, border-right: 1px solid {#}ccc`;
Return

::b-b::
    Send, border-bottom: 1px solid {#}ccc`;
Return

::b-l::
    Send, border-left: 1px solid {#}ccc`;
Return

::t-a::
    Send, text-align:center`;
Return

::t-c::
    Send, text-align:center`;
Return

::t-r::
    Send, text-align:right`;
Return

::t-l::
    Send, text-align:left`;
Return

::flexc::
    Send,
(
display: flex`;
justify-content: center`;
)
Return

::flexa::
    Send, 
(
display: flex`;
justify-content: space-around`;
)
Return

::flexs::
    Send, 
(
display: flex`;
justify-content: flex-start`;
)
Return

::flexe::
    Send, 
(
display: flex`;
justify-content: flex-end`;
)
Return

::flexcc::
    Send, 
(
display: flex`;
justify-content: center`;
align-items: center`;
)
Return

::flexac::
    Send, 
(
display: flex`;
justify-content: space-around`;
align-items: center`;
)
Return

::flexss::
    Send, 
(
display: flex`;
justify-content: flex-start`;
align-items: flex-start`;
)
Return

::flexee::
    Send, 
(
display: flex`;
justify-content: flex-end`;
align-items: flex-end`;
)
Return

::before::
    Send,
(
::before {{}{}}{left}
content: " "`;
position:absolute`;

)
Return

::after::
    Send,
(
::after {{}{}}{left}
content: " "`;
position:absolute`;

)
Return

::center::
    Send, 
(
position: absolute`;
left: 50`%`;
top: 50`%`;
transform: translate(-50`%, -50`%)`;
)
Return

::xcenter::
    Send, 
(
position: absolute`;
left: 50`%`;
transform: translateX(-50`%)`;
)
Return

::ycenter::
    Send, 
(
position: absolute`;
top: 50`%`;
transform: translateY(-50`%)`;
)
Return
