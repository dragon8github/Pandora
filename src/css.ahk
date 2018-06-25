::fuckrem::
::fuck-rem::
::myrem::
::my-rem::
Var = 
(
// rem 单位换算：定为 75px 只是方便运算，750px-75px、640-64px、1080px-108px，如此类推
$vw_fontsize: 75; // iPhone 6尺寸的根元素大小基准值
@function rem($px) {
    @return ($px / $vw_fontsize ) * 1rem;
}
// 根元素大小使用 vw 单位
$vw_design: 750;
html {
    font-size: ($vw_fontsize / ($vw_design / 2)) * 100vw;?
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

::clear::
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

AppsKey & p::
>^p::
Var = 
(
pxToRem
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

::wh::
    SendInput,
(
width: px`;
height: px`;^!{up}^{left}
)
Return

::w::
    SendInput, width: px;{left 3}
Return

::h::
    SendInput, height: px;{left 3}
Return

::ell::
    SendInput,
(
overflow: hidden`;
text-overflow: ellipsis`;
white-space: nowrap`;
)
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

::`:before::
    SendInput,
(
::before {{}{}}{left}
content: " "`;
position:absolute`;

)
Return

::`:after::
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

::style::
Var = 
(
<style lang="scss" scoped>
    
</style>
)
code(Var)
return

::`!imp::
    SendRaw, !important
return

::tran::
    SendRaw, transparent
return

::trans::
    SendInput, transition
return

::transf::
    SendInput, transform
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





