!k::

    Menu, koaMenu, Add, awesome-koa, koaHandler
    Menu, koaMenu, Add, $ npm install -g nodemon, koaHandler
    Menu, koaMenu, Add, $ npm install koa koa-router, koaHandler

    Menu, koaMenu, Add,
    Menu, koaMenu, Add,

    Menu, koaMenu, Add, Hello World, koaHandler
    Menu, koaMenu, Add, 中间件, koaHandler
    Menu, koaMenu, Add, (〜￣△￣)〜认知～(￣▽￣～)：洋葱理论认知和示例, koaHandler

    Menu, koaMenu, Add,
    Menu, koaMenu, Add,

    Menu, koaMenu, Add, koa-router 与 router.get, koaHandler
    Menu, koaMenu, Add, (〜￣△￣)〜认知～(￣▽￣～)：不借助koa-router自己处理路由示例, koaHandler
    Menu, koaMenu, Add, 获取路由get参数： ctx.params.id, koaHandler
    Menu, koaMenu, Add, koa-router 多重中间件, koaHandler
    Menu, koaMenu, Add, 路由前缀：prefix, koaHandler
    Menu, koaMenu, Add, 用 koa-bodyparser 解析post body, koaHandler
    Menu, koaMenu, Add, 代码优化：分离 router.js 实战, koaHandler
    Menu, utilsMenu, Add, response.status 状态码大全, koaHandler
    
	Menu, koaMenu, Show
	Menu, koaMenu, DeleteAll
return


koaHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}


if (v == "response.status 状态码大全") {
Var = 
(
response.status=
Set response status via numeric code:

100 "continue"
101 "switching protocols"
102 "processing"
200 "ok"
201 "created"
202 "accepted"
203 "non-authoritative information"
204 "no content"
205 "reset content"
206 "partial content"
207 "multi-status"
208 "already reported"
226 "im used"
300 "multiple choices"
301 "moved permanently"
302 "found"
303 "see other"
304 "not modified"
305 "use proxy"
307 "temporary redirect"
308 "permanent redirect"
400 "bad request"
401 "unauthorized"
402 "payment required"
403 "forbidden"
404 "not found"
405 "method not allowed"
406 "not acceptable"
407 "proxy authentication required"
408 "request timeout"
409 "conflict"
410 "gone"
411 "length required"
412 "precondition failed"
413 "payload too large"
414 "uri too long"
415 "unsupported media type"
416 "range not satisfiable"
417 "expectation failed"
418 "I'm a teapot"
422 "unprocessable entity"
423 "locked"
424 "failed dependency"
426 "upgrade required"
428 "precondition required"
429 "too many requests"
431 "request header fields too large"
500 "internal server error"
501 "not implemented"
502 "bad gateway"
503 "service unavailable"
504 "gateway timeout"
505 "http version not supported"
506 "variant also negotiates"
507 "insufficient storage"
508 "loop detected"
510 "not extended"
511 "network authentication required"
)
}

if (v == "代码优化：分离 router.js 实战") {
Var =
(
//////////////////////////////////////////////
// router.js
//////////////////////////////////////////////
const router = require('koa-router')()

module.exports = app => {
	// Content-Type 必须使用 x-www-form-urlencoded 或者 application/json 的方式发送POST请求才可以接收到。
	router.post('/user/login', async (ctx, next) => {
		let {name, password} = ctx.request.body
		console.log(20190103224604, name, password)
		if ( name === 'ljdp' && password === '123456' ) {
		  ctx.response.body = `Hello， ${name}！`
		} else {
		  ctx.response.body = '账号信息错误'
		}
	})
	app.use(router.routes())
}


//////////////////////////////////////////////
// app.js
//////////////////////////////////////////////

const Koa = require('koa')
const bodyParser = require('koa-bodyparser')
const router = require('./router.js')
const app = new Koa()
app.use(bodyParser())

router(app)

app.listen(3000, ()=>{
  console.log('server is running at http://localhost:3000')
})
)
}

if (v == "用 koa-bodyparser 解析post body") {
Var =
(
const Koa = require('koa');
const Router = require('koa-router');
const bodyParser = require('koa-bodyparser')
const router = new Router()
const app = new Koa();
app.use(bodyParser())

// Content-Type 必须使用 x-www-form-urlencoded 或者 application/json 的方式发送POST请求才可以接收到。
router.post('/user/login', async (ctx, next) => {
	let {name, password} = ctx.request.body
	console.log(20190103224604, name, password)
	if ( name === 'ljdp' && password === '123456' ) {
	  ctx.response.body = `Hello， ${name}！`
	} else {
	  ctx.response.body = '账号信息错误'
	}
})

app.use(router.routes());

app.listen(3000, ()=>{
  console.log('server is running at http://localhost:3000');
});
)
}

