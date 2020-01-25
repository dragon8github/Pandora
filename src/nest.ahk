!n::

  Menu, nestMenu, Add, cli 命令大全（含安装）, nestHandlertxt
	Menu, nestMenu, Add, Controller POST/GET, nestHandlertxt
	Menu, nestMenu, Add, @nestjs/common 大全, nestHandler
	
	
	Menu, nestMenu, Add
	Menu, nestMenu, Add
	
	Menu, nestMenu, Add, 服务 Service, nestHandlertxt
	Menu, nestMenu, Add, 管道 Pipe, nestHandlertxt
	Menu, nestMenu, Add, 中间件 middleware, nestHandlertxt
	Menu, nestMenu, Add, 守卫 guard, nestHandlertxt
	
	Menu, nestMenu, Add
	Menu, nestMenu, Add
	
	Menu, nestMenu, Add, 静态资源, nestHandlertxt
	Menu, nestMenu, Add, cookie 和 session, nestHandlertxt
	
	Menu, nestMenu, Add
	Menu, nestMenu, Add
	
	Menu, nestMenu, Add, upload 解决方案, nestHandlertxt
	Menu, nestMenu, Add, ejs 模板引擎, nestHandler
	Menu, nestMenu, Add, 模块module 调用公共service 公共模块与公共服务share, nestHandler
	
    Menu, nestMenu, Show
    Menu, nestMenu, DeleteAll
return


nestHandlertxt: 
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}

if (v == "模块module 调用公共service 公共模块与公共服务share") {
Var =
(
> nest g module module/admin
> nest g controller module/admin/user

建议：@Controller('user')       // => 这样访问 /user
改为：@Controller('admin/user') // => 这样访问 /admin/user


# 调用公共服务需要2步：

1. 在模块中（譬如 app.module.ts / admin.module.ts）中注册。

C:\Users\Lee\Desktop\nestdemo\src\module\admin\admin.module.ts • (nestdemo) - Sublime Text (UNREGISTERED)

import { Module } from '@nestjs/common'
import { UserController } from './user/user.controller'
import { AppService } from '../../app.service'

@Module({
  controllers: [UserController],
  providers: [AppService]
})
export class AdminModule {}
---

2. 在控制器中使用时，依然需要引入

C:\Users\Lee\Desktop\nestdemo\src\module\admin\user\user.controller.ts (nestdemo) - Sublime Text (UNREGISTERED)

import { Controller, Get } from '@nestjs/common';

import { AppService } from '../../../app.service'

@Controller('admin/user')
export class UserController {
	constructor(private appService: AppService) {}
    @Get()
    index() {
    	console.log(this.appService.getHello())
        // localhost:3000/user
        return '后台用户管理界面'
    }
}

# 公共模块/公共服务 share

> nest g module module/share
> nest g service module/share/service/base

使用方式同上面 『1』  一模一样。
)
}


if (v == "ejs 模板引擎") {
Var =
(

)
}


if (v == "管道 Pipe") {
Var =
(
> nest g pipe pipe/news


C:\Users\Lee\Desktop\nestdemo\src\news\news.controller.ts • (nestdemo) - Sublime Text (UNREGISTERED)

import { Controller, Get, Post, Render, Body, Query, Param,
	// 管道
	UsePipes,
} from '@nestjs/common';

// 引入管道
import { NewsPipe } from '../pipe/news.pipe'


@Controller('news')
export class NewsController {
	@Get('list')
	@UsePipes(NewsPipe)
	list(@Query() query) {
		// http://localhost:3000/news/list?id=123
		console.log('我接收到的参数是：', query)
		return '文章列表'
	}
}
---
C:\Users\Lee\Desktop\nestdemo\src\pipe\news.pipe.ts • (nestdemo) - Sublime Text (UNREGISTERED)

import { ArgumentMetadata, Injectable, PipeTransform } from '@nestjs/common';

@Injectable()
export class NewsPipe implements PipeTransform {

  transform(value: any, metadata: ArgumentMetadata) {
  	console.log('我是新闻管道', value)
  	
  	// 修改参数
  	value.id = 'fuckyou'

  	// 返回修改的参数
    return value;
  }
}
)
}

