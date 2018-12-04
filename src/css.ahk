::px2rem::
Var =
(
$root_fontsize: 192; // 因为效果图是1920 / 10
// $base-font-size: 75px; //design iphone6: 375px * 2 / 10 = 75px; --design
// $base-font-size: 32px; //design iphone3gs: 320px / 10 = 32px
// $base-font-size: 64px; //design iphone4/5: 320px * 2 / 10 = 64px
// $base-font-size: 124.2px; //design iphone6: 414px * 3 / 10 = 124.2px;
@function rem($px) {
    @return ($px / $root_fontsize ) * 1rem;
}
)
code(Var)
return

::maopaojindutiao::
::qishuijindutiao::
Var =
(
background-color: #F7A806;
background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG4AAABACAMAAADMI7KPAAACZFBMVEX////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xG13JAAAAzHRSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1OT1BRUlNUVVZXWFlaW1xdXl9gYWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXp7fH1+f4CBgoOEhYaHiImKi4yNjo+QkZKTlJWWl5iZmpucnZ6foKGio6SlpqeoqaqrrK2ur7CxsrO0tba3uLm6u7y9vr/AwcLDxMXGx8jJytLua8SRAAASK0lEQVR42nXWWZMb12H28edsvQJoAINlMMPZOCQlioso0rKlmPYb+XXKvnAlvslNrvIBkg+Rz5CkKpU9lcSViiuJs5Ys2XKsxZJC2+K+zMLZBxgM1qXR6zknNYOhSMrM7wrVhcIfDwp9qsnl/58nB993NgGQbJn0Wqw61arjGVPM/PpFQ473/gwwpi0yalS/u+BwdfffiQU1bALEnTPWfLwIn/Nu4tpbiwWi7/zdLvhwlJO9JgCesc/EkckO9lspntUG3vcq+g8AIO1HtA7kMkzDLgYa1ACw7MeJwAtRxWf3BmaOksiyecq33r/Uv8e0MkrFaqU9tirXmj/HF2SvXWge16D6fQqESlKtaL5nQsbgV7/RvrsjicYLxFtbYKljQI+62RRcrW/kzFlm2F2DjUz79QSj1iaep5PRKp5QAPE7jMg+axaJ72e++ltn9Dff/mCI/8vyqz98c8nySQRw03PlGwamz6/8uB7gOgSsxf34ySwmDgGM/vM/AWb5OJGuj2wtG3fDfQC5105naPZ6fw3PcX2csBZqw58cTg/v3AP4NeUtGpTwqPcgYjWPKtgX/hsTpTfm7ebfYqKwuJz8M475/zO/5PY+7eLIMGQMiGcuhrw5SHGsfK7WutXFRLxis6nba72D3AC8zIqvqnUar9yUaYooNFnnMU5YV4tk+tvvHW/N/7qZi3+3+69nZ37up53OzdNBR4JLDRExRInMLdYJ0CEawNkrFVHK/Acm1GiQV+3Pyr9N/hCcEroNpomsrcVq88evLYYP3sWJMy6nxgI/yvGLb2RucpG5Ouz6OPIY1FtIW00YSbLf3hEO4fBMGYUAMmVLWstXf4mJcYON+jo358zucWqAh5JLOhooyh+vXgvqmKCGSxiSQgIAJO3HGtror2OCKeP0rKg0Md55rPaVr/YZBxEkTYF+bID0WjgRPHwIoHXfypxmZxAFLYuG/fuxWHz9OwvvHoY4YroIB54r1j5sSAB6aMUU8B/6AMxz5+aSYemMqeVwLDc/9KvBH3UsxtJBSHUCkHOulJurMY6IYoHGAMJ6A4RNy+4Hfc2HG6R6/a0rV7+09FMc4dOznmqtpLs3H0fq+II5r1LWuAVwYi16dtKE4aXxXggdjiU9HLGURi1NdAQEcSfprDY1AEyLWk72ARBi0ZTf6TJ+GGcratWay3nZ9Mq33wYAdz7n93R0Q+k0BYBCSYyd6EYbMIt1EBAL4Ya8g2P7pN6gfeIwaBkAwFqMCWf5/wWt/jbcWKdB0wXvQiVwMo4x6iSExjYf4sj0XK7d35fjgq2bIcDLX3E0EeN9QMfZ8dqs3KBp/w5O7O3V6uAR5zpKASDGifzXTiPs9V8qrfu5Tt0xOKB1YnmenJNmOmTO5p5dCIOZCxlSWL7FjLIj031A1BwBQuYPRojbyDUaeA4v/Nrg3VQySkM8K/fGLLSVrRbEwrjcSQk4AKhsTmKmFPkFu/vOudOzzr2DLNOUXc7ZlUeEA2AuBWAV3EACM+fz/yQSPCPlKgFVKb7AqhoAIT4jvSx026PHuZkL4ArkYfM3zYekUDb5xV+OTKL9i8tm0F/tAnALbPK1DgD75W9e/O4ffwImnk6p/wsoflXzs4prJJJ8OKBTpw6SfvY4N18wFAjI6l+/PkSYODItbmjNoxxPjXHTB0BbGc6SeG8VgFHL5aa+9snU0mAFTxFKqNQAIUQyiROf5L467Ky/D4p2WyPpcQCi17eJ1ox3nENTj29co61+a0fsL70i2TjXBYC6cq+nw1/+CACYHI0s/Z1B9RZA9NMeAQE0PAsDH098NOoPdgBNoAEoBkBFyhNi3Nvc0u1h+HFv7ycPk1xGjlSvkq7/ACCCy6kF19oNHwJA0Eta7yu3jJ8AnCkw20iPwsUxBXEqlgERS5xI6gcDAEQRrQEQHMle/vLo8eo2AEpTADBfPyW/DzEdT+MWcbKEv7pkatb7UxzLXT1tQQePPoZISL5gqj3lzeRlglWeNXwFOe7keBsvwHFk+FF3cJgAgFKTDywYCkg6v74chLseJdki01A4ZkhRdQ0DcR5IQKeKREm36phn3OH0SoYmZpcUZ8o59k8APHsch8/lJu6DaDw1rotgdg/cszxvl0GHHTMHqacbACu/OXVKEarzPRBuz6YExMnnrITns21CrOnl+M58jpvjb/0QzuLpqN3cwOcYnrLmejiR7D9YG4KY4lR/fUQZEOV45A/CA8BYOi3i2IEKt7dyp18uezqVrVwxD5OjwVwRFOOVYpFqbln7S6/k3HzV3X9+3QT/yqX8zt/gc4TTMFoNioeBHfto+EmkpRVCjcfot14R3e0dzhcNWMNOfFgKB4ZocvGKMPZ/2lMq5SDKLJ+3oDm3RPKrOX7pK2V17nfeaX1eswihgWZmc3rQIaGCjg8SINlISiS51bFqUYzI0pFS2xgrRcWgMsWXnVbyV5mQa6KCrZoQGpDsaY7hCVW4ZCi0P3k6jgOBhU4raAdMCilp+/jvJLtDg40zX79QSvZnDB3drjZAMyrqBxkjc4rRTI9ejsbcv78mFkCJmXVmzwwC/YV1aLUyVG48exBS2QmsYQDmidYGN4wnw6P9/NSFl7lNe3fdjN+/CXR3qlyLojOOAb/ev7enPX4fu3cvUW6Uy2Pt+8Mv5g5vDKPww8kyDWgV0gRxH4B9SkQsHuCJKBpZS9UCkvntzcntq7oFppP1kBlT4/WDcRu0AQCbXi2uxAr04v6jL+bInQfUxxGDhgC0lJgYPT5zzdYPHuNzUwtli8nUKdbDk6frgwL8UZfttzcHPigmogf18cWsDZ2tfiHnelm1iiNm1suGD/EsXs0LOdsY45gZua98q5iG4I4IMaEbMQvHFd7r1TWTTtVmpNGk1Vr9MKVcyb01PJerXC1r9uW/B3h+YYoaySRHFY6FvYpmRW+SYzPXl1ddriKSb+3hBHVcHVe477d4YnzppbsGgRrGTqmpHsnl/OjD5nM5lpk2KdG/10w+41dfIWm4/Ld9yyBRCFiFmQV7vZsZbNdxhMx87aJ3JZf69uHG/g5OaLY8K+Lho7qAdflKbeFWC5n83uoaMflwo+Bvp8/lqEcItFtJ1GJrdpZoXfzah5QQmqaoXD/lqvg+7e5O3ul+9XzGyJBRJ96rr+IJzXOQInem2YaMhUha0CIDCM+dntIRq+w/l1OOgHbzKj+gU9OG1iSXt1PCYA+RPZWVdHn4NibU6cu21pLbW63oL/EUiw2pWWm5DbU+k4YEOuwBfGE6BWFpoRU/m3OQ5qYyotlobn09qwg0IYEQtdlk/2acKmi3gCcOVq+ocd3zn69BWRIgOgtg8NGNbMGId1uAbBcJAQyXPrdu3CzPFeAPo80wHxlgiU8In6tafHGmS5hyuTyzhon27fmSGgaPPgvwLKUk12nrPgDoZr/r+W0JRHV3VlHEPHzuECO9Ux4NOrRAtwNHJungYHWzdsokRKTtTkKnS8ULuYc4pgZeAfuPb/1yDwDBE6kGTP9RXYLWXl5aD3q+mJubW5INatN4+Jg44ck6Xis7D/o9NdREQ6rH42sv9bZ+uhtZnGoo0b9Lr5QVz1/6oI1j/s833fX+0NUxkCm4jS6OJI+2vdJoHQCMnDj/AMgtZc877zTuBuVm4WzBVP88yVlXKwyfjhSoQvtxnLbqB6O93Ihs5D1KdRJTPmdyzu1aV+HY5qYQ2TcKfuO2uHZdf/A+jsnRaG8yv7NvPwDgeZevCL12sN5+6RsWsYKTHAyOIkZpCqT1LV+i8e+Zxanf0FHd0zEZt0i6ctm1ZSHLY0zwMj/j8cp8Pq1O6TMfuJdkdxx3WYQJ0vEKXTDXFibNFIzydjYrKNjv/+FxTnZNuonep14+56+MJQA2O20qTafaSdAda0JW3vtuOL7fOcoRKmhUsa25jOuRJmy/uMbm3iLjyLwxDB8BAK0tnP8Zoco0jc4DviYunv9ZQRMFszJZF/wIjOStFe4riWOFGUNzW4WfSKoV1UR/SpxNQsYAjIxjxZSpA1YSIdX9j2ufFV6zRT6TMwNz93sAKm/m2LXGj4xsvJ344+1gR3ZfYyBA8tvfBwdllCVLM5nkQ63MUmZ3rImSjNgWsUMAVFPo+IPiVNICAJoXlJKU7I2yo5amMv1z6/Iy006NiExh0Xn4M13LcJ3J1A6dtNnSIMHG3TNnL/c2ddq/JRIOljNhXZrLhL377vQ0cXebul/PmZzq460Kiijg8FCkAOBNlRi96WaGInADIpJNZGZsYpczOl/gciF+2K6fFVBRHXW7ZC1F0YjL8OBQJXTnv1cATphBYc9ldObrnXLBTsu8pRj1smnUOpw8Y2iNI8evReUtwx7Sl6c7fMGJm3uJ82j48OVslmksMB9mttLudzLS2AXCRCx/09l+MEx79zt7JPfxJgCuOUAL816dCp6tiXhgfel2dkaGdPhehF/BTikOY65cXNwaUiOXDsi33t1479s0ZDoyeKAdcDyoS7kKQKpXa/qlcXkkt+sb4wBHOCJTLP7aKces31NK2PlSO0uMQhyT4AU1cFNEoaB3zo+p7pG+n5Ky8u/mvzwYlapJOtheXROk11djANXLa66kluYiaAAJWdqNAY6k7Q2SxyWn/xN5uFAy/WBYIgAIxQswVxMW4SN+3pbQ2a1Y/x10/+37eVqo7R66jSYIIKpErpSuv/ntkogGh2E0WzZk4UL1xo1txQEMu0PearxjmvqTL5GO1qJMk+G4gxfof3T1lFP4aFHHnCEZrT/amZwjwt7b3EoAcE0we7GsLpI3Fpk8/JPUnt4tWfqNVy3iFr83ZADALBbsX3jzpZcL96im3Jqft8af1EO8QLiSmbMq8bBjZ6ba//azHo5F7YNWR2Hyo7BTV6c5OTtfc5x7/+C8NNU3BD0zxwCzscwB6N57wIXXbRB9vuMJnpvhxqgzwgkjxlPUoYlIz7S2b75RbtxxWJokEs+QEs7CGU8G2+cFUdPO8m9s6JSk9dqUZKPreY4JOwdN4HiCU552s2nw6iOZJMtzppPcf6gB5Kt+0Ca8/OqsFVsw8r2/eGvL0oSLyMdziG0PRNrtrJTkYD8wo/2Z9LF7ez4UPJ5lHCemMxRSp4Msq8Q7fNwsbYmz12aGTR7GW2NALF1J05UH3rlpSohWQUzWNm0BktOSGQGeoTOqMzDkVuvAq3+qb6zteXUAB+fKm85b2Sc50RpXjFHwvW9VTctu3zeyeqm1XK3pgbZnpsbA7BUXJB+Htp2MbEYcUofSgBopUjvtxTcP8Ln6x/lM84de+F/tDtAOSyFVwF7HZu4dj2EikunUVOWz9rkiF9Q/ZKZo9bIvVXdFAtE9IO7lU1bK0ArKNZpkobta0zrhlEBE1QXLyeXreEIOe/9yz7OpGAcaLFMk8trL5iERNN588CTHLJ4vPc5eyzQDdRijr4S7N5r13Olqnrd2uJxZcCD59jjv8ojSPZL21mjAmHe6EheLRCxfr93EE6oFxW2a+oHnkkQStpzTWxpCpzHHhIoqbkNzu98wdijrb+aveAtv/yJ/tmj6jSEFX51ekv1BE41ebnnwztmw2fReu9S/Y19zd3+QdRJR7OJZsmPysGVP8WgzcXQ7PgBCbV1aeJLTiTZANEkpt2X3brMionhNL+dztDNY+gXSwc8Hvd6uY7RpL7HH/8PHzrVzrjdVlLL6ZX0nePdsA89JG0gII1SYWZfd74PZo8ipFRhOqF4lqynZ71tc7e+EIxb/Yn/QL6Kz1fcfh0kaNrqdxCfMWMzRTHl+xn3TALd123OJWqmrVojnKQVoooOMxbUlYhUXg+I5i+HzecksNu+9lxg4ONxHtLaxBdVayQR99dlOpDlXKaALtUy2cjpvl4oiZxCEmw99h/xgFy+mxgPmcFBGWOp95ysfRVmOJ5K7PkKzFq4acSQSjQEA0v2wWop3zEinVEBLZBkGOREUXGIezhOVNh68ZrLZbfxfdJDhR1P6ianXkvv3GZ7qBdmyk+PJEK4IcISysL21EVVzfa0g49SpUAKzImzO6TDBaPt7ampq+3b38qlhjBfjBgP8UI1ubwDgeMqolLiVC4wk4SL0AUBBCq2DdQAqpEQbmmplGtIvCPKPngoT9H98bzV87Tt8cPtdvIik08mO6qewQnwhpy2GJOwJzT+/riKNABP2AuvplBjxIQ9Ftt89wJGBOet+I28U5jbW8AKlS1Pp6JGGefrCjb0E/wtYT0+oEQxnLAAAAABJRU5ErkJggg==");
box-shadow: inset 0 -2px 2px rgba(0, 0, 0, 0.5), inset 0 2px 2px rgba(255, 255, 255, 0.8);
animation: sparkle 1500ms linear infinite;

@keyframes sparkle {
    0`% {
        background-position: 0 0;
    }

    100`% {
        background-position: 0 -64px;
    }
}
)
code(Var)
return

