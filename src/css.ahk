::loading::
Var =
(
.is-loading::after {
	content: '';
	display: block;
	position: absolute;
	top: 0; right: 0; bottom: 0; left: 0;
	background: rgba(255, 255, 255, 0.7) url('~@/assets/loading.gif') center center / 120px 120px  no-repeat;
}
)
code(Var)
return

::nth::
	Menu, NthMenu, Add, :nth-child(n), nthHandle
	Menu, NthMenu, Add, :nth-child(even), nthHandle
	Menu, NthMenu, Add, :nth-child(odd), nthHandle
	Menu, NthMenu, Add, :last-child, nthHandle
	Menu, NthMenu, Add, :first-child, nthHandle
	Menu, NthMenu, Add, :nth-child(2n), nthHandle
	Menu, NthMenu, Add, :nth-child(2n + 1), nthHandle

	Menu, NthMenu, Show
	Menu, NthMenu, DeleteAll
return

nthHandle:
	code(A_ThisMenuItem)
return


::animatenum::
Var =
(
// 这是js代码
$.fn.extend({
    'animateNums': function(opts){
        function AnimateNums(ele){
            this.opts = $.extend(true, {}, AnimateNums.DEFAULTS, opts);

            this.$ele = $(ele);
            this._init();
        }

        AnimateNums.DEFAULTS = {
            html: '<i><div>0<br>1<br>2<br>3<br>4<br>5<br>6<br>7<br>8<br>9<br></div></i>'
        };

        /**
         * 初始化入口
         * @private
         */
        AnimateNums.prototype._init = function(){
            var $ele = this.$ele;
            var amount = $ele.attr('data-num').replace(/\B(?=(?:\d{3})+(?!\d))/g, ',').split(',');
            var amountStr = amount.map(function(val){
                return '<span class="amount-span" data-animatenum="'+ val +'"></span>'
            }).join(',');
            if($ele.find('i').length != $ele.attr('data-num').length){
                $ele.html(amountStr);
            }else{
                var $span = $ele.children('span');
                for(var i = 0,len = $span.length; i < len; i++){
                    $span.eq(i).attr('data-animatenum', amount[i]);
                }
            }

            this.scrollNum($ele.children('.amount-span'), $ele.attr('data-height'));
        };

        AnimateNums.prototype.scrollNum = function(ele, lineHeight){
            var opts = this.opts;

            ele.each(function(){
                var $me = $(this);
                var num = $me.attr('data-animatenum');

                $me.find('div').stop();

                var it = $me.children('i');     //i
                var len = String(num).length;

                for(var i = 0; i < len; i++){
                    if(it.length <= i){
                        $me.append(opts['html']);
                    }

                    var number = String(num).charAt(i);
                    var y;
                    try{
                        y = - parseInt(number) * lineHeight;
                    }catch (err){
                        console.log('"data-height"只能是数字');
                    }

                    $me.children('i').eq(i).children('div').animate({ top: y + 'px'}, 1000);
                }

            });
        };


        return this.each(function(){
            new AnimateNums(this);
        })
    }
})

// 这是html
<div class='overallSituationOfTheProblem__core--num animatenum' data-height="79" :data-num="toThousands(overallSituationOfTheProblemLeft.rows[0].count)"></div>


this.$nextTick(() => {
  // 这是调用的js
  $('.animatenum').animateNums();
})

// 这是基础scss
@mixin animatenum ($w, $h, $f) {
&.animatenum {
    font-family: 'LESLIE-Regular';
    display:inline-block;
    height:$h;
    line-height:$h; 
    font-size: $f;
    color:#FFF;
}

    &.animatenum  span.amount-span{
        display:inline-block;
        vertical-align:middle;
    }

    &.animatenum  i{
        font-style:normal;
        width: $w;
        height: $h;
        float:left;
        position:relative;
        overflow:hidden;
    }

    &.animatenum  div{
        line-height:$h;
        position:absolute;
    }
}


<style lang="scss">
@import "~@/scss/functions.scss";
.overallSituationOfTheProblem__core--num {
  @include animatenum(40px, 79px, 79px);
}
</style>

)
code(Var)
return



