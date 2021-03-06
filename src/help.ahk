﻿Pause::
Send, #d
return

>^w::
Send, #w
return

!F1::
Send, {F7}
sleep, 100
Send, ^s
return

!F2::
Send, {F7}
sleep, 100
Send, ^s
sleep, 100
Send, !p
return

::mianbao::
::mianbaox::
::mianbaoxue::
::mianbaoxie::
Var =
(
Breadcrumb
)
code(Var)
return

::lichi::
::liqi::
Var =
(
罗丽琪
)
code(Var)
return

::suoluetu::
Var =
(
thumbnail
=======
﻿::neijuan::
Var =
(
所谓内卷，就是底层劳动力之间互相争夺有限的社会资源（泛指工作岗位、劳动报酬），拼命努力但反而徒劳无功的现象。

因为无论劳动力一方怎么努力，社会上的资源、机会和报酬总量是相对不变的、

一旦底层出现激烈竞争（加班、充电学习），只会带动整个阶级的求生欲，大家也都跟着奋发向上（加班、 充电学习）

最终，每个人都增加了劳动成本，但却不会改变劳动力的回报。
---
这种现象在短期内局部问题上是可能成立的，但从社会长期的发展趋势来看，内卷并不存在。

另外，从社会进步的角度来说，内卷意味着鼓励进步，鼓励竞争的社会才会有前途。

这里补充另一个《爱丽丝梦游仙境》中的「红皇后效应」：

在一个积极向上的团体中，你的努力，只会显得你原地踏步，这是因为，

你学习，别人也在学习，你努力，别人也在努力。

所以，你必须比别人加倍努力、加倍学习，才能显得你不是在原地踏步。
)
code(Var)
return

::qinxiesy::
::qinxies::
::qinxiesheying::
::qinxieshiy::
::qinxieshey::
::qxsy::
::qinxiesh::
::qinxieshy::
::xy::
::lnglat::
::dgxy::
::zuobiao::
::coor::
::jingweidu::
::jingwei::
::jwd::
::mokatuo::
::touying::
::epsg::
::epsg4326::
::epsg3857::
::4326::
::3857::
::wgs::
::wgs84::
Var =
(
coordinate
---
lngLat: [113.75867124948216, 23.026719034540488],
---
倾斜摄影（Aerometrex Denver Photogrammetry）
---
墨卡托投影（mercator projection）
---
ol.proj.fromLonLat([113.75867124948216, 23.026719034540488])
const LonLat = ol.proj.toLonLat([3686588.9267367907, -3295231.3419166896] )
center: ol.proj.transform([108.938981, 34.375414], 'EPSG:4326', 'EPSG:3857'),

openlayers 默认使用的是 「EPSG: 3857」 单位是米，用的是 xy 坐标系，譬如：[3686588.9267367907, -3295231.3419166896] 
我们习惯的是 GPS 经纬度坐标系 `「EPSG: 4326」`，譬如：[113.75867124948216, 23.026719034540488]
---
我们常用的 GPS 经纬度就是 「WGs84」 也就是 「epsg:4326」

另一个常用的是 「EPSG:3857」，伪墨卡托投影，也被称为球体墨卡托。
)
txtit(Var)
return

::jiqixuexi::
::jiqi::
::ten::
Var =
(
Tensorflow.js
)
code(Var)
return


::kuayu::
Var =
(
 crossOrigin
)
code(Var)
return

; （能用，但废弃）
#b::
clipboard := 
Send, ^c
ClipWait, 2
if (clipboard) {
    InputBox, OutputVar, title, enter a name?,,,,,,,,js
    tip2("beautifying...")
    result := post("https://service-pp0d4lbc-1255983702.gz.apigw.tencentcs.com/release/", { "code": clipboard, "type": OutputVar }, true)
    json := JSON.Load(result)
    _result := StrReplace(json.code, "\r\n", "`r`n")
    code(_result)
    tip2("beautify success!!!")
} else {
    tip2("beautify fail!!!")
}
return

#!up::
WinGetTitle, Title, A
WinGetPos, X, Y, W, H, %Title%

_w_ := W * 1 / 5
_h_ := H * 1 / 5

w := W + _w_
h := H + _h_

WinMove, %Title%,, %X%, %Y%, %w%, %h%
return

#!down::
WinGetTitle, Title, A
WinGetPos, X, Y, W, H, %Title%

_w_ := W * 1 / 5
_h_ := H * 1 / 5

w := W - _w_
h := H - _h_

WinMove, %Title%,, %X%, %Y%, %w%, %h%
return

#!right::
^!right::
WinGet, OutputVar, MinMax, A
if (OutputVar == 1) {
    WinRestore, A
} else {
    WinMaximize, A
}

WinMove, A, , A_ScreenWidth / 2, 0, A_ScreenWidth / 2, A_ScreenHeight - 70
return

#!left::
^!left::
WinGet, OutputVar, MinMax, A
if (OutputVar == 1) {
    WinRestore, A
} else {
    WinMaximize, A
}

WinMove, A, , 0, 0, A_ScreenWidth / 2, A_ScreenHeight - 70
return


; 驼峰，其实只将首字母小写而已。 毕竟没有分词器。 将 productId => productId
to_tuo(str) {
  firststr := SubStr(str, 1, 1)
  StringLower, OutputVar, firststr
  newstr := OutputVar . SubStr(str, 2)
  return newstr
}

; 将 ProductId => product_id
to_str(str) {
  ; 拆分所有的文字
  strary := StrSplit(str, "")

  newstr := ""

  ; 遍历
  For key, value in strary {
    StringUpper, OutputVar, value
    ; 是否大写？
    if (value == OutputVar) {
      StringLower, OutputVar2, value
      newstr .= key == 1 ? OutputVar2 : "_" . OutputVar2
    } else {
      newstr .= value
    }
  }

  return newstr
}

^!t::
    tmp := Clipboard
    Clipboard = 
    WinClip.copy()
    ClipWait 2
    if (StrLen(Clipboard) > 0) {
      newstr := ""
      strary := StrSplit(Clipboard, "`r`n")
      For key, value in strary {
          isLast := key == strary.Length()
          mx := isLast ? "" : "`r`n"
          newstr .= to_tuo(value) . mx
      }
      code(newstr)
   }

   Clipboard := tmp
return


^!-::
    tmp := Clipboard
    Clipboard = 
    WinClip.copy()
    ClipWait 2
    if (StrLen(Clipboard) > 0) {
      newstr := ""
      strary := StrSplit(Clipboard, "`r`n")
      For key, value in strary {
          isLast := key == strary.Length()
          mx := isLast ? "" : "`r`n"
          newstr .= to_str(value) . mx
      }
      code(newstr)
   }

   Clipboard := tmp
return


::wd::
::wenda::
Var =
(
问：死海在哪里？
答：以色列和约旦之间的边界上。
)
code(Var)
return

::linyi::
Var =
(
林弋
)
code(Var)
return

::xilie::
Var =
(
series
)
code(Var)
return

::yaosu::
Var =
(
feature
)
code(Var)
return

::fbl::
::fenibanlv::
Var =
(
Resolution
)
code(Var)
return

::huayong::
Var =
(
华勇（warrenyon@163.com）
)
code(Var)
return

::android::
::anzhuo::
Var =
(
Android（袁杰）
)
code(Var)
return



::xiangcao::
::xiangcaojs::
Var =
(
Vanilla JavaScript
)
code(Var)
return

::chuizhi::
::shuip::
::shuiping::
Var =
(
Vertical（垂直Y轴）/Horizontal（水平X轴）
)
code(Var)
return

::jiaoc::
::jiaocheng::
::rumen::
Var =
(
tutorial
return

﻿::juhe::
Var =
(
MarkerClusterer
)
code(Var)
return

::zonghe::
::tongji::
::zonglan::
Var =
(
overview
)
code(Var)
return

::yiqing::
::xinguan::
Var =
(
Covid-19
)
code(Var)
return

::saibopk::
::saibo::
::saibopengke::
Var =
(
cyberpunk（赛博朋克）
)
code(Var)
return

::mac::
Var =
(
alfred.Snippets
)
code(Var)
return


::e::
Var =
(
e => {
    
}
)
code(Var)
return


::meihua::
::pre::
::per::
::prett::
Var =
(
beautify/prettier(vetur)
---
"[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
},
"[vue]": {
    "editor.defaultFormatter": "octref.vetur"
},
"[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
},
"prettier.singleQuote": true,
"prettier.printWidth": 1993100337,
"prettier.semi": false,
"prettier.bracketSpacing": true,
"prettier.endOfLine": "lf",
"prettier.htmlWhitespaceSensitivity": "css",
"prettier.insertPragma": false,
"prettier.jsxBracketSameLine": false,
"prettier.jsxSingleQuote": false,
"prettier.proseWrap": "always",
"prettier.quoteProps": "as-needed",
"prettier.requirePragma": false,
"prettier.trailingComma": "es5",
"prettier.useTabs": false,
"prettier.tabWidth": 4,
"prettier.resolveGlobalModules": true,
"prettier.arrowParens": "avoid",
"vetur.format.defaultFormatterOptions": {
  "prettier": {
    "arrowParens": "avoid",
    "bracketSpacing": true,
    "endOfLine": "lf",
    "htmlWhitespaceSensitivity": "css",
    "insertPragma": false,
    "jsxBracketSameLine": false,
    "jsxSingleQuote": false,
    "printWidth": 999999,
    "proseWrap": "always",
    "quoteProps": "as-needed",
    "requirePragma": false,
    "semi": false,
    "singleQuote": true,
    "tabWidth": 4,
    "trailingComma": "es5",
    "useTabs": false,
    "vueIndentScriptAndStyle": false,
    "parser": "babel"
  }
},
)
txtit(Var)
return

