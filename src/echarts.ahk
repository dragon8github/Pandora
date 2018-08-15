::echarts.load::
::echarts.loading::
Var =
(
mapChart.showLoading();
mapChart.hideLoading();
)
code(Var)
return

::geo::
::geojson::
::geo.init::
::geojson.init::
::geoinit::
::geojsoninit::
Var =
(
{
    "type": "FeatureCollection",
    "features": [
	    {
	        "type": "Feature", "properties": {"name": "what the fuck"},
	        "geometry": {
	            "type": "Polygon",
	            "coordinates": [
	                []
	            ]
	        }
	    },
	    {
	        "type": "Feature", "properties": {"name": "holy shit"},
	        "geometry": {
	            "type": "Polygon",
	            "coordinates": [
	                []
	            ]
	        }
	    },
    ]
}
)
code(Var)
return

::geofn::
::geojsonfn::
::geo.json.fn::
::geo.fn::
::geo.class::
Var =
(
/**
 * 新建Polygon
 * @param {string} name 覆盖物的名字
 * @param {array} coordinates 这是一个三维数组
 * 参考格式：http://echarts.baidu.com/examples/data/asset/geo/HK.json
 * 注意，Polygon 和 MultiPolygon是不一样的，前者是三维数组，后者是四维数组。
 */
const createPolygon = (name, coordinates) => {
   	return {
        "type": "Feature",
        "properties": {"name": name},
        "geometry": {
            "type": "Polygon",
            "coordinates": coordinates
        }
	}
}
)
code(Var)
return