::falangjindutiao::
::jindutiao::
Var =
(
background-color: #219FD6;
box-shadow: 0 0 6px 2px rgba(255, 255, 255, 0.3) inset;
background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0.35) 25`%, rgba(255, 255, 255, 0) 25`%, rgba(255, 255, 255, 0) 50`%, rgba(255, 255, 255, 0.35) 50`%, rgba(255, 255, 255, 0.35) 75`%, rgba(255, 255, 255, 0) 75`%, rgba(255, 255, 255, 0));
background-repeat: repeat-x;
background-size: 20px 20px;
animation: candystripe 1s linear infinite;

@keyframes candystripe {
    100`% {
        background-position: 20px 0;
    }
}
)
code(Var)
return


!s::

    Menu, CssMenu, Add, 上下翻滚：transform: rotateX(180deg), CssHandler
    Menu, CssMenu, Add, 左右翻滚：transform: rotateY(180deg), CssHandler
    Menu, CssMenu, Add, 原地旋转倒立：transform: rotate(180deg), CssHandler
    
    Menu, CssMenu, Add, 
    Menu, CssMenu, Add, 
    
    Menu, CssMenu, Add, transform: translate(-50`%`, -50`%), CssHandler
    Menu, CssMenu, Add, transform: translateY(-50`%), CssHandler
    Menu, CssMenu, Add, transform: translateX(-50`%), CssHandler   
        
    Menu, CssMenu, Add, 
    Menu, CssMenu, Add, 
    
    Menu, CssMenu, Add, ell, CssHandler2
    Menu, CssMenu, Add, loading..., CssHandler2
    Menu, CssMenu, Add, center, CssHandler2
    Menu, CssMenu, Add, ycenter, CssHandler2
    Menu, CssMenu, Add, xcenter, CssHandler2
    Menu, CssMenu, Add, px2rem, CssHandler2
    
    Menu, CssMenu, Add, 
    Menu, CssMenu, Add, 
    
    Menu, CssMenu, Add, 发廊进度条, CssHandler
    Menu, CssMenu, Add, 冒泡进度条, CssHandler

	Menu, CssMenu, Show
	Menu, CssMenu, DeleteAll
