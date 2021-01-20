::ol.f::
Var =
(
// 生成「要素」
const features = data.map(feature => {
    // 取出坐标
    let { name, lngLat, region, value } = feature

    // https://openlayers.org/en/latest/apidoc/module-ol_Feature-Feature.html
    // Feature 的 API 其实只需要 「geometry、labelPoint、 name」
    // 其他的参数是保存另做它用的
    return new ol.Feature({
        // 「必选参数」
        geometry: new ol.geom.Point(lngLat),
        // 「额外参数」
        name: name, weight: value, region: region,
    })
})
)
txtit(Var)
return

::ol::
::ol.html::
::ol.base::
::ol.init::
::ol.map::
::ol.mapbox::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v5.3.0/build/ol.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v5.3.0/css/ol.css" />
    <style>
    html, body{
        margin: 0;
        padding: 0;
        height: 100`%;
    }

    #map {
        width: 100`%;
        height: 100`%;
    }
    </style>
</head>

<body>
    <div id="map"></div>
</body>
<script>
const map = new ol.Map({
    // target
    target: document.getElementById('map'),
    // layer
    layers: [
        new ol.layer.Tile({
            // https://studio.mapbox.com/
            // https://www.youtube.com/watch?v=KcPJr1b_rv0
            source: new ol.source.XYZ({
                // 瓦片大小可以选择 256 和 512
                url: 'https://api.mapbox.com/styles/v1/dragon8mapbox/ckjgblqlio0x019qtyttzr83r/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZHJhZ29uOG1hcGJveCIsImEiOiJjanIwZjZ1aWIwNjZ5NDVxbGZlOXYwY2kwIn0.w2vjF9k4LP3w_BN5xgmdlg',
            }),
        }),
    ],
    // view
    view: new ol.View({
        center: ol.proj.fromLonLat([113.75867124948216, 23.026719034540488]),
        zoom: 12,
    }),
})

map.on('click', e => {
    console.log('当前点击坐标：', ol.proj.toLonLat(e.coordinate))
})
</script>
</html>
---
/**
 * 根据多个坐标获取 extent
 *
 * const extent = ol.extent.boundingExtent([
    ol.proj.fromLonLat([113.911159, 22.952787]),
    ol.proj.fromLonLat([113.683493, 22.996441]),
   ])
 */
export const getExtent = coordinates => {
    // 转化格式
    const _coordinates = coordinates.map(lnglat => ol.proj.fromLonLat(lnglat))

    // 获取 extent
    return ol.extent.boundingExtent(_coordinates)
}

// 根据所有的坐标返回一个 extent
const extent = getExtent(data.map(_ => _.lngLat))

// // 聚焦
this.map.getView().fit(extent)
---
// 批量生成「要素」
const features = Object.entries(data).reduce((p, [key, val]) => {
    // 获取镇街的中心坐标
    const lngLat = ol.proj.fromLonLat(region[key])

    const feature = new ol.Feature({
        name: key,
        geometry: new ol.geom.Point(lngLat),
        type: '__region__',
        count: val
    })
    
    return [...p, feature]
}, [])

// 创建「矢量源」
const vectorSource = new ol.source.Vector({ features: features })

// 创建「矢量图层」
const vectorLayer = new ol.layer.Vector({ 
    source: vectorSource,
    style: feature => {
        // 获取数据
        const count = feature.values_.count

        // 生成样式和文本
        const style = new ol.style.Style({
            image: new ol.style.Circle({
                // 设置圆圈的半径大小（注意：聚合的大小和散点的范围有关，和数量无关）
                radius: _dynamicWidth(count),
                // 数量和透明度挂钩
                fill: new ol.style.Fill({ color: [85, 118, 189, Math.min(0.8, 0.1 + count / max)], }),
                stroke: new ol.style.Stroke({ color: '#12FFC9', width: 1, }),
            }),
            text: new ol.style.Text({ 
                text: count.toString(), 
                font: '18px microsoft yahei',
                fill: new ol.style.Fill({ color: '#fff' }), 
            }),
        })

        return style
    }
})

this.map.addLayer(vectorLayer)
)
txtit(Var)
return


::ol.xyz::
Var =
(
const map = new ol.Map({
    // target
    target: document.getElementById('map'),
    // layer
    layers: [
        new ol.layer.Tile({
            // https://studio.mapbox.com/
            source: new ol.source.XYZ({
                url: 'https://api.mapbox.com/styles/v1/dragon8mapbox/ckjgblqlio0x019qtyttzr83r/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZHJhZ29uOG1hcGJveCIsImEiOiJjanIwZjZ1aWIwNjZ5NDVxbGZlOXYwY2kwIn0.w2vjF9k4LP3w_BN5xgmdlg',
            }),
        }),
    ],
    // view
    view: new ol.View({
        center: [-472202, 7530279],
        zoom: 12,
    }),
})
)
txtit(Var)
return

:?:ol.icon::
:?:ol.style::
:?:ol.img::
:?:ol.image::
Var =
(
let feature = new Feature({
    geometry: new Point([113.877471, 23.104876]),
})

feature.setStyle(
    new Style({
        image: new Icon({
            src: require('@/assets/logo.png'),
            crossOrigin: '',
            anchor: [0.5, 0.5],
            scale: [0.1, 0.1],
            anchorXUnits: 'fraction',
            anchorYUnits: 'pixels',
        }),
    })
`)

layer.getSource().addFeature(feature)
)
txtit(Var)
return