!j::
	Menu, NodeFileHandler, Add, fs.write, NodeHandler
	Menu, NodeFileHandler, Add, fs.read, NodeHandler
	Menu, NodeFileHandler, Add, fs.readFileSync, NodeHandler
	Menu, NodeFileHandler, Add, fs.rename, NodeHandler
	Menu, NodeFileHandler, Add, fs.rm, NodeHandler
	Menu, NodeFileHandler, Add, fs.mkdir, NodeHandler
	Menu, NodeFileHandler, Add, fs.ls, NodeHandler
	Menu, NodeFileHandler, Add, fs.watch, NodeHandler
	Menu, NodeFileHandler, Add, fs.stat, NodeHandler
	Menu, NodeFileHandler, Add, fs.exists, NodeHandler
	Menu, NodeFileHandler, Add, node-dir 遍历目录, NodeHandler
	
	Menu, NodeFileHandler, Add, 
	Menu, NodeFileHandler, Add, 
	
	Menu, NodeFileHandler, Add, path/fs-extra基础依赖, NodeHandler
	Menu, NodeFileHandler, Add, fs-extra.writeFile, NodeHandler
	Menu, NodeFileHandler, Add, fs-extra.readFile, NodeHandler

	
	
	Menu, DataType, Add, Sequelize.STRING, NodeHandler2
	Menu, DataType, Add, Sequelize.STRING(1234), NodeHandler2
	Menu, DataType, Add, Sequelize.STRING.BINARY, NodeHandler2
	Menu, DataType, Add, Sequelize.TEXT, NodeHandler2
	Menu, DataType, Add, Sequelize.TEXT('tiny'), NodeHandler2

	Menu, DataType, Add
	Menu, DataType, Add

	Menu, DataType, Add, Sequelize.INTEGER, NodeHandler2
	Menu, DataType, Add, Sequelize.BIGINT, NodeHandler2
	Menu, DataType, Add, Sequelize.BIGINT(11), NodeHandler2

	Menu, DataType, Add
	Menu, DataType, Add

	Menu, DataType, Add, Sequelize.FLOAT, NodeHandler2
	Menu, DataType, Add, Sequelize.FLOAT(11), NodeHandler2
	Menu, DataType, Add, Sequelize.FLOAT(11`, 10), NodeHandler2

	Menu, DataType, Add
	Menu, DataType, Add

	Menu, DataType, Add, Sequelize.DOUBLE, NodeHandler2
	Menu, DataType, Add, Sequelize.DOUBLE(11), NodeHandler2
	Menu, DataType, Add, Sequelize.DOUBLE(11`, 10), NodeHandler2

	Menu, DataType, Add
	Menu, DataType, Add

	Menu, DataType, Add, Sequelize.DECIMAL, NodeHandler2
	Menu, DataType, Add, Sequelize.DECIMAL(10`, 2), NodeHandler2

	Menu, DataType, Add
	Menu, DataType, Add

	Menu, DataType, Add, Sequelize.DATE, NodeHandler2
	Menu, DataType, Add, Sequelize.DATE(6), NodeHandler2
	Menu, DataType, Add, Sequelize.DATEONLY, NodeHandler2

	Menu, DataType, Add
	Menu, DataType, Add

	Menu, DataType, Add, Sequelize.BOOLEAN, NodeHandler2
	Menu, DataType, Add, Sequelize.UUID, NodeHandler2

	Menu, SeqMenu, Add, DataType, :DataType

	Menu, SeqMenu, Add, $ npx sequelize-cli init --force, NodeHandler 
	Menu, SeqMenu, Add, $ sequelize db:create, NodeHandler
	Menu, SeqMenu, Add, $ npx sequelize-cli model:generate --name User, NodeHandler
	Menu, SeqMenu, Add, $ npx sequelize-cli db:migrate, NodeHandler
	Menu, SeqMenu, Add, $ npx sequelize-cli db:migrate:undo, NodeHandler
	Menu, SeqMenu, Add, sequelize Testing the connection, NodeHandler
	Menu, SeqMenu, Add, sequelize.createmodel, NodeHandler
	

	Menu, NodeMenu, Add, 'use strict';, NodeHandler
	Menu, NodeMenu, Add, #!/usr/bin/env node, NodeHandler
	Menu, NodeMenu, Add, module.exports, NodeHandler
	Menu, NodeMenu, Add, os.EOL, NodeHandler
	Menu, NodeMenu, Add, nodejs-mvc-pure, NodeHandler
	
	Menu, NodeMenu, Add
	Menu, NodeMenu, Add
	
	Menu, NodeMenu, Add, node.http, NodeHandler
	Menu, NodeMenu, Add, $ npm install -g nodemon && nodemom --inspect index.js, NodeHandler
	Menu, NodeMenu, Add, $ npm install pm2 -g && pm2 start hello.js --watch, NodeHandler

	Menu, NodeMenu, Add
	Menu, NodeMenu, Add
	
	
	Menu, NodeMenu, Add, node.cheerio-XML, NodeHandler
	Menu, NodeMenu, Add, node.pachong, NodeHandler
	Menu, NodeMenu, Add, node.ssh, NodeHandler
	Menu, NodeMenu, Add, node.gbk, NodeHandler
	Menu, NodeMenu, Add, node.ch, NodeHandler
	Menu, NodeMenu, Add, request, NodeHandler
	Menu, NodeMenu, Add, request.proxy, NodeHandler
	Menu, NodeMenu, Add, http.request, NodeHandler
	Menu, NodeMenu, Add, node webSocket, NodeHandler
	
	
	Menu, NodeMenu, Add
	Menu, NodeMenu, Add
	
	Menu, NodeMenu, Add, 命令行参数process.argv, NodeHandler
	Menu, NodeMenu, Add, 新建子进程（执行shell）：child_process.spawn 与 stdout, NodeHandler
	Menu, NodeMenu, Add, 子进程与EventEmitter：on('data')/on('close'), NodeHandler
	Menu, NodeMenu, Add, clearconsole, NodeHandler
	Menu, NodeMenu, Add, TJ commander 命令行神器（入门极简版）, NodeHandler
	Menu, NodeMenu, Add, TJ commander 命令行神器（简单版）, NodeHandler
	Menu, NodeMenu, Add, TJ commander 命令行神器（加强版）, NodeHandler
	

	Menu, NodeMenu, Add
	Menu, NodeMenu, Add
	
	Menu, NodeMenu, Add, ejs, NodeHandler
	Menu, NodeMenu, Add, nodejs实现最简单的模板引擎替换, NodeHandler
	Menu, NodeMenu, Add, npx lite-server, NodeHandler
	Menu, NodeMenu, Add, fs 文件IO, :NodeFileHandler
	Menu, NodeMenu, Add, sequelize, :SeqMenu
	
	Menu, NodeMenu, Show
	Menu, NodeMenu, DeleteAll
	Menu, NodeFileHandler, DeleteAll
	Menu, DataType, DeleteAll
return


NodeHandler2:
v := A_ThisMenuItem
code(v)
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

if (v == "nodejs-mvc-pure") {
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/node-mvc-master.zip")
return
}

if (v == "node webSocket") {
_send("websocket", true)
return
}



if (v == "mocha + wish 极简TDD") {
_send("tdd", true, true)
return
}


if (v == "npx lite-server") {
cs("npx lite-server")
return
}

if (v == "ejs") {
Var = 
(
const path = require('path')
const ejs = require('ejs')

const getPath = dir => path.join(__dirname, '..' ,dir)

// 渲染与读取
const content = await ejs.renderFile(getPath('public/index.html'), data, { async: true })

// 直接渲染模板
const content = ejs.render(template, data)
)
}

if (v == "path/fs-extra基础依赖") {
Var = 
(
const path = require('path')
const ejs = require('ejs')
const fs = require('fs-extra')

// 获取命令当前执行路径
const getCurrentPath = dir => path.join(process.cwd(), dir)

// 获取项目当前路径
const getPath = dir => path.join(__dirname, '..' ,dir)
)
}

if (v == "fs-extra.writeFile") {
Var = 
(
// 新建文件
await fs.writeFile(getPath(``cache/${id}.html``), HTML)
)
}

if (v == "fs-extra.readFile") {
Var = 
(
// 获取HTML
const HTML = await fs.readFile(getPath(``cache/${id}.html``), 'utf8')
)
}


if (v == "nodejs实现最简单的模板引擎替换") {
Var = 
(
const fs = require('fs')
const path = require('path')

// 局部变量
const name = 'Lee'

// eval
const makeEvaluate = _ => eval('`'+_+'`')

// 读取文本 => 你的名字是：${name}
const data = fs.readFileSync(path.join(__dirname, './test.tmp'), { encoding: 'utf-8' })

// 输出转化的结果
console.log(makeEvaluate(data))
)
}

if (v == "os.EOL") {
Var = 
(
os.EOL
)
}

if (v == "$ npx sequelize-cli init --force") {
cs("npx sequelize-cli init --force")
return
}

if (v == "$ sequelize db:create") {
cs("sequelize db:create")
return
}

if (v == "$ npx sequelize-cli model:generate --name User") {
Var = 
(
npx sequelize-cli model:generate --name Group --attributes \
name:string,\
desc:text,\
users:string,\
project:INTEGER\
 --force
)
}

if (v == "$ npx sequelize-cli db:migrate") {
cs("npx sequelize-cli db:migrate")
return
}

if (v == "$ npx sequelize-cli db:migrate:undo") {
cs("npx sequelize-cli db:migrate:undo")
return
}

if (v == "sequelize.createmodel") {
_send("seq.model", true, true)
return
}

if (v == "sequelize.init") {
_send("seq.init", true,true)
return
}

if (v == "TJ commander 命令行神器（入门极简版）") {
Var = 
(
const colors = require('colors');
const commander = require('commander');
const pkg = require('../package.json');

commander
  .version(pkg.version)
  .description(pkg.description)
  .usage('[options] <command> [...]')
  .option('-c, --city [name]', 'Add city name')
  .parse(process.argv);

if (process.argv.slice(2).length === 0) {
    commander.outputHelp(colors.red);
    process.exit()
}

// $ yarn ts-node src/index.ts
console.log(commander.city) // => dongguan
)
}

if (v == "Chai.js断言库API中文文档") {
run, https://www.jianshu.com/p/f200a75a15d2
return
}

if (v == "1、expect") {
Var =
(
expect(value)
)
}
if (v == "2、.all.keys('bar'，'baz')") {
Var =
(
.all.keys('bar', 'baz')
)
}
if (v == "3、.any.keys('bar'，'baz')") {
Var =
(
.any.keys('bar', 'baz')
)
}
if (v == "4、.not 对之后的断言取反") {
Var =
(
to.not.be.true
to.not.be.ok
to.not.equal('bar')
to.not.throw(Error)
)
}
if (v == "5、.a(String) / .an(String) 被测试的值的类型") {
Var =
(
to.be.a('string')
to.be.an('object')
to.be.a('null')
to.be.an('undefined')
to.be.an('error')
to.be.a('promise')
)
}
if (v == "6、.include / .contains(Object | String | Number)：为判断数组、字符串是否包含某值的断言使用") {
Var =
(
.to.include(2)
.to.include.keys('foo')
)
}
if (v == "7、.ok / .true / .false / .null / .undefined： 断言目标为真值。") {
Var =
(
to.be.ok
to.not.be.ok

.to.be.true
.to.not.be.true

.to.be.false
.to.not.be.false

.to.be.null
.to.not.be.null

.to.be.undefined
.to.not.be.undefined
)
}
if (v == "8、.exist ：即非null也非undefined") {
Var =
(
.to.exist
.to.not.exist
)
}
if (v == "9、.empty： 断言目标的长度为0。对于数组和字符串，它检查length属性，对于对象，它检查可枚举属性的数量") {
Var =
(
.to.be.empty
)
}
if (v == "10、.equal（value）： 断言目标严格等于(===)value") {
Var =
(
.to.equal('hello')
.to.not.equal(true)
.to.deep.equal({foo: 'bar'})
)
}
if (v == "11、.eql(value) ： 深度等于，相当于deep.equal(value)的简写。可用于对象和数组的比较。") {
Var =
(
expect({ foo: 'bar' }).to.eql({ foo: 'bar' })
expect([1, 2, 3]).to.eql([1, 2, 3])
)
}
if (v == "12、.above(Number)： 大于（超过）value。可用于比较数字，也可用于判断数组和字符串的长度：") {
Var =
(
.to.be.above(5)
.to.have.length.above(2)
)
}
if (v == "13、.least(Number)：大于或等于value") {
Var =
(
.to.be.at.least(10)
)
}
if (v == "14、.below(Number)： 小于value") {
Var =
(
.to.be.below(10)
)
}
if (v == "15、.most(Number)：小于或等于value") {
Var =
(
.to.be.at.most(5)
)
}
if (v == "16、.within(start，finish)：区间") {
Var =
(
.to.be.within(5, 10)
)
}
if (v == "17、.property(name，[value])： 是否拥有某个名为name的属性，如果填写了value则该还需要严格等于（===）value。如果Value是对象和数组还需要使用deep标记。") {
Var =
(
.to.have.property('foo')
.to.have.property('foo', 'bar')
.to.have.deep.property('green.tea', 'matcha')
.to.have.deep.property('teas[1]', 'matcha')
.to.have.deep.property('teas[2].tea', 'konacha')
.to.have.deep.property('[0][1]', 'matcha')
.to.have.deep.property('[1][2].tea', 'konacha')
)
}
if (v == "18、.ownProperty(name)： 断言目标拥有名为name的自有属性。") {
Var =
(
.to.have.ownProperty('length')
)
}
if (v == "19、.length：设置.have.length标记作为比较length属性值的前缀") {
Var =
(
.to.have.length.above(2)
.to.have.length.within(2, 4)
)
}
if (v == "20、.lengthOf(value)：断言目标的length属性为期望的值") {
Var =
(
.to.have.lengthOf(3)
)
}
if (v == "21、.match(regexp)： 匹配到一个正则表达式") {
Var =
(
.to.match(/^foo/)
)
}
if (v == "22、.string(string)：字符串包含另一个字符串") {
Var =
(
.to.have.string('bar')
)
}
if (v == "23、.keys(key1，[key2]，[...])： 是否包含属性名，可以同any/all/container结合使用。") {
Var =
(
.to.have.all.keys('foo', 'bar', 'baz')
.to.have.all.keys(['foo', 'bar', 'baz'])

.to.have.any.keys('foo', 'bar')
.to.have.any.keys({ bar: 2, foo: 1 })

.to.contains.any.keys('foo', 'bar')
.to.contains.all.keys('foo', 'bar')
)
}
if (v == "24、.Throw(Error)") {
Var =
(
.to.throw(ReferenceError)
.and.not.throw(/good function/)
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

if (process.argv.slice(2).length === 0) {
    commander.help();
    process.exit()
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

// $ node index.js --port 8080
console.log(commander.port) // => 8080

if (process.argv.slice(2).length === 0) {
    commander.help();
    process.exit()
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

if (v == "$ npm install -g nodemon && nodemom --inspect index.js") {
Var =
(
npm install -g nodemon && nodemom index.js
)
}

if (v == "fs.watch") {
SendLevel 1
Send, fs.watch{tab}
return
}

if (v == "sequelize Testing the connection") {
Var =
(
const Sequelize = require('sequelize');

const connect = new Sequelize('sequelize_test', 'root', 'root', {
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
}

if (v == "request") {
SendLevel 1
Send, request{tab}
return
}

if (v == "request.proxy") {
SendLevel 1
Send, request.proxy{tab}
return
}

if (v == "node.http") {
_send("node.http", true)
return
}

if (v == "http.request") {
SendLevel 1
Send, http.request{tab}
return
}

if (v == "fs.write") {
SendLevel 1
Send, fs.write{tab}
return
}

if (v == "fs.read") {
SendLevel 1
Send, fs.read{tab}
return
}

if (v == "fs.rename") {
SendLevel 1
Send, fs.rename{tab}
return
}

if (v == "fs.rm") {
SendLevel 1
Send, fs.rm{tab}
return
}

if (v == "fs.mkdir") {
_send("node-mkdir")
return
}

if (v == "fs.ls") {
SendLevel 1
Send, fs.ls{tab}
return
}

if (v == "node.pachong") {
SendLevel 1
Send, node.pachong{tab}
return
}

if (v == "node.ssh") {
SendLevel 1
Send, node.ssh{tab}
return
}

if (v == "node.gbk") {
SendLevel 1
Send, node.gbk{tab}
return
}

if (v == "node.ch") {
SendLevel 1
Send, node.ch{tab}
return
}

if (v == "clearconsole") {
SendLevel 1
Send, clearconsole{tab}
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

::node.mkdir::
::node-mkdir::
::fs-mkdir::
::fs.mkdir::
Var = 
(
if (!fs.existsSync(Recognize.downloadDir)) {
  fs.mkdirSync(Recognize.downloadDir);
  console.log(`创建了 ${Recognize.downloadDir} 文件夹`);
}
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

::node.http::
::node.server::
Var = 
(
/* 
$ npm install -g nodemon
$ nodemon --inspect app.js
 */
const http = require('http')

http.createServer((req, res) => {

	const { url, method, headers } = req

	let body = ''

	req.on('data', chunk => {
		body += chunk
	})

	// 需要 POSTMAN 发送 POST application/json 请求才可以
	req.on('end', () => {
		res.statusCode = 200
		res.statusMessage = 'success'
		res.setHeader('Content-Type', 'application/json')
		res.setHeader('Access-Control-Allow-Origin', '*')

		/* 
		res.writeHead(200, 'success', { 
			'Content-Type': 'text/html',
			'Content-Length': body.length,
			"Access-Control-Allow-Origin": '*',
		})
		 */

		res.write(JSON.stringify({
			code: 200,
			msg: 'success',
			data: [
				{ id: 1, title: '中国机长票房破10亿' },
				{ id: 2, title: '我和我的祖国票房新' },
				{ id: 3, title: '惠普计划裁员16' },
				{ id: 4, title: '谢依霖怀二胎新' },
				{ id: 5, title: '中国女排重回第一' },
			]
		}))

		res.end()
	})

	// res.end('Hello World')
	
}).listen(8080, () => console.log('Listening on 8080'))
)
code(Var)
Return

::cnpmm::
::npm cnpm::
::cnpm2::
SendInput, npm install cnpm -g --registry=https://registry.npm.taobao.org 
return

::cnpm::
::npm::
_sendinput("cnpm i  -S{LEFT 3}")
return

::nest.c::
Var =
(
import { Controller, Get, Post } from '@nestjs/common';
import { CreateCatDto, ListAllEntities } from './dto';

@Controller('cats')
export class CatsController {

  @Post()
  create(@Body() createCatDto: CreateCatDto) {
    return 'This action adds a new cat';
  }

  @Get()
  findAll(@Query() query: ListAllEntities) {
    return `This action returns all cats (limit: ${query.limit} items)`;
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return `This action returns a #${id} cat`;
  }

  @Post()
  create(): string {
    return 'This action adds a new cat';
  }

  @Get()
  findAll(): string {
    return 'This action returns all cats';
  }
}
)
code(Var)
return

