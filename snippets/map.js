import { maybe, division, getCityIdList, genFeatureCollection, px2px } from '@/utils/utils.js'

// 东莞市的geo地理数据
const DongGuan = require('@/mapSources/DongGuan.geo.json')
// 东莞市所有镇区的geo地理数据
const DongGuanGrid = require('@/mapSources/DongGuanGrid.geo.json')

// 注册 <东莞市> 地图
echarts.registerMap('DongGuan', JSON.stringify(DongGuan))
// 注册 <东莞市网格> 地图
echarts.registerMap('DongGuanGrid', JSON.stringify(DongGuanGrid))

// 一个丑的一逼的气球图片
const sandian = require('@/assets/sandian.jpg')
// 颜色列表
const colorMap = ["#E83035", "#E88234", "#ECED08", "#01F1C4", "#01F1C4"]
// 镇街id列表
const CityIdList = getCityIdList()


// 生成镇区地图数据，一来是作为点击事件时可以获取的内容，二来是切换地图时预先注册的各种地图
const name_data = DongGuanGrid.features.map(function (v, index, array) {
   // 生成geoJson
   const FeatureCollection = genFeatureCollection(v.properties.name, v.geometry.coordinates[0])
   // 注册网格地图
   echarts.registerMap(v.properties.name, JSON.stringify(FeatureCollection)) 
   // 暂时只需要name字段即可
   return { name: v.properties.name}
})

// 核心地图类
class AggregationMap {
    // 构造函数
    constructor(el, clickMap) {
        // ehcarts 实例
        this.myChart = echarts.init(el)

        // 地图点击回调
        this.clickMap = clickMap

        // echarts注册的点击事件
        this.myChart.on('click', params => {
            // 获取name
            const name = params.name
            // 如果点击的是地图版块
            if (params.componentSubType === 'map') {
                // 执行回调，并注入网格名称
                clickMap && clickMap(name)
            }
        })
    }

    // 热力图必须和这个结合才能生效，至于最大值最小值，实际上并没有。只是按照一般情况是需要的而已。
    createVisualMap (min = 0, max = 1) {
        return {
            show: false,
            min,
            max,
            splitNumber: 3,
            seriesIndex: 1,  // 这里需要指定，是映射哪个series配置，我的是第二个的
            inRange: {       
                color: ["#E83035", "#E88234", "#ECED08", "#ECED08", "#d4dd7a", "#d4dd7a"].reverse()
            },
        }
    }

    // 热力图配置
    createHeatmap (data) {
        return {   
            // 设置为热力图类型
            type: 'heatmap',
            // 热力点的粗细值
            pointSize: 5,
            // 每个点模糊的大小，在地理坐标系(coordinateSystem: 'geo')上有效。
            blurSize: 50, // 30 50
            // 设置坐标类型为geo
            coordinateSystem: 'geo',
            // 指定geo的ID
            geoIndex: 0,
            // 每帧渲染的个数，默认400
            progressive: 1000,
            // 关闭动画
            animation: false,
            // 层级
            zlevel: 2,
            // 设置地图数据：[[ "113.797669", "23.027844", 1 ], [ "113.807751", "23.026374", 1 ]]
            data: data,
        }
    }

    // 气泡图
    createaPin (data = [], max = 1, min = 0, maxSizePin = 230, minSizePin = 145) {
        return {
            type: 'scatter',
            // 坐标系（默认上面的geo配置作为坐标系）
            coordinateSystem: 'geo',
            // 图形
            symbol: 'pin', // 'circle', 'pin', 'rect', 'roundRect', 'triangle', 'diamond', 'pin', 'arrow', 'none'，'image://url'
            // 动态设置气泡的大小
            symbolSize: val => {
                var a = (maxSizePin - minSizePin) / (max - min)
                var b = minSizePin - a * min
                b = maxSizePin - a * max
                return a * val[2] + b
            },
            label: {
                normal: {
                    show: true,
                    textStyle: {
                        color: '#fff',
                        fontSize:'30',
                    },
                    formatter: function (params) {
                        return params.value[2]
                    }
                }
            },
            itemStyle: {
                normal: {
                    color: '#F34234',
                }
            },
            zlevel: 6,
            data: data,
        }
    }

