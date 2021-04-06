::three.101::
::three.init::
::three::
::three.js::
Var =
(
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Document</title>
        <style>
            html,
            body {
                margin: 0;
                padding: 0;
                width: 100`%;
                height: 100`%;
            }
        </style>
    </head>

    <body></body>
    <script type="module">
        import * as THREE from 'https://threejsfundamentals.org/threejs/resources/threejs/r115/build/three.module.js'
        import { OrbitControls } from 'https://threejsfundamentals.org/threejs/resources/threejs/r115/examples/jsm/controls/OrbitControls.js'

        // 创建场景对象Scene
        var scene = new THREE.Scene()

        // 创建一个「Buffer」类型几何体对象
        var geometry = new THREE.BufferGeometry()

        // 类型数组创建顶点数据
        var vertices = new Float32Array([
            // 顶点 1 坐标
            30, 0, 30,
            // 顶点 2 坐标
            250, 0, 30,
            // 顶点 3 坐标
            200, 0, 150,
            // 顶点 4 坐标
            20, 0, 150,
        ])

        // 创建属性缓冲区对象（ 3个为一组，表示一个顶点的xyz坐标）
        var attribue = new THREE.BufferAttribute(vertices, 3)

        // 设置几何体attributes属性的位置属性
        geometry.attributes.position = attribue

        // 材质对象（线条）
        var material = new THREE.LineBasicMaterial({ color: 0x00ffff })

        // 线条模型对象
        var line = new THREE.Line(geometry, material)

        // 首尾顶点连线，轮廓闭合（可选）
        // var line = new THREE.LineLoop(geometry, material)

        // 线条对象添加到场景中
        scene.add(line)

        // three.js辅助坐标系
        scene.add(new THREE.AxesHelper(300))

        // 辅助网格线
        scene.add(new THREE.GridHelper(300, 25, 0x004444, 0x004444))

        /* 相机设置 */

        //窗口宽度
        var width = window.innerWidth
        //窗口高度
        var height = window.innerHeight
        //窗口宽高比
        var k = width / height
        //三维场景显示范围控制系数，系数越大，显示的范围越大
        var s = 200

        // 创建相机对象
        var camera = new THREE.OrthographicCamera(-s * k, s * k, s, -s, 1, 1000)

        // 设置相机位置
        camera.position.set(200, 300, 200)

        // 设置相机方向(指向的场景对象)
        camera.lookAt(scene.position)

        /* 创建渲染器对象 */
        var renderer = new THREE.WebGLRenderer({
            // （⭐️✨可选）开启锯齿
            antialias: true,
        })      

        // 设置渲染区域尺寸
        renderer.setSize(width, height)

        // 设置背景颜色
        renderer.setClearColor(0xb9d3ff, 1)

        // body元素中插入canvas对象
        document.body.appendChild(renderer.domElement)

        // 渲染函数
        function render() {
            // 执行渲染操作
            renderer.render(scene, camera)
            // 请求再次执行渲染函数render，渲染下一帧
            requestAnimationFrame(render)
        }

        render()

        // 旋转控件
        var controls = new OrbitControls(camera, renderer.domElement)
    </script>
</html>
---
// 正方体
const geometry1 = new THREE.BoxGeometry(50, 50, 50)
const material1 = new THREE.MeshLambertMaterial({ color: 0x0000ff, })
const mesh1 = new THREE.Mesh(geometry1, material1)
mesh.position.set(0, 0, 0)
scene.add(mesh1)

// 球体
const geometry2 = new THREE.SphereGeometry(60, 40, 40)
const material2 = new THREE.MeshLambertMaterial({ color: 0xff00ff, })
const mesh2 = new THREE.Mesh(geometry2, material2)
mesh2.translateY(230)
scene.add(mesh2)

// 圆柱体
const geometry3 = new THREE.CylinderGeometry(50, 50, 100, 25)
const material3 = new THREE.MeshLambertMaterial({ color: 0xffff00, })
const mesh3 = new THREE.Mesh(geometry3, material3)
mesh3.position.set(120, 0, 0)
scene.add(mesh3)


/**立方体*/
var box = new THREE.BoxBufferGeometry(30, 30, 30)
var boxMaterial = new THREE.MeshPhongMaterial({ color: 0xffff00, side: THREE.DoubleSide }) 
var boxMesh = new THREE.Mesh(box, boxMaterial) 
console.log('BoxBufferGeometry', boxMesh.geometry)
boxMesh.translateZ(-80)
scene.add(boxMesh) 

/**球体*/
var sphere = new THREE.SphereGeometry(20, 40, 40)
var sphereMaterial = new THREE.MeshPhongMaterial({ color: 0xff00ff, side:THREE.BackSide })
var sphereMesh = new THREE.Mesh(sphere, sphereMaterial) //网格模型对象
sphereMesh.translateX(-80)
scene.add(sphereMesh)

/**圆柱*/
var cylinder = new THREE.CylinderGeometry(15, 15, 100, 40)
var cylinderMaterial = new THREE.MeshPhongMaterial({ color: 0x00ffff, side: THREE.BackSide, })
var cylinderMesh = new THREE.Mesh(cylinder, cylinderMaterial)
cylinderMesh.translateX(80)
scene.add(cylinderMesh)

///////////////// 
// 自定义几何体 // 
///////////////// 

// 创建一个「Buffer」类型几何体对象
var geometry = new THREE.BufferGeometry()
// 类型数组创建顶点数据
var vertices = new Float32Array([
    // 顶点 1 坐标
    30, 0, 30,
    // 顶点 2 坐标
    250, 0, 30,
    // 顶点 3 坐标
    200, 0, 150,
    // 顶点 4 坐标
    20, 0, 150,
])
// 创建属性缓冲区对象（ 3个为一组，表示一个顶点的xyz坐标）
var attribue = new THREE.BufferAttribute(vertices, 3)
// 设置几何体attributes属性的位置属性
geometry.attributes.position = attribue
// 材质对象（线条）
var material = new THREE.LineBasicMaterial({ color: 0x00ffff })
// 线条模型对象
var line = new THREE.Line(geometry, material)
// 首尾顶点连线，轮廓闭合（可选）
// var line = new THREE.LineLoop(geometry, material)

///////////// 
// 图片模型 // 
///////////// 

// 「矩形平面网格模型」（默认在 XOY 平面上）
var geometry = new THREE.PlaneBufferGeometry(60, 60)
// TextureLoader创建一个纹理加载器对象
var textureLoader = new THREE.TextureLoader()
// 材质
var material = new THREE.MeshBasicMaterial({
    // 设置背景透明的png贴图
    map: textureLoader.load('./贴图.png'),
    // 使用背景透明的png贴图，注意开启透明计算
    transparent: true,
    // 双面可见
    side: THREE.DoubleSide,
})
// 网格模型 = 几何体 + 材质
var mesh = new THREE.Mesh(geometry, material)
// 设置模型的位置
mesh.position.x = 0
mesh.position.y = 0
mesh.position.z = 0
// 旋转到 XOZ 平面
// mesh.rotateX(-Math.PI / 2)
---
import * as THREE from 'https://threejsfundamentals.org/threejs/resources/threejs/r115/build/three.module.js'
import { OrbitControls } from 'https://threejsfundamentals.org/threejs/resources/threejs/r115/examples/jsm/controls/OrbitControls.js'

// 其他内置工具
import { CSS2DObject, CSS2DRenderer } from 'https://threejsfundamentals.org/threejs/resources/threejs/r115/examples/jsm/renderers/CSS2DRenderer.js'
import { CSS3DObject, CSS3DRenderer } from 'https://threejsfundamentals.org/threejs/resources/threejs/r115/examples/jsm/renderers/CSS3DRenderer.js'

// 旋转控件
var controls = new OrbitControls(camera, renderer.domElement)

// 修复控件与 camera.lookAt 的问题
// 只需要设置跟 camera.lookAt 保持一致即可
controls.target.set(113.88568115234375, 22.900672912597656, 0)

controls.update()

##############################
// 渲染函数
function render() {
    // 执行渲染操作
    renderer.render(scene, camera)
}

render()

// 旋转控件
var controls = new OrbitControls(camera, renderer.domElement)

// 监听鼠标事件，触发渲染函数，更新 canvas 画布渲染效果
controls.addEventListener('change', render)
---
// 辅助线
scene.add(new THREE.AxesHelper(300))
// 辅助网格线
scene.add(new THREE.GridHelper(300, 25, 0x004444, 0x004444))
---
// debug(scene, 400, 200, 300)
export function debug(scene, x = 0, y = 0, z = 0, size = 10) {
    const geometry1 = new THREE.SphereGeometry(size, size, size)
    const material1 = new THREE.MeshLambertMaterial({ color: 0x0000ff })
    const mesh = new THREE.Mesh(geometry1, material1)
    mesh.position.set(x, y, z)
    scene.add(mesh)
}

// （☀️）本节课重点：地图 mapGroup 的包围盒计算
// 创建一个包围盒
var box3 = new THREE.Box3()

// .expandByObject()方法：计算层级模型group包围盒
box3.expandByObject(lineGroup)
console.log('查看包围盒box3', box3)

//scaleV3表示包围盒长宽高尺寸
var scaleV3 = new THREE.Vector3()
// .getSize()计算包围盒长宽高尺寸
box3.getSize(scaleV3)
// 查看控制台包围盒大小，辅助设置相机参数
console.log('查看包围盒尺寸', scaleV3)

//scaleV3表示包围盒的几何体中心
var center = new THREE.Vector3()
// .getCenter()计算一个层级模型对应包围盒的几何体中心
box3.getCenter(center)
// （☀️）本节课重点：查看控制台包围盒集合中心，作为 lookAt() 参数
console.log('查看几何中心', center)
)
txtit(Var)
return