::nest.main::
::nest.init::
::nest.bs::
::nest.bootstrap::
Var =
(
import { NestFactory } from '@nestjs/core';
import { AppModule } from './app/app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  await app.listen(3000);
}
bootstrap();
)
code(Var)
return

::nest.@get::
::nest.get::
Var =
(
@Get(':id')
findOne(@Param() params): string {
  console.log(params.id);
  return `This action returns a #${params.id} cat`;
}

@Get(':id')
findOne(@Param('id') id): string {
  return `This action returns a #${id} cat`;
}

)
code(Var)
return

::nest.app::
Var =
(
import { Module } from '@nestjs/common';
import { CatsModule } from './cats/cats.module';

@Module({
  imports: [CatsModule],
})
export class ApplicationModule {}
)
code(Var)
return

::nest.module::
::nest.modules::
:?:nest.mo::
:?:nest.m::
InputBox, OutputVar, title, enter a name?,,,,,,,,cats
O := SubStr(OutputVar, 1, 1)
StringUpper, String1, O
OutputVar2 := String1 . SubStr(OutputVar, 2)
Var =
(
import { Module } from '@nestjs/common';
import { %OutputVar2%Controller } from './%OutputVar%.controller';
import {%OutputVar2%Service } from './%OutputVar%.service';

@Module({
  controllers: [%OutputVar2%Controller],
  providers: [%OutputVar2%Service],
})
export class %OutputVar2%Module {}
)
code(Var)
return