if (v == "中间件 middleware") {
Var =
(
nest g middleware middleware/log


C:\Users\Lee\Desktop\nestdemo\src\middleware\log.middleware.ts • (nestdemo) - Sublime Text (UNREGISTERED)

import { Injectable, NestMiddleware } from '@nestjs/common';

@Injectable()
export class LogMiddleware implements NestMiddleware {
  use(req: any, res: any, next: () => void) {
  	console.log(Date.now())
    next();
  }
}
---

C:\Users\Lee\Desktop\nestdemo\src\app.module.ts • (nestdemo) - Sublime Text (UNREGISTERED)

// 新增
import { Module, NestModule, MiddlewareConsumer, RequestMethod } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ActicleController } from './acticle/acticle.controller';
import { NewsService } from './news/news.service';
import { NewsController } from './news/news.controller';

import { LogMiddleware } from './middleware/log.middleware'

@Module({
  imports: [],
  controllers: [AppController, ActicleController, NewsController],
  providers: [AppService, NewsService],
})
export class AppModule implements NestModule {
	configure(consumer: MiddlewareConsumer) {
		consumer
			.apply(LogMiddleware)
			// 匹配所有路由
			// .forRoutes('*')

			// 按路由和方法匹配：GET/POST
			.forRoutes({ path: 'news', method: RequestMethod.ALL })

			// 可以支持多个对象
			// .forRoutes({ path: 'news', method: RequestMethod.ALL }, { path: 'articles', method: RequestMethod.ALL })
	}
}
---

中间件各种语法
consumer
	.apply(LogMiddleware)
	.forRoutes('*')
	.apply(UserMiddleware)
	.forRoutes('user')


// 也可以这样写：
consumer
	.apply(LogMiddleware, UserMiddleware)
	.forRoutes('*')

// 支持 * 匹配
consumer
	.apply(UserMiddleware)
	.forRoutes('u*er')

# （推荐）轻量级函数式中间件

C:\Users\Lee\Desktop\nestdemo\src\middleware\log.middleware.ts (nestdemo) - Sublime Text (UNREGISTERED)

export const logger = (req, res, next) => {
	console.log(Date.now(), req, res)
	next()
}

)
}

