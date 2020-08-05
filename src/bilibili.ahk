!m::

	Menu, KALUOPAI, Add, 【0】愚者（The Fool，0), bilibiliHandler
	Menu, KALUOPAI, Add, 【1】魔术师（The Magician，I), bilibiliHandler
	Menu, KALUOPAI, Add, 【2】女祭司（The High Priestess，II), bilibiliHandler
	Menu, KALUOPAI, Add, 【3】女皇（The Empress，III), bilibiliHandler
	Menu, KALUOPAI, Add, 【4】皇帝（The Emperor，IV), bilibiliHandler
	Menu, KALUOPAI, Add, 【5】教皇（The Hierophant，or the Pope，V), bilibiliHandler
	Menu, KALUOPAI, Add, 【6】恋人（The Lovers，VI), bilibiliHandler
	Menu, KALUOPAI, Add, 【7】战车（The Chariot，VII), bilibiliHandler
	Menu, KALUOPAI, Add, 【8】力量（Strength，VIII）, bilibiliHandler
	Menu, KALUOPAI, Add, 【9】隐者（The Hermit，IX), bilibiliHandler
	Menu, KALUOPAI, Add, 【10】命运之轮（The Wheel of Fortune，X), bilibiliHandler
	Menu, KALUOPAI, Add, 【11】正义（Justice，XI）, bilibiliHandler
	Menu, KALUOPAI, Add, 【12】倒吊人（The Hanged Man，XII), bilibiliHandler
	Menu, KALUOPAI, Add, 【13】死神（Death，XIII), bilibiliHandler
	Menu, KALUOPAI, Add, 【14】节制（Temperance，XIV), bilibiliHandler
	Menu, KALUOPAI, Add, 【15】恶魔（The Devil ，XV), bilibiliHandler
	Menu, KALUOPAI, Add, 【16】塔（The Tower，XVI), bilibiliHandler
	Menu, KALUOPAI, Add, 【17】星星（The Star，XVII), bilibiliHandler
	Menu, KALUOPAI, Add, 【18】月亮（The Moon，XVIII), bilibiliHandler
	Menu, KALUOPAI, Add, 【19】太阳（The Sun，XIX), bilibiliHandler
	Menu, KALUOPAI, Add, 【20】审判（Judgement，XX), bilibiliHandler
	Menu, KALUOPAI, Add, 【21】世界（The World，XXI), bilibiliHandler

	Menu, DITUMAP, Add, 验证坐标点是否在多边形内, bilibiliHandler
	Menu, DITUMAP, Add, 百度地图：地图坐标转换页面坐标, bilibiliHandler


	Menu, bilibiliMenu, Add, map 地图, :DITUMAP
	Menu, bilibiliMenu, Add, 卡罗牌, :KALUOPAI
	Menu, bilibiliMenu, Add, 🔴, bilibiliHandler2	
	Menu, bilibiliMenu, Add, ❄️, bilibiliHandler2	
	Menu, bilibiliMenu, Add, ❓, bilibiliHandler2
	Menu, bilibiliMenu, Add, ✈️, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🚀, bilibiliHandler2
	Menu, bilibiliMenu, Add, ✅, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🦄 , bilibiliHandler2
	Menu, bilibiliMenu, Add, 🐤 , bilibiliHandler2
	Menu, bilibiliMenu, Add, ☀️ , bilibiliHandler2
	Menu, bilibiliMenu, Add, 🐳, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🐉, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🌵 , bilibiliHandler2
	Menu, bilibiliMenu, Add, 🦋 , bilibiliHandler2
	Menu, bilibiliMenu, Add, 🔥, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🔆, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🏆, bilibiliHandler2
	Menu, bilibiliMenu, Add, ⚔️, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🎁, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🔔, bilibiliHandler2
	Menu, bilibiliMenu, Add, 📝, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🌈, bilibiliHandler2
	Menu, bilibiliMenu, Add, 🚸, bilibiliHandler2
	
	Menu, bilibiliMenu, Add, ⚠️, bilibiliHandler2
	Menu, bilibiliMenu, Add, ❎, bilibiliHandler2
	Menu, bilibiliMenu, Add, ⭐️, bilibiliHandler2
	Menu, bilibiliMenu, Add, ✔, bilibiliHandler2
	Menu, bilibiliMenu, Add, ✖️, bilibiliHandler2
	Menu, bilibiliMenu, Add, ·, bilibiliHandler2
	
	Menu, bilibiliMenu, Add,,
	Menu, bilibiliMenu, Add,,

	Menu, bilibiliMenu, Add, (=・ω・=), bilibiliHandler2
	Menu, bilibiliMenu, Add, (｀・ω・´), bilibiliHandler2
	Menu, bilibiliMenu, Add, ╮(￣▽￣)╭, bilibiliHandler2
	Menu, bilibiliMenu, Add, ～(￣▽￣～), bilibiliHandler2
	Menu, bilibiliMenu, Add, ←_←, bilibiliHandler2
	Menu, bilibiliMenu, Add, →_→, bilibiliHandler2
	Menu, bilibiliMenu, Add, (￣3￣), bilibiliHandler2
	Menu, bilibiliMenu, Add, Σ(ﾟдﾟ;), bilibiliHandler2
	Menu, bilibiliMenu, Add, (╯°口°)╯(┴—┴, bilibiliHandler2
	Menu, bilibiliMenu, Add, (｡･ω･｡), bilibiliHandler2
	Menu, bilibiliMenu, Add, （#-_-)┯━┯, bilibiliHandler2
	Menu, bilibiliMenu, Add, _(:3」∠)_, bilibiliHandler2
	Menu, bilibiliMenu, Add, ╰(‵□′)╯砸瓦鲁多, bilibiliHandler2
	; Menu, bilibiliMenu, Add, ด้้้้้็้้้็็็็็้้้้้็็็็็้้้้้้็็็็็้้้้้็็็็็้้้้้้็็็็็้้้้้็็็็็้้้้้้็็็็็้้้้้็็็็็้้้้้้็็็็็, bilibiliHandler2
	; Menu, bilibiliMenu, Add, 遍҈布互҈联网҈的҈神҈秘҈电波҈是҈如何҈制作҈出҈来的？, bilibiliHandler2
	
	
	Menu, bilibiliMenu, Show
	Menu, bilibiliMenu, DeleteAll

return

bilibiliHandler2:
v := A_ThisMenuItem
Clipboard := v
SendEvent, {text}%v%
return

bilibiliHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}