::`:nth::
::nth::
Var =
(
&:nth-child(1)
)
code(Var)
return

::css.scroll::
::css.scrollbar::
Var =
(
.dropUl::-webkit-scrollbar {
    width: 5px;     
    height: 0;
}
.dropUl::-webkit-scrollbar-thumb {
    border-radius: 2px;
    -webkit-box-shadow: inset 0 0 2px rgba(0,0,0,0.2);
    background: #d1d4db;
}
.dropUl::-webkit-scrollbar-track {
    -webkit-box-shadow: none;
    border-radius: 0px;
    background: #EDEDED;
}
)
code(Var)
return

::css.table::
Var =
(
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
code(Var)
return

::oh::
Var =
(
overflow: hidden;
)
code(Var)
return

::css.after::
::css.before::
Var =
(
position: relative;

&::before {
	content: '';
	position: absolute;
	top: 0; right: 0; bottom: 0; left: 0;
}
)
code(Var)
return


::border::
Var =
(
border:1px solid #ccc;
)
code(Var)
return

::@import::
::@i::
Var =
(
@import "~@/scss/functions.scss";
)
code(Var)
return

::css.i::
::css.yuan2::
::css.num::
::css.biaoji::
::css.badge::
::css.unread::
::css.kuai::
Var =
(
.unread {
    position: absolute;
    top: 0;
    width: 20px;
    height: 20px;
    line-height: 16px;
    background-color: red;
    border-radius: 50`%;
    text-align: center;
    font-size: 15px;
    font-weight: bold;
    font-style: normal;
}
)
code(Var)
return

::css.fugaiwu::
Var =
(
position: absolute;
top: 0; left: 0;
width: 180px;
height: 60px;
cursor: pointer;
opacity: 0;
z-index: 9999;
)
code(Var)
return

::css.shu::
::css.zhu::
::css.link::
::css.line::
::css.xian::
Var =
(
content: '';
position: absolute;
left: 50`%;
top: 50`%;
transform: translate(-50`%, -50`%);
width: 1px;
height: 60px;
background-color: rgba(255,255,255, .38);
)
code(Var)
return

::flex::

	; try 异常处理
    Menu, A, Add, justify-content: flex-start , flexHandler
    Menu, A, Add, justify-content: center , flexHandler
    Menu, A, Add, justify-content: flex-end, flexHandler
    Menu, A, Add, justify-content: space-around, flexHandler
	Menu, A, Add, justify-content: space-between, flexHandler

    Menu, B, Add, flex-start, flexHandler
    Menu, B, Add, flex-end, flexHandler
    Menu, B, Add, center, flexHandler
    Menu, B, Add, stretch, flexHandler
    Menu, B, Add, baseline, flexHandler
    
    Menu, C, Add, row(默认)：从左到右, flexHandler
    Menu, C, Add, column：从上到下, flexHandler
	

    Menu, flexMenu, Add, justify-content, :A
    Menu, flexMenu, Add, align-items, :B
    Menu, flexMenu, Add, flex-direction, :C
    Menu, flexMenu, Add, flex-wrap, flexHandler

	Menu, flexMenu, Show
	Menu, flexMenu, DeleteAll
return


flexHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=


if (v == "justify-content: flex-start") {
Var = 
(
justify-content: flex-start;
)
}

if (v == "justify-content: center") {
Var = 
(
justify-content: center;
)
}

if (v == "justify-content: flex-end") {
Var = 
(
justify-content: flex-end;
)
}

if (v == "justify-content: space-around") {
Var = 
(
justify-content: space-around;
)
}

if (v == "space-between") {
Var = 
(
justify-content: space-between;
)
}

if (v == "flex-start") {
Var = 
(
align-items: flex-start;
)
}

if (v == "flex-end") {
Var = 
(
align-items: flex-end;
)
}

if (v == "center") {
Var = 
(
align-items: center;
)
}

if (v == "stretch") {
Var = 
(
align-items: stretch;
)
}

if (v == "baseline") {
Var = 
(
align-items: baseline;
)
}

if (v == "row(默认)：从左到右") {
Var = 
(
flex-direction: row;
)
}

if (v == "column：从上到下") {
Var = 
(
flex-direction: column;
)
}

if (v == "flex-wrap") {
Var = 
(
flex-wrap: wrap;
)
}


code(Var)
Menu, flexMenu, Show
return

::css.pl::
::css.placeholder::
Var =
(
::-webkit-input-placeholder {
color: #41508a;
}
:-moz-placeholder {
color: #41508a;
}
::-moz-placeholder {
color: #41508a;
}
:-ms-input-placeholder {
color: #41508a;
}
)
code(Var)
return