::buding::
::xiubujiang::
::poly::
Var =
(
polyfill
)
code(Var)
return

::666::
::2333::
Var =
(
²³³³³³³　　6666666666　　　太好了
23333　　NBNB ²³³³³³³³³³³　　　⁶⁶⁶⁶⁶⁶
　 ²³³³³³³　 666　　太牛了！！　　 ²³³³³³³　⁶⁶⁶⁶⁶⁶ 　　厉害了　 　 ²³³³³³³³³³³
　 66666　 　太厉害了　　 66666　　 ²³³³³³³牛批 ⁶⁶⁶⁶⁶
)
code(Var)
return

::ps::
Var =
(
Adobe Photoshop
)
code(Var)
return

::3u::
::u3::
::u3d::
::un3d::
::un::
Var =
(
Unity3d
)
code(Var)
return

::3d::
::c#::
::.net::
Var =
(
Unity3d
虚幻引擎

three.js 支持的格式：(大约50+种)
「https://threejs.org/docs/#examples/zh/loaders/DRACOLoader」
「https://threejs.org/examples/#webgl_loader_3dm」
我了解到模型的格式是 GLTF、 MMD、 MTL、 STL 、OBJ、 PCD、 PDB、 PRWM、 SVG、 TGA、
我了解到 3dmax 、 blender、 Maya、 substence、Solidworks
建筑模型数据可以是：geoJSON、KML
)
txtit(Var)
return

::ax::
::rp::
Var =
(
Axure RP
)
code(Var)
return

^5::
Send, ^{F5}
return

>+esc::
code("~")
return


^+esc::
Send, ^+{vksc029}
return

!3::
Send, !{F3}
return

!4::
Send, !{F4}
return

; +3::
; Send, +{F3}
; return

#t::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
dirpath := A_Desktop . "/tmp-" . t

; 新建文件夹
FileCreateDir, % dirpath

; 新建 app.js
name :=  dirpath . "\app.js"
FileAppend,
(
const httpProxy = require('http-proxy')
  
//创建一个代理服务
const proxy = httpProxy.createProxyServer({
    target: 'https://fangyqgk.dg.cn/driver/visual/',
    // fixbug: Error: self signed certificate
    // https://github.com/http-party/node-http-proxy/issues/1083
    secure: false,
})

// 监听代理服务错误
proxy.on('error', function (err) {
    console.log('监听代理服务错误', err)
    res.writeHead(500, { 'Content-Type': 'text/plain' })
    res.end('监听代理服务错误')
})

proxy.on('proxyRes' , function (proxyRes, req, res) {
    console.log('RAW Response from the target', JSON.stringify(proxyRes.headers, true, 2))
})

proxy.on('proxyReq' , function (proxyReq, req, res) {
    console.log('RAW Request from the target', JSON.stringify(req.headers, true, 2))
})

proxy.listen(8888)
),  %name%


; 新建 package.js
name :=  dirpath . "\package.json"
FileAppend,
(
{
    "name": "test-node",
    "version": "1.0.0",
    "description": "",
    "main": "index.js",
    "scripts": {
        "dev": "nodemon app.js",
        "start": "node app.js"
    },
    "keywords": [],
    "author": "",
    "license": "ISC",
    "devDependencies": {
        "nodemon": "^2.0.4"
    },
    "dependencies": {
        "http-proxy": "^1.18.1",
        "lodash": "^4.17.20"
    }
}
),  %name%

; 打开目录
RunByVsCode(dirpath)
return

::rm::
Var =
(
rm -rf node_modules/ && cnpm cache clean -f
)
code(Var)
return

!+d::
t := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
code(t)
return

::ahk.post::
::ahkpost::
Var =
(
clipboard := 
Send, ^c
ClipWait, 2
if (clipboard) {
    tip2("开始beautify")
    result := post("https://service-pp0d4lbc-1255983702.gz.apigw.tencentcs.com/release/", { "code": clipboard, "type": "js" }, true)
    json := JSON.Load(result)
    _result := StrReplace(json.code, "\r\n", "`r`n")
    code(_result)
    tip2("美化成功")
} else {
    tip2("剪切板为空，无法美化")
}
)
code(Var)
return