if (v == "百度地图：地图坐标转换页面坐标") {
Var =
(
const data = map.pointToPixel(e.point)
console.log(20200805154515, data)
)
}

if (v == "验证坐标点是否在多边形内") {
Var =
(
/**
 * Verify if point of coordinates (longitude, latitude) is polygon of coordinates
 * https://github.com/substack/point-in-polygon/blob/master/index.js
 * @param {number} latitude Latitude
 * @param {number} longitude Longitude
 * @param {array<[number,number]>} polygon Polygon contains arrays of points. One array have the following format: [latitude,longitude]

 [JS]如何验证坐标点是否在多边形内
 （温馨提示：计算消耗的时间有点久，最好是放在 web worker 里边计算）
 How to verify if point of coordinates is inside polygon [Javascript] - DEV - Google Chrome
 point-in-polygon/index.js at master · substack/point-in-polygon - Google Chrome

 */
function isPointInPolygon (latitude, longitude, polygon) {
  if (typeof latitude !== 'number' || typeof longitude !== 'number') {
    throw new TypeError('Invalid latitude or longitude. Numbers are expected')
  } else if (!polygon || !Array.isArray(polygon)) {
    throw new TypeError('Invalid polygon. Array with locations expected')
  } else if (polygon.length === 0) {
    throw new TypeError('Invalid polygon. Non-empty Array expected')
  }

  const x = latitude; const y = longitude

  let inside = false
  for (let i = 0, j = polygon.length - 1; i < polygon.length; j = i++) {
    const xi = polygon[i][0]; const yi = polygon[i][1]
    const xj = polygon[j][0]; const yj = polygon[j][1]

    const intersect = ((yi > y) !== (yj > y)) &&
            (x < (xj - xi) * (y - yi) / (yj - yi) + xi)
    if (intersect) inside = !inside
  }

  return inside
}
)
}

if (v == "【0】愚者（The Fool，0)") {
Var =
(
TheFool
)
}

if (v == "【1】魔术师（The Magician，I)") {
Var =
(
TheMagician
)
}

if (v == "【2】女祭司（The High Priestess，II)") {
Var =
(
TheHighPriestess
)
}

if (v == "【3】女皇（The Empress，III)") {
Var =
(
TheEmpress
)
}

if (v == "【4】皇帝（The Emperor，IV)") {
Var =
(
TheEmperor
)
}

if (v == "【5】教皇（The Hierophant，or the Pope，V)") {
Var =
(
TheHierophant
)
}

if (v == "【6】恋人（The Lovers，VI)") {
Var =
(
TheLovers
)
}

if (v == "【7】战车（The Chariot，VII)") {
Var =
(
TheChariot
)
}

if (v == "【8】力量（Strength，VIII）,") {
Var =
(
Strength
)
}

if (v == "【9】隐者（The Hermit，IX)") {
Var =
(
TheHermit
)
}

if (v == "【10】命运之轮（The Wheel of Fortune，X)") {
Var =
(
TheWheelofFortune
)
}

if (v == "【11】正义（Justice，XI）,") {
Var =
(
Justice
)
}

if (v == "【12】倒吊人（The Hanged Man，XII)") {
Var =
(
TheHangedMa
)
}

if (v == "【13】死神（Death，XIII)") {
Var =
(
Death
)
}

if (v == "【14】节制（Temperance，XIV)") {
Var =
(
Temperance
)
}

if (v == "【15】恶魔（The Devil ，XV)") {
Var =
(
TheDevil
)
}

if (v == "【16】塔（The Tower，XVI)") {
Var =
(
TheTower
)
}

if (v == "【17】星星（The Star，XVII)") {
Var =
(
TheStar
)
}

if (v == "【18】月亮（The Moon，XVIII)") {
Var =
(
TheMoon
)
}

if (v == "【19】太阳（The Sun，XIX)") {
Var =
(
TheSun
)
}

if (v == "【20】审判（Judgement，XX)") {
Var =
(
Judgement
)
}

if (v == "【21】世界（The World，XXI)") {
Var =
(
TheWorld
)
}



code(Var)
return