    // 创建散点配置项
    createPoints (data) {
        // 返回的这个配置对象，直接插入到series即可
        return {
            // 散点类型
            type: 'effectScatter',
            // 坐标系（默认上面的geo配置作为坐标系）
            coordinateSystem: 'geo',
            // 图形
            symbol: 'circle', // 'circle', 'rect', 'roundRect', 'triangle', 'diamond', 'pin', 'arrow', 'none'，'image://url'
            // 层级
            zlevel: 2,
            // 绘制完成后显示特效
            showEffectOn: 'render',
            // 是否开启鼠标 hover 的提示动画效果
            hoverAnimation: true,
            // 散点大小
            symbolSize: px2px(25),
            // 涟漪效果
            // rippleEffect: { period: 15, scale: 6, brushType: 'fill' },
            itemStyle: {
                normal: {
                    // 根据不同的 twoconsTypeId 渲染不同的颜色
                    color: params => colorMap[params.value[2]],
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            // 涟漪的配置
            rippleEffect: {
                // 动画中波纹的最大缩放比例。
                scale: 7,
                // 动画的周期，秒数。
                period: 4,
                // 波纹的绘制方式，可选 'stroke' 和 'fill'
                brushType: 'fill'
            },
            // 散点数据，格式如下:
            // [{name: '不重要随便写点什么都可以', value: [经度, 纬度, 其他值]}, {...}, , {...}, , {...}]
            data: data
        }
    }

    // 获取默认配置
    getDefaultConfig({ hover = false } = {}) {
        // 默认配置
        const defaultConfig = {
            // 地图的geo配置（这里选择东莞市地图作为底层背景图，同时也可以作为热力图的坐标系）
            geo: {
                // 当作为坐标系的时候需要被指定的Id
                id: 0,
                // 是否禁止鼠标事件（default: false）
                silent: true,
                // <东莞市>
                map: 'DongGuan',
                // 设置缩放比（default: 0.75）
                aspectScale: '1',
                // 地图样式
                itemStyle: {
                    // 区域颜色
                    areaColor: 'transparent',
                    // 边界颜色
                    borderColor: 'transparent',
                }
            },
            series: [
                // 东莞市网格的基本配置
                {
                    // 点击事件时需要用到，但实际上和地图渲染没有任何关系。地图渲染直接影响的参数是 { mapType: 'DongGuanGrid' }
                    data: name_data,
                    // 是否禁止鼠标事件（default: false）
                    silent: false,
                    // 渲染类型为地图
                    type: 'map',
                    // <东莞市网格>
                    mapType: 'DongGuanGrid',
                    // 设置缩放比（default: 0.75）
                    aspectScale: '1',
                    // 层级结构
                    zlevel: 1,
                    // 标签样式 
                    label: {
                        // 是否显示
                        show: false,
                        // 文字颜色
                        color: '#fff',
                        // 文字大小
                        fontSize: "90%"
                    },
                    // 地图样式
                    itemStyle: {
                        borderWidth: 5,
                        // 边界颜色 #8ddeff yellow transparent
                        borderColor: 'transparent',
                        // 地图颜色 transparent  #143248
                        areaColor: 'transparent',
                    },

                    // 鼠标hover网格时的配置
                    emphasis: {
                        // 鼠标hover时的网块样式
                        itemStyle: {
                            // 区域颜色  'transparent'
                            areaColor: 'rgba(17, 132, 187, .5)',
                        },
                        // 鼠标hover时标签的样式
                        label: {
                            // 文字颜色
                            color: '#ffffff',
                            fontSize: '90%',
                            show: false,
                        },
                    },
                   
                },
            ]
        }
        // 返回配置（使用$.extend避免深拷贝事件）
        return $.extend(true, {}, defaultConfig)
    }

    clear() {
        this.myChart.clear()
    }

    // 默认地图渲染
    render() {
        this.myChart.clear()
        // 按照默认配置渲染地图
        this.myChart.setOption(this.getDefaultConfig())
    }

    getChart () {
        return this.myChart
    }

    // 渲染散点
    renderScatter (data, opt) {
        // 获取散点的配置
        const config = this.createPoints(data)
        // 获取默认配置
        const defaultConfig = this.getDefaultConfig(opt)
        // 从默认配置中插入散点配置
        defaultConfig.series.push(config)
        // 开始渲染
        this.myChart.setOption(defaultConfig)
    }

    // 高亮镇街
    highlightStreet(name) {
        // 获取当前配置
        const defaultConfig = this.myChart.getOption()
        // 区域高亮
        defaultConfig.series.first().data = name_data.map(_ => _.name === name ? Object.assign({}, _, { selected: true }) : _ )
        // 开始渲染
        this.myChart.setOption(defaultConfig)
    }


    // 渲染气泡数据
    renderPin (data, max, min) {
        // 获取散点的配置
        const config = this.createaPin(data, max, min)
        // 获取默认配置
        const defaultConfig = this.getDefaultConfig()
        // 从默认配置中插入散点配置
        defaultConfig.series.push(config)
        // 开始渲染
        this.myChart.setOption(defaultConfig)
    }

    renderHeatmap (data) {
        // 创建热力图层
        const heatmap = this.createHeatmap(data)
        // 获取散点的配置
        const defaultConfig = this.getDefaultConfig()
        // 从默认配置中插入散点配置
        defaultConfig.series.push(heatmap)
        // 从默认配置中插入VisualMap
        defaultConfig.visualMap = this.createVisualMap()
        // 开始渲染
        this.myChart.setOption(defaultConfig)
    }
    getPosByGeo (lng, lat) {
        // 获取系列
        var seriesModel = this.myChart.getModel().getSeriesByIndex(0)
        // 获取地理坐标系实例
        var coordSys = seriesModel.coordinateSystem
        // dataToPoint 相当于 getPosByGeo
        return coordSys.dataToPoint([lng, lat])
    }
}

export default AggregationMap