::box3::
Var =
(
// （☀️）本节课重点：地图 mapGroup 的包围盒计算
// 创建一个包围盒
var box3 = new THREE.Box3()

// .expandByObject()方法：计算层级模型group包围盒
box3.expandByObject(lineGroup)
console.log('查看包围盒box3', box3)

//scaleV3表示包围盒长宽高尺寸
var scaleV3 = new THREE.Vector3()
// .getSize()计算包围盒长宽高尺寸
box3.getSize(scaleV3)
// 查看控制台包围盒大小，辅助设置相机参数
console.log('查看包围盒尺寸', scaleV3)

//scaleV3表示包围盒的几何体中心
var center = new THREE.Vector3()
// .getCenter()计算一个层级模型对应包围盒的几何体中心
box3.getCenter(center)
// （☀️）本节课重点：查看控制台包围盒集合中心，作为 lookAt() 参数
console.log('查看几何中心', center)
)
txtit(Var)
return

::three.guang::
::three.g::
::threeg::
::three.light::
::guang::
::light::
Var =
(
/* 光源设置 */

// （☀️本节课重点）平行光 1 - 前面
var directionalLight = new THREE.DirectionalLight(0xffffff, 0.6)
directionalLight.position.set(400, 200, 300)
scene.add(directionalLight)

// （☀️本节课重点）平行光 2 - 后面
var directionalLight2 = new THREE.DirectionalLight(0xffffff, 0.6)
directionalLight2.position.set(-400, -200, -300)
scene.add(directionalLight2)

// 环境光（总体环境）
var ambient = new THREE.AmbientLight(0xffffff, 0.6)
scene.add(ambient)
)
txtit(Var)
return

