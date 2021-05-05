::lot::
::ce::
Var =
(
@StartRule

# 「自定义命名，但lot是一种行业 规范」
lot-->
# 	color(1, 1, 0) # 设置颜色
#   extrude(30) # 拉伸固定高度
# 	extrude(vertex.normal, 30) # 按照斜面拉伸
# 	extrude(world.up, 30) # 垂直于地面拉伸
# 	extrude(world.up.flatTop, 30) # 屋顶磨平
	extrude(rand(20, 60)) # 随机高度（通过工具栏的「更新种子」可以更新）
	
	# 「调用其他渲染逻辑」
	_Building
	

# 「建筑四壁」
# 「贴图三件套」：(1)setupProjection、(2)texture、(3)projectUV
_fourSides-->
	# 参数1：UV 的通道 # 参数2：UV 的方向 # 参数3~4：UV的大小 
	setupProjection(0, scope.xy, 30, 50)
	texture("texture/u_f005_t006_Residential_013.jpg")
	projectUV(0)

#「建筑楼顶」
# 「贴图三件套」：(1)setupProjection、(2)texture、(3)projectUV
_topSurface-->
	# （sx/xy）按x/y轴鋪平
	setupProjection(0, scope.xy, scope.sx, scope.sy)
	texture("texture/flatRoof_33.jpg")
	projectUV(0)

# 「建筑渲染」
_Building-->
	# 贴图函数，第一个参数是「建筑四壁」，第二个参数是「建筑楼顶」
	comp(f) { side : _fourSides | top: _topSurface }
---
@StartRule

# 「自定义命名，但lot是一种行业 规范」
lot-->
	extrude(rand(20, 100))		
	_Building

#「建筑楼顶」
_topSurface-->
	# （sx/xy）按x/y轴鋪平
	setupProjection(0, scope.xy, scope.sx, scope.sy)
	texture("texture/flatRoof_33.jpg")
	projectUV(0)

# 「建筑四壁」分层布局
_fourSides-->
# 	split(x) { '0.3 : dic }* # 按30`%分层
# 	split(x) { 3 : dic }* # 按每3米分层（*号表示「循环」）
# 	split(x) { ~3 : dic }* # 按每3米分层（~号表示「自适应」，强烈推荐）

	split(y) { 
		# 楼底
		'0.2: _roofBottom | 
		# 楼层
		{ 3: _roofCenter }* |
		# 楼顶   
		~4: _roofTop  
	}

_roofCenter-->
	color("#0000cd")

_roofBottom-->
	color(1, 0, 0, 0.5)
	
_roofTop-->
	color(0, 1, 0, 0.5)

# 「建筑渲染」
_Building-->
	# 贴图函数，第一个参数是「建筑四壁」，第二个参数是「建筑楼顶」
	comp(f) { side : _fourSides | top: _topSurface }
---
@StartRule

# 「自定义命名，但lot是一种入口约定」
lot-->
	extrude(rand(20, 100))		
	Building

#「建筑楼顶」
TopSurface-->
	# （sx/xy）按x/y轴鋪平
	setupProjection(0, scope.xy, scope.sx, scope.sy)
	texture("texture/flatRoof_33.jpg")
	projectUV(0)

# 「建筑四壁」分层布局
FourSides-->
# 	split(x) { '0.3 : dic }* # 按30`%分层
# 	split(x) { 3 : dic }* # 按每3米分层（*号表示「循环」）
# 	split(x) { ~3 : dic }* # 按每3米分层（~号表示「自适应」，强烈推荐）
	split(y) { 
		# 楼底（20`%高度）
		'0.2: _roofBottom | 
		# 楼层（3米一层「循环」）
		{ 3: _roofCenter }* |
		# 楼顶  （4米自适应高度）
		~4: _roofTop  
	}

# 「楼层」
_roofCenter-->
	color("#0000cd")
	# 参考图片布局：https://z3.ax1x.com/2021/04/27/g9cqNF.png
	split(x) {
		# 左固定间距
		1: _wall |
		# 中间铺平
		{
			1: CombinElementA | 
			1: _wall |
			2: CombinElementB |
			1: _wall |
			1: CombinElementA
		}* |
		# 右固定侧间距
		1: _wall
	}
	
# 「墙面」
_wall-->
	color("#ffffff")	

# 「A」（窗户+墙面）
CombinElementA-->
	split(y) {
		# 窗户下间距
		~0.5: _wall |
		# 「窗户A」 
		2: _windowA |
		# 窗户下间距 
		~0.5: _wall
	}

# 「B」（窗户+墙面）
CombinElementB-->
	split(y) {
		# 窗户下间距
		~0.5: _wall |
		# 「窗户A」 
		2: _windowB |
		# 窗户下间距 
		~0.5: _wall
	}

# 窗户A
_windowA-->
	color(1, 1, 0, 0.5)

# 窗户B
_windowB-->
	color(1, 1, 0, 0.5)

# 「楼底」
_roofBottom-->
	color(1, 0, 0, 0.5)

# 「楼顶」
_roofTop-->
	color(0, 1, 0, 0.5)

# 「建筑渲染」
Building-->
	# 贴图函数，第一个参数是「建筑四壁」，第二个参数是「建筑楼顶」
	comp(f) { side : FourSides | top: TopSurface }
---
@StartRule

# 「自定义命名，但lot是一种入口约定」
lot-->
	extrude(rand(20, 100))		
	Building

#「建筑楼顶」
TopSurface-->
	# （sx/xy）按x/y轴鋪平
	setupProjection(0, scope.xy, scope.sx, scope.sy)
	texture("texture/flatRoof_33.jpg")
	projectUV(0)

# 「建筑四壁」分层布局
FourSides-->
# 	split(x) { '0.3 : dic }* # 按30`%分层
# 	split(x) { 3 : dic }* # 按每3米分层（*号表示「循环」）
# 	split(x) { ~3 : dic }* # 按每3米分层（~号表示「自适应」，强烈推荐）
	split(y) { 
		# 楼底（20`%高度）
		'0.2: _roofBottom | 
		# 楼层（3米一层「循环」）
		{ 3: _roofCenter }* | 
		# 楼顶  （4米自适应高度）
		~4: _roofTop  
	}

# 「楼层」
_roofCenter-->
	color("#0000cd")
	# 参考图片布局：https://z3.ax1x.com/2021/04/27/g9cqNF.png
	split(x) {
		# 左固定间距
		1: _wall |
		# 中间铺平
		{
			1: CombinElementA | 
			1: _wall |
			2: CombinElementB |
			1: _wall |
			1: CombinElementA
		}* |
		# 右固定侧间距
		1: _wall
	}
	
# 「墙面」
_wall-->
	color("#ffffff")
	setupProjection(0, scope.xy, 2, 2)
	texture("texture/225.jpg")
	projectUV(0)
	

# 「A」（窗户+墙面）
CombinElementA-->
	split(y) {
		# 窗户下间距
		~0.5: _wall |
		# 「窗户A」 
		2: _windowA |
		# 窗户下间距 
		~0.5: _wall
	}

# 「B」（窗户+墙面）
CombinElementB-->
	split(y) {
		# 窗户下间距
		~0.5: _wall |
		# 「窗户A」 
		2: _windowB |
		# 窗户下间距 
		~0.5: _wall
	}

# 窗户A
_windowA-->
	# 使用 fbx 模型，暂时看上去只有拉伸的作用而已
	i("FBX/chuanghu2.fbx")
	# 贴图三件套
	setupProjection(0, scope.xy, 2, 2)
	texture("FBX/chuanghu2.jpg")
	projectUV(0)
	# 我也不知道为什么这里必须用白色背景
	color("#ffffff")	

# 窗户B
_windowB-->
	# 使用 fbx 模型，暂时看上去只有拉伸的作用而已
	i("FBX/chuanghu1.fbx")
	# 贴图三件套
	setupProjection(0, scope.xy, 2, 2)
	texture("FBX/chuanghu1.jpg")
	projectUV(0)
	# 我也不知道为什么这里必须用白色背景
	color("#ffffff")	

# 「楼底」
_roofBottom-->
	color(1, 0, 0, 0.5)

# 「楼顶」
_roofTop-->
	color(0, 1, 0, 0.5)

# 「建筑渲染」
Building-->
	# 贴图函数，第一个参数是「建筑四壁」，第二个参数是「建筑楼顶」
	comp(f) { side : FourSides | top: TopSurface }
)
txtit(Var)
return

