// http://expressjs.com/en/4x/api.html#router
var express = require('express')
// https://github.com/chimurai/http-proxy-middleware#example
var proxy = require('http-proxy-middleware');
var app = express();

app.use('/', proxy({target:'http://www.layui.com/demo/table/user'}))

app.listen(3000, err => {
  if (err) {
    throw new Error(err)
  } else {
    console.log('start');
  }
})