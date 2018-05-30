// npm init -y && npm i request express body-parser
var request = require('request');
var express = require('express');
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
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization, token, app, url, type");
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
router.all('/*', function (req, res) {
    // 获取 post 参数
    // console.log(req.body);

    // 获取 get 参数
    // console.log(req.query);

    // 获取 REST api 路由参数
    // console.log(req.params);
    
    // 获取 header 
    // console.log(req.headers);

    // 请求参数 url
    // console.log(req.url);

    // 获取请求类型
    // console.log(req.method);


    // OPTIONS 请求直接返回成功
    if (req.method == 'OPTIONS') {
        // 也可以返回ok，任意文本。反正ajax不会对option预请求进行处理。所以option预请求应该是浏览器的行为
        return res.end(''); 
    }

    request({
        method: req.method,
        uri: 'http://www.layui.com' + req.url, // 注意这里的uri，不要有两个//，可能会出错，比如http://www.layui.com//demo/table/user/ 可能就有问题了
        headers: req.method === 'GET' ? null : req.headers,  // 其实get请求也是可以用header的，只是请求http://www.layui.com的时候，如果加上headers会异常。我也不清楚是哪个字段有问题
        body: JSON.stringify(req.body)
    }, function (err, _res, body) {
        if (err) res.end(JSON.stringify(err));
        res.end(JSON.stringify(body))
    })
})

// 这种方法适用于一个app实例下有多个路由的情况，显然这里是大材小用了。但可以学习router的语法和app结合的实战语法
app.use('/', router);

app.listen('3000', function(err){
    console.log('start');
});


/**
 * 前端代码示例
 * 
$.ajax({
    url: 'http://localhost:3000/carAuction/selectAuctionsPage',
    type: "POST",
    data: JSON.stringify({"userName":"admin-salary","password":"123456"}),
    headers: {
        'Content-Type':  'application/json;charset=utf-8'
    },
    dataType: 'json',
    success: function (data) {
        console.log(data);
    }
})

$.ajax({
    url: 'http://localhost:3000/demo/table/user/',
    type: "get",
    dataType: 'json',
    success: function (data) {
        console.log(data);
    }
})
 */
