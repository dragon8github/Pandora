!j::
	
	Menu, NodeMenu, Add, 'use strict';, NodeHandler
	Menu, NodeMenu, Add, module.exports, NodeHandler
	Menu, NodeMenu, Add, #!/usr/bin/env node, NodeHandler
	Menu, NodeMenu, Add, 命令行参数process.argv, NodeHandler
	Menu, NodeMenu, Add, $ npm install -g nodemon && nodemom index.js, NodeHandler
	Menu, NodeMenu, Add, $ npm install pm2 -g && pm2 start hello.js --watch, NodeHandler

	Menu, NodeMenu, Add
	Menu, NodeMenu, Add

	Menu, NodeMenu, Add, sequelize.connect, NodeHandler
	Menu, NodeMenu, Add, sequelize.createmodel, NodeHandler


	Menu, NodeMenu, Add
	Menu, NodeMenu, Add

	Menu, NodeMenu, Add, fs.write, NodeHandler
	Menu, NodeMenu, Add, fs.read, NodeHandler
	Menu, NodeMenu, Add, fs.readFileSync, NodeHandler
	Menu, NodeMenu, Add, fs.rename, NodeHandler
	Menu, NodeMenu, Add, fs.rm, NodeHandler
	Menu, NodeMenu, Add, fs.mkdir, NodeHandler
	Menu, NodeMenu, Add, fs.ls, NodeHandler
	Menu, NodeMenu, Add, fs.watch, NodeHandler
	Menu, NodeMenu, Add, fs.stat, NodeHandler
	Menu, NodeMenu, Add, fs.exists, NodeHandler
	Menu, NodeMenu, Add, node-dir 遍历目录, NodeHandler

	Menu, NodeMenu, Add
	Menu, NodeMenu, Add
	Menu, NodeMenu, Add, node.cheerio-XML, NodeHandler
	Menu, NodeMenu, Add, node.pachong, NodeHandler
	Menu, NodeMenu, Add, node.ssh, NodeHandler
	Menu, NodeMenu, Add, node.gbk, NodeHandler
	Menu, NodeMenu, Add, node.ch, NodeHandler
	Menu, NodeMenu, Add, request, NodeHandler
	Menu, NodeMenu, Add, request.proxy, NodeHandler
	Menu, NodeMenu, Add, node-http, NodeHandler
	Menu, NodeMenu, Add, http.request, NodeHandler
	Menu, NodeMenu, Add, 新建子进程（执行shell）：child_process.spawn 与 stdout, NodeHandler
	Menu, NodeMenu, Add, 子进程与EventEmitter：on('data')/on('close'), NodeHandler
	
	Menu, NodeMenu, Add
	Menu, NodeMenu, Add
	
	Menu, NodeMenu, Add, clearconsole, NodeHandler
	Menu, NodeMenu, Add, TJ commander 命令行神器（简单版）, NodeHandler
	Menu, NodeMenu, Add, TJ commander 命令行神器（加强版）, NodeHandler

	Menu, NodeMenu, Show
	Menu, NodeMenu, DeleteAll
return


NodeHandler:
; MsgBox You selected unique 数组去重复 from the menu utilsMenu.
v := A_ThisMenuItem
Var :=

if (v == "") {
Var = 
(
)
}

if (v == "node-dir 遍历目录") {
Var = 
(
#!/usr/bin/env node
'use strict';
const dir = require('node-dir');
const dirname = process.argv[2] || ''

const options = {
	match: /\.rdf$/,
	exclude: ['pg0.rdf'],
};

dir.readFiles(dirname, options, (err, content, next) => {
	if (err) throw err;
	console.log(20190106160314, content);
	next();
})
)
}

if (v == "fs.stat") {
Var = 
(
const fs = require('fs');
const file = process.argv[2] || ''
fs.stat(file, (err, stats) => {
  if (err) {
    throw err;
  }
  console.log(stats.isFile())
  console.log(stats.isDirectory())

  const rdf = fs.readFileSync(file);
})
)
}

if (v == "fs.exists") {
Var = 
(
const fs = require('fs');
const file = process.argv[2] || ''
fs.exists(file, (exists) => {
  console.log(exists ? 'it\'s there' : 'no passwd!');
});

)
}

if (v == "fs.readFileSync") {
Var = 
(
const fs = require('fs');
const rdf = fs.readFileSync(`${__dirname}/pg132.rdf`);
)
}

