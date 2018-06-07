
::node-read::
Var = 
(
var fs = require('fs');
var path = require('path');
fs.readFile(path.join(__dirname,'/data/test.json'), {encoding:'utf-8'} , function (err, data) {
    if(err) throw err;
    console.log(data);
});
)
code(Var)
return

::node-write::
Var = 
(
var fs = require('fs');
var path = require('path');
fs.writeFile(path.join(__dirname,'/data/test.json'), '这是追加的数据', { flag:"a" }, function (err) {
    if(err) console.error("文件写入失败");
    else console.log("文件写入成功");
})
)
code(Var)
return


::env::
    SendRaw, process.env.NODE_ENV === 'production|development'
return

::node-http::
Var = 
(
var http = require('http');

var server = http.createServer(function (req, rep) {
    rep.writeHead(200, {"Content-Type": "text/plain"});
    rep.end("Hello World!!");
})

server.listen(3000, function (err) {
     console.log('start');
});
)
code(Var)
Return