if (v == "守卫 guard") {
Var =
(
> nest g guard guard/auth

C:\Users\Lee\Desktop\nestdemo\src\guard\auth.guard.ts • (nestdemo) - Sublime Text (UNREGISTERED)

import { CanActivate, ExecutionContext, Injectable } from '@nestjs/common';
import { Observable } from 'rxjs';

@Injectable()
export class AuthGuard implements CanActivate {
  canActivate(
    context: ExecutionContext,
  `): boolean | Promise<boolean> | Observable<boolean> {
  	console.log('守卫执行了')

  	if (Math.random() > 0.5) {
  		// { statusCode: 403, error: "Forbidden", message: "Forbidden resource"}
  		return false
  	}

    return true;
  }
}
---
C:\Users\Lee\Desktop\nestdemo\src\news\news.controller.ts (nestdemo) - Sublime Text (UNREGISTERED)

import { Controller, Get, Post, Render, Body, Query, Param,
	// 守卫
	UseGuards,
} from '@nestjs/common';

@Controller('news')
// 守卫控制器
@UseGuards(AuthGuard)
export class NewsController {
	@Get('test')
	test() {
		return '测试守卫'
	}
}

也可以使用『方法守卫』

import { Controller, Get, Post, Render, Body, Query, Param,
	// 守卫
	UseGuards,
} from '@nestjs/common';

@Controller('news')
export class NewsController {
	@Get('test')
	// 守卫方法
	@UseGuards(AuthGuard)
	test() {
		return '测试守卫'
	}
}
---
# 全局守卫
import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

// 引入守卫
import { AuthGuard } from './guard/auth.guard'

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // 全局守卫
  app.useGlobalGuards(new AuthGuard())

  await app.listen(3000);
}
bootstrap();
---
# 守卫中获取 cookie 和 session

> cnpm install cookie-parser --save-dev
> cnpm install express-session  --save-dev

main.ts
import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

import * as cookieParser from 'cookie-parser'
import * as session from 'express-session'

// 引入底层平台
import { NestExpressApplication } from '@nestjs/platform-express'

// 引入守卫
import { AuthGuard } from './guard/auth.guard'

async function bootstrap() {
  // 修改平台
  const app = await NestFactory.create<NestExpressApplication>(AppModule);

  // 配置 cookie 中间件
  app.use(cookieParser('this signed cookie'))

  // 配置 session 中间件
  app.use(session({ secret: 'keyboard cat', cookie: { maxAge: 1000 * 60  * 60 * 24 }, httponly: true }))

  app.useGlobalGuards(new AuthGuard())

  await app.listen(3000);
}
bootstrap();

C:\Users\Lee\Desktop\nestdemo\src\guard\auth.guard.ts (nestdemo) - Sublime Text (UNREGISTERED)

import { CanActivate, ExecutionContext, Injectable } from '@nestjs/common';
import { Observable } from 'rxjs';

@Injectable()
export class AuthGuard implements CanActivate {
  canActivate(
    context: ExecutionContext,
  `): boolean | Promise<boolean> | Observable<boolean> {
  	console.log('守卫执行了')

  	const req = context.switchToHttp().getRequest()

  	const { path, session } = req

  	console.log(path, session.username)

  	// 如果是登陆页或者用户名存在的话，不拦截
  	if (req.path === '/admin/login' || session.username) {
  		return true
  	}

    return false
  }
}
)
}