if (v == "node.cheerio-XML") {
Var = 
(
'use strict';

const cheerio = require('cheerio');
const fs = require('fs');
const rdf = fs.readFileSync(`${__dirname}/pg132.rdf`);

const $ = cheerio.load(rdf)
const book = {};
// 找到 <pgterms:ebook rdf:about="ebooks/132"> 的132.(并且转化为int类型)
book.id = +$('pgterms\\:ebook').attr('rdf:about').replace('ebooks/', '')
book.title = $('dcterms\\:title').text()
)
}

if (v == "module.exports") {
Var = 
(
module.exports
)
}

if (v == "'use strict';") {
Var = 
(
'use strict';
)
}

if (v == "#!/usr/bin/env node") {
Var = 
(
#!/usr/bin/env node
)
}

if (v == "TJ commander 命令行神器（加强版）") {
Var = 
(
#!/usr/bin/env node
'use strict'
// $ cnpm install request commander -S
const fs = require('fs')
const request = require('request')
const program = require('commander')
const pkg = require('./package.json')

// 初始化基本命令
program
  .version(pkg.version)
  .description(pkg.description)
  .usage('[options] <command> [...]')
  .option('-o, --host <hostname>', 'hostname [localhost]', 'localhost')
  .option('-p, --port <number>', 'port number [9200]', '9200')
  .option('-j, --json', 'format output as JSON')
  .option('-i, --index <name>', 'which index to use')
  .option('-t, --type <type>', 'default type for bulk operations')

// 获取当前URL
program
	.command('url [path]')
	.description('generate the URL for the options and path (default is /)')
	.action((path = '/') => {
      console.log(fullUrl(path))
  })

// 搜索内容
// $ ./index.js get '_cat/'
// $ ./index.js get '_cat/indices/?'
program
  .command('get [path]')
  .description('perform an HTTP GET request for path (default is /)')
  .action((path = '/') => {
    const options = {
      url: fullUrl(path),
      json: program.json,
    };
    request(options, (err, res, body) => {
      if (program.json) {
        console.log(JSON.stringify(err || body));
      } else {
        if (err) throw err;
        console.log(body);
      }
    });
  });

// 创建内容
// $ ./index.js create-index --index books
// $ ./index.js create-index -i books2
program
  .command('create-index')
  .description('create an index')
  .action(() => {
    if (!program.index) {
      const msg = 'No index specified! Use --index <name>';
      if (!program.json) throw Error(msg);
      console.log(JSON.stringify({error: msg}));
      return;
    }

    request.put(fullUrl(), handleResponse);
  });

// 列出索引
// $ ./index.js  li
program
  .command('list-indices')
  .alias('li')
  .description('get a list of indices in this cluster')
  .action(() => {
    const path = program.json ? '_all' : '_cat/indices?v';
    request({url: fullUrl(path), json: program.json}, handleResponse);
  });


// 拼接url辅助函数
const fullUrl = (path = '') => {
  let url = ``http://${program.host}:${program.port}/``
  if (program.index) {
    url += program.index + '/'
    if (program.type) {
      url += program.type + '/'
    }
  }
  return url + path.replace(/^\/*/, '')
}

// 处理搜索内容
const handleResponse = (err, res, body) => {
  if (program.json) {
    console.log(JSON.stringify(err || body));
  } else {
    if (err) throw err;
    console.log(body);
  }
};


program.parse(process.argv)

if (!program.args.filter(arg => typeof arg === 'object').length) {
  program.help()
}
)
}


if (v == "TJ commander 命令行神器（简单版）") {
Var = 
(
#!/usr/bin/env node
'use strict';
// $ cnpm install request commander -S
const fs = require('fs');
const request = require('request');
const program = require('commander');
const pkg = require('./package.json');

program
  .version(pkg.version)
  .description(pkg.description)
  .usage('[options] <command> [...]')
  .option('-o, --host <hostname>', 'hostname [localhost]', 'localhost')
  .option('-p, --port <number>', 'port number [9200]', '9200')
  .option('-j, --json', 'format output as JSON')
  .option('-i, --index <name>', 'which index to use')
  .option('-t, --type <type>', 'default type for bulk operations');

program.parse(process.argv);

if (!program.args.filter(arg => typeof arg === 'object').length) {
  program.help();
}
)
}

if (v == "子进程与EventEmitter：on('data')/on('close')") {
Var = 
(
/**
 * $ echo fuckyou > fuck.txt 
 * $ node index.js fuck.txt
 * $ echo fuckyou again >> fuck.txt
 */
const fs = require( 'fs' )
const spawn = require('child_process').spawn;
const filename = process.argv[2]
if (!filename) {
	throw new Error( 'A file to watch must be specified! ' )
}
fs.watch(filename, () => {
	const ls = spawn('ls', ['-l', '-h', filename])
	let output = ''
	ls.stdout.on('data', chunk => output += chunk)
	ls.on('close', () => {
		const parts = output.split(/\s+/);
		console.log(20190101222102, parts)
	})
})
console.log( 'Now watching fuck.txt for changes...' )
)
}

if (v == "新建子进程（执行shell）：child_process.spawn 与 stdout") {
Var = 
(
/**
 * $ echo fuckyou > fuck.txt 
 * $ node index.js fuck.txt
 * $ echo fuckyou again >> fuck.txt
 */
const fs = require( 'fs' )
const spawn = require('child_process').spawn;
const filename = process.argv[2]
if (!filename) {
	throw new Error( 'A file to watch must be specified! ' )
}
fs.watch(filename, () => {
    // 新建一个子进程（执行一个shell）
	const ls = spawn('ls', ['-l', '-h', filename])
	// 子进程输出流
	ls.stdout.pipe(process.stdout)
})
console.log( 'Now watching fuck.txt for changes...' )
)
}


if (v == "命令行参数process.argv") {
Var = 
(
/**
 * $ echo fuckyou > fuck.txt 
 * $ node index.js fuck.txt
 */
const fs = require( 'fs' )
const filename = process.argv[2]
if (!filename) {
	throw new Error( 'A file to watch must be specified! ' )
}
fs.watch(filename, () => {
	console.log( 'File changed!' )
})
console.log( 'Now watching fuck.txt for changes...' )
)
}

if (v == "$ npm install pm2 -g && pm2 start hello.js --watch") {
Var = 
(
npm install pm2 -g && pm2 start hello.js --watch
)
}

if (v == "$ npm install -g nodemon && nodemom index.js") {
Var =
(
npm install -g nodemon && nodemom index.js
)
}

if (v == "fs.watch") {
SendLevel 1
SendInput, fs.watch{tab}
return
}

if (v == "sequelize.connect") {
SendLevel 1
SendInput, sequelize.connect{tab}
return
}

if (v == "sequelize.createmodel") {
SendLevel 1
SendInput, sequelize.createmodel{tab}
return
}

if (v == "request") {
SendLevel 1
SendInput, request{tab}
return
}

if (v == "request.proxy") {
SendLevel 1
SendInput, request.proxy{tab}
return
}

if (v == "node-http") {
SendLevel 1
SendInput, node-http{tab}
return
}

if (v == "http.request") {
SendLevel 1
SendInput, http.request{tab}
return
}

if (v == "fs.write") {
SendLevel 1
SendInput, fs.write{tab}
return
}

if (v == "fs.read") {
SendLevel 1
SendInput, fs.read{tab}
return
}

if (v == "fs.rename") {
SendLevel 1
SendInput, fs.rename{tab}
return
}

if (v == "fs.rm") {
SendLevel 1
SendInput, fs.rm{tab}
return
}

if (v == "fs.mkdir") {
SendLevel 1
SendInput, fs.mkdir{tab}
return
}

if (v == "fs.ls") {
SendLevel 1
SendInput, fs.ls{tab}
return
}

if (v == "node.pachong") {
SendLevel 1
SendInput, node.pachong{tab}
return
}

if (v == "node.ssh") {
SendLevel 1
SendInput, node.ssh{tab}
return
}

if (v == "node.gbk") {
SendLevel 1
SendInput, node.gbk{tab}
return
}

if (v == "node.ch") {
SendLevel 1
SendInput, node.ch{tab}
return
}

if (v == "clearconsole") {
SendLevel 1
SendInput, clearconsole{tab}
return
}


code(Var)
return

::fs.watch::
Var =
(
// echo fuck > fuck.txt
const fs = require('fs');
fs.watch('fuck.txt', () => {
	console.log('File changed!')
});
console.log('Now watching fuck.txt for changes...');
// echo fuckyou >> fuck.txt
)
code(Var)
return

::node.ch::
Var =
(
const fs      = require('fs-extra')
const globby  = require('globby')
const request = require('request')

// 简单的GET请求获取翻译结果
const _request = (text, cb) => {
	request({
	    url: encodeURI(``http://119.23.22.136:6635/baidu_transapi.php?text=${text}&type=tuofeng``),
	}, function (err, response, body) {
		// 如果翻译异常那么直接中断
		if (err)
			// 抛出异常吧
			throw new Error(``${err.message} ///////////////// ${text} ///////////////// ${body}``)
		// 必须有内容返回并且请求码为200才可以回调
		if (body && response.statusCode === 200)
			// 回调
	    	cb && cb(body)
	})
}

// 从字符串中区分出名字和后缀
const get = name => {
	const len = name.lastIndexOf('.')
	return { name: name.substr(0, len), ext: name.substr(len) }
}

// 遍历当前文件夹下所有的文件
(async () => {
	// 筛选当前文件夹下的文件类型
	const names = await globby(['*.png|*.jpg|*.gif'])
	// 开始遍历改名
	for (let [index, filename] of names.entries()) {
		// 获取文件名和前缀
	    const { name, ext } = get(filename)
	    // 发送请求
	    _request(name, ch => {
	    	// 如果翻译结果不为空并且不为原本的值
	    	if (ch && ch != name) {
		    	// 那么修改文件名
		    	fs.rename(filename, ch + ext, err => {
		    		// 如果出现异常，那么直接中止
			    	if (err) 
			    		// 抛出异常吧
			    		throw new Error(``${err.message} ///////////////// ${filename} ///////////////// ${ch}``)
			    })
			}
	    })
	}
})()
)
code(Var)
return

::clearconsole::
Var =
(
function clearConsole() {
  process.stdout.write(process.platform === 'win32' ? '\x1B[2J\x1B[0f' : '\x1B[2J\x1B[3J\x1B[H');
}
)
code(Var)
return

::sequelize.create::
::sequelize.createmodel::
::sequelize.define::
::sequelize.definemodel::
::sequelize.sync::
::sequelize.user::
Var =
(
// 模型定义API：http://docs.sequelizejs.com/manual/tutorial/models-definition.html
const User = sequelize.define('user', {
    firstName: { type: Sequelize.STRING },
    lastName: { type: Sequelize.STRING },
}, {
	// 省略 createdAt 和 updateAt
	timestamps: false
});

// 第一次没有表的时候需要同步来创建
// http://docs.sequelizejs.com/manual/tutorial/instances.html
// 官方还有两种额外的做法，一种是先build一个实例，然后save()，一种是直接create
sequelize.sync({
    force: true
}).then(() => {
	return User.create({
        firstName: 'John',
        lastName: 'Hancock'
    })
}).then(() => {
    return User.find({
        where: {
            firstName: 'John'
        }
    })
}).then(console.log)
)
code(Var)
return

::node.db::
::node.mysql::
::node.mysql2::
::node.sequelize::
::sequelize.init::
::sequelize.connect::
Var =
(
const Sequelize = require('sequelize');

const connect = new Sequelize('database', 'username', 'password', {
    host: 'localhost',
    port: 3306,
    dialect: 'mysql',
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    },
});

connect.authenticate().then(() => {
    console.log('Connection has been established successfully.');
})
.catch(err => {
    console.error('Unable to connect to the database:', err);
});
)
code(Var)
return

::node.dir::
::node.ls::
::fs.ls::
Var =
(
var fs = require('fs');
fs.readdir('./',function(err,files){
    if(err) console.log('失败');
    else console.log(files);
})
)
code(Var)
return

::node.gbk::
::node.gb2312::
::node.jquery.gbk::
::node.jquery.gb2312::
Var =
(
// npm i request cheerio iconv-lite
const request = require('request');
const cheerio = require('cheerio');
const iconv = require('iconv-lite');

request({
	url: 'http://roll.mil.news.sina.com.cn/col/zgjq/index.shtml',
	encoding : null // raw buffer
}, function (err, response, body) {
	if (err) throw new Error(err.message);
	var buffer = response.body;
	var str = iconv.decode(buffer, 'GBK').toString();
	let $ = cheerio.load(str)
	let lis = $(".linkNews li");
	let myarr = [];
	lis.each(function (i, li) {
	    var a = $(li).find('a')
	    var title = a.text()
	    myarr.push({ title });
	});
	console.log("简单成狗了:", myarr);
});
)
code(Var)
return

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
::fs.mkdir::
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