wh(img, PicPath = "bg.png", base64="") {
fuck_w2 := img.Width
fuck_h2 := img.Height

fuck_wem := img.Width / 16
fuck_hem := img.Height / 16

fuck_wem2 := Floor(img.Width / 16)
fuck_hem2 := Floor(img.Height / 16)

; 找到最后一个/的位置
index := InStr(PicPath, "\", false, 0) + 1
; zip名字
zipname := SubStr(PicPath, index)

Var = 
(
wem-%fuck_wem2% hem-%fuck_hem2%

width="%fuck_w2%" height="%fuck_h2%"

width: %fuck_w2%px;
height: %fuck_h2%px;

width: rem(%fuck_w2%);
height: rem(%fuck_h2%);
background: transparent url('~@/assets/%zipname%') center center / 100`% 100`%;

width: %fuck_wem%em;
height: %fuck_hem%em;

@include bg(rem(%fuck_w2%), rem(%fuck_h2%), '~@/assets/%zipname%');

%fuck_w2%, %fuck_h2%

const width = %fuck_w2%
const height = %fuck_h2%


[$adaptaWall(%fuck_w2%), $adaptaWall(%fuck_h2%)]
---
<img src="data:image/png;base64,%base64% />
)
txtit(Var)
}
return

#z::
if (latestImageName) {
    img := getPicWH(latestImageName)
    wh(img, latestImageName)
} else {
    tip2("未找到图片，请重新截图")
}
return

#p::
Send, ^c
ClipWait, 2
if (clipboard) {
    PicPath := WinClip.GetFiles()
    if (!InStr(PicPath, ".webp")) {
        fuck_base64 := getBase64(PicPath)

        if (StrLen(fuck_base64) > 10000) {
          fuck_base64 := ""
          tip2("图片base64长度大于1W，不显示出来，也不应该被 base64")
        }

        img := getPicWH(PicPath)
        wh(img, PicPath, fuck_base64)
    }
} else {
    tip2("未找到图片，请重新截图")
}
return


::meihua::
::pre::
::per::
Var =
(
beautify/prettier(vetur)
)
code(Var)
return

::xuliehua::
Var =
(
serialize
)
code(Var)
return


::pikaqiu::
::baokemeng::
::baokem::
Var =
(
Pokemon
)
code(Var)
return

::lunkuo::
::py::
::quyu::
Var =
(
polygon
)
code(Var)
return



::pq::
::psql::
Var =
(
PostgreSQL
)
code(Var)
return


::ahkask::
Var =
(
InputBox, OutputVar, title, enter a name?,,,,,,,,test
)
code(Var)
return

::naifeitian::
Var =
(
奈非天 - 涅法雷姆 - Nephalem
)
code(Var)
return

::gaicibi::
::盖茨比::
::gs::
::ql::
::ga::
::gast::
::gats::
Var =
(
Gatsby（GraphQL）
)
code(Var)
return

::so::
Var =
(
stackOverflow
)
code(Var)
return

^t::
name :=  A_Desktop . "\test" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".js"
FileAppend,
(

),  %name%
RunBy(name)
return

::vercel::
::zeit::
Var =
(
vercel(zeit) https://github.com/vercel
)
code(Var)
return

::ssh::
Var =
(
https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html
)
code(Var)
return

::ioc::
Var =
(
ioc(智慧城市智能运行中心(IOC)) Intelligent Operations Center 可监视并管理城市服务
)
code(Var)
return

::nodeer::
::noder::
::nodegod::
Var =
(
sindresorhus
)
code(Var)
return

!^y::
Clipboard :=
WinClip.copy()
ClipWait, 2
tmp := Clipboard
script := new ActiveScript("JScript")
; Result := script.Eval(tmp)
if (StrLen(tmp)) {
    ; 以换行符为分隔符切割为数组
    array := StrSplit(tmp, "`n")
     ; 结果
    result := 
    ; 遍历数组
    For key, value in array {
        v := script.Eval(value)
        ; 索引
        index := key - 1
        ; 后缀
        ext := array.Length() == key ? "" : "`n"
        ; 叠加
        result .= v . ext
    }
    code(result)
}
return


::os::
::open::
::bushu::
::fabu::
::ranc::
::rancheck::
::ranchun::
::rac::
::rancer::
Var =
(
openshift（master.alltosea.com:8443/console/）
rancher(https://rancher.ioc.com)
deploy
)
code(Var)
return

::pianqu::
Var =
(
1、城区片区：南城街道、莞城街道、东城街道、万江街道、高埗镇、石碣镇。
2、松山湖片区：松山湖高新技术产业开发区（东莞生态产业园区）、茶山镇、寮步镇、大朗镇、大岭山镇、石龙镇、石排镇。
3、滨海片区：长安镇，沙田镇，虎门镇、厚街镇、东莞港开发区（滨海湾新区）。
4、水乡新城片区：麻涌镇、中堂镇、望牛墩镇、洪梅镇、道滘镇。
5、东部产业园片区：常平镇、谢岗镇（广东东莞粤海银瓶合作创新区）、东坑镇、桥头镇、企石镇、横沥镇、黄江镇。
6、东南临深片区：塘厦镇、清溪镇、凤岗镇、樟木头镇。
)
code(Var)
return

::sd::
Var =
(
microSD
)
code(Var)
return

; LAlt & RAlt::
; Var =
; (
; ()
; )
; code(Var)
; SendInput, {left}
; return

::xujun::
::junxu::
Var =
(
旭均
)
code(Var)
return

::yuque::
code("羽雀")
return

::admin::
Var =
(
Administrator
)
p(Var)
return

>^>!v::
    WinClip.paste()
return

::xi::
Var =
(
囍
)
code(Var)
return

::liuxi::
::lx::
Var =
(
刘羲
)
code(Var)
return


::bool::
Var =
(
Boolean
)
code(Var)
return



; !+0::
; x := A_CaretX
; y := A_CaretY
; MouseMove, x, y, 5
; return

; !+1::
; h := A_ScreenHeight
; MouseMove, 0, h, 5
; return

; !+2::
; w := A_ScreenWidth / 2
; h := A_ScreenHeight
; MouseMove, w, h, 5
; return

; !+3::
; w := A_ScreenWidth
; h := A_ScreenHeight
; MouseMove, w, h, 5
; return

; !+4::
; h := A_ScreenHeight / 2
; MouseMove, 0, h, 5
; return

; !+5::
; w := A_ScreenWidth / 2
; h := A_ScreenHeight / 2
; MouseMove, w, h, 5
; return

; !+6::
; w := A_ScreenWidth
; h := A_ScreenHeight / 2
; MouseMove, w, h, 5
; return

; !+7::
; MouseMove, 0, 0, 5
; return

; !+8::
; w := A_ScreenWidth / 2
; h := A_ScreenHeight / 2
; MouseMove, w, 0, 5
; return

; !+9::
; w := A_ScreenWidth
; MouseMove, w, 0, 5
; return



::qizhongzui::
::qizongzui::
Var =
(
傲慢、嫉妒、暴怒、懒惰、贪婪、暴食、色欲
)
code(Var)
return

::masiluo::
::masinuo::
::jinzita::
Var =
(
第一层次：生理需要(呼吸, 水，食物，睡眠，生理平衡，分泌，性)
第二层次：安全需要(人身安全，健康保障，资源/财产保障，工作保障，家庭安全)
第三层次：情感需要(也叫归属感需要，情感如：亲情、爱情、友情，集体归属如家庭、学校、公司、宗教)
第四层次：尊重需要（稳定的社会地位和社会承认，被他人尊重、信赖、良性评价）
第五层次：自我实现
更高需求：求知需要和审美需要 —— 《求知需要和审美需要》
)
txtit(Var)
return

>+F1::
WinGet, OutVar, Transparent, A

if (!OutVar|| OutVar != 255) {
	WinSet, Transparent, 255, A
} else {
	WinSet, Transparent, 50, A
}
return



>^z::
; 获取最新截图的base64
base64 := getBase64(latestImageName)  

Clipboard := "data:image/png;base64," . base64

ToolTip, 转换 bae64 成功
SetTimer, RemoveToolTip, -2500

return

>!z::
	; 获取最新截图的base64
	base64 := getBase64(latestImageName)	
		
	; 我的 access_token（据说一个月才更新一次，我觉得没必要每次都请求，反正写好了）
	; getBaiDuAccessToken()
	access_token := getBaiDuAccessToken()
	
	ToolTip, 正在请求百度 OCR 接口
  SetTimer, RemoveToolTip, -2500
	
	; 开始调用解析
	content := getBaiDuOcr(base64, access_token)

	
	ToolTip, % content
    SetTimer, RemoveToolTip, -1500

	; 加入到剪切板
	Clipboard := content
return


!^v::
Clipboard := WinClip.GetText()
WinClip.Paste(Clipboard)
return


::tj::
Var =
(

TJ Holowaychuk
)
code(Var)
return

::yyx::
::youyuxi::
Var =
(
尤雨溪 Evan You 
)
code(Var)
return

::guanxitu::
::guanxi::
Var =
(
Graph
)
code(Var)
return

::saigao::
::yazi::
Var =
(
赛高尼嗨铁鸭子哒
)
code(Var)
return

::1993::
Var =
(
1993100337
)
code(Var)
return

::bcode::
::bscode::
Var =
(
Boilerplate code
)
code(Var)
Var =
(
<template>
  <div>
    Fetch example: Classic
    <div v-if="loading">loading...</div>
    <div v-else-if="error">Error: {{ error }}</div>
    <div v-else>{{ result }}</div>
  </div>
</template>

<script>
// https://github.com/pikax/talks/blob/master/2019-11-21/introduction_composition-api/src/1_fetch_classic.vue
// https://s1.ax1x.com/2020/05/11/YYKBZQ.png
export default {
  props: {
    url: String,
  },
  data: {
    loading: false,
    result: null,
    error: null,
  },
  methods: {
    async fetch() {
      this.loading = true;
      this.error = null;
      try {
        this.result = await fetch(this.url);
      } catch (e) {
        this.result = null;
        this.error = e;
      } finally {
        this.loading = false;
      }
    },
  },
};
</script>
---
<template>
  <div>
    <div v-if="loading">loading...</div>
    <div v-else-if="error">Error: {{ error }}</div>
    <div v-else>{{ result }}</div>
  </div>
</template>
<script>
import { ref } from "@vue/composition-api"

const useFetch = () => {
  const loading = ref(false)
  const error = ref(null)
  const result = ref(null)

  const exec = async (url) => {
    loading.value = true
    error.value = null
    result.value = null
    try {
      result.value = await fetch(url)
    } catch (error) {
      result.value = null
      error.value = error
    } finally {
      loading.value = false
    }
  }

  return { loading, error, exec, result }
}

export default {
  setup (props, context) {
    const { loading, error, exec, result } = useFetch()
    return { loading, error, exec, result }
  },
}
</script>
)
txtit(Var)
return



>+r::
WinClip.copy()
ClipWait, 2
tmp := Clipboard
if (StrLen(tmp)) {
	; 以换行符为分隔符切割为数组
	array := StrSplit(tmp, "`n")
    
	
	 ; 数组结果
	resultarr := []
    
    ; 字符串结果
    result := 
	
	len := array.Length()
		
	; 遍历数组
	For key, value in array {
        v := fuck(value)    
        
        if (!arrincludes(resultarr, v)) {
            resultarr.push(v)
            result .= v . "`n"
        }
	}

	Clipboard := SubStr(result, 1, -1)
    
    ToolTip, 去重成功，bug: 最后一条似乎是多余的，请手动删除
    SetTimer, RemoveToolTip, -2500
}
return



+r::
WinClip.copy()
ClipWait, 2
tmp := Clipboard
if (StrLen(tmp)) {
	; 以换行符为分隔符切割为数组
	array := StrSplit(tmp, "`n")
	
	 ; 结果
	result := 
	
	len := array.Length()
		
	; 遍历数组
	For key, value in array {
		; 叠加
		result .= array[len - (key - 1)]
		
		; 除了最后一个都加换行
		if (key != len) {
			 result .= "`n"
		}
	}
	
	code(SubStr(result, 1, -1))
}
return

::zh::
::cn::
Var =
(
zh-cn
)
code(Var)
return

::en::
::us::
Var =
(
en-us
)
code(Var)
return


::---::
Var =
(
------------------------------------------------------------------------------------
)
p(Var)
return


; ::el::
; ::ele::
; Var =
; (
; electron
; )
; cs(Var)
; return

; 屏蔽半角符
+Space::
return


$>!c::
WinGetTitle, title, A
if (InStr(title, "Chrome")) {
    Clipboard := 
    Send, ^l
    Sleep, 50
    WinClip.copy()
    ClipWait
    
    a := Clipboard
; fixbug： 羽雀的语法
html = 
(
<html>
<body>
<!--StartFragment--><meta name="source" content="lake"/><a href="%a%" target="_blank"><u><span style="font-size: 15px; color: rgb(64, 64, 64); line-height: 1.74; letter-spacing: 0.008em; outline-style: none; overflow-wrap: break-word;">%title%</span></u></a><!--EndFragment-->
</body>
</html>
)
    
    WinClip.SetHTML(html)
    ToolTip, 复制成功
    SetTimer, RemoveToolTip, -500
} else {
    p(title)
}

Send, {ALT UP}
return


>!<!c::
WinGetTitle, title, A

title := StrReplace(title, " - Google Chrome", "")
title := StrReplace(title, "_哔哩哔哩 (゜-゜)つロ 干杯~-bilibili", "")
title := StrReplace(title, " - Sublime Text (UNREGISTERED)", "")

Clipboard := 
Send, ^l
Sleep, 50
Send, {Esc}
WinClip.copy()
ClipWait


myhtml := title . "`r`n" . Clipboard
Clipboard := myhtml
ToolTip, 复制成功
SetTimer, RemoveToolTip, -500
return

<+v::
Clipboard := StrReplace(Clipboard, "`r`n", ", ")  
Send, ^v
return


>+v::
Clipboard := StrReplace(Clipboard, "`r`n")  
WinClip.paste()
return


; 没什么卵用
; ~<+esc::
; ~<!esc::
; ~<^esc::
; ~>+esc::
; ~>!esc::
; ~>^esc::
; ~esc::
; Tooltip, % GetKeyState("LAlt") . GetKeyState("RAlt") . GetKeyState("LCtrl") . GetKeyState("RCtrl")
; SetTimer, RemoveToolTip, -500
; if (GetKeyState("LAlt") == 1) {
;     Send, {LAlt Up}
; }
; if (GetKeyState("RAlt") == 1) {
;     Send, {RAlt Up}
; }
; if (GetKeyState("LCtrl") == 1) {
;     Send, {LCtrl Up}
; }
; if (GetKeyState("RCtrl") == 1) {
;     Send, {RCtrl Up}
; }
; return



>!F3::
; 获取最新截图的base64
base64 := getBase64(latestImageName) 
tip2("正在上传图片...")
path := post("https://service-ci0uhfl2-1255983702.gz.apigw.tencentcs.com/release/", { "img": base64 }, true)
if (Instr(path, "request entity too large")) {
  tip2("上传失败, too large")    

} else {
  Clipboard := "![](http://" . path . ")"
  tip2(path)    
}
return


>!F2::
MsgBox, F2已废弃，请使用F3

; ; http://upload.likeyunba.com/
; ; 名字
; t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec

; ; .pandora\名字.png
; path := A_Desktop . "\.pandora\" . t . ".png"

; tmpcli := Clipboard

; isFile := FileExist(tmpcli)

; ; 如果是图片，直接使用图片的路径上传试试
; if (isFile != "" && (InStr(tmpcli, "png") || InStr(tmpcli, "gif") || InStr(tmpcli, "jpg"))) {
;     path := tmpcli
; } else {
;     ; 否则，新建图片
;     createPic(path)
; }

; ToolTip, 正在上传

; ; 注意，这里的路径必须是数组格式。哪怕只有一个。
; ; data := uploadfile({ Filedata: [path], file: "multipart"})
; data := uploadfile({ file: [path] })

; _data := JSON.Load(data)
; path := _data.path

; Clipboard := "![" . t . "](" . path . ")"
; ToolTip, % path
; SetTimer, RemoveToolTip, -2000
return

::ahktip::
Var =
(
ToolTip, 123
SetTimer, RemoveToolTip, -2000
)
code(Var)
return

::li::
Var =
(
li{$}*20
)
code(Var)
return

^!n::
    WinClip.copy()
    ClipWait, 2
    tmp := Clipboard
     if (StrLen(tmp)) {
        ; 以换行符为分隔符切割为数组
        array := StrSplit(tmp, "`n")
        ; base 基准值
        __BASE__ := array[1]
        ; 基准值必须是数字才可以
        if (__BASE__ is number) {
            ; 结果
            result := __BASE__ . "`n"
            ; 遍历数组
            For key, value in array
                ; 第一位已经初始化了，所以从第二位开始
                if (key > 1) {
                    ; 索引
                    index := key - 1
                    ; 后缀
                    ext := array.Length() == key ? "" : "`n"
                    ; 叠加
                    result .= Floor(__BASE__ ) + index . ext
                }
            
            code(result)
        }
    }
return

::app::
Var =
(
Applications
)
code(Var)
return

::gcode::
::githubcode::
::gitcode::
Var =
(
document.querySelectorAll('pre').forEach((val, key) => {
    val.innerHTML = ``<code>${val.innerHTML}</code>``
})
)
code(Var)
return

>^>+c::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
console.groupCollapsed('%t%')
console.log(%t%, )
console.groupEnd()
)
code(Var)
Send, {up}
Send, {end}
Send, {left}
return

>+d::
::now-::
::noww::
t := A_YYYY . "-" . A_MM . "-" . A_DD
code(t)
return

::now::
t := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
code(t)
return

::lundun::
::fake::
::lorem::
Var =
(
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
)
code(Var)
return

::lundun2::
Var =
(
The giant panda, also known as panda bear or simply panda, is a bear native to south central China. It is easily recognized by the large, distinctive black patches around its eyes, over the ears, and across its round body.
)
code(Var)
return

::head::
::toux::
::touxiang::
Var =
(
avatar
)
code(Var)
return

::ios::
Var =
(
裴(péi)祥(xiáng)艮(gěn)
)
code(Var)
return

::sk::
Var =
(
Sketch
---
<svg role="img" aria-labelledby="loading-aria" viewBox="0 0" preserveAspectRatio="none">
    <title id="loading-aria">Loading...</title>
    <rect x="0" y="0" width="100`%" height="100`%" clip-path="url(#clip-path)" style='fill: url("#fill");'></rect>
    <defs>
        <clipPath id="clip-path">
            <circle cx="10" cy="20" r="8" />
            <rect x="25" y="15" rx="5" ry="5" width="80`%" height="10" />
            <circle cx="10" cy="50" r="8" />
            <rect x="25" y="45" rx="5" ry="5" width="80`%" height="10" />
            <circle cx="10" cy="80" r="8" />
            <rect x="25" y="75" rx="5" ry="5" width="80`%" height="10" />
            <circle cx="10" cy="110" r="8" />
            <rect x="25" y="105" rx="5" ry="5" width="80`%" height="10" />
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

::wancheng::
::fin::
Var =
(
finally
)
code(Var)
return

::it::
Var =
(
iterable
)
code(Var)
return

::dgjw::
Var =
(
113.761868, 23.025179
)
code(Var)
return


^!j::
    WinGetTitle, title, A
    if (InStr(title, "Sublime Text") == 0) {
        tmp := Clipboard
        Clipboard :=
        WinClip.copy()
        ClipWait 1
        Clipboard := StrReplace(Clipboard, "`r`n")  
        Send, ^v
        Clipboard := tmp
    } else {
        Send, ^j
    }
return

; 每次输入字符时, 热字串识别器会检查当前活动窗口, 并且如果活动窗口不同于之前, 则会重置. 如果活动窗口发生变化, 但在键入任何字符之前返回, 则不会检测到更改(但可能会由于其他原因重置热字串识别器). 
; 通过两个热字符串的触发角，优雅自然无障碍的重置。
~Tab::
    ; 热字串识别器也可以通过调用 Hotstring("Reset") 来重置.
    Hotstring("Reset")
return

^!p::
tmp := Clipboard

if (InStr(tmp, "/")) {
    Clipboard := StrReplace(Clipboard, "/", "\")
} else {
    Clipboard := StrReplace(Clipboard, "\", "/")
}

ToolTip, 转换完成
SetTimer, RemoveToolTip, -2000

return



::yilai::
Var =
(
depend
)
code(Var)
return

::prop::
::shuxing::
Var =
(
properties
)
code(Var)
return

::ahkpsd::
::ahkpsdit::
Var =
(
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/tianmap.zip")
return
)
code(Var)
return

::god::
::godmodel::
::godmode::
Var =
(
GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}
)
code(Var)
return



::vpwd::
SendRaw, R+m3{]H]m11D1e!h
return

::es::
Send, elasticsearch
return

resetlabel:
    Hotstring("Reset")
return

::jwd::
Var =
(
// [longitude, latitude]
[Lng, Lat] 
)
code(Var)
return

::cfg::
Send, configure
return


::ahkarr::
::ahkfor::
::ahkloop::
::ahkarray::
Var =
(
myarray := ["a", "b", "c", "d"]
For key, value in myarray
            MsgBox `%key`% = `%value`%
)
code(Var)
return

::ahkcmd::
Var =
(
url := "https://raw.githubusercontent.com/dragon8github/Pandora/master/template/mocha.zip"
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
FileCreateDir, `%name`%
RunWaitOne("cd " . name . " && curl -O " . url)
run, `%name`%
)
code(Var)
return

::renzhi::
::rz::
Var =
(
(〜￣△￣)〜认知～(￣▽￣～)
)
code(Var)
return

::a-z::
Var =
(
"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
"abcdefghiJklmnopqrstuvwxyz"
a
b
c
d
e
f
g
h
i
J
k
l
m
n
o
p
q
r
s
t
u
v
w
x
y
z
//////////////////////////////////////////////
A
B
C
D
E
F
G
H
I
J
K
L
M
N
O
P
Q
R
S
T
U
V
W
X
Y
Z
)
code(Var)
return

^F11::
Hotstring("EndChars", "`t`n")
Hotkey, ~Enter, resetlabel
return

^F10::
Hotstring("EndChars", "`t")
Hotkey, ~Enter, Off
return

::fo::
Var =
(
/*
                   _ooOoo_
                  o8888888o
                  88" . "88
                  (| -_- |)
                  O\  =  /O
               ____/`---'\____
             .'  \\|     |//  `.
            /  \\|||  :  |||//  \
           /  _||||| -:- |||||-  \
           |   | \\\  -  /// |   |
           | \_|  ''\---/''  |   |
           \  .-\__  `-`  ___/-. /
         ___`. .'  /--.--\  `. . __
      ."" '<  `.___\_<|>_/___.'  >'"".
     | | :  `- \`.;`\ _ /`;.`/ - ` : | |
     \  \ `-.   \_ __\ /__ _/   .-` /  /
======`-.____`-.___\_____/___.-`____.-'======
                   `=---='
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
         佛祖保佑       永无BUG
*/
)
code(Var)
return

::ahkhtml2::
Var =
(
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"

A = 
(

) 

B = 
(

)

FileAppend,
(
%A% . %B%
`),  `%name`%
RunBy(name) 
run, `% name
)
code(Var)
return



::ahknewhtml::
::ahknew::
::ahkhtml::
Var =
(
name :=  A_Desktop . "\index" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . ".html"
FileAppend,
(
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>

</body>
</html>
`),  `%name`%
RunByVsCode(name) 
run, `% name
)
code(Var)
return

<+?::
Var =
(
/*  */
)
code(Var)
Send, {left 3}
return


::ahkmenu2::
Var =
(
reactArray := ["新建create-react-app", "新建react-redux.html", "React runtime", "ReactDOM.render",  "constructor", "this.porps", "ref", "static defaultProps", "this.state",  "this.setState", "react for", "this.state.list.map" ,  "箭头函数点击事件handleClick", "style={{ display: this.state.expandForm ? 'block' : 'none' }}","const { ... } = this.props", "const { ... } = this.state", "class App extends Component",   "render () {}", "WrappedComponent", "WrappedComponent + @Decorator", "this.forceUpdate()"]
Loop `% reactArray.MaxIndex() {
    this_life := reactArray[a_index]
    Menu, reactArray, Add, `%this_life`%, ReactMenuHandler
}
Menu, reactArray, Show


ReactMenuHandler:

if (A_ThisMenuItem == "ref") {
Var = 
(
写上你的代码
`)
code(Var)
}
)
code(Var)
return



::ahkmsg::
::ahkinput::
::ahkmsgbox::
::ahkbox::
::ahkcomfig::
Var =
(
InputBox, OutputVar, title, enter a name?,,,,,,,,test
)
code(Var)
return

::chromemax::
::chrome max::
Var =
(
--start-maximized --kiosk
)
code(Var)
return

::nosafemac::
::unsafemac::
::safemac::
Var =
(
open -a Google\ Chrome --args --disable-web-security --user-data-dir
)
Send, % Var
return

::nodesafe::
::no-safe::
::nosafe::
::notsafe::
::chromesafe::
::unsafe::
::safe::
Var =
(
--args --disable-web-security --user-data-dir
---
--args --disable-web-security --user-data-dir="C:\Users\1\Desktop\.pandora"
)
txtit(Var)
return


::macnosafe::
::iosodesafe::
::macunsafe::
::mac.safe::
::mac.nosafe::
::mac.unsafe::
Var =
(
open -a Google\ Chrome --args --disable-web-security --user-data-dir
)
code(Var)
return

::api.open::
::api.sw::
::apisw::
Var =
(
function copyToClipboard (text) {
    if(text.indexOf('-') !== -1) {
        let arr = text.split('-');
        text = arr[0] + arr[1];
    }
    var textArea = document.createElement("textarea");
      textArea.style.position = 'fixed';
      textArea.style.top = '0';
      textArea.style.left = '0';
      textArea.style.width = '2em';
      textArea.style.height = '2em';
      textArea.style.padding = '0';
      textArea.style.border = 'none';
      textArea.style.outline = 'none';
      textArea.style.boxShadow = 'none';
      textArea.style.background = 'transparent';
      textArea.value = text;
      document.body.appendChild(textArea);
      textArea.select();

      try {
        var successful = document.execCommand('copy');
      } catch (err) {
        console.log('该浏览器不支持点击复制到剪贴板');
      }
      document.body.removeChild(textArea);
}

document.querySelectorAll('.opblock-tag, .models h4').forEach(function (e, i) {
     e.click()
});

document.querySelectorAll('.nostyle[href]').forEach(function (e, i) {
    e.removeAttribute('href')
});

document.querySelectorAll('.opblock-summary').forEach(function (e, i) {
    e.addEventListener('click', function (event) {
        console.log(20180929161401, e.querySelector('.opblock-summary-path').innerText)
        copyToClipboard(e.querySelector('.opblock-summary-path').innerText.trim())
    })
});
)
code(Var)
return

+c::    
    str := Clipboard
    Clipboard := 
    WinClip.copy()
    ClipWait
    Clipboard := str . "`r`n" . Clipboard
    
    ; 迭代
    s := StrSplit(Clipboard, "`r`n")[2]
    ; 必须是第二行
    if (s == "if (v == """") {") {
        f := StrSplit(Clipboard, "`r`n")[1]
Clipboard = 
(
if (v == "%f%") {
Var = 
(
%f%
`)
_send("%f%", true, true)
return
}
)
}
tip2(Clipboard)

return


~!+l::
Clipboard := 
WinClip.copy()
ClipWait
MyVar := Clipboard
V := ""
repeatArr := []
Loop, parse, MyVar, `n, `r
{
    if (StrLen(A_LoopField) and (InStr(A_LoopField, " class") or InStr(A_LoopField, " className"))) {
        
        ; 获取class值
        RegExMatch(A_LoopField, "mi`a)[class|className]\s*=\s*['|""]{1}(.+?)['|""]{1}", OutputVar)
        
        ; 获取缩进
        RegExMatch(A_LoopField, "^(\s*)(.*)<", spaceValue)

        ; MsgBox, %spaceValue1%
        ; MsgBox, %OutputVar1%
        
        ; 如果没有重复的话
        if (arrincludes(repeatArr, OutputVar1) == false) {
            ; 先加入到数组中
            repeatArr.Push(OutputVar1)
            
            ; 先去掉左右空白符
            data := Trim(OutputVar1)
            s := StrSplit(data, A_Space)
            Loop % s.MaxIndex() {
                D := s[a_index]
                V .= spaceValue1 . "." . D . " {" . "`r`n"
                V .= spaceValue1 . "`t" . "`r`n"
                V .= spaceValue1 . "}" . "`r`n`r`n"
            }
        }
    }
}
Clipboard := V
tip("生成完毕", "已将生成代码加入到剪切板中")
return

::ahkcomfirm::
Var =
(
InputBox, OutputVar, title, enter a name?,,,,,,,,test
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
<template>
    <div class="`%OutputVar`%">
        `%OutputVar`%
    </div>
</template>
`)
)
code(Var)
return

^!r::
    Clipboard :=
    WinClip.copy()
    ClipWait
    tmp := Trim(Clipboard)
    _array := StrSplit(tmp, "`r`n")
    myarr := []
    repeatarr := []
    
    if (_array.Length() > 1) {
        For key, value in _array {
            if (!arrincludes(myarr, value)) {
                myarr.push(value)
            } else {
                repeatarr.push(value)
            }
        }
    }
    
    str := 
    For index, value in myarr {
        str .= value
        if (index != myarr.Length()) {
            str.= "`r`n"
        }
    }
    code(str)
    
    repstr :=
    For index, value in repeatarr {
        repstr .= value
        if (index != repeatarr.Length()) {
            repstr.= "`r`n"
        }
    }
    Clipboard := repstr
return

^!l::
    tmp := Clipboard
    Clipboard = 
    WinClip.copy()
    ClipWait 2
    if (StrLen(Clipboard) > 0) {
        StringLower, String1, Clipboard
        code(String1)
    }
    Clipboard := tmp
return

^!u::
    tmp := Clipboard
    Clipboard = 
    WinClip.copy()
    ClipWait 2
    if (StrLen(Clipboard) > 0) {
        StringUpper, String1, Clipboard
        code(String1)
    }
    Clipboard := tmp
return


::ahktime::
::ahkdate::
Var =
(
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
)
code(Var)
return

::ahknow::
Var =
(
Var := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
)
code(Var)
return

::noww::
Var := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
code(Var)
return



::ahkmenu::
Var =
(
>!m::

    Menu, A, Add, try / except, moogoseHandler
    Menu, moogoseMenu, Add, 环境变量, :A

    
    Menu, moogoseMenu, Add, 时间, moogosetxt


    Menu, moogoseMenu, Show
    Menu, moogoseMenu, DeleteAll
return

moogoseHandler2:
v := A_ThisMenuItem
_send(v, true, true)
return

moogoseHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
`)
}

code(Var)
return

moogosetxt:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
`)
}

txtit(Var)
return
)
code(Var)
return

::startup::
::kaijiqidong::
::qidong::
    Run, %A_Startup%
return


:*:d]::  ; 此热字串通过后面的命令把 "]d" 替换成当前日期和时间.
FormatTime, CurrentDateTime,, yyyy/MM/dd hh:mm:ss
Send %CurrentDateTime%
return


::hosts::
::host::
::vhost::
path := "C:\Windows\System32\drivers\etc"
Run, % path
clipboard := path
return


!l:: 
    lifeArray := ["beforeMount", "beforeCreate", "created", "mounted", "destroyed", "activated", "", "", "horizontal", "vertical", "", "", "componentWillMount", "componentDidMount", "componentDidUnmount", "", "", "primary", "success", "info", "warning", "danger", "", "", "xs —— 超小屏幕 手机 (<768px)", "sm —— 小屏幕 平板 (≥768px)", "md —— 中等屏幕 桌面显示器 (≥1024px)", "lg —— 大屏幕 大桌面显示器 (≥1280px)", "iPhone6 750*1334", "普通设计稿：1160/980", "720p: 1280 x 720, HD（高清）", "1080p: 1920 x 1080, FULL HD（全高清）", "1440p: 2560 x 1440, QHD/Quad HD，即4倍的HD", "2160p: 3840 x 2160, 4K", "4320p: 7680 x 4320, 8K", "", "",  "public", "private", "protected",  "","", "thumbnail", "small", "bmiddle", "large", "", "", "JavaScript七大基本类型：boolean，null，undefined，number，string，object，symbol", "YYYY/MM/DD HH:mm:ss"]
    Loop % lifeArray.MaxIndex() {
        this_life := lifeArray[a_index]
        Menu, LifeMenu, Add, %this_life%, MenuHandlerlifeArray
    }
    Menu, LifeMenu, Show
    Menu, LifeMenu, DeleteAll
return

MenuHandlerlifeArray:
Var := A_ThisMenuItem
v := A_ThisMenuItem


if (v == "") {
Var =
(
)
}

if (v == "xs —— 超小屏幕 手机 (<768px)") {
Var =
(
xs
)
}

if (v == "✖的html形态：&times;") {
Var =
(
<button type="button" class="close" aria-label="Close">
  <span aria-hidden="true">&times;</span>
</button>
)
}

if (v == "sm —— 小屏幕 平板 (≥768px)") {
Var =
(
sm
)
}

if (v == "md —— 中等屏幕 桌面显示器 (≥992px)") {
Var =
(
md
)
}

if (v == "lg —— 大屏幕 大桌面显示器 (≥1200px)") {
Var =
(
lg
)
}


if (v == "beforeMount") {
Var =
(
beforeMount () {
    
},
)
}
if (v == "beforeCreate") {
Var =
(
beforeCreate () {
    
},
)
}
if (v == "created") {
Var =
(
created () {
    
},
)
}
if (v == "mounted") {
Var =
(
mounted () {
    
},
)
}
if (v == "destroyed") {
Var =
(
destroyed () {
    
},
)
}
if (v == "activated") {
Var =
(
activated () {
    
},
)
}

code(Var)
return


::@qq::
::@qq.com::
p("928532756@qq.com")
return


::bd::
    SendRaw, http://www.baidu.com
return

^!o::
    str := Trim(Clipboard)
    
    if (SubStr(str, 0, 2) == "//") {
        str := "http:" . str
    }
    
    If(InStr(str, "http://") || InStr(str, "https://") || InStr(str, "//") || InStr(str, "www.") || InStr(str, ".com") || InStr(str, "C:") || InStr(str, "D:") || InStr(str, "E:")  || InStr(str, "F:")  || InStr(str, "F:")  || InStr(str, "G:")  || InStr(str, "H:")|| InStr(str, ".net") || Instr(str, "data:") || Instr(str, "data:image/")) {
        RUN, % str
    } else {
        RUN, https://www.baidu.com/s?wd=%str%
    }
return

!o::
    tmp := Clipboard
    
    Clipboard := 
    
    WinClip.copy()
    
    ClipWait, 2
    
    tmp := Trim(Clipboard)
    
    ; 以换行符为分隔符切割为数组
	array := StrSplit(tmp, "`n")
	    
    	; 遍历数组
	For key, str in array {
    
        if (SubStr(str, 0, 2) == "//") {
            str := "http:" . str
        }
        
        if (InStr(str, "C:") || InStr(str, "D:") || InStr(str, "E:")  || InStr(str, "F:")  || InStr(str, "F:")  || InStr(str, "G:")  || InStr(str, "H:") || InStr(str, "C/") || InStr(str, "D/") || InStr(str, "E/")  || InStr(str, "F/")  || InStr(str, "F/")  || InStr(str, "G/")  || InStr(str, "H/")) {
            
            ; 解决类似 c/users/lee/desktop/citymanagement 的路径
            if (SubStr(str, 2, 1) == "/") {
                pan := SubStr(str, 1, 1)
                last := SubStr(str, 2)
                str := pan . ":" . last
            }
            
            RUN, % str
        } else if(InStr(str, "http://") || InStr(str, "https://") || InStr(str, "//") || InStr(str, "www.") || InStr(str, ".com")) {
            if (!InStr(str, "http://") && !InStr(str, "https://")) {
                str := "http://" . str
            }
            
            RUN, % str
        } else {
            RUN, https://www.baidu.com/s?wd=%str%
        }
    }
return

+BackSpace::
    Send, {Del}
return

$!BackSpace::
    Send, +{Home}
    Send, {Del}
return


>^s::
Sleep, 100
cs("npm run start")
return

$!Up::
    Send, {PGUP}
return

$+!Up::
    Send, +{PGUP}
return

$!Down::
    Send, {PGDN}
return

$+!Down::
    Send, +{PGDN}
return

$!Right::
    Send, {end}
return



$+!Right::
    Send, +{end} 
return

$!Left::
    Send, {Home}
return

$+!Left::
    Send, +{Home}
return

/*
^!p::
    ; FileSelectFile / FileSelectFolder
    FileSelectFile, OutputVar,,3 
    Clipboard := OutputVar
return
*/


!d::
    RunBy(A_WorkingDir)
return

>!t::
Var =
(
// 启动计时器
console.time('20190219153729')

// your code...


// 停止计时，输出时间
console.timeEnd('20190219153729')
)
code(Var)
return

#c::
    RunByCmder(A_Desktop)
    ; RunByHyper(A_Desktop)
return

::@info::
    Send, lizhaohong@hongte.info
return


; ALT + R 重启脚本
!r::
    WinGetActiveTitle, OutputVar
    Pos := InStr(OutputVar, ".ahk") 
    ;if WinActive("ahk_class SciTEWindow")
    if Pos > 0
        Send, ^s
    reload
Return

^!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    Send, ^c ; WinClip.copy()
    ClipWait, 2
    if (Clipboard) {
          if (StrLen(Clipboard) >= 50) {
              MsgBox, 请不要把此功能当做翻译机
              return 
          }
          ; 百度翻译API
          Var := ajax("https://service-115y2sb2-1255983702.gz.apigw.tencentcs.com/release/baidu_transapi?text=" . Clipboard . "&type=tuofeng")
          ; 翻译好像会返回双引号和空格符，我移除了
          v := SubStr(Var, 2, -1)
          v := Trim(v)
          ; 黏贴结果
          code(v)
          ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
          Clipboard := v
    }

Return

!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    Send, ^c ; ; WinClip.copy()
    ClipWait, 2
    if (Clipboard) {
      if (StrLen(Clipboard) >= 50) {
          MsgBox, 请不要把此功能当做翻译机
          return 
      }
      ; 百度翻译API
      Var := ajax("https://service-115y2sb2-1255983702.gz.apigw.tencentcs.com/release/baidu_transapi?text=" . Clipboard . "&type=_", true)
      
      ; 翻译好像会返回双引号和空格符，我移除了
      v := SubStr(Var, 2, -1)
      v := Trim(v)

      tip("翻译成功", "【" . Clipboard . "】 的翻译结果为： " . v)
      ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
      Clipboard := v
    }
Return

/**
; 抓取菜单
+!c::  
    ; 必须add一下才可以使用DeletaAll
    Menu, MyMenu, add
    Menu, MyMenu, DeleteAll
    WinClip.copy()
    Sleep, 150 
    MyVar := clipboard
    clipboard := ""
    RegExMatch(MyVar, "i)(\b\w+\b)(?CCallout)") 
    Callout(m) {
        if (StrLen(m) >= 3 and StrLen(m) < 20) {
            clipboard .= m . ","
        }
        return 1
    }
    MyVar := clipboard
    Sort MyVar, U D,
    ; D默认使用逗号作为分隔符，U移除重复项
    Sort MyVar, U D,
    ColorArray := StrSplit(MyVar, ",")
    Loop % ColorArray.MaxIndex() {
        this_color := ColorArray[a_index]
        Menu, MyMenu, Add, %this_color%, MenuHandler
    }
    TrayTip, 生成成功, （づ￣3￣）づ╭?～ 按下 Ctrl + x 可以启动, 20, 17
return

!x::
     Menu, MyMenu, Show
Return
*/

::ip::
if (A_IPAddress2 == "0.0.0.0") {
    code(A_IPAddress1)
} else { 
    code(A_IPAddress2)
}
return

; 获取当前ip，分为1234四个网卡
::ip1::
    Send, % A_IPAddress1
return

::ip2::
    Send, % A_IPAddress2
return

::ip3::
    Send, % A_IPAddress3
return

::ip4::
    Send, % A_IPAddress4
return

AppsKey & l::
>^l::
    ip := A_IPAddress1
    if (A_IPAddress2 == "0.0.0.0") {
       ip := A_IPAddress1
    } else { 
       ip := A_IPAddress2
    }
    Var := "http://" . ip . ":8099"
    SendRaw, % Var
return

; 我阿里云的ip，方便我记忆
::didiip::
    SendRaw, 116.85.26.25 
return

::aliip::
::vip::
SendRaw, 149.129.40.183 
return



:?:.git::
::gitig::
:?:.git::
::gitignore::
::giti::
Var = 
(
#.gitignore

.DS_Store
node_modules/
dist/
npm-debug.log*
yarn-debug.log*
yarn-error.log*
test/unit/coverage
test/e2e/reports
selenium-debug.log

# Editor directories and files
.idea
*.suo
*.ntvs*
*.njsproj
*.sln
)
code(Var)
return

::git::
p("git add . && git commit -m '#' --no-verify && git push")
_sendInput("{LEFT 25}")
Return

::git2::
p("git add . && git commit -m '#' --no-verify && git push -u origin")
_sendInput("{LEFT 35}")
Return

::gitp::
p("git push")
Return

::auth::
Var =
(
config.headers['Authorization'] = 'Bearer <your token...>'
)
txtit(Var)
return

>+a::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%, RGB  
    Clipboard := SubStr(color, 3) ; 考虑在前面加上，但我就算了，实战的时候发现这个东西有点多余"#" . 
    TrayTip, my title, current color is `n %Clipboard%, 20, 17
return

>^>+a::
MouseGetPos, posX, posY
PixelGetColor, color, %posX%, %posY%, Slow RGB
Clipboard := HexToRGB(color)
TrayTip, my title, current color is `n %Clipboard%, 20, 17
return

>^>!c::
Clipboard := 
WinClip.copy()
ClipWait, 2
Clipboard := HexToRGB(Clipboard)
TrayTip, 颜色转换完成
_send(Clipboard)
return



/*
^+d::
    InputBox, OutputVar, title, enter your download url?
    if (OutputVar != "") {
        text := ajax(OutputVar)
        RUN, notepad
        WinWaitActive, 无标题 - 记事本, , 2
        if ErrorLevel {
            MsgBox, WinWait timed out.
        }
        else {
            ; 这里需要聚焦一下
            Winactivate
            code(text)
        }
    }
return
*/

::jss::
p("JavaScript")
return

; 不知道从什么时候开始，大写的C盘写不出来了。这里我用小写吧无所谓，反正window不区分大小写
::desk::
::~::
::desktop::
p(A_Desktop)
return

::desk/::
::desktop/::
    Var := StrReplace(A_Desktop, "\", "/")
    StringLower, str, Var
    SendRaw, %str%
return

::ahktitle::
Var =
(
WinGetTitle, title, A
if (InStr(title, "Android Studio")) {
    
}
)
code(Var)
return

~^s::
    WinGetTitle, title, A
    if (InStr(title, "Android Studio")) {
        Send, ^+\
    } else {
        Send, ^s
    }
return

!enter::
    WinGetTitle, title, A
    if (!InStr(title, "Android Studio")) {
        WinGet, OutputVar, MinMax, A
        if (OutputVar == 1) {
            WinRestore, A
        } else {
            WinMaximize, A
        }
    }
return

::ahkvar::
::varahk::
Var = 
(
Var = 
(

`)
code(Var)
)
code(Var)
return


::ahkvar2::
::varahk2::
Var = 
(
InputBox, OutputVar, title, enter a name?,,,,,,,,user
String1 := SubStr(OutputVar, 1, 1)
StringUpper, String1, String1
OutputVar2 := String1 . SubStr(OutputVar, 2)
Var = 
(

`)
code(Var)
)
code(Var)
return



!PGUP::
    Send, {PGUP 30}
    Send, {Alt Up}
return

!PGDN::
    Send, {PGDN 30}
    Send, {Alt Up}
return


::randimg::
::rangeimg::
::testimg::
::testimage::
::testimages::
Var =
(
https://uploadbeta.com/api/pictures/random/?key=BingEverydayWallpaperPicture
)
code(Var)
return

::testmp4::
Var =
(
https://player.vimeo.com/video/253905163
)
code(Var)
return

::wxrand::
::wxrange::
::wxselect::
Var =
(
// 目标人数
const target = 10
// 组所有成员
const people = [...document.querySelectorAll('.members .nickname')].map(_ => _.innerText)
// 组成员人数
const len = people.length
// 被选中的孩子们
let beSelectPeoples = new Set()
// 直到满足目标人数
while(beSelectPeoples.size != target) {
  // 随机数
  const rand = ~~(0 + Math.random() * (len + 1))
  // 被选中的孩子
  const beSelectPeople = people[rand]
  // 加入队列
  beSelectPeoples.add(beSelectPeople)
}
)
code(Var)
return


::chrome app::
::chrome.app::
::chrome-app::
Var =
(
--app=http://12345v1.dgdatav.com:6080/#/dg/overallSituation
)
code(Var)
return

::ahksend::
::ahks::
Var =
(
_send("root", true, true)
return
)
code(Var)
Send, {UP 1}{Home 1}
Send, {Right 7}
Send, +{right 4}
return


::``````::
Var =
(
``````javascript

``````
)
code(Var)
Send, {up}
return

; ^r::
; Send, {F6}
; sleep, 100
; Send, ^l
; sleep, 100
; Send, ^r
; return

^SC029::
Send, {F6}
sleep, 100
Send, ^l
return

!SC029::
::``````j::
::``````js::
::``````jss::
::``j::
::``js::
Var =
(
``````javascript

``````
)
code(Var)
Send, {up}
return


::``````t::
::``````ts::
Var =
(
``````Typescript

``````
)
code(Var)
Send, {up}
return


::or::
Var =
(
oracle
)
code(Var)
return

::ahkpwshell::
::ahkpowsershell::
::ahkpw::
::ahkpws::
::ahkshell::
Var =
(
; zip名字
zipname := "vue3-template.zip"
; 文件夹名字
zippath := "./vue3-template"
; 下载文件的地址
url := "https://raw.githubusercontent.com/dragon8github/Pandora/master/template/vue3-template.zip"
; 由于要使用git命令，所以要将window格式转化为unix格式的路径
desk := StrReplace(A_Desktop, "\", "/")
; 文件夹的名字
name := desk . "/vue3_template_" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
; 一系列命令 
command = 
(
mkdir `%name`% ; cd `%name`% ; Invoke-WebRequest -uri "`%url`%" -OutFile "`%zipname`%" ; Expand-Archive -Path `%zipname`% -DestinationPath . ; rm `%zipname`%
`)
run, powershell.exe `%command`%
)
code(Var)
return


::shazan::
::shaz::
::shazam::
::shazhan::
::sz::
Var =
(
━━━━━┒   ⚡⚡⚡⚡⚡
   ┓┏┓┏┓   
   ┛┗┛┗┛┃  改你mb的需求！！
   ┓┏┓┏┓┃    ＼○／
   ┛┗┛┗┛┃    　/
   ┓┏┓┏┓┃    ノ) 
   ┛┗┛┗┛┃
   ┓┏┓┏┓┃ 
   ┛┗┛┗┛┃
   ┓┏┓┏┓┃ 
   ┛┗┛┗┛┃
   ┓┏┓┏┓┃
   ┃┃┃┃┃┃
   ┻┻┻┻┻┻*/
)
code(Var)
return


![::
tmp := Clipboard
Clipboard :=
Send, ^x
ClipWait, 2
if (Clipboard != "") {
    ; 以换行符为分隔符切割为數組
  array := StrSplit(Clipboard, "`r`n")

  result := ""

  ; 遍历数组
  For key, value in array
      if (key >= 1) {
        ext := array.Length() == key ? "" : "`r`n"
        result .= "『" . Trim(StrReplace(value, "`r`n")) . "』" . ext
      }

  code(result)
}
Clipboard := tmp
return

!]::
tmp := Clipboard
Clipboard :=
Send, ^x
ClipWait, 2
if (Clipboard != "") {
    ; 以换行符为分隔符切割为數組
  array := StrSplit(Clipboard, "`r`n")

  result := ""

  ; 遍历数组
  For key, value in array
      if (key >= 1) {
        ext := array.Length() == key ? "" : "`r`n"
        result .= "「" . Trim(StrReplace(value, "`r`n")) . "」" . ext
      }

  code(result)
}
Clipboard := tmp
return

::zyx::
Var =
(
李钊鸿(928532756@qq.com)
冯嘉欣(15649142@qq.com)
刘羲(lx7412@aliyun.com)
志威(425412301@qq.com)
耀全(378127444@qq.com)
润权(604079172@qq.com)
张宇烜(740244633@qq.com)
)
txtit(Var)
return


::ahkitem::
::ahkmenuitem::
Var =
(
Menu, PythonMenu, Add,🍁🍁🍁🍁🍁🍁🍁🍁  命令行  🍁🍁🍁🍁🍁🍁🍁🍁, PythonHandler
)
code(Var)
return

::fafa::
Var =
(
🍁🍁🍁🍁🍁🍁🍁🍁
)
code(Var)
return

::caizhi::
::sucai::
::cailiao::
::m::
Var =
(
Material
)
code(Var)
return



; #p::
; run, powershell.exe
; return

::dgcenter::
::dg.center::
::dg-center::
Var =
(
center: [113.843319, 22.921901],
)
code(Var)
return

::ok::
::gou::
Var =
(
✔
)
code(Var)
return

::ts::
cs("Typescript")
return

::0-9::
::1-9::
Var =
(
0123456789
---
one two three four five six seven eight nine ten 1-10
eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty 11-20
twenty-one twenty-two twenty-three twenty-four twenty-five twenty-six twenty-seven twenty-eight twenty-nine thirty 21-30
thirty-one thirty-two thirty-three thirty-four thirty-five thirty-six thirty-seven thirty-eight thirty-nine forty 31-40
forty-one forty-two forty-three forty-four forty-five forty-six forty-seven forty-eight forty-nine fifty 41-50
fifty-one fifty-two fifty-three fifty-four fifty-five fifty-six fifty-seven fifty-eight fifty-nine sixty 51-60
sixty-one sixty-two sixty-three sixty-four sixty-five sixty-six sixty-seven sixty-eight sixty-nine seventy 61-70
seventy-one seventy-two seventy-three seventy-four seventy-five seventy-six seventy-seven seventy-eight seventy-nine eighty 71-80
eighty-one eighty-two eighty-three eighty-four eighty-five eighty-six eighty-seven eighty-eight eighty-nine ninety 81-90
ninety-one ninety-two ninety-three ninety-four ninety-five ninety-six ninety-seven ninety-eight ninety-nine one hundred 91-100
---
百 hundred
千 thousand
万 ten thousand（这是一万的意思，在英语里，没有单独表示万的词，要真的表示万，只能从一万开始，即ten thousand）
十万 hundred thousand
百万 million
亿 （由于在英文中没有单独表示亿这个字的词，但是有个单词表示十亿，即 billion）
---
var data = {
  1: 'one', 2: 'two', 3: 'three', 4: 'four', 5: 'five', 6: 'six', 7: 'seven', 8: 'eight', 9: 'nine', 10: 'ten',
  11: 'eleven', 12: 'twelve', 13: 'thirteen', 14: 'fourteen', 15: 'fifteen', 16: 'sixteen', 17: 'seventeen', 18: 'eighteen', 19: 'nineteen', 20: 'twenty',
  21: 'twenty one', 22: 'twenty two', 23: 'twenty three', 24: 'twenty four', 25: 'twenty five', 26: 'twenty six', 27: 'twenty seven', 28: 'twenty eight', 29: 'twenty nine', 30: 'thirty',
  31: 'thirty one', 32: 'thirty two', 33: 'thirty three', 34: 'thirty four', 35: 'thirty five', 36: 'thirty six', 37: 'thirty seven', 38: 'thirty eight', 39: 'thirty nine', 40: 'forty',
  41: 'forty one', 42: 'forty two', 43: 'forty three', 44: 'forty four', 45: 'forty five', 46: 'forty six', 47: 'forty seven', 48: 'forty eight', 49: 'forty nine', 50: 'fifty',
  51: 'fifty one', 52: 'fifty two', 53: 'fifty three', 54: 'fifty four', 55: 'fifty five', 56: 'fifty six', 57: 'fifty seven', 58: 'fifty eight', 59: 'fifty nine', 60: 'sixty',
  61: 'sixty one', 62: 'sixty two', 63: 'sixty three', 64: 'sixty four', 65: 'sixty five', 66: 'sixty six', 67: 'sixty seven', 68: 'sixty eight', 69: 'sixty nine', 70: 'seventy',
  71: 'seventy one', 72: 'seventy two', 73: 'seventy three', 74: 'seventy four', 75: 'seventy five', 76: 'seventy six', 77: 'seventy seven', 78: 'seventy eight', 79: 'seventy nine', 80: 'eighty',
  81: 'eighty one', 82: 'eighty two', 83: 'eighty three', 84: 'eighty four', 85: 'eighty five', 86: 'eighty six', 87: 'eighty seven', 88: 'eighty eight', 89: 'eighty nine', 90: 'ninety',
  91: 'ninety one', 92: 'ninety two', 93: 'ninety three', 94: 'ninety four', 95: 'ninety five', 96: 'ninety six', 97: 'ninety seven', 98: 'ninety eight', 99: 'ninety nine',
}
)
txtit(Var)
return

::seq::
cs("sequelize")
return

::je::
::jk::
::jek::
cs("Jenkins")
return

::ahksend::
::_send::
::ahk_send::
::ahk.send::
Var =
(
_send("delay", true, true)
return
)
code(Var)
Return

::lzh::
cs("李钊鸿（928532756@qq.com）")
return

::137::
cs("13713332652")
return

::tongwei::
Var =
(
彤炜
)
code(Var)
return

::shutong::
cs("数通HCIA-Routing & Switching")
return

::new chart::
::chart::
::new charts::
::chart.init::
InputBox, OutputVar, title, enter a name?,,,,,,,,BaseLineChart
Var =
(
import echarts from 'vue-echarts'
import Chart from '../Chart.js'
import FormItem from '@/components/FormItem'

export default class %OutputVar% extends Chart {
      static w = 400;
      static h = 400;
      constructor(...props) {
        super(...props)

        // 第一步：定义显示名称
        this.__NAME__ = ''

        // 第二步：定义依赖配置
        this.setForm()

        // 第三步：初始示例数据
        this.demo = {}

        // 第四步： 定义 setData
        this.setData = ({data, xAxis} = {}) => {
            this.option.xAxis[0].data = data.map(_ => _.name)
            this.option.series = getBar(data)
        }

        // 第五步： 初始化配置
        this.setOption({

        })
    }
}
)
code(Var)
Return

::sw2::
Var =
(
service worker
)
code(Var)
return

::sw::
Var =
(
// SwaggerApi.json
const data = {"swagger": "2.0"}

const maybe = (fn, n = '') => {
   try {
      const result = fn()
      return (result && result === result && result !== 'NaN' && result !== 'Invalid date') ? result : n
   } catch (err) {
      return n
   }
}

const getProperties = target => Object.entries(target).reduce((obj, [key, val]) => {
  obj[key] = val.properties 
      ? getProperties(val.properties) 
      : maybe(_ => val.type === 'number' ? +val.mock.mock : val.mock.mock)

  return obj
}, {})

const result = Object.entries(data.paths).reduce((ary, [k, v]) => {
  const { summary, parameters } = v.post
  const properties = parameters[0].schema.properties
  const newObj = properties ? getProperties(properties) : null

  const url = k
  const name = summary
  const params = newObj

  const obj = { url, name, params }
  return [...ary, obj]
}, [])

console.log(20200907171041, result)
)
code(Var)
return

::wx::
Var =
(
微信小程序
)
code(Var)
return

::ahkreplace::
::ahkstr::
Var =
(
v := StrReplace(v, "，", ",")
)
code(Var)
return


::se::
Var =
(
segmentfault
)
code(Var)
return


::mangzhong::
Var =
(
一想到你我就…… 😭😭😭……空恨别梦久
)
code(Var)
return

::pianduan::
Var =
(
snippets
)
code(Var)
return

::ahkgui::
::guiahk::
Var =
(
/**
//////////////////////////////////////////////
初始化 Book GUI 的代码逻辑
//////////////////////////////////////////////
 
GUI, Card:Default


; 背景颜色
Gui, Card:Color, E6FFE6

; margin 布局
Gui, Card:Margin, 10, 10

; 字体大小
Gui, Card:Font, s12, Verdana


; Tab 选项卡
Gui, Card:Add, Tab3, gSwitchCardTab vCardTab Section Choose1 w1250, 知识卡片|新增卡片

Gui, Card:Tab, 1

; 树
Gui, Card:Add, ListView, vCardTree gCardTreeSelect AltSubmit Section HScroll H700 W350, 标题|标签


global cardGistObj := {}

; 初始化树
initCard()


; 代码容器
Gui, Card:Add, Edit, ys vCardContent w890 H700 Limit199307100337  
---
>+g::
	Gui, Card:Show,, Card
return

CardGuiEscape:
CardGuiClose:
	Gui, Book:Hide
return


initCard() {
	data := gistList()
	
	; 遍历所有片段
	For key, value in data {
		; 遍历 files ，但目前我只获取第一个即可
		For key2, value2 in value.files {
			; 加入变量
			cardGistObj[value.description] := value2.content
			; 添加到树中
			LV_Add("", value.description, key2)
			; 只拿第一个，如果有需要以后再说
			break
		}
	}
	
	; 自动适应宽度
	LV_ModifyCol()
}

SwitchCardTab() {

}

CardTreeSelect() {
	; 获取点击的索引
	index := A_EventInfo
	
	; 获取标题
	LV_GetText(RowText, A_EventInfo)
	
	; 获取内容
	content := cardGistObj[RowText]
	
	if (A_GuiEvent == "I" && InStr(ErrorLevel, "SF", true)) {
		GuiControl, Card:Text, CardContent, `% content
	}
	
	if (A_GuiEvent = "Normal") {
		; GuiControl, Card:Text, CardContent, `% content 
	}
	
	if (A_GuiEvent = "RightClick") {
		Clipboard := content 
		ToolTip  已加入到剪切板： "%content%"
		SetTimer, RemoveToolTip, -1000
	}

	if (A_GuiEvent = "DoubleClick") {
		Clipboard := content 
		ToolTip  已加入到剪切板： "%content%"
		SetTimer, RemoveToolTip, -1000
	}
}
)
txtit(Var)
return

::445::
Var =
(
445222199307100337
)
code(Var)
return

+F12::
Send, +{Insert}
return
