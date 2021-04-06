::three.qiu::
::three.qiuti::
::three.qiuxing::
::three.yuanxing::
Var =
(
// 场景一个球体
var sphereGeometry = new THREE.SphereGeometry(4, 20, 20);
// MeshLambertMaterial
var sphereMaterial = new THREE.MeshBasicMaterial({ color: 0x7777ff, wireframe: true });
var sphere = new THREE.Mesh(sphereGeometry, sphereMaterial);
// 设置球体的位置
sphere.position.x = 20;
sphere.position.y = 4;
sphere.position.z = 2;
// 将球体加入到场景中
scene.add(sphere);
)
code(Var)
return

::three.cure::
::three.kuai::
::three.zhengfangti::
::three.zhengfangxing::
Var =
(
// 创建一个立方体
var cubeGeometry = new THREE.BoxGeometry(4, 4, 4);
// MeshLambertMaterial
var cubeMaterial = new THREE.MeshBasicMaterial({ color: 0xff0000, wireframe: true });
var cube = new THREE.Mesh(cubeGeometry, cubeMaterial);
// 设置平面的位置
cube.position.x = -4;
cube.position.y = 3;
cube.position.z = 0;
// 将立方体加入到场景中
scene.add(cube);
)
code(Var)
return

::three.plane::
::three.pingmian::
Var =
(
// 创建平面
var planeGeometry = new THREE.PlaneGeometry(60, 20);
// MeshLambertMaterial 
var planeMaterial = new THREE.MeshBasicMaterial({ color: 0xcccccc });
var plane = new THREE.Mesh(planeGeometry, planeMaterial);
// 设置平面的位置
plane.rotation.x = -0.5 * Math.PI;
plane.position.x = 15;
plane.position.y = 0;
plane.position.z = 0;
// 将平面加入到场景中
scene.add(plane);
)
code(Var)
return

::three.help::
::three.helper::
::three.axeshelper::
::three.axeshelp::
::three.line::
::three.xian::
Var =
(
var axes = new THREE.AxesHelper(20);
scene.add(axes);
)
code(Var)
return

::three.init::
::threeinit::
::three.html::
Var =
(
<!DOCTYPE html>
<html>

<head>
    <title>three.js</title>
    <script src="https://cdn.staticfile.org/three.js/92/three.min.js"></script>
    <style>
        body {
            margin: 0;
            overflow: hidden;
        }
    </style>
</head>

<body>
    <div id="app"></div>
</body>

<script type="text/javascript">
/**
 * new THREE 对象： O-A-A（the-one-above-all），凌驾于一切之上的存在，连上帝都无法插手。
 * https://threejs.org/docs/index.html#manual/en/introduction/Creating-a-scene
 *
 * 三大重要概念：场景（scene）、摄像机（camera）、renderer（渲染器对象）
 * 场景（scene）： 创世纪，我的世界；
 * 摄像机（camera）： 上帝视角；
 * renderer（渲染器对象）：上帝之手，滋生万物。
 */

    // 创建一个场景，它将保存我们所有的元素，如物体、照相机和灯光。
    var scene = new THREE.Scene();

    // 创建一个摄像机，它定义了我们所处的位置以及能在场景中看到什么。
    var camera = new THREE.PerspectiveCamera(45, window.innerWidth / window.innerHeight, 0.1, 1000);

    // 创建一个渲染器对象，该对象会基于摄像机的角度来计算场景对象在浏览器中会渲染成什么样子。
    var renderer = new THREE.WebGLRenderer();

    // 定义了渲染器对象并设置了宽高和颜色。
    renderer.setClearColor(new THREE.Color(0xEEEEEE));
    renderer.setSize(window.innerWidth, window.innerHeight);


            // 这是一条辅助轴
            var axes = new THREE.AxesHelper(20);
            scene.add(axes);
            

            // 创建一块平面
            var planeGeometry = new THREE.PlaneGeometry(60, 20);
            var planeMaterial = new THREE.MeshBasicMaterial({ color: 0xcccccc });
            var plane = new THREE.Mesh(planeGeometry, planeMaterial);
            // 设置平面的位置
            plane.rotation.x = -0.5 * Math.PI;
            plane.position.x = 15;
            plane.position.y = 0;
            plane.position.z = 0;
            // 将平面加入到场景中
            scene.add(plane);


            // 创建一个立方体
            var cubeGeometry = new THREE.BoxGeometry(4, 4, 4);
            var cubeMaterial = new THREE.MeshBasicMaterial({ color: 0xff0000, wireframe: true });
            var cube = new THREE.Mesh(cubeGeometry, cubeMaterial);
            // 设置平面的位置
            cube.position.x = -4;
            cube.position.y = 3;
            cube.position.z = 0;
            // 将立方体加入到场景中
            scene.add(cube);


            // 场景一个球体
            var sphereGeometry = new THREE.SphereGeometry(4, 20, 20);
            var sphereMaterial = new THREE.MeshBasicMaterial({ color: 0x7777ff, wireframe: true });
            var sphere = new THREE.Mesh(sphereGeometry, sphereMaterial);
            // 设置球体的位置
            sphere.position.x = 20;
            sphere.position.y = 4;
            sphere.position.z = 2;
            // 将球体加入到场景中
            scene.add(sphere);


    // 设置摄像机的位置
    camera.position.x = -30;
    camera.position.y = 40;
    camera.position.z = 30;
    camera.lookAt(scene.position);

    // 将渲染器输出的内容添加到html对象中
    document.getElementById("app").appendChild(renderer.domElement);

    // 渲染场景
    renderer.render(scene, camera);
</script>
</html> 
)
code(Var)
return