::nest.service::
::nest.server::
::nest.s::
Var =
(
import { Injectable } from '@nestjs/common';
import { Cat } from './interfaces/cat.interface';

@Injectable()
export class CatsService {
  private readonly cats: Cat[] = [];

  create(cat: Cat) {
    this.cats.push(cat);
  }

  findAll(): Cat[] {
    return this.cats;
  }
}
---
export interface Cat {
  readonly name: string;
  readonly age: number;
  readonly breed: string;
}

)
txtit(Var)
return

::nest.req::
::nest.@req::
::nest.express::
Var =
(
import { Controller, Get, Req } from '@nestjs/common';
import { Request } from 'express';

@Controller('cats')
export class CatsController {
  @Get()
  findAll(@Req() request: Request): string {
    return 'This action returns all cats';
  }
}
)
code(Var)
return

:?:nest.next::
::nest.middle::
::nest.mid::
Var =
(
// Nest 中间件可以是一个函数，也可以是一个带有 @Injectable() 装饰器的类。 这个类应该实现 NestMiddleware 接口, 而函数没有任何特殊的要求。
import { Injectable, NestMiddleware } from '@nestjs/common';
import { Request, Response } from 'express';

@Injectable()
export class LoggerMiddleware implements NestMiddleware {
  use(req: Request, res: Response, next: Function) {
    console.log('Request...');
    next();
  }
}
---
// 中间件不能在 @Module() 装饰器中列出。我们必须使用模块类的 configure() 方法来设置它们。包含中间件的模块必须实现 NestModule 接口。
import { Module, NestModule, MiddlewareConsumer } from '@nestjs/common';
import { LoggerMiddleware } from './common/middleware/logger.middleware';
import { CatsModule } from './cats/cats.module';

@Module({
  imports: [CatsModule],
})
export class ApplicationModule implements NestModule {
  configure(consumer: MiddlewareConsumer) {
    consumer
      .apply(LoggerMiddleware)
      .forRoutes('cats');
  }
}
)
txtit(Var)
return