return


CssHandler2:
SendLevel 1
SendInput, %A_ThisMenuItem%{tab}
return

CssHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}

if (v == "冒泡进度条") {
Var =
(
SendLevel 1
SendInput, maopaojindutiao{tab}
return
)
}

if (v == "发廊进度条") {
SendLevel 1
SendInput, falangjindutiao{tab}
return
}

if (v == "上下翻滚：transform: rotateX(180deg)") {
Var =
(
transform: rotateX(180deg)
)
}
if (v == "左右翻滚：transform: rotateY(180deg)") {
Var =
(
transform: rotateY(180deg)
)
}
if (v == "原地旋转倒立：transform: rotate(180deg)") {
Var =
(
transform: rotate(180deg)
)
}
if (v == "transform: translate(-50%, -50%)") {
Var =
(
transform: translate(-50`%, -50`%)
)
}
if (v == "transform: translateY(-50%)") {
Var =
(
transform: translateY(-50`%)
)
}
if (v == "transform: translateX(-50%)") {
Var =
(
transform: translateX(-50`%)
)
}
code(Var)
return



::animate.updown::
Var =
(
.fadeOutDown {
    animation: fadeOutDown 1.3s infinite;
}

.fadeOutUp {
    animation: fadeOutUp 1.3s infinite;
}

@keyframes fadeOutUp {
    // from {
    //   opacity: 0.1;
    //   transform: translate3d(0, 80`%, 0);
    // }

    // to {
    //   opacity: 1;
    //   transform: translate3d(0, 0`%, 0);
    // }

    25`% {
        transform: translateY(-3px);
    }

    50`%,
    100`% {
        transform: translateY(0);
    }

    75`% {
        transform: translateY(3px);
    }
}

@keyframes fadeOutDown {
    // from {
    //   opacity: 1;
    //   transform: translate3d(0, -20`%, 0);
    // }

    // to {
    //   opacity: 0.1;
    //   transform: translate3d(0, 30`%, 0);
    // }

    25`% {
        transform: translateY(-3px);
    }

    50`%,
    100`% {
        transform: translateY(0);
    }

    75`% {
        transform: translateY(3px);
    }
}
)
code(Var)
return  

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
::placeholder::
Var =
(
::-webkit-input-placeholder {color: #c1c1c1; }
:-moz-placeholder {color: #c1c1c1; }
::-moz-placeholder {color: #c1c1c1; }
:-ms-input-placeholder {color: #c1c1c1; }
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
::...::
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
Var =
(
background: transparent url('https://iph.href.lu/100x100') center center / 100`% 100`%  no-repeat content-box; /* 100`% 100`% 可以换成 background-size: cover */
)
SendInput, % Var
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
    SendRaw, box-shadow: rgba(0, 0, 0, 0.33) 0px 5px 30px;
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