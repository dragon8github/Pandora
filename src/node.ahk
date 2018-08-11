::node.ssh::
::node.ssh2::
::node.ftp::
::node.sftp::
Var =
(
var fs = require('fs')
// ssh2-sftp-client：https://www.npmjs.com/package/ssh2-sftp-client
// ssh2：https://github.com/mscdex/ssh2
let Client = require('ssh2').Client

function upload(options, pathToRemoteFile, pathToLocalFile, callback) {
  var client = new Client()
  client.on('ready', function() {
  		client.sftp(function(err, sftp) {
		  sftp.fastPut(pathToLocalFile, pathToRemoteFile, function(err, res) {
		  		if (err) throw err
		    	callback && callback()
		  		client.end()
		  })
		})
  }).connect(options)
}

// 坑爹点：pathToRemoteFile必须带文件名，否则会报错。 
// 也就是：pathToRemoteFile + pathToLocalFile.substr(filename.lastIndexOf('/')+1))
upload({host: '47.106.185.185', port: '22', username: 'root', password: 'Chjy@0769'}, '/var/www/demo/test.txt', './test.txt', function () {
    console.log('上传成功')
})

// ssh2-sftp-client demo：
// let sftp = new Client()
// sftp.connect({ host: '47.106.185.185', port: '22', username: 'root', password: 'Chjy@0769' }).then(() => {
//   return sftp.fastPut('./test.txt', '/var/www/demo/test.txt')
// }).then(() => {
//   console.log("上传完成")
// }).catch((err) => {
//   console.log(err, 'catch error')
// })
)
code(Var)
return

::node.pachong::
::node.jquery::
::nodepachong::
::nodejquery::
::node.$::
Var =
(
// npm i request cheerio
const request = require('request');
const cheerio = require('cheerio');

request('https://etherscan.io/token/tokenholderchart/0x86fa049857e0209aa7d9e616f7eb3b3b78ecfdb0?range=10', function (err, response, body) {
	if (err) throw new Error(err.message);
	let $ = cheerio.load(response.body)
	let trs = $("#ContentPlaceHolder1_resultrows tr");
	let myarr = [];
	trs.each(function (i, tr) {
	    var td = $(tr).find('td')
	    let Rank = td.eq(0).text();
	    let Address = td.eq(1).text();
	    let Quantity = td.eq(2).text();
	    let Percentage = td.eq(3).text();
	    myarr.push({Rank, Address, Quantity, Percentage});
	});
	console.log("简单成狗了:", myarr);
)
code(Var)
return

::request.proxy::
Var = 
(
 request({
    method: 'GET',
    url: 'http://ip.chinaz.com/getip.aspx',
    timeout: 8000,
    encoding: null,
    proxy: 'http://91.205.239.120:8080'
}, function (err, _res, body) {
    if (err) throw new Error(err)
    body = body.toString();
    console.log(body);
})
)
code(Var)
return

::http.request::
Var = 
(
// http://nodejs.cn/api/http.html#http_http_request_options_callback
// http://yijiebuyi.com/blog/8221eb14c8482e7efd1868946e99ea7c.html
var postData = JSON.stringify({
        'Phone': mobile,
        'Code': code,
        'Pwd': pwd,
        'Share': share
});

const opt = {
    // host: '119.10.67.144', // 这里放代理服务器的ip或者域名，千万不能加http
    // port: '808', // 这里放代理服务器的端口号
    method: 'POST',
    path: 'http://192.168.0.102',
    timeout: 30000,
    headers: {
        'Content-Type': 'application/json;charset=utf-8',
        'X-Requested-With': 'XMLHttpRequest',
        'Content-Length': postData.length
    },
};

const req = http.request(opt, function (res) {
    console.log(``状态码: ${res.statusCode}``);
    console.log(``响应头: ${JSON.stringify(res.headers)}``);

    res.setEncoding('utf8');

    res.on('data', function (data) {
          console.log(``响应主体: ${data}``);
    });

    res.on('end', () => {
        console.log('响应中已无数据。');
    });
});

req.on('error', (e) => {
    console.error('err', e.message);
});

req.write(postData);
req.end();
)
code(Var)
return

::request::
Var = 
(
request({
    method: 'POST',
    url: 'http://192.168.0.102',
    headers: {
        // 'Content-Type': 'application/json',
        // 'X-Requested-With': 'XMLHttpRequest',
    },
    // 请求和回发的数据自动转变成了 json 对象
    // 不需要在header中设置'Content-Type': 'application/json',也不需要手动JSON.stringify()转义Body postdata
    json: true, 
    body: {
        'Phone': mobile,
        'Code': code,
        'Pwd': pwd,
        'Share': share
    },
}, function (err, response, body) {
    console.log(body);
})
)
code(Var)
return

::node-mkdir::
::fs-mkdir::
Var = 
(
var mkdirp = require('mkdirp');
mkdirp(path.join(__dirname,`/data/`), function (err) {
    if (err) console.error(err)
})
)
code(Var)
return

::node-delete::
::node-rm::
::node.delete::
::fs-delete::
::fs-rm::
::fs.rm::
Var = 
(
var fs = require('fs');
var path = require('path');
function deleteall(path) {  
    var files = [];  
    if(fs.existsSync(path)) {  
        files = fs.readdirSync(path);  
        files.forEach(function(file, index) {  
            var curPath = path + "/" + file;  
            if(fs.statSync(curPath).isDirectory()) { // recurse  
                deleteall(curPath);  
            } else { // delete file  
                fs.unlinkSync(curPath);  
            }  
        });  
        fs.rmdirSync(path);  
    }  
};  
)
code(Var)
return


::node.rename::
::fs.rename::
Var = 
(
var fs = require('fs');
var files = fs.rename('./test.txt','./test/test.txt',function(err){
     if(err) console.log("err");
     console.log("文件操作成功");
})
)
code(Var)
return

::node-read::
::fs-read::
::fs.read::
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
::node.write::
::fs.write::
Var = 
(
var fs = require('fs');
var path = require('path');
fs.writeFile(path.join(__dirname,'/test.json'), '这是追加的数据', { flag:"a" }, function (err) {
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
::node-server::
Var = 
(
var http = require('http');

var server = http.createServer(function (req, rep) {
    // application/json;charset=utf-8
    rep.writeHead(200, {"Content-Type": "text/plain", "Access-Control-Allow-Origin": '*'});
    rep.end("Hello World!!");
})

server.listen(3000, function (err) {
     console.log('start');
});
)
code(Var)
Return