::nest.err::
::nest.error::
::nest.cache::
Var =
(
@Get()
async findAll() {
  throw new HttpException('Forbidden', HttpStatus.FORBIDDEN);
}
---
@Get()
async findAll() {
  throw new HttpException({
    status: HttpStatus.FORBIDDEN,
    error: 'This is a custom message',
  }, 403);
}
---
import { ExceptionFilter, Catch, ArgumentsHost } from '@nestjs/common';
import { HttpException } from '@nestjs/common';

@Catch(HttpException)
export class HttpExceptionFilter implements ExceptionFilter {
  catch(exception: HttpException, host: ArgumentsHost) {
    const ctx = host.switchToHttp();
    const response = ctx.getResponse();
    const request = ctx.getRequest();
    const status = exception.getStatus();

    response
      .status(status)
      .json({
        statusCode: exception.getStatus(),
        timestamp: new Date().toISOString(),
        path: request.url,
      });
  }
}
)
txtit(Var)
return

::nest.pipe::
::nest.liu::
Var =
(
import { PipeTransform, Injectable, ArgumentMetadata } from '@nestjs/common';

@Injectable()
export class ValidationPipe implements PipeTransform {
  transform(value: any, metadata: ArgumentMetadata) {
    return value;
  }
}
)
code(Var)
return

