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
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization, token, app");
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
router.post('/test', function (req, res) {
  // OPTIONS请求直接返回成功
  if (req.method == 'OPTIONS') {
      return res.end('ok');
  }
  // 获取 post 参数
  console.log(req.body);
  // 获取 rest api 路由参数
  // console.log(req.params);
  // 获取 get 参数
  // console.log(req.query);
  // 获取 header 请求头非参数
  // console.log(req.headers);
  // 返回结果
  res.end(JSON.stringify({
      msg: 'success',
      data: {result: '1'},
      code: '200'
  }));
})

router.post('/test/:id', function (req, res) {
  if (req.method == 'OPTIONS') {
      return res.end('ok');
  }
  res.end(JSON.stringify({
      msg: 'success',
      data: {
        name: '李钊鸿',
        region: '区域一',
        date1: '2018-05-16',
        date2: '14:01:06',
        delivery: true,
        type: ['美食/餐厅线上活动', '地推活动'],
        resource: '线下场地免费',
        desc: '这是一段备注'
      },
      code: '200'
  }))
})

// 这种方法适用于一个app实例下有多个路由的情况，显然这里是大材小用了。但可以学习router的语法和app结合的实战语法
app.use('/', router);

app.listen('3000', function(err){
    console.log('start');
});