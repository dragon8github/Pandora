::bmap.juhe::
::bmap.dianjuhe::
::bmap.juhetu::
Var =
(
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=1XjLLEhZhQNUzd93EjU5nOGQ"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>

// 只需要四步：
var markers = []
const pt = new BMap.Point(经度, 维度)
markers.push(new BMap.Marker(pt))
// 要特别注意这一句，并非一个坐标执行一次，而是等一个区域内所有需要聚合的坐标累加到数组之后，再一次性添加，否则你自己想想，岂不是一个坐标一个独立的聚合？那完全就不是聚合了。因为聚合就是多个坐标的合集缩略图。
var markerClusterer = new BMapLib.MarkerClusterer(map, {markers:markers});
)
code(Var)
return

::bmap.sandian::
::bmap.dian::
Var =
(
 //点图标
 var GetMapMarkerOrIcon = function (x, y, level) {
        var point = new BMap.Point(x, y);
        var marker = new BMap.Marker(point);
        switch (level) {
            case 1:
                // 创建点 绿色
                marker = new BMap.Marker(point, { icon: new BMap.Icon("http://120.196.128.41:88/Content/OldHome/BaiDuMap/green-location.png", new BMap.Size(30, 36)) });
                break;
            case 2:
                // 创建点 黄色
                marker = new BMap.Marker(point, { icon: new BMap.Icon("http://120.196.128.41:88/Content/OldHome/BaiDuMap/yellow-location.png", new BMap.Size(30, 36)) });
                break;
            case 3:
                // 创建点 暗红色
                marker = new BMap.Marker(point, { icon: new BMap.Icon("http://120.196.128.41:88/Content/OldHome/BaiDuMap/red-location.png", new BMap.Size(30, 36)) });
                break;
            default:
                break;
        }
        return marker;
    }

const marker = GetMapMarkerOrIcon(opts.position.lng, opts.position.lat, parseInt(Math.random() * 3 + 1));
map.addOverlay(marker); // 增加点
)
code(Var)
return