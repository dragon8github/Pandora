!k::

    Menu, koaMenu, Add, awesome-koa, koaHandler
	Menu, koaMenu, Add, $ npm install -g nodemon, koaHandler
	Menu, koaMenu, Add, $ npm install koa koa-router, koaHandler

	Menu, koaMenu, Add,
	Menu, koaMenu, Add,

	Menu, koaMenu, Add, Hello World, koaHandler
	Menu, koaMenu, Add, 中间件, koaHandler
	Menu, koaMenu, Add, koa-router 与 router.get, koaHandler


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
    ctx.response.body = `<h1>index page</h1>`;
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