::css.search::
Var =
(
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <title>Document</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- jquery -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>
    <style>
      ::-webkit-input-placeholder { 
        color: #41508a; 
      } 
      :-moz-placeholder { 
        color: #41508a; 
      } 
      ::-moz-placeholder { 
        color: #41508a; 
      } 
      :-ms-input-placeholder { 
        color: #41508a; 
      } 

      .search {
          width: 224px;
          height: 41px;
          background-color: #040e35;
          border: solid 1px #0867ab;
          display: inline-block;
          position: relative;
      }
      
        .search__input {
           position: absolute; 
           width: 100`%;
           height: 100`%;
           background: transparent;
           border: 0;
           padding-left: 10px;
        }

        .search__icon {
            position: absolute;
            top: 50`%;
            transform: translateY(-50`%);
            right: 9px;
            width: 27px;
            height: 27px;
            background: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAbCAYAAACN1PRVAAACv0lEQVRIia3WP4gdVRTH8c97u1FXybguacIU+UNwFQQlkUQ0hYUQEkiTaKe2ShC0iXGwEZRMGi0UtLEQK/+grUVQWBIhXVizYDak2WUnFv4LE9lks6yxOHfg+XzzdveZHzzmzz0z37n3nvM7r7P1rSVDNIZp7MYUxrGMJczhel3mw57/lzotsAkcxXPIWp69g0v4ti7zy6PCHsNrmMSamMEsfsOtdH8P9mJbeuYHfFaX+e3NwA7iBLqYwRf4E1uwAw/hb1zBX3gaL6b78zhTl/nNNli3b0YnxPJ8hE/QwSv4FKewE7/gRor7EW8m+DRez4qqsx5sQixdFx+nlxzA+3gW36fxr3Gt9wV1md/AGSziCRxaD3ZU7MVMD+iNNHYan2Ol7SV1mS/jQ7HHx7OimmiDjYmsW8OXIsVfFcnwjsi4dVWX+VL62K3Y3wabFuk9hz/wPO7DB1jYCKhH59PxQBtsdzr/SRTtM/jOBmfUp3mx3LvaYFPp/FeRbbfx1QggdZmv4XdRCgNh4+l8JQWdFfs1qloLuyu8Dh4UBXu+LXiDmsRqG6yxkD2iOK8NCtyIsqKaSrCqDTYn3GCvsKD/oyfTcWBydXE9AbcJrxtJWVGN4XC6HLgVjYN8k44viaIcRcewHRfrMh9Ynw3ssmgTkziJ+zdDyYrqII6ny3uzojqSFdWW/rjeFnMP3haOsii8bmgbF1Z3LP363f6KaDlNtv+nn00IA35ceOWMWP/5dN1oSiTDYbF0bbqK0w1wUKfuiDbxAh5I91aEMzSFP9kTfzF95CPrAdv+gzSz3I+nhI01FrQq6ugSztVlvpgV1RG8PGSGP+O98SEBN8UyzgyJaXQ2fdTDLeOPYl+3ZXBTqst8VXTrq0PCtt8VWAIui67eBly4a7A+YP//yAuYHbZnIwOzonoX+0RZLGC2LvM7/wCUZ8MA/OFE7QAAAABJRU5ErkJggg==') center / 100`% 100`% no-repeat;
            display: inline-block;
        }
    </style>
    <body>
       <label class="search">
          <input class="search__input" type="text" placeholder="请输入企业名称检索...">
          <i class="search__icon"></i>
       </label>
    </body>
    <script>
      
    </script>
</html>
)
code(Var)
return