::ce.tietu::
::ce.img::
::ce.image::
Var =
(
# 参数1：UV 的通道 # 参数2：UV 的方向 # 参数3~4：UV的大小 
setupProjection(0, scope.xy, 30, 50)
texture("texture/u_f005_t006_Residential_013.jpg")
projectUV(0)
)
code(Var)
return

::ce.init::
::ce.101::
::ce101::
::ceinit::
Var =
(
@StartRule

# 「自定义命名，但lot是一种行业 规范」
lot-->
# 	color(1, 1, 0) # 设置颜色
#   extrude(30) # 拉伸固定高度
# 	extrude(vertex.normal, 30) # 按照斜面拉伸
# 	extrude(world.up, 30) # 垂直于地面拉伸
# 	extrude(world.up.flatTop, 30) # 屋顶磨平
	extrude(rand(20, 60)) # 随机高度（通过工具栏的「更新种子」可以更新）
	
	# 「调用其他渲染逻辑」
	_Building
	

# 「建筑四壁」
# 「贴图三件套」：(1)setupProjection、(2)texture、(3)projectUV
_fourSides-->
	# 参数1：UV 的通道 # 参数2：UV 的方向 # 参数3~4：UV的大小 
	setupProjection(0, scope.xy, 30, 50)
	texture("texture/u_f005_t006_Residential_013.jpg")
	projectUV(0)

#「建筑楼顶」
# 「贴图三件套」：(1)setupProjection、(2)texture、(3)projectUV
_topSurface-->
	# （sx/xy）按x/y轴鋪平
	setupProjection(0, scope.xy, scope.sx, scope.sy)
	texture("texture/flatRoof_33.jpg")
	projectUV(0)

# 「建筑渲染」
_Building-->
	# 贴图函数，第一个参数是「建筑四壁」，第二个参数是「建筑楼顶」
	comp(f) { side : _fourSides | top: _topSurface }
)
code(Var)
return
