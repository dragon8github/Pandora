http://expressjs.com/en/4x/api.html#router
var express = require('express')
var request = require('request');
var bodyParser = require('body-parser');

var app = express();

// 用来解析 request 中 body的 urlencoded字符
app.use(bodyParser.urlencoded({ extended: false }));

// 解析 application/json 请求
app.use(bodyParser.json());

// 设置跨域访问
app.all('*', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    // 这个只是一种对客户端的反馈说明，不能用来阻止过滤请求的发送，所以才会有OPTION预请求来看看服务端支持什么
    // 就算你这里说我不支持post，但实际上客户端依然可发送post请求的。
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    res.header("Content-Type", "application/json;charset=utf-8");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization, token");
    next();
});

// 新建一个路由
var router = express.Router();

// 自定义中间件
router.use(function (req, res, next) {
  console.log('Time: ', Date.now())
  next()
})

// whether using GET, POST, PUT, DELETE, or any other HTTP request method
router.all('/', function (req, res) {
  // OPTIONS请求直接返回成功
  if (req.method == 'OPTIONS') {
      return res.end('ok');
  }
  // 获取 post 参数
  console.log(req.body);
  // 获取 rest api 路由参数
  console.log(req.params);
  // 获取 get 参数
  console.log(req.query);
  // 获取 header 请求头非参数
  console.log(req.headers);
  // 返回结果
  res.end('ok');
})

app.use('/', router);

app.listen('3000', function(err){
    console.log('start');
});