if (v == "路由前缀：prefix") {
Var =
(
const Koa = require('koa');

const Router = require('koa-router');

const router = new Router({
	 prefix: '/users'
})

const app = new Koa();

// http://localhost:3000/users
router.get('/', async (ctx, next) => {
    ctx.response.body = '<h1>user page</h1>';
});

// http://localhost:3000/users/110
router.get('/:id', async (ctx, next) => {
    ctx.response.body = `<h1>${ctx.params.id}</h1>`;
});

app.use(router.routes());

app.listen(3000, ()=>{
  console.log('server is running at http://localhost:3000');
});
)
}


if (v == "获取路由get参数： ctx.params.id") {
Var =
(
const id = ctx.params.id
)
}

if (v == "获取路由get参数： ctx.params.id") {
Var =
(
const Koa = require('koa')
const router = require('koa-router')()
const app = new Koa()

router.get(
  '/users/:id',
  async (ctx, next) => {
    ctx.response.body = '<h1>user page</h1>'
    const id = ctx.params.id
    ctx.user = { id: id, name: 'Fuckyou' }
    await next()
  },
  async (ctx) => {
    console.log(ctx.user);
  }
`);

// 调用路由中间件
app.use(router.routes())

app.listen(3000, () => {
  console.log('server is running at http://localhost:3000')
})
)
}

if (v == "(〜￣△￣)〜认知～(￣▽￣～)：不借助koa-router自己处理路由示例") {
Var =
(
const Koa = require('koa')
const app = new Koa()

app.use(async (ctx, next) => {
    if (ctx.request.path === '/') {
        ctx.response.body = '<h1>index page</h1>'
    } else {
        await next()
    }
})

app.use(async (ctx, next) => {
    if (ctx.request.path === '/home') {
        ctx.response.body = '<h1>home page</h1>'
    } else {
        await next()
    }
})

app.use(async (ctx, next) => {
    if (ctx.request.path === '/404') {
        ctx.response.body = '<h1>404 Not Found</h1>'
    } else {
        await next()
    }
})

app.listen(3000, ()=>{
  console.log('server is running at http://localhost:3000')
})
)
}

if (v == "(〜￣△￣)〜认知～(￣▽￣～)：洋葱理论认知和示例") {
Var =
(
// 洋葱示例
const Koa = require('koa')
const app = new Koa()

app.use(async (ctx, next) => {
  let stime = new Date().getTime()
  await next()
  let etime = new Date().getTime()
  ctx.response.type = 'text/html'
  ctx.response.body = '<h1>Hello World</h1>'
  console.log(`请求地址: ${ctx.path}，响应时间：${etime - stime}ms`)
})
// 输出的顺序就如洋葱一样
app.use(async (ctx, next) => {
  console.log('1')
  await next()
  console.log('6')
})

app.use(async (ctx, next) => {
  console.log('2')
  await next()
  console.log('5')
})

app.use(async (ctx, next) => {
  console.log('3')
  await next()
  console.log('4')
})

app.listen(3000, () => {
  console.log('server is running at http://localhost:3000')
})
)
}

if (v == "awesome-koa") {
run, https://github.com/ellerbrock/awesome-koa
run, https://github.com/topics/koa
}

if (v == "koa-router 与 router.get") {
Var =
(
const Koa = require('koa');

const router = require('koa-router')();

const app = new Koa();

router.get('/', async (ctx, next) => {
    ctx.response.body = '<h1>index page</h1>';
});

router.get('/home', async (ctx, next) => {
    ctx.response.body = '<h1>HOME page</h1>';
});

router.get('/404', async (ctx, next) => {
    ctx.response.body = '<h1>404 Not Found</h1>';
});

app.use(router.routes());

app.listen(3000, ()=>{
  console.log('server is running at http://localhost:3000');
});
)
}

if (v == "$ npm install koa koa-router") {
Var =
(
npm install koa koa-router	
)
}

if (v == "$ npm install -g nodemon") {
Var =
(
npm install -g nodemon
)
}

if (v == "Hello World") {
Var =
(
const Koa = require('koa');
const app = new Koa();
app.use(async (ctx, next) => {
    await next();
    ctx.response.type = 'text/html';
    ctx.response.body = '<h1>Hello World</h1>';
});
app.listen(3000, () => {
    console.log('server is running at http://localhost:3000');
});
)
}

if (v == "中间件") {
Var =
(
const Koa = require('koa');

const app = new Koa();

app.use(async (ctx, next) => {
    let stime = new Date().getTime();
    await next();
    let etime = new Date().getTime();
    ctx.response.type = 'text/html';
    ctx.response.body = '<h1>Hello World</h1>';
    console.log(`请求地址: ${ctx.path}，响应时间：${etime - stime}ms`);
});

app.use(async (ctx, next) => {
    console.log('中间件 doSoming');
    await next();
    console.log('中间件执行 over');
});

app.listen(3000, () => {
    console.log('server is running at http://localhost:3000');
});
)
}

code(Var)
return