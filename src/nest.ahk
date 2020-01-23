!n::

    Menu, nestMenu, Add, cli 命令大全（含安装）, nestHandlertxt
	Menu, nestMenu, Add, Controller POST/GET, nestHandlertxt
	Menu, nestMenu, Add, @nestjs/common 大全, nestHandler
	
	
	Menu, nestMenu, Add
	Menu, nestMenu, Add
	
	Menu, nestMenu, Add, 管道 Pipe, nestHandler
	Menu, nestMenu, Add, 中间件 middleware, nestHandler
	Menu, nestMenu, Add, 守卫 guard, nestHandler
	
	Menu, nestMenu, Add
	Menu, nestMenu, Add
	
	Menu, nestMenu, Add, 静态资源, nestHandler
	Menu, nestMenu, Add, cookie 和 session, nestHandler
	
	Menu, nestMenu, Add
	Menu, nestMenu, Add
	
	Menu, nestMenu, Add, upload 解决方案, nestHandler
	Menu, nestMenu, Add, ejs 模板引擎, nestHandler

    Menu, nestMenu, Show
    Menu, nestMenu, DeleteAll
return

nestHandler2:
v := A_ThisMenuItem
return

nestHandlertxt: 
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}


if (v == "cli 命令大全（含安装）") {
Var =
(
cnpm i -g @nestjs/cli
nest new nestdemo
npm run start:dev
---
nest g controller news
nest g controller module/admin/user

nest g service news
nest g service module/share/service/base

nest g middleware middleware/log
nest g pipe pipe/news
nest g guard guard/auth

nest g module module/share
)
}


if (v == "Controller POST/GET") {
_send("@nest.c", true, true)
return
}

txtit(Var)
return

nestHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}


if (v == "@nestjs/common 大全") {
_send("common", true, true)
return
}


if (v == "管道 Pipe") {
Var =
(

)
}

if (v == "中间件 middleware") {
Var =
(

)
}

if (v == "守卫 guard") {
Var =
(

)
}

if (v == "静态资源") {
Var =
(

)
}

if (v == "cookie 和 session") {
Var =
(

)
}

if (v == "upload 解决方案") {
Var =
(

)
}

if (v == "ejs 模板引擎") {
Var =
(

)

}

code(Var)
return

::common::
Var =
(
import { Controller, Get, Post, Query, Body, Param, Render, Request, RequestMethod } from '@nestjs/common'
)
code(Var)
return

:?:@nest.c::
:?:nest.c::
Var =
(
import { Controller, Get, Post, Query, Body, Param } from '@nestjs/common';

@Controller('acticle')
export class ActicleController {
	@Get()
	index() {
		return 'news'
	}

	@Get('add')
	addArticle(@Query() query) {
		// http://localhost:3000/acticle/add?id=123&name=zhangsan
		console.log(query) // => { id: '123', name: 'zhangsan' }

		return 'add news'
	}

	@Get(':id')
	findArticle(@Param() params) {
		// http://localhost:3000/acticle/1
		console.log(params) // => { id: '1' }
		return `this action a #${params.id} cat`
	}

	@Post('update')
	updateArticle(@Body() body) {
		// curl -s -XPOST 'http://localhost:3000/acticle/update' -H 'Content-Type:application/json' -d '{"firstName": "JOJO", "lastName": "Joestar"}'
		console.log(body) // => { firstName: 'JOJO', lastName: 'Joestar' }
		return '更新文章'
	}

	@Post('submit')
	add(@Response res) {
		// 路由跳转
		res.redirect('/user')
	}
}
---
- nest 中没有单独配置路由的地方。定义好控制器后，nest 会自动配置对应的路由。

- @Controller 定义路由
	- （新认知）甚至可以这样定义：@Controller('a/b/c/d/acticle')

- @Get 定义子路由

- 方法名都是无所谓的

- @Query 方法可以获取 GET 参数
- @Body 方法可以获取 POST 参数
- @Params 方法可以获取 id 参数

- @Query、@Body、@Params 都可以写上一个参数，直接获取某个值，譬如 @Query('name')

- @Response res res.redirect('/user') 路由跳转
)
txtit(Var)
return