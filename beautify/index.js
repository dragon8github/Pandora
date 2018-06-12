// npm i js-beautify express request body-parser -S
// if ('this_is'==/an_example/){of_beautifier();}else{var a=b?(c%d):e[f];}
var beautify = require('js-beautify').js
var htmlbeautify = require('js-beautify').html
var express = require('express')
var request = require('request');
var http = require('http');
var bodyParser = require('body-parser');

 function looks_like_html(source) {
    // <foo> - looks like html
    // <!--\nalert('foo!');\n--> - doesn't look like html

    var trimmed = source.replace(/^[ \t\n\r]+/, '');
    var comment_mark = '<' + '!-' + '-';
    return (trimmed && (trimmed.substring(0, 1) === '<' && trimmed.substring(0, 4) !== comment_mark));
}

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
    res.header("Content-Type", "charset=utf-8");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization, token, app");
    next();
});

// 自定义中间件
app.use(function (req, res, next) {
  console.log('Time: ', Date.now())
  next()
})

// 这里用all也可以，好像没什么区别，api十分强大，但也很让人迷茫。譬如app和router的api几乎一致
app.use('/', function (req, res) {
  // OPTIONS请求直接返回成功
  if (req.method == 'OPTIONS') return res.end('ok');
  var text = req.body.text
  if (text) {
    console.log(looks_like_html(text));
    beautify = looks_like_html(text) ? htmlbeautify : beautify;
    var beautifytext = beautify(text, { indent_size: 4, space_in_empty_paren: true })
    // 返回结果
    res.end(beautifytext);
  } else { 
    res.end("");
  }
});

app.listen('3000', function(err){
    console.log('start');
});