if (v == "upload 解决方案") {
Var =
(
\news\news.controller.ts

import { Controller, Get, Post, Render, Body,
	// 上传需要的装饰器
	UseInterceptors, UploadedFile
} from '@nestjs/common';

// 上传需要的装饰器（单图上传和多图上传）
import { FileInterceptor, FilesInterceptor } from '@nestjs/platform-express'


import { join } from 'path'

import { createWriteStream } from 'fs'

// 9位 简易版
const MdUuid = () => Math.random().toString(36).slice(4)

@Controller('news')
export class NewsController {
	@Get()
	@Render('default/form')
	index() {
		return {
			// ...
		}
	}

	@Post('upload')
	@UseInterceptors(FileInterceptor('pic'))
	upload(@Body() body, @UploadedFile() file) {
		// 注意，file pic 不在 body 之中
		// enctype="multipart/form-data"
		console.log(file)

		const { originalname, buffer } = file

		const stream = createWriteStream(join(__dirname, '../../upload', ``${Date.now()}-${MdUuid()}-${originalname}``))

		stream.write(buffer)

		return '图片上传成功'
	}
}
---

C:\Users\Lee\Desktop\nestdemo\views\default\form.ejs • (nestdemo) - Sublime Text (UNREGISTERED)

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style>
    html, body{
        margin: 0;
        padding: 0;
        height: 100`%;
    }

    #app {

    }
    </style>
</head>

<body>
    <div id="app">
        <form method='post' action="news/upload" enctype="multipart/form-data">
            <input type="file" name="pic">

            <button>提交</button>
        </form>
    </div>
</body>
<script>

</script>
</html>
)
}


if (v == "cookie 和 session") {
Var =
(
> cnpm install cookie-parser --save

import * as cookieParser from 'cookie-parser'

app.use(cookieParser())

// 加密键
app.use(cookieParser('123456'))


设置

res.cookie('username', 'Lee', { maxAge: 1000 * 60, httpOnly: true})
res.send('如果使用@Response就不能使用return，除非是@Render渲染模板')

// 加密模式
res.cookie('username', 'Lee', { maxAge: 1000 * 60, httpOnly: true, signed: true})

req.cookies.username

req.signedCookies.username


删除

res.cookie('username', 'Lee', { expires:new Date(0) })
res.cookie('username', 'Lee', { maxAge: 0, httpOnly: true})
---
> cnpm install express-session --save



import * as session from 'express-session'

app.use(session({
	secret: 'keyboard',
	cookie: { maxAge: 1000 * 60 * 60, httpOnly: true },
	// 无限生成浏览器cookie
	rolling: true,
}))


//set
req.session.username = 'Lee'

//get
req.session.username


//remove
req.session.username.maxAge = 0


认知：session是基于cookie的。

> 以前我一直觉得奇怪，服务器到底是怎么记录客户端的，现在知道了。
> 
> 设置session的时候，顺便在浏览器设置cookie
> 
> 每次请求的时候带上cookie，服务器通过这个cookie来获取session校验身份。
)
}

if (v == "服务 Service") {
Var =
(
> nest g service news
> nest g controller news

/views/default/news.ejs

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    </style>
</head>

<body>
    <div id="app">
        <`% for (let i = 0, len = list.length; i < len; i++) { `%>
            <p><`%= list[i].title `%></p>
            <p><`%= list[i].content `%></p>
        <`% } `%>
    </div>
</body>
<script>

</script>
</html>
---
src\news\news.service.ts
import { Injectable } from '@nestjs/common';

@Injectable()
export class NewsService {
	getData() {
		return [
			{ title: 'a', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' },
			{ title: 'b', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' },
			{ title: 'c', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' },
			{ title: 'd', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' },
		]
	}
}
---

\news\news.controller.ts


import { Controller, Get, Render } from '@nestjs/common';
import { NewsService } from './news.service'

@Controller('news')
export class NewsController {
	// 注册服务
	constructor(private newsService: NewsService){}

	@Get()
	index() {
		return this.newsService.getData()
	}

	@Get('list')
	@Render('default/news') 
	list() {
		return {
			list: this.newsService.getData()
		}
	}
}
)
}


if (v == "静态资源") {
Var =
(

# 配置静态资源目录

main.ts 

import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { join } from 'path'

// 引入底层平台
import { NestExpressApplication } from '@nestjs/platform-express'

async function bootstrap() {
  // 修改平台
  const app = await NestFactory.create<NestExpressApplication>(AppModule);

  // 配置静态文件:http://localhost:3000/1.jpg
  // app.useStaticAssets(join(__dirname, '..', 'public'))

  // 配置虚拟目录: http://localhost:3000/static/1.jpg
  app.useStaticAssets(join(__dirname, '..', 'public'), {
  	prefix: '/static/'
  })


  await app.listen(3000);
}
bootstrap();
---

# 模板引擎

> cnpm i --save ejs

设置 『模板引擎』 和 『模板资源路径』

import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { join } from 'path'

// 引入底层平台
import { NestExpressApplication } from '@nestjs/platform-express'

async function bootstrap() {
  // 修改平台
  const app = await NestFactory.create<NestExpressApplication>(AppModule);

  // 配置静态文件:http://localhost:3000/1.jpg
  // app.useStaticAssets(join(__dirname, '..', 'public'))

  // 配置虚拟目录: http://localhost:3000/static/1.jpg
  app.useStaticAssets(join(__dirname, '..', 'public'), {
  	prefix: '/static/'
  })

  app.setBaseViewsDir('views')
  app.setViewEngine('ejs')

  await app.listen(3000);
}
bootstrap();
---

新建 /views/default/index.ejs

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>

<body>
    <div id="app">
        我是 <`%= name `%>
    </div>
</body>
<script>

</script>
</html>
---
app.controller.ts

import { Controller, Get, Render } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  @Render('default/index')
  getHello() {
    return {
    	name: 'Lee'
    }
  }
}
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

code(Var)
return


nestHandler2:
v := A_ThisMenuItem
_send(v)
return

::common::
::nestc::
Var =
(
import { Controller, Get, Post, Query, Body, Param, Render, Request, Response, RequestMethod } from '@nestjs/common'
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