::cpr::
Var =
(
constructor(private readonly schema) {}
)
code(Var)
return

::nest.g::
::nest.shouwei::
::nest.show::
Var =
(
import { Injectable, CanActivate, ExecutionContext } from '@nestjs/common';
import { Observable } from 'rxjs';

@Injectable()
export class AuthGuard implements CanActivate {
  canActivate(
    context: ExecutionContext,
  `): boolean | Promise<boolean> | Observable<boolean> {
    const request = context.switchToHttp().getRequest();
    return validateRequest(request);
  }
}
)
code(Var)
return

::fast.init::
::fast.app::
Var =
(
const fastify = require('fastify')({
  logger: true
})

fastify.register(require('./route'))

fastify.listen(3000, (err, address) => {
  if (err) {
    fastify.log.error(err)
    process.exit(1)
  }
  fastify.log.info(`server listening on ${address}`)
})
---
// route.js

async function routes (fastify, options) {
  fastify.get('/', async (request, reply) => {
    return { hello: 'world' }
  })
}

module.exports = routes
)
txtit(Var)
return

::fast.mongo::
::fast.mongodb::
Var =
(
const fastify = require('fastify')({
  logger: true
})

fastify.register(require('./mongodb-connector'), {
  url: 'mongodb://localhost:27017/'
})

fastify.register(require('./route'))

fastify.listen(3000, (err, address) => {
  if (err) {
    fastify.log.error(err)
    process.exit(1)
  }
  fastify.log.info(`server listening on ${address}`)
})
---
// mongodb-connector
// fastify-mongodb
const fastifyPlugin = require('fastify-plugin')
const MongoClient = require('mongodb').MongoClient

async function dbConnector (fastify, options) {
  const url = options.url
  delete options.url

  const db = await MongoClient.connect(url, Object.assign({}, options, { useNewUrlParser: true }))
  fastify.decorate('mongo', db)
}

module.exports = fastifyPlugin(dbConnector)
---
// route.js
async function routes (fastify, options) {
  const database = fastify.mongo.db('test')
  const collection = database.collection('user')

  fastify.get('/', async (request, reply) => {
    return { hello: 'world' }
  })

  fastify.get('/search/:id', async (request, reply) => {
    const result = await collection.findOne({ id: +request.params.id })
    if (result.value === null) {
      throw new Error('Invalid value')
    }
    reply.send(result)
  })
}

module.exports = routes
)
txtit(Var)
return


::seq.model::
::seq.modal::
::seq.m::
Var =
(
const Sequelize = require('sequelize');
const sequelize = new Sequelize('sequelize_test', 'root', 'root', {
    host: 'localhost',
    port: 3306,
    dialect: 'mysql',
})

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
---
const Sequelize = require('sequelize');
const sequelize = new Sequelize('sequelize_test', 'root', 'root', {
    host: 'localhost',
    port: 3306,
    dialect: 'mysql',
})

class User extends Sequelize.Model {}
User.init({
  username: Sequelize.STRING,
  birthday: Sequelize.DATE
}, { sequelize, modelName: 'user' });

sequelize.sync()
  .then(() => User.create({
    username: 'janedoe',
    birthday: new Date(1980, 6, 20)
  }))
  .then(jane => {
    console.log(jane.toJSON());
  });
)
txtit(Var)
return

::av::
::avaa::
::ava.test::
::ava.module::
InputBox, OutputVar, title, enter a name?,,,,,,,,应该返回一个数组
Var =
(
test('%OutputVar%', async t => {
	t.pass()
})
)
code(Var)
return

::ava::
::ava.init::
::avainit::
Var =
(
// npm init ava
import test from 'ava'

test('应该返回一个数组', async t => {
	const users = []
	t.truthy(users instanceof Array)
})

test('直接通过', t => {
	t.pass()
})

test('async/await判断', async t => {
	const bar = Promise.resolve('bar')
	t.is(await bar, 'bar')
})

test.cb('回调专用t.end()', t => {
	fs.readFile('package.json', t.end)
})

test('主动报错t.fail()', t => {
	t.fail()
})

test.before(async t => {
	await promiseFn()
})


test.after('cleanup', t => {
	
})

test.beforeEach.cb(t => {
	setTimeout(t.end)
})

test.afterEach.cb(t => {
	setTimeout(t.end)
})

test.before(t => {
	t.context = 'unicorn'
})

test('context is unicorn', t => {
	t.is(t.context, 'unicorn')
})

test('plan + true', t => {
	t.plan(2)

	for (let i = 0 i < 3 i++) {
		t.true(i < 3)
	}
})
)
code(Var)
return

::mocha::
::tdd::
Var =
(
npm install --global mocha

npm install wish deep-equal

mocha -w test/app.test.js

---

const wish = require('wish')

describe('Array', function() {
  describe('#indexOf()', function() {
    it('should return -1 when the value is not present', function() {
    	wish([1, 2, 3].indexOf(4) === -1)
    })
  })
})

---
// 比较 『对象』 和 『数组』 可以用 deep-equal
var deepEqual = require('deep-equal')

wish(deepEqual([1,2,3], [1,2,3]))
)
txtit(Var)
return

::cnpm::
_sendInput("npm install cnpm -g --registry=https://registry.npm.taobao.org")
return

::egg::
::egg.c::
::egg.init::
InputBox, OutputVar, title, enter a name?,,,,,,,,index
String1 := SubStr(OutputVar, 1, 1)
StringUpper, String1, String1 
OutputVar := String1 . SubStr(OutputVar, 2)
Var =
(
'use strict';

const Controller = require('egg').Controller

class %OutputVar%Controller extends Controller {
  async index() {
    const { ctx } = this
    ctx.body = 'hi, %OutputVar%'
  }
  
  async create%OutputVar%() {

  }

  async modify%OutputVar%() {

  }

  async remove%OutputVar%() {
  	
  }
}
module.exports = %OutputVar%Controller
)
code(Var)
return


::egg.test::
::egg.t::
InputBox, OutputVar, title, enter a name?,,,,,,,,index
String1 := SubStr(OutputVar, 1, 1)
StringUpper, String1, String1 
OutputVar2 := String1 . SubStr(OutputVar, 2)
Var =
(
'use strict';

const { app } = require('egg-mock/bootstrap');

describe('test/app/controller/%OutputVar%.test.js', () => {
  it('should GET /', () => {
    return app.httpRequest()
      .get('/%OutputVar%')
      .expect('hi, %OutputVar2%')
      .expect(200);
  });
});
)
code(Var)
return

::eggs::
::egg.s::
::egg.serve::
InputBox, OutputVar, title, enter a name?,,,,,,,,user
String1 := SubStr(OutputVar, 1, 1)
StringUpper, String1, String1 
OutputVar2 := String1 . SubStr(OutputVar, 2)
Var =
(
const Service = require('egg').Service;

class %OutputVar2%Service extends Service {
	// https://eggjs.org/zh-cn/tutorials/mysql.html#read
	async query(where) {
		return await this.app.mysql.select('%OutputVar%', where)
	}

	// https://eggjs.org/zh-cn/tutorials/mysql.html#read
	async find(id) {
		return await this.app.mysql.get('%OutputVar%', { id })
	}

	// https://eggjs.org/zh-cn/tutorials/mysql.html#create
	async insert(%OutputVar%) {
		return await this.app.mysql.insert('%OutputVar%', %OutputVar%)
	}

	// https://eggjs.org/zh-cn/tutorials/mysql.html#update
	async update(row, options) {
		return await this.app.mysql.update('%OutputVar%', row, options)
	}

	// https://eggjs.org/zh-cn/tutorials/mysql.html#delete
	async remove(where) {
		return await this.app.mysql.delete('%OutputVar%', where)
	}
}

module.exports = %OutputVar2%Service;
)
code(Var)
return

::eggss::
::eggus::
Var =
(
const { ctx, service } = this
const { id } = ctx.params
const data = ctx.request.body
const result = service.request.insert(data)
ctx.body = result
)
code(Var)
return

::egg.router::
::egg.r::
Var =
(
'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;

  // 用户管理
  router.get('/register', controller.user.register);
  router.get('/login/:id', controller.user.login);
  router.get('/forget', controller.user.forget);

  // 请求资源管理
  router.get('/menu', controller.request.menu);
  router.post('/createRequest', controller.request.createRequest);
  router.post ('/modifyRequest/:id', controller.request.modifyRequest);
  router.get('/createFolder', controller.request.createFolder);
  router.post('/removeRequest/:id', controller.request.removeRequest);
  router.get('/moveRequest', controller.request.moveRequest);
  router.get('/removeFolder', controller.request.removeFolder);
  router.get('/renameFolder', controller.request.renameFolder);

  // 个人工作空间
  router.get('/workSpace', controller.workSpace.index);
  router.get('/createWorkSpace', controller.workSpace.createWorkSpace);
  router.get('/modifyWorkSpace', controller.workSpace.modifyWorkSpace);
  router.get('/removeWorkSpace', controller.workSpace.removeWorkSpace);

  // 团队管理
  router.get('/team', controller.team.index);
  router.get('/creteTeam', controller.team.creteTeam);
  router.get('/removeTeam', controller.team.removeTeam);
  router.get('/modifyTeam', controller.team.modifyTeam);

  // 配置管理
  router.get('/env', controller.env.index);
  router.get('/addEnv', controller.env.addEnv);
  router.get('/removeEnv', controller.env.removeEnv);
  router.get('/modifyEnv', controller.env.modifyEnv);
};
)
code(Var)
return

::websocket::
::webso::
Var =
(
const WebSocket = require('ws')

const WS = new WebSocket.Server({ port: 1234 })

WS.on('connection', ws => {

    ws.on('message', msg => {
        ws.send('i received: ' + msg)
    })

    // 建立连接后，主动发送第一条初始化消息
    ws.send('server OK')
})
---
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WebSocket Test</title>
</head>

<body>
    <div id="app"></div>
</body>
<script>
    const ws = new WebSocket('ws://localhost:1234')

    ws.addEventListener('open', () => {
        ws.send('client ok')
    })

    ws.addEventListener('message', e => {
        console.log(e.data)
    })
</script>
</html>
)
txtit(Var)
return