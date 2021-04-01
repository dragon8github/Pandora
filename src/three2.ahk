::three.101::
::three.init::
::three::
::three.js::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r127/three.min.js"></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
        width: 100`%; 
        height: 100`%;
    }
    </style>
</head>

<body>
</body>
<script>
// 场景
const scene = new THREE.Scene()

/* ☀️ 模型设置 ☀️ */

// 球形几何体
const geometry_ball = new THREE.BoxGeometry(60, 40, 40)

// 正方形几何体
const geometry_cube = new THREE.BoxGeometry(100, 100, 100)

// 材质对象 Meterial
const material = new THREE.MeshLambertMaterial({ color: 0x0000ff })

// 「模型对象」
var mesh = new THREE.Mesh(geometry_cube, material)

// 添加到场景中
scene.add(mesh)

/* ☀️ 光源设置 ☀️ */

// 「点光源」 - 譬如生活中的灯
const point = new THREE.PointLight(0xffffff)

// 光源位置
point.position.set(400, 200, 300)

// 光源添加到场景中
scene.add(point)

// 「环境光」 - 调整整体明暗
const ambient = new THREE.AmbientLight(0x444444)

// 环境光添加到场景中
scene.add(ambient)

// 窗口宽度
const width = window.innerWidth

// 窗口高度
const height = window.innerHeight

// 窗口宽高比
const k = width / height

// 三维场景显示范围控制系数，系数越大，显示的范围越大
const s = 300

// 相机对象（左、右、上、下、前、后）（感觉是套路参数）
const camera = new THREE.OrthographicCamera(-s * k, s * k, s, -s, 1, 1000)

// 设置相机的位置
camera.position.set(200, 300, 200)

// 设置相机指向坐标「原点」
camera.lookAt(0, 0, 0)

// 渲染器
const renderer = new THREE.WebGLRenderer()

// 设置渲染区域尺寸
renderer.setSize(width, height)

// 设置背景颜色
renderer.setClearColor(0xb9d3ff, 1)

// 输出渲染结果（canvas 画布）
document.body.appendChild(renderer.domElement)

// 执行渲染操作
renderer.render(scene, camera)

</script>
</html>
---
// ☀️ 辅助线 XYZ 三轴（RGB）
const axesHelper = new THREE.AxesHelper(250)

// 添加辅助线
scene.add(axesHelper)
---
// 球体
const geometry1 = new THREE.BoxGeometry(100, 100, 100)
const material1 = new THREE.MeshLambertMaterial({ color: 0x0000ff, })
const mesh1 = new THREE.Mesh(geometry1, material1)
scene.add(mesh1)

// 正方体
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
)
txtit(Var)
return