::css.yuandian::
::css.radio::
::css.yuan::
Var =
(
content: '';
position: absolute;
top: 50`%;
transform: translateY(-50`%);
left: -8px;
width: 6px;
height: 7px;
background-color: #0b76c3;
border-radius: 50`%;
)
code(Var)
return

::wh::
Var =
(
width: px;
height: px;
)
code(Var)
return

::@font::
::css.font::
::fontfamily::
::font.family::
Var =
(
@font-face{
    font-family: 'LESLIE-Regular';
    src : url('../fonts/LESLIEB.TTF');
}
)
code(Var)
return

::opa::
    Send, opacity
return

::reset.css::
::normalize.css::
Var =
(
/*! normalize.css v8.0.0 | MIT License | github.com/necolas/normalize.css */html{line-height:1.15;-webkit-text-size-adjust:100`%}body{margin:0}h1{font-size:2em;margin:.67em 0}hr{box-sizing:content-box;height:0;overflow:visible}pre{font-family:monospace,monospace;font-size:1em}a{background-color:transparent}abbr[title]{border-bottom:none;text-decoration:underline;text-decoration:underline dotted}b,strong{font-weight:bolder}code,kbd,samp{font-family:monospace,monospace;font-size:1em}small{font-size:80`%}sub,sup{font-size:75`%;line-height:0;position:relative;vertical-align:baseline}sub{bottom:-.25em}sup{top:-.5em}img{border-style:none}button,input,optgroup,select,textarea{font-family:inherit;font-size:100`%;line-height:1.15;margin:0}button,input{overflow:visible}button,select{text-transform:none}[type=button],[type=reset],[type=submit],button{-webkit-appearance:button}[type=button]::-moz-focus-inner,[type=reset]::-moz-focus-inner,[type=submit]::-moz-focus-inner,button::-moz-focus-inner{border-style:none;padding:0}[type=button]:-moz-focusring,[type=reset]:-moz-focusring,[type=submit]:-moz-focusring,button:-moz-focusring{outline:1px dotted ButtonText}fieldset{padding:.35em .75em .625em}legend{box-sizing:border-box;color:inherit;display:table;max-width:100`%;padding:0;white-space:normal}progress{vertical-align:baseline}textarea{overflow:auto}[type=checkbox],[type=radio]{box-sizing:border-box;padding:0}[type=number]::-webkit-inner-spin-button,[type=number]::-webkit-outer-spin-button{height:auto}[type=search]{-webkit-appearance:textfield;outline-offset:-2px}[type=search]::-webkit-search-decoration{-webkit-appearance:none}::-webkit-file-upload-button{-webkit-appearance:button;font:inherit}details{display:block}summary{display:list-item}template{display:none}[hidden]{display:none}
)
code(Var)
return

::link.icon::
::link-icon::
::icon::
Var =
(
<link rel="icon" href="images/favicon.png" type="image/x-icon">
)
code(Var)
return

::@shanlan::
::@shange::
::@lanshan::
::@wangge::
::shanlan::
::shange::
::lanshan::
::wangge::
Var =
(
xs —— 超小屏幕 手机 (<768px) 
sm —— 小屏幕 平板 (≥768px)
md —— 中等屏幕 桌面显示器 (≥992px)
lg —— 大屏幕 大桌面显示器 (≥1200px)
)
code(Var)
return

::fuckrem::
::fuck-rem::
::myrem::
::my-rem::
::rem.css::
::rem.scss::
Var = 
(
/*
 (function flexible (window, document) {
   var docEl = document.documentElement
   // set 1rem = viewWidth / 10
   function setRemUnit () {
     var rem = docEl.clientWidth / 10
     docEl.style.fontSize = rem + 'px'
   }
   setRemUnit()
   // reset rem unit on page resize
   window.addEventListener('resize', setRemUnit)
   window.addEventListener('pageshow', function (e) {
     if (e.persisted) {
       setRemUnit()
     }
   })
 }(window, document))
*/

// rem 单位换算：定为 75px 只是方便运算，750px-75px、640-64px、1080px-108px，如此类推
$vw_fontsize: 75; // iPhone 6尺寸的根元素大小基准值
@function rem($px) {
    @return ($px / $vw_fontsize ) * 1rem;
}
// 根元素大小使用 vw 单位
$vw_design: 750;
html {
    font-size: ($vw_fontsize / ($vw_design / 2)) * 100vw;
    // 同时，通过Media Queries 限制根元素最大最小值
    @media screen and (max-width: 320px) {
        font-size: 64px;
    }
    @media screen and (min-width: 540px) {
        font-size: 108px;
    }
}
// body 也增加最大最小宽度限制，避免默认100`%宽度的 block 元素跟随 body 而过大过小
body {
    max-width: 540px;
    min-width: 320px;
}
)
code(Var)
return