::three.map::
::threemap::
Var =
(
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Document</title>
        <style>
            html,
            body {
                margin: 0;
                padding: 0;
                width: 100`%;
                height: 100`%;
            }
        </style>
    </head>

    <body></body>
    <script type="module">
        import * as THREE from 'https://threejsfundamentals.org/threejs/resources/threejs/r115/build/three.module.js'
        import { OrbitControls } from 'https://threejsfundamentals.org/threejs/resources/threejs/r115/examples/jsm/controls/OrbitControls.js'
        import { get3DPolygonMesh, getLines } from './utils.js'

        // 创建场景对象Scene
        var scene = new THREE.Scene()

        // 辅助线
        scene.add(new THREE.AxesHelper(300))
        // 辅助网格线
        scene.add(new THREE.GridHelper(300, 25, 0x004444, 0x004444))

        /* 创建网格模型 */
        // 文件加载类 FileLoader（封装了 XMLHttpRequest）
        var loader = new THREE.FileLoader()

        // 设置响应类型
        loader.setResponseType('json')

        // 组对象 mapGroup 是所有国家边界「Line模型」和「mesh模型」的父对象
        var mapGroup = new THREE.Group()
        scene.add(mapGroup)

        // 组对象「mapGroup」是所有边界「Line」模型的容器
        var lineGroup = new THREE.Group()
        mapGroup.add(lineGroup)

        //轮廓Mesh组
        var meshGroup = new THREE.Group()
        mapGroup.add(meshGroup)

        // 适当偏移解决「深度冲突」（即轮廓视觉层级导致的粗浅问题）
        lineGroup.position.z += 0.5

        // 拉伸高度
        var mapHeight = 4

        // 修复深度冲突问题
        lineGroup.position.z = mapHeight + mapHeight * 0.1

        // 加载「中国地图」 GeoJSON 文件：「china.json」
        loader.load('./geo/china.json', data => {
            // 访问所有国家边界坐标数据：data.features
            data.features.forEach(area => {
                // 1.「Polygon」：国家area有一个封闭轮廓
                // 2.「MultiPolygon」：国家area有多个封闭轮廓
                // 3, 将「Polygon」 转换为 「MultiPolygon」 的格式
                if (area.geometry.type === 'Polygon') {
                    // 把 「Polygon」 和 「MultiPolygon」 的 「geometry.coordinates」 数据结构处理为一致
                    area.geometry.coordinates = [area.geometry.coordinates]
                }

                // （线条）轮廓
                const lines = getLines(area.geometry.coordinates)
                // （填充）平面
                const mesh = get3DPolygonMesh(area.geometry.coordinates, mapHeight)

                // 插入组对象 mapGroup
                lineGroup.add(lines)
                meshGroup.add(mesh)
            })
            
            // （可选）上下都有边界线更好看
            // 地图底部边界线
            var lineGroup2 = lineGroup.clone()
            // 适当偏移解决深度冲突
            lineGroup2.position.z = -0.1 
            // 加入「总署组」
            mapGroup.add(lineGroup2)
        })

        /* 光源设置 */

        // （☀️本节课重点）平行光 1 - 前面
        var directionalLight = new THREE.DirectionalLight(0xffffff, 0.6)
        directionalLight.position.set(400, 200, 300)
        scene.add(directionalLight)

        // （☀️本节课重点）平行光 2 - 后面
        var directionalLight2 = new THREE.DirectionalLight(0xffffff, 0.6)
        directionalLight2.position.set(-400, -200, -300)
        scene.add(directionalLight2)

        // 环境光（总体环境）
        var ambient = new THREE.AmbientLight(0xffffff, 0.6)
        scene.add(ambient)

        /* 相机设置 */

        //窗口宽度
        var width = window.innerWidth
        //窗口高度
        var height = window.innerHeight
        //窗口宽高比
        var k = width / height
        //三维场景显示范围控制系数，系数越大，显示的范围越大
        var s = 25

        // 创建相机对象
        var camera = new THREE.OrthographicCamera(-s * k, s * k, s, -s, 1, 1000)

        // 设置相机位置
        camera.position.set(104, -105, 200)

        // 设置相机方向(指向的场景对象)
        camera.lookAt(104, 35, 0)

        /* 创建渲染器对象 */
        var renderer = new THREE.WebGLRenderer({ 
            // （⭐️✨可选）开启锯齿
            antialias: true 
        })

        // 设置渲染区域尺寸
        renderer.setSize(width, height)

        // 设置背景颜色
        renderer.setClearColor(0x000000, 1)

        // body元素中插入canvas对象
        document.body.appendChild(renderer.domElement)

        // 渲染函数
        function render() {
            // 执行渲染操作
            renderer.render(scene, camera)

            // 请求再次执行渲染函数render，渲染下一帧
            requestAnimationFrame(render)
        }

        render()

        // 旋转控件
        var controls = new OrbitControls(camera, renderer.domElement)

        // 修复控件与 camera.lookAt 的问题
        // 只需要设置跟 camera.lookAt 保持一致即可
        controls.target.set(104, 35, 0)

        controls.update()

        console.log(20210405124141, camera, controls)
    </script>
</html>
---
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Document</title>
        <style>
            html,
            body {
                margin: 0;
                padding: 0;
                width: 100`%;
                height: 100`%;
            }
        </style>
    </head>

    <body></body>
    <script type="module">
        import * as THREE from 'https://threejsfundamentals.org/threejs/resources/threejs/r115/build/three.module.js'
        import { OrbitControls } from 'https://threejsfundamentals.org/threejs/resources/threejs/r115/examples/jsm/controls/OrbitControls.js'
        import { getPolygonMesh, getLines } from './utils.js'

        // 创建场景对象Scene
        var scene = new THREE.Scene()

        // 文件加载类 FileLoader（封装了 XMLHttpRequest）
        var loader = new THREE.FileLoader()

        // 设置响应类型
        loader.setResponseType('json')

        // 组对象 mapGroup 是所有国家边界「Line模型」和「mesh模型」的父对象
        var mapGroup = new THREE.Group()
        scene.add(mapGroup)

        // 组对象「mapGroup」是所有边界「Line」模型的容器
        var lineGroup = new THREE.Group()
        mapGroup.add(lineGroup)

        //轮廓Mesh组
        var meshGroup = new THREE.Group()
        mapGroup.add(meshGroup)

        // 适当偏移解决「深度冲突」（即轮廓视觉层级导致的粗浅问题）
        lineGroup.position.z += 0.5

        // 加载「中国地图」 GeoJSON 文件：「china.json」
        loader.load('./geo/china.json', data => {
            // 访问所有国家边界坐标数据：data.features
            data.features.forEach(area => {
                // 1.「Polygon」：国家area有一个封闭轮廓
                // 2.「MultiPolygon」：国家area有多个封闭轮廓
                // 3, 将「Polygon」 转换为 「MultiPolygon」 的格式
                if (area.geometry.type === 'Polygon') {
                    // 把 「Polygon」 和 「MultiPolygon」 的 「geometry.coordinates」 数据结构处理为一致
                    area.geometry.coordinates = [area.geometry.coordinates]
                }

                // （线条）轮廓
                const lines = getLines(area.geometry.coordinates)
                // （填充）平面
                const mesh = getPolygonMesh(area.geometry.coordinates)

                // 插入组对象 mapGroup
                lineGroup.add(lines)
                meshGroup.add(mesh)
            })
        })

        // three.js 辅助坐标系（RGB：红线是 x 轴，绿线是 y 轴，蓝线是 z 轴）
        scene.add(new THREE.AxesHelper(300))

        /* 相机设置 */

        //窗口宽度
        var width = window.innerWidth
        //窗口高度
        var height = window.innerHeight
        //窗口宽高比
        var k = width / height
        //三维场景显示范围控制系数，系数越大，显示的范围越大
        var s = 20

        // 创建相机对象
        var camera = new THREE.OrthographicCamera(-s * k, s * k, s, -s, 1, 1000)

        // 设置相机位置
        camera.position.set(104, 35, 200)

        // 设置相机方向(指向的场景对象)
        camera.lookAt(104, 35, 0)

        /* 创建渲染器对象 */
        var renderer = new THREE.WebGLRenderer()

        // 设置渲染区域尺寸
        renderer.setSize(width, height)

        // 设置背景颜色
        renderer.setClearColor(0x000000, 1)

        // body元素中插入canvas对象
        document.body.appendChild(renderer.domElement)

        // 渲染函数
        function render() {
            // 执行渲染操作
            renderer.render(scene, camera)
            // 请求再次执行渲染函数render，渲染下一帧
            requestAnimationFrame(render)
        }

        render()

        // 旋转控件
        var controls = new OrbitControls(camera, renderer.domElement)

        // 修复控件与 camera.lookAt 的问题
        // 只需要设置跟 camera.lookAt 保持一致即可
        controls.target.set(104, 35, 0)

        controls.update()
    </script>
</html>
)
code(Var)
return