::full-bg::
::fullbg::
::full.bg::
Var = 
(
html { 
    background: url('images/bg.jpg') no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
)
code(Var)
return

::toum::
::touming::
Var = 
(
.transparent {
    filter: alpha(opacity=50); /* internet explorer */
    -khtml-opacity: 0.5;      /* khtml, old safari */
    -moz-opacity: 0.5;       /* mozilla, netscape */
    opacity: 0.5;           /* fx, safari, opera */
}
)
code(Var)
return

::loading...::
Var = 
(
.loading:after {
    overflow: hidden;
    display: inline-block;
    vertical-align: bottom;
    animation: ellipsis 2s infinite;
    content: "\2026"; /* ascii code for the ellipsis character */
}
@keyframes ellipsis {    from {
        width: 2px;
    }
    to {
        width: 15px;
    }
}
)
code(Var)
return

::.clear::
Var = 
(
.clear::after {
    content: '';
    display: table;
    clear: both;
}
)
code(Var)
return

::yuan::
    SendRaw, border-radius: 50`%;
return

::bbr::
    SendRaw, border-radius: 4px;
return

::cu::
    Send, cursor: pointer;
return

::white::
    Send, white-space: nowrap;
return

::scrollbar::
Var = 
(
/**
 * 滚动条修饰
 */
::-webkit-scrollbar {
  width: 5px;
  height: 5px;
}

::-webkit-scrollbar-track,
::-webkit-scrollbar-corner {
  background-color: #e2e2e2;
}

::-webkit-scrollbar-thumb {
  border-radius: 0;
  background-color: rgba(0, 0, 0, 0.3);
}

::-webkit-scrollbar-track,
::-webkit-scrollbar-corner {
  background-color: #e2e2e2;
}
)
code(Var)
return


::bg-cover::
    SendRaw, background: url(img/tiger.jpg) 0 / cover;
return

::@bg::
SendInput,
(
width: 44px`;
height: 44px`;
background: url('https://iph.href.lu/100x100') center / 100`% 100`% no-repeat`;
display: inline-block`;
)
return

::size::
    SendInput,
(
width: px`;
height: px`;
)
return

::fs::
    SendInput, font-size: 16px`;{left 3}+{left 2}
Return

::bg::
    SendInput,background: url('https://iph.href.lu/100x100') center center / 130px 130px no-repeat content-box`;
Return

::bgc::
    SendInput, background-color: {#}ffffff`;{left}+{left 6}
Return

::bgi::
    SendInput, background: url('') no-repeat`;{left 13}
Return

::margin::
    SendRaw, margin: 0 auto;
return

::arrow.updown::
::arrowupdown::
Var =
(
&::before, &::after {
  content: '';
  display: inline-block;
  position: absolute;
  right: 15px;
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  width: 0;
  height: 0;
}
&:active { background-color:#EBEBEB; }
&::after {top: 12px; border-bottom: 8px solid #333; }
&::before {bottom: 12px; border-top: 8px solid #333; }
&.is-up::after {border-bottom: 8px solid #C4B484; }
&.is-down::before {border-top: 8px solid #C4B484; }
)
code(Var)
return

::arrow::
Var = 
(
.triangle {
    border-left: 50px solid transparent;
    border-right: 50px solid transparent;
    border-bottom: 50px solid orange;
    width: 0;
    height: 0;
}
)
code(Var)
return

::arrow-top::
::arrow-up::
::arrow.top::
::arrow.up::
::arrowtop::
::arrowup::
Var = 
(
.triangle {
    border-left: 50px solid transparent;
    border-right: 50px solid transparent;
    border-bottom: 50px solid orange;
    width: 0;
    height: 0;
}
)
code(Var)
return

::arrow-right::
::arrow.right::
::arrowright::
Var = 
(
.triangle {
    border-top: 50px solid transparent;
    border-bottom: 50px solid transparent;
    border-left: 50px solid orange;
    width: 0;
    height: 0;
}
)
code(Var)
return

::arrow-bottom::
::arrow.bottom::
::arrowbottom::
::arrow-down::
::arrow.down::
::arrowdown::
Var = 
(
.triangle {
    border-left: 50px solid transparent;
    border-right: 50px solid transparent;
    border-top: 50px solid orange;
    width: 0;
    height: 0;
}
)
code(Var)
return

::arrow-left::
::arrow.left::
::arrowleft::
Var = 
(
.triangle {
    border-top: 50px solid transparent;
    border-bottom: 50px solid transparent;
    border-right: 50px solid orange;
    width: 0;
    height: 0;
}
)
code(Var)
return

::curp::
Var =
(
cursor: pointer;
)
code(Var)
return

::ell::
::shengluehao::
Var =
(
overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
)
code(Var)
Return

::lh::
    SendInput, 
(
height: px;
line-height: px;^!{up}^{left}
)
Return

::ta::
    SendInput, text-align: center`;
Return

::tc::
    SendInput, text-align: center`;
Return

::tl::
    SendInput, text-align: left`;
Return

::tr::
    SendInput, text-align: right`;
Return

::fl::
    SendInput, float: left`;
Return

::fr::
    SendInput, float: right`;
Return

::bt::
    SendInput, border-top: 1px solid {#}ccc`;
Return

::br::
    SendInput, border-right: 1px solid {#}ccc`;
Return

::bb::
    SendInput, border-bottom: 1px solid {#}ccc`;
Return

::bl::
    SendInput, border-left: 1px solid {#}ccc`;
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

::db::
    SendRaw, display: block;
return

::posa::
Var = 
(
position: absolute;
top: 0; right: 0; bottom: 0; left: 0;
)
code(Var)
Return

::posr::
    SendRaw, position: relative;
Return

::posf::
    SendInput, 
(
position: fixed`;
left: 0`;
right: 0`;
top: 0`;
z-index: 199307100337`;
)
Return

::box::
    SendInput,box-sizing: border-box`;
Return

::flexw::
Var = 
(
display: flex;
flex-wrap: wrap;
)
code(Var)
return

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

::flexcs::
    SendInput, 
(
display: flex`;
justify-content: center`;
align-items: flex-start`;
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

::flexae::
    SendInput, 
(
display: flex`;
justify-content: space-around`;
align-items: flex-end`;
)
Return

::flexce::
    SendInput, 
(
display: flex`;
justify-content: center`;
align-items: flex-end`;
)
Return

::flexse::
    SendInput, 
(
display: flex`;
justify-content: flex-start`;
align-items: flex-end`;
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

::flexb::
Var = 
(
display: flex;
justify-content: space-between;
align-items: center;
)
code(Var)
return

::flexbs::
Var = 
(
display: flex;
justify-content: space-between;
align-items: flex-start;
)
code(Var)
return

::flexbc::
Var = 
(
display: flex;
justify-content: space-between;
align-items: center;
)
code(Var)
return

::flexbe::
Var = 
(
display: flex;
justify-content: space-between;
align-items: flex-end;
)
code(Var)
return

::flexss::
    SendInput, 
(
display: flex`;
justify-content: flex-start`;
align-items: flex-start`;
)
Return

::flexes::
    SendInput, 
(
display: flex`;
justify-content: flex-end`;
align-items: flex-start`;
)
Return

::flexas::
    SendInput, 
(
display: flex`;
justify-content: space-around`;
align-items: flex-start`;
)
Return

::flexsc::
    SendInput, 
(
display: flex`;
justify-content: flex-start`;
align-items: center`;
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

::flexec::
    SendInput, 
(
display: flex`;
justify-content: flex-end`;
align-items: center`;
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

::@media::
Var = 
(
/* 移动设备断点，视图宽度 <= 768px */
@media (max-width: 768px) {

}

/* 移动设备断点，视图宽度 >= 769px */
@media (min-width: 769px and max-width: 1024) {

}

/* 移动设备断点，视图宽度 >= 1024px */
@media (min-width: 1024px and max-width: 1216px) {

}

/* 移动设备断点，视图宽度 >= 1216 */
@media (min-width: 1216px) {

}
)
code(Var)
Return

::`!imp::
    SendRaw, !important
return

::tran::
    SendRaw, transparent
return

::trans::
Var =
(
transition: .3s all ease;
)
code(Var)
return

::transf::
::tranf::
Var =
(
transition: .3s all;
transform: translateY(0); 
transform: rotate(180deg);
)
code(Var)
return

::link-media::
    SendInput, <link rel="stylesheet" media="(max-width: 640px)" href="app640.css">
Return


::1px::
::1px-border::
::border-1px::
Var = 
(
/* 1 物理像素线（也就是普通屏幕下 1px ，高清屏幕下 0.5px 的情况）采用 transform 属性 scale 实现 */
.mod_grid {
    position: relative;
    &::after {
        /* 实现1物理像素的下边框线 */
        content: '';
        position: absolute;
        z-index: 1;
        pointer-events: none;
        background-color: #ddd;
        height: 1px;
        left: 0;
        right: 0;
        top: 0;
        @media only screen and (-webkit-min-device-pixel-ratio: 2) {
            -webkit-transform: scaleY(0.5);
            -webkit-transform-origin: 50`% 0`%;
        }
    }
}
)
code(Var)
Return

::box-shadow::
::css.shadow::
::shadow::
    SendRaw, box-shadow: 0 2px 12px 0 rgba(212, 212, 212, 0.1);
return

::box-shadow2::
Var = 
(
box-shadow: 0 0 0 1px hsla(0, 0`%, 100`%, .3) inset, 
            0 .5em 1em rgba(0, 0, 0, 0.6);
)
code(Var)
return

::chrome-yellow::
Var = 
(
input:-webkit-autofill {
  -webkit-box-shadow: 0 0 0px 1000px white inset !important;
}
)
code(Var)
return