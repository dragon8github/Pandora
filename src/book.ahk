

>+b::
	; 显示
	Gui, Book:Show,, Book
	; 康奈尔专用数组
	global cornellAry := {}
return

BookGuiEscape:
BookGuiClose:
	Gui, Book:Hide
return

SwitchBook:
  ; 删除所有树
  while(A := TV_GetNext(A)) {
    TV_Delete(top)
  }

  ; 获取当前Tab
  GuiControlGet, currentBook,, BookTab 

  ; 去掉空格符
  currentBook := Trim(currentBook)

  ; 模板
  if (currentBook == "") {
  }

  if (currentBook == "《Vue.js 深入浅出》") {
    cornell("Object的变化侦测")
    cornell("Array的变化侦测")
  }

  if (currentBook == "《JavaScript 设计模式》") {
    initbook()
  }

  if (currentBook == "《康奈尔笔记》") {
    cornell("焦虑专题")
    cornell("方法论")
    cornell("打破认知天花板")
    cornell("成就感")
    cornell("见微知著的认知能力")  
    cornell("想少干活就要多思考")  
  }

  if (currentBook == "《Vue + Jest单元测试》") {
     cornell("Vue+jest环境安装")
     cornell("纯jest安装")
     cornell("基本语法")
     cornell("间谍函数")
     cornell("mock依赖")
     cornell("测试vuex")
     cornell("jest语法")
  }

  if (currentBook == "《Mongodb》") {
     cornell("mongodb-101")
     cornell("mongoose-101")
     cornell("dbs-数据库相关")
     cornell("collections-集合相关")
     cornell("document-文档相关")
     cornell("玩转几个特殊函数")
     cornell("使用索引")
     cornell("备份与恢复")
  }



  
   if (currentBook == "《Express+Sequelize+Mysql》") {
     cornell("sequelize-101")
     cornell("sequelize-模型关联查询")
     cornell("express-101")
     cornell("实现登录注册jwt鉴权")
  }


  if (currentBook == "《Cypress集成测试》") {
     cornell("Cypress-安装")
     cornell("Cypress-101")
     cornell("Cypress-202")
     cornell("Cypress-invoke调用函数")
     cornell("Cypress-Viewport切换移动端")
     cornell("Cypress.$的认知")
     cornell("Cypress 插件")
     cornell("Cypress 断言")
  }


  ;获取节点信息
  _top := TV_GetSelection()

  ; 展开所有节点
  var_dump(expandallchild(_top))
  
return

; @a @1 @@
cornell(v) {
Var := 

if (v == "") {
Var = 
(
)
}

if (v == "Cypress 断言") {
Var =
(
// https://docs.cypress.io/guides/references/assertions.html#Chai-jQuery

expect($('.switchTime').text()).to.be.empty

expect($('.single').length).to.be.eq(0)

expect(toNum($nums.eq(4).text())).to.be.gt(0)
)
}

if (v == "Cypress 插件") {
Var =
(
https://github.com/NoriSte/cypress-wait-until
)
}

if (v == "Cypress.$的认知") {
Var =
(
https://docs.cypress.io/api/utilities/$.html#Syntax

和 cy.get 对比，它不会等待 DOM 出现。它是同步运行，适合调试。

也就是说立刻查立刻返回，不会等待 4000ms。

Cypress.$(selector)

Cypress.$ 的语法和 Jquery 十分相似，但并不完全等同于 jQuery，譬如并没有 .size() 方法，只能通过 .length 属性来判断。

jQuery 元素也可以转化为 cypress 元素，只要通过 cy.wrap($li) 即可。然后就又可以使用 .should 之类的语法了。

const $li = Cypress.$('ul li:first')
cy.wrap($li)
  .should('not.have.class', 'active')
  .click()
  .should('have.class', 'active')
)
}

if (v == "Cypress-202") {
Var =
(
// https://on.cypress.io/should
// https://docs.cypress.io/guides/references/assertions.html#BDD-Assertions



@@1、 界面判断 - 元素是否存在、 元素数量是否准确、 元素是否显示/隐藏、 元素是否包含指定文本、 元素是否具备某些样式/属性/类名

// 判断列表长度
cy.get('ul#list li').its('length').should('be.gt', 1)
cy.get('.hotCounselling__item').should($items => expect($items.length).to.be.gt(0))

// 将一个 dom 对象转换为 cy 对象
cy.wrap(el)

// 判断数据是否准确
cy.contains('应来莞作业').next().find('span').should($num => expect(+$num.html()).to.be.gt(0))

// 根据文本查找元素
cy.contains('New Post')

// 查找元素的下一个/上一个
// https://docs.cypress.io/api/commands/next.html#Usage
cy.get('nav a:first').next()

// 元素是否存在
cy.get('.popover').should('be.visible')

// 元素数量是否准确
// greaterThan(value)      gt,  expect(10).to.be.greaterThan(5)
// least(value)            gte  expect(10).to.be.at.least(10)
// lessThan(value)         lt,  expect(5).to.be.lessThan(10)
// most(value)             lte, expect('test').to.have.length.of.at.most(4)
// within(start, finish)      expect(7).to.be.within(5,10)
cy.get('.connectors-its-ul>li').its('length').should('be.gt', 2)
cy.get('.traversal-pagination').find('li').find('a').should('have.length', 7)



// 元素是否显示/隐藏
cy.get('#navbar').should('be.visible')
cy.get('#navbar').should('not.be.visible')
cy.get('ul li:first').should('have.class', 'active')

// 元素是否包含指定文本
cy.get('.assertion-table').find('td').first()
    .should('contain', 'Column content')
    .should('have.text', 'Column content')
    .should('have.html', 'Column content')
    .should('match', /column content/i)

// 元素是否具备某些样式/属性/类名
cy.get('.assertion-table')  
    .should('have.attr', 'data-test-id', 'test-example')
    .should('have.css', 'position', 'static')


// https://docs.cypress.io/api/commands/trigger.html#Mouse-Events
@@2、 鼠标操作 - 如点击、 滚动、 悬停
// 点击
cy.get('.btn').click()
cy.get('.hidden').click({ force: true })

// 滚动
cy.get('#target').scrollTo('bottom')
cy.get('#target').scrollTo(250, 250)
// 滚动到页面中间
cy.scrollTo('50`%', '50`%')

// 悬停
cy.get('.menu-item').trigger('mouseover')

@@3、 表单操作 - 输入/清空、 选择/取选/全选、 选项是否禁用、 聚焦/失焦、 提交、 拖动、 是否具备指定内容、 是否选中指定选项

// 输入/清空
cy.get('.action-email').type('fake@email.com').clear()

// 是否具备指定内容
cy.get('.action-email').should('have.value', 'fake@email.com')

// 选择
cy.get('.action-select').select('apples')
cy.get('.action-multiple-checkboxes [type="checkbox"]').check(['checkbox1', 'checkbox2'])
cy.get('.action-radios [type="radio"]').check('radio1')

// 取选
cy.get('.action-check [type="checkbox"]').uncheck(['checkbox1', 'checkbox3'])

// 全选
cy.get('.action-checkboxes [type="checkbox"]').not('[disabled]').check()
cy.get('.action-check [type="checkbox"]').uncheck()

// 是否选中指定选项
cy.get('.action-select').should('have.value', '--Select a fruit--')
cy.get('.action-radios [type="radio"]').should('be.checked')
cy.get('.action-multiple-checkboxes [type="checkbox"]').should('be.checked')
cy.get('.action-check [type="checkbox"]').uncheck().should('not.be.checked')

// 提交
cy.get('.action-form').submit()

// 拖动（slide）
cy.get('[data-cy=draggable]')
  .trigger('mousedown', { which: 1, pageX: 600, pageY: 100 })
  .trigger('mousemove', { which: 1, pageX: 600, pageY: 600 })
  .trigger('mouseup')

@@4、 数据判断 - cookie localStore

cy.getCookie('token').should('have.property', 'value', '123ABC')
cy.clearCookies()
cy.getCookies().should('be.empty')

cy.clearCookie('token')
cy.getCookie('token').should('be.null')

cy.get('.ls-btn').click().should(() => {
  expect(localStorage.getItem('prop1')).to.eq('red')
  expect(localStorage.getItem('prop2')).to.eq('blue')
  expect(localStorage.getItem('prop3')).to.eq('magenta')
})

cy.clearLocalStorage().should((ls) => {
  expect(ls.getItem('prop1')).to.be.null
  expect(ls.getItem('prop2')).to.be.null
  expect(ls.getItem('prop3')).to.be.null
})


@@4、 开发逻辑 - spy、 数组检测、 对象检测、 window/document 

// https://on.cypress.io/window
cy.window().should('have.property', '$map')
// https://on.cypress.io/document
cy.document().should('have.property', 'charset').and('eq', 'UTF-8')

// spy 间谍函数
const obj = {foo () {}, }
const spy = cy.spy(obj, 'foo').as('anyArgs')
obj.foo()
expect(spy).to.be.called

// 数组检测
cy.get('.assertions-p')
.find('p')
.should(($p) => {
  // https://on.cypress.io/$
  const texts = $p.map((i, el) => Cypress.$(el).text())

  // jquery map returns jquery object
  // and .get() convert this to simple array
  const paragraphs = texts.get()

  // array should have length of 3
  // use second argument to expect(...) to provide clear
  // message with each assertion
  expect(paragraphs, 'has 3 paragraphs').to.have.length(3)

  expect(paragraphs).to.deep.eq([
    'Some text from first p',
    'More text from second p',
    'And even more text from third p',
  ])
})

// 对象检测
const person = { name: 'Joe', age: 20, }
assert.isObject(person)

cy.wrap({ foo: 'bar' })
  .should('have.property', 'foo')
  .and('include', 'bar')

cy.readFile('test.json').then((json) => {
  expect(json).to.be.an('object')
  expect(users[0].name).to.exist
  expect(users[0].name).to.eq('Jane')
})

@@5、 辅助调试 - 截图、 打印

// https://on.cypress.io/screenshot
cy.screenshot('my-image')

// 打印到命令行
cy.log('Skipping test on CircleCI')

@@6、 测试配置 - 超时时间、 全局变量

// https://on.cypress.io/config
let myConfig = Cypress.config()
Cypress.config('pageLoadTimeout', 20000)  
Cypress.config('defaultCommandTimeout', 4000) 
Cypress.config('viewportHeight', 660) 
Cypress.config('viewportWidth', 1000) 



// https://on.cypress.io/environment-variables
// https://on.cypress.io/env
Cypress.env({
  host: 'veronica.dev.local',
  api_server: 'http://localhost:8888/v1/',
})

// useage
Cypress.env('api_server')

// 从配置文件中获取所有环境变量（cypress.json默认情况下）
{
  "env": {
    "foo": "bar",
    "baz": "quux"
  }
}

Cypress.env() // => {foo: "bar", baz: "quux"}
)
}

if (v == "Cypress-Viewport切换移动端") {
Var =
(

// 全局配置 cypress.json
{
    "viewportWidth": 4320,
    "viewportHeight": 1080
}

// 代码设置
context('Viewport', () => {
  beforeEach(() => {
    cy.visit('https://example.cypress.io/commands/viewport')
  })

  it('cy.viewport() - set the viewport size and dimension', () => {
    // https://on.cypress.io/viewport
    // The viewport will be reset back to the default dimensions
    // in between tests (the  default can be set in cypress.json)

    cy.viewport(320, 480)
    cy.viewport(2999, 2999)
    cy.viewport('macbook-15')
    cy.wait(200)
    cy.viewport('macbook-13')
    cy.wait(200)
    cy.viewport('macbook-11')
    cy.wait(200)
    cy.viewport('ipad-2')
    cy.wait(200)
    cy.viewport('ipad-mini')
    cy.wait(200)
    cy.viewport('iphone-6+')
    cy.wait(200)
    cy.viewport('iphone-6')
    cy.wait(200)
    cy.viewport('iphone-5')
    cy.wait(200)
    cy.viewport('iphone-4')
    cy.wait(200)
    cy.viewport('iphone-3')
    cy.wait(200)

    // 竖向
    cy.viewport('ipad-2', 'portrait')
    cy.wait(200)
    // 横向
    cy.viewport('iphone-4', 'landscape')
    cy.wait(200)
  })
})

)
}

if (v == "Cypress-invoke调用函数") {
Var =
(
https://docs.cypress.io/api/commands/invoke.html#Syntax

invoke 是一个理解上的重难点，但说白了其实就是调用函数。常用的两种如下：

// .invoke(functionName)： 调用 “jQuery” 的 show 方法
cy.get('.modal').invoke('show')            

// .invoke(functionName, args...)： 调用对象的方法
cy.wrap({ animate: fn }).invoke('animate') 
)
}

if (v == "Cypress-101") {
Var =
(
// cypress\integration\examples\actions.spec.js
// https://on.cypress.io/interacting-with-elements
context('Actions', () => {
  beforeEach(() => {
    cy.visit('https://example.cypress.io/commands/actions')
  })

  // https://on.cypress.io/interacting-with-elements
  it('.type() - type into a DOM element', () => {
    // https://on.cypress.io/type
    cy.get('.action-email').type('fake@email.com').should('have.value', 'fake@email.com')
  })
})
)
}

if (v == "Cypress-安装") {
Var =
(
### 管理员模式运行 cmd：
$ npm i cypress -g


cypress 的体积是 193M ，通过 npm 下载要等到后年马月，建议直接官方下载 zip 文件解压，并且加入到环境变量即可
https://docs.cypress.io/guides/getting-started/installing-cypress.html#Direct-download


### 启动 cypress 
$ cypress open


随便选择一个目录，如果检测不到 cypress.json 的话，会自动初始化一些入门示例（cypress\integration\examples），这些示例都适合仔细研读。
https://example.cypress.io/commands/actions


### 安装 Chromium 浏览器驱动
help => Download Chromium => 选择最新版本 => 选择 chrome-win.zip(Archive)

下载后，必须按照以下目录位置放置浏览器驱动 Chromium 才行
https://docs.cypress.io/guides/references/troubleshooting.html#Windows

- chrome  C:/Program Files (x86)/Google/Chrome/Application/chrome.exe
- chromium  C:/Program Files (x86)/Google/chrome-win32/chrome.exe
- chrome:canary %APPDATA%/../Local/Google/Chrome SxS/Application/chrome.exe
)
}

if (v == "实现登录注册jwt鉴权") {
Var =
(
// https://www.bilibili.com/video/BV1fp4y1D7Vb?p=4
const express = require('express')
const router = express.Router()
const models = require('../models')

const bcrypt = require('bcryptjs')
const jwt = require('jsonwebtoken')
const secret = 'fuckyou-dolores-voluptatem-quo'

// 注册
router.post('/reg', async (req, res, next) => {
  const { username, password } = req.body
  
  // 查找用户名是否存在
  const isFind = await models.User.findOne({ where: { username } })

  if (isFind) {
    return res.json({ msg: '用户名已存在' })  
  }

  // 创建用户
  const user = await models.User.create({ username, password: bcrypt.hashSync(password, 5) })

  res.json({ msg: '创建成功', id: user.id })
})

router.post('/login', async (req, res, next) => {
  const { username, password } = req.body
  // 查找用户名是否存在
  const user = await models.User.findOne({ where: { username } })

  if (!user) {
    return res.json({ msg: '用户名或密码错误' })  
  }

  // 密码校验
  const passwordValid = bcrypt.compareSync(password, user.dataValues.password)

  // 密码错误
  if (!passwordValid) {
    return res.json({ msg: '用户名或密码错误' })  
  }

  const token = jwt.sign({ username }, secret)

  res.json({ token })
})

router.post('/auth', async (req, res, next) => {
  // { Authorization: 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IjkyODUzMjc1NkAzNjAuY29tIiwiaWF0IjoxNjAyMzgzNDQ0fQ.DBgwdgP18dTYUenVpiXtSHd7cUkDHASMcbwqRxDow30' }
  const token = String(req.headers.authorization).split(' ').pop()

  // 取出加密内容
  jwt.verify(token, secret, async (err, decode) => {
    if (err) {
      return res.json({ msg: '非法请求!' })
    }

    const { username } = decode

    // 查找用户名是否存在
    const user = await models.User.findOne({ where: { username } })

    if (!user) {
      return res.json({ msg: '非法请求!' })
    }

    res.json({ msg: 'ok' })
  })
})


module.exports = router

)
}

if (v == "sequelize-模型关联查询") {
Var =
(

### 模型关联

```javascript
$ sequelize model:generate --name Comment --attributes articleId:integer,content:text

$ sequelize db:migrate

$ sequelize seed:generate --name comment

```

找到并修改 seeders/comment.js 文件

```javascript
'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('comments', [
      { createdAt: new Date(), updatedAt: new Date(), articleId: '20', content: 'Qui nesciunt veniam blanditiis quia. Est facilis voluptas voluptas odit qui ad debitis. Et rerum distinctio quas voluptatum debitis aut ut aliquam.' },
      { createdAt: new Date(), updatedAt: new Date(), articleId: '18', content: 'Et enim eligendi ut ut nulla itaque voluptatem. Nisi architecto reprehenderit earum consequatur.' },
      { createdAt: new Date(), updatedAt: new Date(), articleId: '15', content: 'Amet aut sed voluptatem sit perferendis numquam ut ut. Odio dolores ut esse accusantium enim consequatur et dolorem voluptas. Omnis aut distinctio. Numquam incidunt alias recusandae aliquid atque. Ex voluptatem dolores et rem.' },
    ], {});
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('comments', null, {});
  }
};
```

### 发送指定的种子数据

如果不指定的话，会将所有种子文件重新执行一遍，这样就会出现重复的数据了。甚至有可能因此报错。

```javascript
$ sequelize db:seed --seed 20201010100330-comment.js
```

### 修改 models/article.js

```javascript
const { Model } = require('sequelize')

module.exports = (sequelize, DataTypes) => {
  class Article extends Model {
    static associate(models) {
      // 一篇文章有很多的评论
      models.Article.hasMany(models.Comment)
    }
  }

  Article.init({ title: DataTypes.STRING, content: DataTypes.TEXT }, { sequelize, modelName: 'Article', })

return Article
}
```

### 修改 comment.js

```javascript
const { Model } = require('sequelize')

module.exports = (sequelize, DataTypes) => {
  class Comment extends Model {

    static associate(models) {
      // 每一个评论都属于一篇文章
      models.Comment.belongsTo(models.Article)    
    }
  }

  Comment.init({ articleId: DataTypes.INTEGER, content: DataTypes.TEXT }, { sequelize, modelName: 'Comment', })

  return Comment
}
```

### 修改接口 routes/index.js

```javascript
router.get('/:id', async (req, res, next) => {
  try {
    const id = req.params.id

    // const articles = await models.Article.findByPk(id)

    // http://localhost:3000/20
    const articles = await models.Article.findOne({ where: { id }, include: [models.Comment] })

    res.json({ articles })
  } catch (err) {
    next(err)
  }
})
```
)
}

if (v == "express-101") {
Var =
(
### 安装全局依赖

记得用 cmd 管理员运行安装

```
$ cnpm i express-generator -g && express -h
```

### 初始化 express

```javascript
$ express --view=ejs myapp
$ cd myapp & cnpm i
$ npm start
```

访问地址：http://localhost:3000/
)
}

if (v == "sequelize-101") {
Var =
(
https://www.bilibili.com/video/BV1Zt411J7va?p=9

### 安装全局依赖

记得用 cmd 管理员运行安装

```
$ cnpm i mysql2 -g
$ cnpm i sequelize-cli -g
$ cnpm i express-generator -g && express -h
```

### 安装项目依赖

```javascript
$ cnpm i sequelize mysql2 -S
```

### 初始化 express

```javascript
$ express --view=ejs myapp
$ cd myapp & cnpm i
$ npm start
```

访问地址：http://localhost:3000/

### 初始化 sequelize 

```javascript
$ sequelize init
```
### 配置 config.json

```javascript
{
  "development": { "username": "root", "password": "root", "database": "blogs", "host": "127.0.0.1", "dialect": "mysql" },
  "test": { "username": "root", "password": "root", "database": "blogs", "host": "127.0.0.1", "dialect": "mysql" },
  "production": { "username": "root", "password": "root", "database": "blogs", "host": "127.0.0.1", "dialect": "mysql" }
}
```

### @@第一步：新建模型

```javascript
$ sequelize model:generate --name Article --attributes title:string,content:text
```

检查 migrations 生成的迁移文件

### @@第二步：迁移数据库

```javascript
$ sequelize db:migrate
```

### @@第三步：生成种子文件

```javascript
$ sequelize seed:generate --name article
```

检查 seeders 文件夹，准备种子数据

```javascript
'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('Articles', [
      { createdAt: new Date(), updatedAt: new Date(), title: 'dolores sequi omnis', content: 'Veniam aut rem iure dicta vel modi.' },
      { createdAt: new Date(), updatedAt: new Date(), title: 'sint aliquid minus', content: 'Dolore et architecto quia nesciunt omnis pariatur vel.' },
      { createdAt: new Date(), updatedAt: new Date(), title: 'quae ex et', content: 'Quod dolores doloribus fugit magni rem.' },
      { createdAt: new Date(), updatedAt: new Date(), title: 'non quasi nihil', content: 'Ratione adipisci velit.' },
      { createdAt: new Date(), updatedAt: new Date(), title: 'rerum perspiciatis magni', content: 'In facilis dolor voluptatem hic repellendus sit est quia ullam.' },
      { createdAt: new Date(), updatedAt: new Date(), title: 'eum cumque cumque', content: 'Provident quibusdam quo dicta.' },
    ], {});
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('Articles', null, {});
  }
};

```

### @@第四步：发送种子数据

```javascript
$ sequelize db:seed:all
```

### @@第五步：增删改查

/routes/index.js

```javascript
const express = require('express')
const router = express.Router()
const models = require('../models')
const Op = models.Sequelize.Op

router.get('/', async (req, res, next) => {
  try {
    const where = {}
    // 按照标题搜索 - http://localhost:3000?title=magnam
    const title = req.query.title

    if (title) {
      // 模糊搜索 like
      where.title = { [Op.like]: '`%' + title + '`%' }
    }

    const articles = await models.Article.findAll({ where, order: [['id', 'DESC']] })
    res.json({ articles })
  } catch (err) {
    next(err)
  }
})

router.get('/:id', async (req, res, next) => {
  try {
    const id = req.params.id
    const articles = await models.Article.findByPk(id)
    res.json({ articles })
  } catch (err) {
    next(err)
  }
})


router.post('/', async (req, res, next) => {
  try {
    // { title: 'consectetur saepe velit', content: 'Qui consequatur eligendi voluptatem similique. Odit nulla optio saepe voluptate fugiat aut temporibus nihil sunt. Est architecto et est hic.' }
    const articles = await models.Article.create(req.body)
    res.json({ articles })
  } catch (err) {
    next(err)
  }
})

router.put('/:id', async (req, res, next) => {
  try {
    const id = req.params.id
    const article = await models.Article.findByPk(id)
    const new_article = await article.update(req.body)
    res.json({ article: new_article })
  } catch (err) {
    next(err)
  }
})

router.delete('/:id', async (req, res, next) => {
  try {
    const id = req.params.id
    const article = await models.Article.findByPk(id)
    await article.destroy()
    res.json({ msg: '删除成功' })
  } catch (err) {
    next(err)
  }
})

module.exports = router
```
)
}

if (v == "mongoose-101") {
Var =
(
// https://mongoosejs.com/docs/api.html#model_Model.remove
const mongoose = require('mongoose')

// mongodb: //127.0.0.1:27017/eggcms
const uri = 'mongodb+srv://lee:202063sb@cluster0.dqy2h.azure.mongodb.net/test?retryWrites=true&w=majority'

mongoose.connect(uri, { useNewUrlParser: true, useUnifiedTopology: true, }, err => {
    if (err) {
        console.log('> error occurred from the database')
    } else {
        console.log('> successfully opened the database')
    }
})

// @fake.md
// 操作 users 表（集合），Schame 里面的对象和数据库里面的字段要对应
const usersSchame = mongoose.Schema({
    name: String,
    age: Number,
    status: Number,
})

// 模型映射 「users」 表这个集合（注意映射是复数形式，而且必须是首字母大写），可以通过第三个参数强指定
const User = mongoose.model('User', usersSchame, 'users')

;(async () => {
    // @@新增
    const u = new User({ name: 'Audra', age: 18, status: 0 })
    u.save()

    // @@更新
    await User.updateOne({ name: 'Audra' }, { status: 1 })

    // @@查找
    const userLists = await User.find({})
    console.log(userLists)

    // @@删除
    // （deleteMany/deleteOne）
    const res = await User.deleteMany({ name: 'Audra' })
    console.log('删除行数', res.deletedCount)

    // 结束进程
    process.exit(0)
})();

// 模块化的话，就将其导出
module.exports = User
)
}


if (v == "备份与恢复") {
Var =
(
@@mongodump备份
// 创建一个文件夹
$ mkdir dbbak && cd dbbak

// 备份到该文件夹
$ mongodump -d myBlogs

@@mongorestore恢复
// 删除所有文章
db.posts.remove({})

// 恢复(先删除所有数据，然后再恢复)
mongorestore --drop
)
}
     

if (v == "使用索引") {
Var = 
(
@@查看索引
默认 mongodb 的索引就是 _id
db.posts.getIndexes()

@@新建索引（uniqie）
db.posts.createIndexes({ title: 1 }, { unique: true })

@@删除索引
db.posts.createIndexes({ title: 1 })
)
}

if (v == "玩转几个特殊函数") {
Var =
(
@@$inc - 递增
db.posts.update({ title: "怪物猎人世界评测" }, { $inc: { rank: 1 } })

@@$mul - 相乘
db.posts.update({ title: "怪物猎人世界评测" }, { $mul: { rank: 2 } })

@@$rename - 改名
db.posts.update({ title: "怪物猎人世界评测" }, { $rename: { "rank": "score" } })

@@$set - 新增or修改
db.posts.update({ title: "怪物猎人世界评测" }, { $set: { "isHot": true } })

@@$unset - 字段删除
db.posts.update({ title: "怪物猎人世界评测" }, { $unset: { "isHot": true } })
)
}

if (v == "dbs-数据库相关") {
Var = 
(
@@显示所有集合
show collections

@@创建集合
db.createCollection("posts")
db.createCollection("tags")

@@重命名集合
db.users.renameCollection("staff")

@@删除集合
db.users.drop()
)
}

if (v == "collections-集合相关") {
Var = 
(
@@显示所有集合
show collections

@@创建集合 - createCollection
db.createCollection("posts")
db.createCollection("tags")

@@重命名集合 - renameCollection
db.users.renameCollection("staff")

@@删除集合 - drop
db.users.drop()
)
}

if (v == "document-文档相关") {
Var = 
(
@@插入文档 - insert
db.posts.insert({
  title: 'hello world',
  content: 'Lorem ipsum dolor sit amet'
})

@@查找文档 - find/findOne
db.posts.find()
db.posts.findOne({ "title": "怪物猎人世界评测" })

db.posts.find({ "rank": { $gte: 4 } })
db.posts.find({ "rank": { $gt:  4 } })
db.posts.find({ "rank": { $lte: 4 } })
db.posts.find({ "rank": { $lt:  4 } })

// 文章标题中带 fuck 的文档
db.posts.find({ "title": /fuck/ })
// 文章标题以shit开头的文档
db.posts.find({ "title": /^shit/ })

// （分组）以 tag 字段为分类，查看文章有几种分类
db.posts.distinct("tag")

@@复杂查找文档 - find
db.posts.find({ 
  $or: [
    { "title": /hello/ },
    { "rank": { $gte: 4 } }
  ]
})

db.posts.find({ "rank": { $in: [3, 4] } })
db.posts.find({ "isHot": { $exists: true } })

@@查找指定字段 - find
// 抽出 title 和 rank, 不显示默认的 _id
db.posts.find({}, { title: true, rank: 1, _id: 0 })

@@文档方法-sork()/limit()/skip()
// 升序
db.posts.find({}).sort({ rank: 1 })
// 降序
db.posts.find({}).sort({ rank: -1 })
// limit
db.posts.find({}).limit(3)
db.posts.find({}).sort({ rank: -1 }).limit(3)
db.posts.find({}).skip(3).limit(3)


@@查找总数 - count
db.posts.count()

@@文档更新 - update

基本语法：update(<filter>, <update>, <options>)

// 更新一条（必须加入 $set）
db.posts.update({ "title": "hello world" }, { $set: { "rank": 10 } })

// 更新多条
db.posts.update({ "tag": "game" }, { $set: { "rank": 50 } }, { multi: true })

// 有则更新，没有则添加
db.posts.update({ title: "怪物图鉴" }, { title: "怪物猎人世界图鉴", "rank": 5 }, { upsert: true })

@@删除文档 - remove
db.posts.remove({})
)
}



if (v == "mongodb-101") {
Var = 
(
const { connect } = require('mongodb')

const MongoClient = require('mongodb').MongoClient
const uri = 'mongodb+srv://lee:202063sb@cluster0.dqy2h.azure.mongodb.net/<dbname>?retryWrites=true&w=majority'
const client = new MongoClient(uri, { useNewUrlParser: true })
client.connect((err) => {
    if (!err) {
        console.log('连接成功')
    }

    const collection = client.db('test').collection('devices')

    collection.insertOne({ devId: 1, 'name': 'hello world', time: '2020-10-01' }, function (err) {
        if (!err) {
            console.log('插入成功')
        }
    })

  client.close()
})
)
}

if (v == "Vue+jest环境安装") {
Var =
(
（强烈推荐）官方推荐的安装方式，支持 Vue3，一步到位。
$ vue add unit-jest

但要注意2点：
1）官方使用的是npm 安装，如果你没有 fq 工具，请提前设置好镜像源。
npm set registry https://registry.npm.taobao.org/

2）自动会加入一个 /tests/ 测试用例，它会测试 @/components/HelloWorld.vue，如果不存在或者使用的不是官方脚手架生成的默认组件，很可能测试不通过哦。所以建议直接删除。

3)  默认会加入 "test:unit": "vue-cli-service test:unit"。建议加入一个新的 --watch 进入监听模式
"test:watch": "vue-cli-service test:unit --watchAll"

@@101
// components/__tests__/Item.spec.js
import { shallowMount } from '@vue/test-utils'
import Item from "../Item.vue"

beforeEach(() => {
    
})

describe('Item.vue', () => {
    test('base test', () => {
        const wrapper = shallowMount(Item)
        expect(wrapper.text()).toContain('Item')
    })
})
)
}

if (v == "纯jest安装") {
Var =
(
@@安装 jest 测试库
必须安装 babel-core@^7.0.0-bridge.0 版本，否则后果自负。
$ cnpm i jest babel-jest vue-jest -D
$ cnpm i babel-core@^7.0.0-bridge.0 @babel/core @babel/preset-env -D


@@新建 .babelrc
{
    "presets": ["@babel/preset-env"]
}


@@配置 package.json 的 jest
"scripts": {
  "serve": "vue-cli-service serve",
  "dev": "vue-cli-service serve",
  "build": "vue-cli-service build",
  "lint": "vue-cli-service lint",
  "test": "jest --no-cahce",
  "test:watch": "jest --watchAll",
  "test:debug": "node --inspect-brk ./node_modules/jest/bin/jest.js --no-cahce --runInBand"
},
"jest": {
  "transform": {
    "^.+\\.js$": "babel-jest",
    "^.+\\.vue$": "vue-jest"
  },
  "moduleNameMapper": {
    "@/(.*)$": "<rootDir>/src/$1"
  },
  "moduleFileExtensions": ["vue", "js", "json", "jsx", "ts", "tsx"],
  "modulePathIgnorePatterns": [
    ".dev_null"
  ],
  "testMatch": ["<rootDir>/**/*.spec.js"]
},

其中的 "testMatch": ["<rootDir>/**/*.spec.js"] 你可以考虑去掉，默认就会。

@@运行测试： 
$ npm t
)
}

if (v == "jest语法") {
Var =
(
// @@基础用例
describe('My work', () => {
  test('works', () => {
    expect(2).toEqual(2)
  })
})

// @@Basic expectations
expect(value)
  .not
  .toBe(value)
  .toEqual(value)
  .toBeTruthy()

// @@Booleans
expect(value)
  .toBeFalsy()
  .toBeNull()
  .toBeTruthy()
  .toBeUndefined()
  .toBeDefined()

// @@object
expect(value)
  .toBeInstanceOf(Class)
  .toMatchObject(object)
  .toHaveProperty(keyPath, value)

expect(value)
  .toContain(item)
  .toContainEqual(item)
  .toHaveLength(number)

// @@number 
 expect(value)
  .toBeCloseTo(number, numDigits)
  .toBeGreaterThan(number)
  .toBeGreaterThanOrEqual(number)
  .toBeLessThan(number)
  .toBeLessThanOrEqual(number)

// @@regex
expect(value)
  .toMatch(regexpOrString)

// @@beforeEach/afterEach
beforeEach(() => { ... })
afterEach(() => { ... })
beforeAll(() => { ... })
afterAll(() => { ... })
)
}


if (v == "基本语法") {
Var = 
(
// src/components/__tests__/Item.spec.js
import { shallowMount } from '@vue/test-utils'
import Item from '../Item.vue'

beforeEach(() => {
  jest.useFakeTimers()
})

test('base test', () => {
    const item = { url: 'http://www.baidu.com', title: 'baidu' }

    const wrapper = shallowMount(Item, {
        propsData: { item }
    })

    // @@ find()
    const a = wrapper.find('a')

    // @@ text()
    expect(a.text()).toContain(item.title)

    // @@ attributes()
    expect(a.attributes().href).toBe(item.url)

    // @@ props()
    expect(wrapper.props().item.url).toBe(item.url)

    // @@ classes()
    expect(wrapper.classes()).toContain('Item')

    // @@ element.style（必须是内敛样式而不是 css）
    expect(wrapper.element.style.width).toBe('100`%')

    // @@ not
    expect(wrapper.classes()).not.toContain('hide')

    // @@ 结合 jest.useFakeTimers() 推进 timer
    jest.runTimersToTime(1000)

    // @@ 测试 @onClick 与 this.$emit('onClick')
    expect(wrapper.emitted('onClick')).toHaveLength(1)
})

// @@ findAllComponents(Item)
test('base test', () => {
    const items = [{}, {}, {}]

    const wrapper = shallowMount(Items, {
        props: { items }
    })

    // or: expect(wrapper.findAllComponents(Item)).toHaveLength(items.length)
    expect(wrapper.findAllComponents(Item).length).toBe(items.length)
})
)
}

if (v == "间谍函数") {
Var = 
(
describe('Item.vue', () => {
    test('base test', () => {
        const item = { url: 'http://www.baidu.com', title: 'baidu' }

        // 间谍函数
        const $bar = { start: jest.fn() }

        const wrapper = shallowMount(Item, {
            propsData: { item },
            // 通过 mocks 定义组件的上下文，通常是 $route、 $store 这些重要的内容
            mocks: { $bar }
        })

        // trigger 触发 DOM 事件
        wrapper.find('a').trigger('click')

        // toHaveBeenCalledTimes(n) / toHaveBeenCalled()
        expect($bar.start).toHaveBeenCalledTimes(1)
    })
})
)
}

if (v == "mock依赖") {
Var = 
(
// https://vue-test-utils.vuejs.org/zh/api/wrapper/#contains
// https://jestjs.io/docs/en/expect
import flushPromises from "flush-promises"
import { shallowMount } from '@vue/test-utils'
import Items from "../Items.vue"
import Item from "../Item.vue"
import { fetchData } from "@/apis/apis"

// src/apis/__mocks__/apis.js
jest.mock('@/apis/apis.js')

describe('Items.vue', () => {
    test('base test', async () => {
        const items = [{}, {}, {}]
        // mock
        fetchData.mockResolvedValueOnce(items)

        const wrapper = shallowMount(Items)
        await flushPromises()

        const lists = wrapper.findAllComponents(Item)
        expect(lists).toHaveLength(items.length)
    })
})
)
}

if (v == "测试vuex") {
Var = 
(
import Vuex from "vuex"
import { createLocalVue, shallowMount } from '@vue/test-utils'
import Item from "../Item.vue";

const localVue = createLocalVue()
localVue.use(Vuex)

describe('Item.vue', () => {
    let store;

    beforeEach(() => {
        store = new Vuex.Store()
        store.dispatch = jest.fn()
    })

    afterEach(() => {
        store = null
    })

    test('base test', () => {
        const item = { url: 'http://www.baidu.com', title: 'baidu' }

        const wrapper = shallowMount(Item, {
            store,
            localVue,
            propsData: { item }
        })

        wrapper.find('a').trigger('click')

        // ...mapActions(['addPost'])
        // this.addPost(item)
        expect(store.dispatch).toHaveBeenCalledWith('addPost', item)
    })
})
)
}


if (v == "Array的变化侦测") {
Var =
(
@数组侦测的原理：拦截器
const arrayPrototype = Array.prototype

// copy 一份数组原型出来进行改造
// 稍后所有的 vm 的数组原型 __prop__ 都必须使用这个原型
const ARRAY_PROTOTYPE = Object.create(arrayPrototype)

;['push', 'pop', 'shift', 'unshift', 'splice', 'sort', 'reverse'].forEach(method => {
  // 保存原始纯洁方法
  const originalMethod = arrayPrototype[method]

  // 监听数组方法
  Object.defineProperty(ARRAY_PROTOTYPE, method, {
    enumerable: true,
    writable: true,
    configurable: true,
    value: function (...args) {
      console.log('拦截！', ...args)
      return originalMethod.apply(this, args)
    }
	})
})


//////////////////////////////////////////////
// usage
//////////////////////////////////////////////
const data = []

// 绝大部分的浏览器都支持。 但并不是完美的解决方案。 所以后续要改造。但原理不变。
data.__proto__ = ARRAY_PROTOTYPE

data.push(1) // => 拦截！


@拦截器兼容性：暴力注入
const arrayPrototype = Array.prototype

// copy 一份数组原型出来进行改造
// 稍后所有的 vm 的数组原型 __prop__ 都必须使用这个原型
const ARRAY_PROTOTYPE = Object.create(arrayPrototype)

// 只需要定制七大方法即可
;['push', 'pop', 'shift', 'unshift', 'splice', 'sort', 'reverse'].forEach(method => {
  // 保存原始纯洁方法
  const originalMethod = arrayPrototype[method]

  // 监听数组方法
  Object.defineProperty(ARRAY_PROTOTYPE, method, {
    enumerable: true,
    writable: true,
    configurable: true,
    value: function (...args) {
      console.log('拦截！', ...args)
      return originalMethod.apply(this, args)
    }
  })
})

function def (obj, key, val, enumerable) {
  Object.defineProperty(obj, key, {
    value: val,
    enumerable: !!enumerable,
    writable: true,
    configurable: true
  })
}

//////////////////////////////////////////////
// usage
//////////////////////////////////////////////
// 绝大部分的浏览器都支持。 但并不是完美的解决方案。 所以后续要改造。但原理不变。
if ('__proto__' in Object) {
  data.__proto__ = ARRAY_PROTOTYPE
} else {
  // 获取七大方法
  const methods = Object.getownPropertyNames(ARRAY_PROTOTYPE)

  // 循环将七大方法打入体内
  for (let i = 0, len = methods.length; i < len; i++) {
     // 方法名
     const method = methods[i]
     // 注入灵魂
     def(data, method, ARRAY_PROTOTYPE[method])
  }
}

data.push(1) // => 拦截！
})
)
}

if (v == "Object的变化侦测") {
Var =
(
@如何侦测一个对象的变化？ 
到目前为止 Vue.js 还是使用 object.defineProperty 来实现的，但 object.defineProperty 有很多缺陷，所以尤雨溪说日后会使用 Proxy 来重写部分代码。

function defineReactive(obj, key, val) {
  Object.defineProperty(obj, key, {
    enumerable: true,
    configurable: true,
    get () {
      console.log('get hook')
      return val
    },
    set (newVal) {
      console.log('set hook')
      if (val === newVal) {
        return
      }
      val = newVal
    }
  })
}

//////////////////////////////////////////////
// usage
//////////////////////////////////////////////
var obj = {}

// 初始化对象的 foo 属性
defineReactive(obj, 'foo', 123)

// 访问对象的foo属性，触发 get 钩子
console.log(obj.foo)

// 设置 foo 属性，触发 set 钩子
obj.foo = '456'


//////////////////////////////////////////////
// 注意，js 无法监听对象属性的添加和删除
//////////////////////////////////////////////

defineReactive(obj, 'list', [1,2,3])

obj.list[0] = 'fuck' // 不会触发set hook，但居然还额外触发了 get hook。

obj.list = 123 // 触发 set hook

@依赖收集：什么是依赖？为什么要收集？
❓ 什么是依赖?

依赖就是使用『状态』的地方，比如：
<template>
    <h1> {{ name }} </h1>
</template>

如果还不明白，你就想想：当状态发生变化时，哪些逻辑、哪些UI、哪些代码应该发生变化。这些地方就是依赖。

这些地方可能有很多处，而且场景可能不一样。 或许是模板、或许是watch。所以我们会用一个『数组』把它们统一收集起来。当状态变化时，统一通知。

❓ 为什么要收集？

当『状态』更新的时候，我需要通知它们。就类似 『订阅-通知模式』，所谓的依赖，可以理解为一个回调函数。
通知的过程，其实就是调用回调函数的过程。并且注入最新的值。是不是让你想起 Vue.$watch API？

记住一句话：『在 getter 中收集依赖，在 setter 中触发依赖。』

@在getter收集依赖，在setter触发依赖
// 模拟依赖回调
window.__FUCK__ = (newV, oldV) => {
  console.log('fuckyou', newV, oldV)
}

function defineReactive(obj, key, val) {
  // 依赖集合，存储着所有的回调函数。当内容变化的时候，我就会去通知里面的回调函数。
  let dep = []

  Object.defineProperty(obj, key, {
    enumerable: true,
    configurable: true,
    get () {
      // 所谓的依赖，就是回调，这里用 window.__FUCK__ 来假装依赖吧
      dep.push(window.__FUCK__)

      return val
    },
    set (newVal) {
      if (val === newVal) {
        return
      }

      // 通知变化，并且注入新旧数据
      dep.forEach(fn => fn(newVal, val))

      val = newVal
    }
  })
}

//////////////////////////////////////////////
// usage
//////////////////////////////////////////////

var data = {}

// 初始化对象的 foo 属性
defineReactive(data, 'name', 'Lee')

// 先访问一下属性，触发 get 钩子，然后假装依赖被收集了
console.log('为了触发get钩子，然后用 window.__FUCK__ 模拟依赖回调, 被收集了', data.name)

// 更新状态
data.name = 'JOJO'

// 触发依赖回调 window.__FUCK__
// => fuckyou JOJO Lee

@精益求精；封装 Dep 类
其实 dep 的相关的代码内容就和『通知者模式』一模一样。 而且关系重大、我们完全有理由单独对它进行封装。

class Dep {
  constructor() {
    this.dep = []
  }

  add (fn) {
    this.dep.push(fn)
  }

  del(fn) {
   // 如果依赖中包含这个回调
   if (this.dep.includes(fn))  
     // 那么删除它
     this.dep.splice(this.dep.indexOf(fn), 1)
  }

  emit(newV, oldV) {
    this.dep.forEach(fn => fn(newV, oldV))
  }
}

window.__FUCK__ = (newV, oldV) => {
  console.log('fuckyou', newV, oldV)
}

function defineReactive(obj, key, val) {
  let dep = new Dep()

  Object.defineProperty(obj, key, {
    enumerable: true,
    configurable: true,
    get () {
      // 这里用 window.__FUCK__ 来假装依赖吧
      dep.add(window.__FUCK__)
      return val
    },
    set (newVal) {
      if (val === newVal) {
        return
      }
	  
      // 通知变化，并且注入新旧数据
      dep.emit(newVal, val)
	  
      val = newVal
    }
  })
}


//////////////////////////////////////////////
// usage
//////////////////////////////////////////////

var data = {}

// 初始化对象的 foo 属性
defineReactive(data, 'name', 'Lee')

// 先访问一下属性，触发 get 钩子，然后假装依赖被收集了
console.log('为了触发get钩子，然后用 window.__FUCK__ 模拟依赖回调, 被收集了', data.name)

// 更新状态
data.name = 'JOJO'
// 触发依赖回调 window.__FUCK__
// => fuckyou JOJO Lee

@Observer: 用递归深度侦测所有的 key
之前我们的 defineReactive，每次只能监听一个，但如果值是一个对象。譬如： 

defineReactive(data, 'name', { a: { b: { c: { d: 'fuckyou' } } } })

当 data.name.a 发生变化的时候，实际上是无法触发 set 钩子的。

解决方案也很简单，值也是一个对象，就一个一个深入去加入到 defineReactive 即可，依次加入 a.b.c.d 到 defineReactive 中。

为了解决这个，我们加入了 Observer 类，专门用来处理这种情况（暂时只处理对象，数组处理后续再说）


class Observer {
  constructor(value) {
    this.value = value

    // 目前只支持对象，不支持数组
    if (!Array.isArray(value)) {
      this.walk(value)
    }
  }

  walk(obj) {
    const keys = Object.keys(obj)
    for (let i = 0, len = keys.length; i < len; i++) {
      const key = keys[i]
      const val = obj[keys[i]]
      defineReactive(obj, key, val)
    }
  } 
}

class Dep {
  constructor() {
    this.dep = []
  }

  add(fn) {
    this.dep.push(fn)
  }

  del(fn) {
   // 如果依赖中包含这个回调
   if (this.dep.includes(fn))
     // 那么删除它
     this.dep.splice(this.dep.indexOf(fn), 1)
  }

  emit(newV, oldV) {
    this.dep.forEach(fn => fn(newV, oldV))
  }
}

function defineReactive(obj, key, val) {
  if (typeof val === 'object') {
    new Observer(val)
  }

  let dep = new Dep()

  Object.defineProperty(obj, key, {
    enumerable: true,
    configurable: true,
    get () {
      // 这里用 window.__FUCK__ 来假装依赖吧
      dep.add(window.__FUCK__)
      return val
    },
    set (newVal) {
      if (val === newVal) {
        return
      }

      // 通知变化，并且注入新旧数据
      dep.emit(newVal, val)

      val = newVal
    }
  })
}

window.__FUCK__ = (newV, oldV) => {
  console.log('fuckyou', newV, oldV)
}


//////////////////////////////////////////////
// usage
//////////////////////////////////////////////

var data = {}

// 初始化对象的 foo 属性
defineReactive(data, 'name', { a: { b: { c: { d: 'fuckyou' } } } })

// 必须先触发 get 钩子，这一步是为了将依赖回调 __FUCK__ 加入到 Dep 中
console.log('先读取一下，触发get钩子', data.name.a.b.c.d)

// 触发 set 钩子，触发 __FUCK__
data.name.a.b.c.d = '321'

@什么是watcher？  —— 信使中介
当状态发生变化时，哪些逻辑、哪些UI、哪些代码应该发生变化。这些地方就是依赖。
这些地方可能有很多处，而且场景可能不一样。 或许是模板、或许是watch。所以我们会用一个『数组』把它们统一收集起来。当状态变化时，统一通知。

现在我们加入一个新角色： watcher，它是一个中介，一个信使。
我们的通知的时候，只需要通知它即可，然后再由它去通知各个地方。 这样就把责任分割分割出来了。
Dep 类只负责收集依赖和推送消息，数据变化时先推送给 Watcher 类，然后 Watcher 类再分配给不同地方不同种类的依赖中。

//////////////////////////////////////////////
// say something...
//////////////////////////////////////////////
class Watcher {
    // 这里所谓的 vm，其实就是被 Object.defineProperty 包装过的对象罢了。
    // 其实叫做 obj 更好，但为了更加有逼格的模仿，还是叫 vm 帅气一点。
    // 这里的 path，其实就是『属性路径』，譬如: 'a.b.c.d'，也就是 data.a.b.c
    constructor(vm, str_path, cb) {
        // 我们一直用 __FUCK__ 模拟依赖回调。 Dep 收集的依赖依然是 __FUCK__ ，而我此时替换成 this。
        // 也就是说，它下一个收集的依赖，将会是『当前的 Watcher 实例』。这就是我们的根本目的。
        window.__FUCK__ = this

        // 访问 data.a.b.c.d，就会触发 get 钩子。 会将 __FUCK__ 加入到Dep中, 目的是将『自己』加入到 Dep 中。
        this.trigger_getter(vm, str_path)

        // 在触发完 get 钩子以后，__FUCK__已经被加入到 Dep 中了，这时候就重置吧。
        window.__FUCK__ = undefined

        // 数据变化时会执行的回调函数
        this.cb = cb
    }

    // str_path，其实就是『属性路径』，譬如: 'a.b.c.d'，也就是 data.a.b.c
    // 这里必须使用普通函数，如果使用箭头函数是没有this的。我使用普通函数是因为待会要用.bind注入this上下文
    trigger_getter (obj, str_path) {
        // 分割路径
        const ary_path = str_path.split('.')

        // 像洋葱一样一层一层的深入
        for (let i = 0, len = ary_path.length; i < len; i++) {
            // 获取当前路径
            const cur = ary_path[i]
            // 获取当前路径的引用
            obj = obj[cur]
        }

        return obj
    }

    // 这个 update 就是 watcher 的价值所在。
    // 当数据变化的时候，会调用 update 方法，然后它负责给所有依赖 data.b.c.d 的地方进行更新。
    update(newV, oldV) {
        this.cb(newV, oldV)
    }
}



class Dep {
    constructor() {
        this.dep = []
    }

    add(watcher) {
        this.dep.push(watcher)
    }

    del(watcher) {
        // 如果依赖中包含这个回调
        if (this.dep.includes(watcher)) {
            // 那么删除它
            this.dep.splice(this.dep.indexOf(watcher), 1)
        }
    }

    emit(newV, oldV) {
        // 触发 watcher.update 方法
        this.dep.forEach(watcher => watcher.update(newV, oldV))
    }
}

class Observer {
  constructor(value) {
    this.value = value

    // 目前只支持对象，不支持数组
    if (!Array.isArray(value)) {
      this.walk(value)
    }
  }

  walk(obj) {
    const keys = Object.keys(obj)
    for (let i = 0, len = keys.length; i < len; i++) {
      const key = keys[i]
      const val = obj[keys[i]]
      defineReactive(obj, key, val)
    }
  } 
}

function defineReactive(obj, key, val) {
  if (typeof val === 'object') {
    new Observer(val)
  }

  let dep = new Dep()

  Object.defineProperty(obj, key, {
    enumerable: true,
    configurable: true,
    get () {
      // 这里用 window.__FUCK__ 来假装依赖吧
      dep.add(window.__FUCK__)
      return val
    },
    set (newVal) {
      if (val === newVal) {
        return
      }

      // 通知变化，并且注入新旧数据
      dep.emit(newVal, val)

      val = newVal
    }
  })
}

//////////////////////////////////////////////
// usage
//////////////////////////////////////////////
let data = {}

// 将 data 初始化为 vm 
defineReactive(data, 'a', { b: { c: { d: 'fuckyou' } } })

// 开始监听
var w = new Watcher(data, 'a.b.c.d', (...args) => {
    console.log(123, ...args)
})

// 触发 set 钩子
data.a.b.c.d = '321'
)
}


if (v == "想少干活就要多思考") {
Var = 
(
不要用战术上的勤奋掩盖战略上的懒惰。

不做思考者，就要做执行者。

看能力如何，本质就是看这个人做的事情的结果如何？

一年365天，如果每天都是重复做一件事情。

不去思考如何做好，过365天和过一天有什么本质区别。

每天工作结束后，多问自己几个问题。

今天做了些什么事，哪些事是最有价值的。

有没有更好的解决方法，怎样才能做得更好。

这些事情是不是真的有价值，有没有识别出哪些事情有价值，最关键的那个点找到没有，它在哪里？
)
}


if (v == "见微知著的认知能力") {
Var = 
(
@@什么是认知能力
认知能力 = (见微知著 + 抽象 + 逻辑演绎) * 知识储备

@@什么是见微知著的能力
通过微小的变化，预见将来的趋势。能从微小的问题发现更大的问题。

@@如何提高认知能力
持续的知识输入，不断延伸自己的知识边界。

1. 明确自己的知识结构
2. 用知识储备填充知识结构

知识的三个维度： 1. 横向相关性（x） 2. 纵向相关性（y），深度数值（value）

知识的深度决定你的知识边界。

@@必须掌握的知识筛选工具
知识过滤器 + 知识匹配器 + 是否有利于个人目标的达成？

@@什么是抽象能力？
抽象能力指对于概念的处理能力。 目的是将复杂的事物简化。
将复杂的问题拆解为一个个简单的问题。
把复杂的问题抽象出问题的特征。 再去大脑中经验知识库匹配解决方法。

@@抽象的缺陷
抽象的代价就损失很多细节实现和信息。抽象层次越高，越无法直接使用。

@@不要把抽象的任务交给下属
如果在真正中你对一个士兵下达一个抽象笼统的，没有明确执行步骤的知识战略概念。
士兵肯定一头雾水无法执行。 —— 李云龙
)
}


if (v == "成就感") {
Var = 
(
@@什么是成就感
成就感是愿望与现实达到平衡的一种心理感受。

一个人的愿望和现实差距越大，就会没有成就感。失去内在动力，带来负面情绪（沮丧和焦虑）。

—— 百科全书的定义，有待讨论。

修正为 —— 通过自身努力，实践有一定难度的愿望，并且与现实达到平衡，产生的一种心理感受。


@@成就感与驱动力的关系
自我驱动最重要。外在激励不如内在激励。

要做到内在驱动，首要的是以让人获得成就感呢。

@@做好事情的关键
假如你需要完成的这件事，大多数人都能完成，显然这是一件没什么成就感的事情。

人们认为有兴趣才能把事情做好，但兴趣是把事情做好的充分不必要条件。

成就感才是把事情做好的充分必要条件。
)
}

if (v == "打破认知天花板") {
Var = 
(
@@什么是认知
认知能力也有很多别的名称： “格局”、 “境界”

认知是人类认识事物的过程，对外界事物进行信息加工的过程。

认知是大脑对输入进行加工后的高级处理。

@@哲学的三大问题
我从哪里来？我要到去哪里去？我是谁？

@@高级认知能力和低级认知能力

基本认知能力：识记 -> 理解 -> 应用

高级认知能力： 分析（总结归纳、找出共性和联系、抓住主线、建立框架） -> 评判（独立思考/反思） -> 创造/发明
)
}

if (v == "方法论") {
Var = 
(
@@什么是方法论
方法论主要解决“怎么办”的问题
方法论 = 知识储备 + 思维工具 + 利益分配
认知能力（程序） = 学习方法 + 知识储备（数据） + 思维方式（算法）

@@为什么说自嘲是个好习惯？
找别人的问题很容易，找自身的问题很难，但如果不去找，就会失去一次成长的机会。

@@什么是正确的思考方式和方向？
1、在企业中，我们判断事情的价值都应该都应该从能否为企业盈利角度出发。
2、在生活中，我们判断事情的价值应该从能否促进完成个人目标出发。
『如果你有一个目标，那么所有事情应该围绕目标来判断是否有价值。』

@@静不下心怎么办？
找到产生私欲的根源。
人只有积极的时候，才会去寻找问题的解决办法。
)
}

if (v == "焦虑专题") {
Var = 
(
@@什么是焦虑？
焦虑是对未来不确定性产生的应急反应。
本质是一种缺乏安全感的表现。
知识焦虑的原因在于个体掌握的知识量不够，同时缺乏存储方法，导致面对大量知识迷茫不知所措，产生焦虑。

@@为什么会焦虑？
知识焦虑源于人类的规避损失心理，类似"不看就落后"、"别人都再学我也要学"、加之媒体推波助澜，社会媒体导向，人为制造的焦虑。

@@焦虑的来源？
焦虑来源于不之所从，要做的事情很多，每件事看上去都很有价值，正因如此，我们变得难以抉择，从而焦虑。
因为我们没有一个标准来判断一件事的价值。这个标准就算我们的目标、我们的愿望。

@@知识焦虑的解药
知识付费其实和小时候花钱请学霸写作业的行为没什么区别。
如何缓解知识焦虑，并不是一个难解的问题，首先你要知道：
1. 不是所有知识都是我们需要的。
2. 学习是一个短期内并不能快速见效的行为. 是需要我们花费精力和意志去坚持的过程。
)
}


getDec(Var, v)
}


BookTreeSelect:
; 获取当前选中的id，初始化的时候默认会选中第一个
ItemID := TV_GetSelection()

; 获取该id的text
TV_GetText(v, ItemID)

; 默认内容
Var := ""

; 首字母为 _ 说明是顶级，那么自动导航到子中的第一个
if (SubStr(v, 1, 1) == "_") {
	childId := TV_GetChild(ItemID)
	TV_Modify(childId, "Select")
}	

; 首字母为@，说明是康奈尔笔记。使用康奈尔专用数组中进行渲染
if (InStr(v, "@")) {
	; 获取康奈尔数组中的值
	Var := cornellAry[v]
}

if (v == "") {
Var = 
(
)
}

if (v == "Function.prototype.bind") {
Var = 
(
if (typeof Function.prototype.bind === 'undefined') {
	Function.prototype.bind = function (context) {
		var fn = this,
			slice = Array.prototype.slice,
			args = slice.call(arguments, 1)

		// bind 总是返回一个新的函数。
		return function () {
			// 新参数
			var newArgs = slice.call(arguments)
			// 合并新旧参数
			var params = args.concat(newArgs)
			// 执行
			return fn.apply(context, params)
		};
	}
}
)
}

if (v == "超简单的currying与理财花销实例") {
Var = 
(
var currying = function (fn) {
    var args = [];
    return function () {
        // 新设计：如果不传参数则立刻返回当前计算结果
        if ( arguments.length === 0 ) {
            // 返回执行结果
            return fn.apply(this, args);
        } else {
            // 将参数加入缓存
            Array.prototype.push.apply( args, arguments );
            // 返回本函数
            return arguments.callee;
        }
    }
}

// 测试：理财函数
var cost = function(){
    return Array.prototype.reduce.call(arguments, function (previousValue, currentValue, index, array) {
        return previousValue + currentValue
    }, 0)
};

// cost(100, 200, 300, 400)

var curring_cost = currying(cost)

curring_cost( 1000 )
curring_cost( 1000 )
curring_cost( 1000 )
curring_cost( 1000 )

curring_cost(  )
)
}

if (v == "优惠券条件分支：链式after解决方案") {
Var = 
(
Function.prototype.after = function(fn) {
    var self = this;
    return function() {
        var ret = self.apply(this, arguments);
        if (ret === 'next') {
            return fn.apply(this.arguments);
        }
    }
}

var order500yuan = function(orderType, pay, stock) {
    if (orderType === 1 && pay === true) {
        console.log('500 元定金预购，得到 100 优惠券');
    } else {
        return 'next'; // 我不知道下一个节点是谁，反正把请求往后面传递
    }
};

var order200yuan = function(orderType, pay, stock) {
    if (orderType === 2 && pay === true) {
        console.log('200 元定金预购，得到 50 优惠券');
    } else {
        return 'next'; // 我不知道下一个节点是谁，反正把请求往后面传递
    }
};

var orderNormal = function(orderType, pay, stock) {
    if (stock > 0) {
        console.log('普通购买，无优惠券');
    } else {
        console.log('手机库存不足');
    }
};

var order = order500yuan.after( order200yuan ).after( orderNormal );
order( 1, true, 500 )
order( 2, true, 500 );
order( 1, false, 500 );
)
}


if (v == "仿rxjs的观察者模式") {
Var = 
(
function Observable(fn) {

	let isComplete = false

	return ({ next, complete, error }) => {
		function _next(...args) {
			if (isComplete) 
				return
			next(...args)
		}

		function _complete(...args) {
			complete(...args)
			isComplete = true
		}

		function _error(...args) {
			error(...args)
		}

		// 依赖注入
		fn({ next: _next, complete: _complete, error: _error })

		// 返回开关
		return () => (isComplete = true)
	}
}

let observerable = Observable(observer => {
	setTimeout(() => {
		observer.next(1)
	}, 1000)
	observer.next(2)
	observer.complete(3)
})

const subject = {
	next: value => {
		console.log(value)
	},
	complete: console.log,
	error: console.log
}

let unsubscribe = observerable(subject);

// 输出 2
// 输出 3
// 并没有输出1，因为 complete 之后 next 就不会生效了。
)
}

if (v == "window.__EVENT__消息订阅") {
Var = 
(
window.__EVENT__ = {
     // 缓存列表
     clientList: [],
     listen: function(key, fn) {
         if (!this.clientList[key]) {
             this.clientList[key] = [];
         }
         // 订阅的消息添加进缓存列表
         this.clientList[key].push(fn);
     },
     trigger: function() {
         var key = Array.prototype.shift.call(arguments),
             fns = this.clientList[key];
         // 如果没有绑定对应的消息
         if (!fns || fns.length === 0) {
             return false;
         }
         for (var i = 0, fn; fn = fns[i++];) {
             // arguments 是 trigger 时带上的参数
             fn.apply(this, arguments);
         }
     },
     remove: function(key, fn) {
         var fns = this.clientList[key];
         if (!fns) { // 如果 key 对应的消息没有被人订阅，则直接返回
             return false;
         }
         if (!fn) { // 如果没有传入具体的回调函数，表示需要取消 key 对应消息的所有订阅
             fns && (fns.length = 0);
         } else {
             for (var l = fns.length - 1; l >= 0; l--) { // 反向遍历订阅的回调函数列表
                 var _fn = fns[l];
                 if (_fn === fn) {
                     fns.splice(l, 1); // 删除订阅者的回调函数
                 }
             }
         }
    }
};
)
}

if (v == "超简洁版Event事件模块") {
Var = 
(
class Event {
	constructor(props) {
	    this.map = {}
	}

	add (name, fn) {
		if (this.map[name])
			this.map[name].push(fn)
		else
			this.map[name] = [fn]
		return this
	}

	emit (name, ...args) {
		// 遍历数组中的所有函数并且执行，注入args
		this.map[name].forEach(_ => _(...args))
		// 返回prototype可以形成链式
		return this
	}
}

let e = new Event()
// 我们约定第一个参数是err信息，如果没有错误则注入null
e.add("hello", (err, name) => {
	if (err) return console.error(err)
	console.log(name)
})
.emit('hello', '发送错误')
.emit('hello', null, 'success')
)
}


if (v == "最简单的策略模式") {
Var = 
(
// JavaScript版 策略模式 解决计算薪资问题
var strategies = {
	'S': function ( salary ) {
		return salary * 4
	},
	'A': function ( salary ) {
		return salary * 3
	},
	'B': function ( salary ) {
		return salary * 2
	}
};

var calculateBonus = function ( level, salary ) {
	return strategies[ level ]( salary )
}

calculateBonus('S', 10000) // 40000
calculateBonus('B', 10000) // 20000
)
}

if (v == "让方法调用结束后返回对象本身") {
Var = 
(
var User = function () {
	this.id = null
	this.name = null
}

User.prototype.setId = function ( id ) {
	this.id = id
	return this
}

User.prototype.setName = function ( name ) {
	this.name = name
	return this
}

console.log(new User().setId(1234).setName('Lee'))
)
}


if (v == "延迟上传：解决ajax压力") {
Var = 
(
var upload = function (id) {
    console.log('开始同步文件, id为'： id)
}

var proxySync = ;(function(){
    var cache = [], // 一定时间内需要同步的id
             timer; // 定时器

    return function (id) {
        // 塞入缓存，等待上传
        cache.push(id)

        // 保证不会覆盖已经启动的定时器
        if ( timer ) {
            return;
        }

        timer = setTimeout(() => {
            // 上传
            upload( cache.join(',') )
            // 清空
            clearTimeout(timer); timer = null; cache.length = 0;
        }, 2000);
    }
}());
)
}

if (v == "通用模板 StateFactory") {
Var = 
(
var StateFactory = (function() {
    var State = function() {}

    State.prototype.clickHandler1 = function() {
        throw new Error(`子类必须重写父类的${arguments.callee.name}方法`)
    }

    State.prototype.clickHandler2 = function() {
        throw new Error(`子类必须重写父类的${arguments.callee.name}方法`)
    }

    return function(params) {
        var F = function( /* ... */ ) {
        	/* ... */
        }

        F.prototype = new State()

        for (var i in params) {
            F.prototype[i] = params[i]
        }

        return F
    }
}())
)
}

if (v == "咖啡与茶") {
Var = 
(
// 继承抽象类的目的，通常是可以为了可以省略很多重复的操作，或者帮你完成了很多基础工作，譬如本例的煮水（boilWater）
// 但接口还强制你重写/实现/覆盖指定方法譬如brew, pourIncup, addCondiments来搜集配置和个性化需求。
// 这种模式也成为模板模式。可以脑补【模板页面】的场景

var Beverage = function() {};

Beverage.prototype.boilWater = function() {
	console.log( '把水煮沸' );
};

Beverage.prototype.brew = function() {
	throw new Error( '子类必须重写 brew 方法' );
};

Beverage.prototype.pourIncup = function() {
	throw new Error( '子类必须重写 pourIncup 方法' );
};

Beverage.prototype.addCondiments = function() {
	throw new Error( '子类必须重写 addCondiments 方法' );
};

Beverage.prototype.init = function() {
    this.boilWater();
    this.bubbleBeverage();
    this.pourCup();
    this.addCondiments();
};

var Coffee = function() {};

// 原型继承抽象类
Coffee.prototype = new Beverage();

Coffee.prototype.bubbleBeverage = function() {
    console.log("开水冲泡咖啡.");
};

Coffee.prototype.pourCup = function() {
    console.log("咖啡倒入杯中.");
};

Coffee.prototype.addCondiments = function() {
    console.log("添加糖和牛奶.");
};

var coffee = new Coffee();
coffee.init();
)
}

if (v == "单例模式：生成不重复的随机数") {
Var = 
(
'use strict';
// 我的随机函数
var random = function(min, max) {
    if (max == null) {
      max = min;
      min = 0;
    }
    return min + Math.floor(Math.random() * (max - min + 1));
};

// 缓存函数
var singeFn = function (fn, maxPollTime = 20) {
	// 缓存
	var cache = []
	// 轮询次数
	var pollTime = 0
	// 返回随机数生成器
	return function _ () {
		// 获取随机数
		var data = fn.apply(this, arguments)
		// 如果存在则递归
		if (~cache.indexOf(data)) {
			// 递归调用（如果递归次数大于阈值，那么直接返回False）
			return ++pollTime > maxPollTime ? false : _.apply(this, arguments)
		} else {
			// 重置轮询次数
			pollTime = 0
			// 添加缓存并且返回data
			return cache.push(data), data
		}
	}
}

// 从-7，7取随机数
var rangeRadom = random.bind(null, -7, 7)

// 返回一个新的函数
var singeRangeRadom = singeFn(rangeRadom);

// 获取返回值
singeRangeRadom()
)
}


if (v == "（回调版）单例模式，通常用于ajax类") {
Var = 
(
// （回调版）单例模式，通常用于ajax类
var getCallBackSingle = function(fn) {
    // 缓存
    var cache;
    // 接受一个回调函数
    return function (cb) {
        // 如果有缓存存在，那么直接使用缓存作为回调值，否则使用默认函数
        cache ? cb.apply(this, cache) : fn(function () {
            console.log('no cache')
            // 保存到缓存并且执行回调
            cb.apply(this, cache = arguments)
        })
    }
};

// demo：获取所有内容
var getData = function (successcb) {
    $.ajax({
        url: "/search.json",
        dataType: 'json',
        success: successcb,
        error: function(e, m){
           console.log('数据接口请求异常', e, m);
        }
    })
}

// 使用示例
var _getData = getCallBackSingle(getData)
_getData(_ => {console.log(20190126191340, _)}) // no cache，[...]
_getData(_ => {console.log(20190126191340, _)}) // [...]
)
}


if (v == "通用的惰性单例") {
Var = 
(
var getSingle = function(fn) {
     var result;
     return function() {
         return result || (result = fn.apply(this, arguments));
     }
};
)
}


if (v == "惰性单例") {
Var = 
(
var Singleton = function(name) {
     this.name = name;
};
Singleton.getInstance = (function() {
     var instance = null;
     return function(name) {
         if (!instance) {
             instance = new Singleton(name);
         }
         return instance;
     }
})();
var a = Singleton.getInstance( 'sven1' );
var b = Singleton.getInstance( 'sven2' );
alert ( a === b ); // true
)
}

if (v == "透明单例") {
Var = 
(
var CreateDiv = (function() {
     var instance;
     var _CreateDiv = function(html) {
         if (instance) {
             return instance;
         }
         this.html = html;
         this.init();
         return instance = this;
     };
     _CreateDiv.prototype.init = function() {
         var div = document.createElement('div');
         div.innerHTML = this.html;
         document.body.appendChild(div);
     };
     return _CreateDiv;
})();

var a = new CreateDiv('sven1');
var b = new CreateDiv('sven2');
alert(a === b); // => true
)
}

if (v == "代理单例") {
Var = 
(
// 普通的创建 div 的类：
var CreateDiv = function(html) {
     this.html = html;
     this.init();
};
CreateDiv.prototype.init = function() {
     var div = document.createElement('div');
     div.innerHTML = this.html;
     document.body.appendChild(div);
};
// 引入代理类
var ProxySingletonCreateDiv = (function() {
    var instance;
    return function(html) {
        if (!instance) {
            instance = new CreateDiv(html);
        }
        return instance;
    }
})();
var a = new ProxySingletonCreateDiv('sven1');
var b = new ProxySingletonCreateDiv('sven2');
alert(a === b);
)
}


if (v == "AOP - 面向切面编程") {
Var = 
(
// （A）定义原始函数
var func = function() {
    console.log(2);
};

Function.prototype.before = function(beforefn) {
    // 保存原始函数（A）的引用
    var __self = this;

    // （B）
    return function() {
        // 执行 before 函数
        beforefn.apply(this, arguments);

        // 执行原始函数（A）
        return __self.apply(this, arguments);
    }
};

Function.prototype.after = function(afterfn) {
    // 保存函数（B）的引用
    var __self = this;

    // （C）
    return function() {
        // 执行函数（B）并获取执行结果，而实际上函数（B）的返回的是原始函数（A）的执行结果
        var ret = __self.apply(this, arguments);

        // 执行 after 函数
        afterfn.apply(this, arguments);

        // 返回原函数（A）的执行结果
        return ret;
    }
};

func = func.before(function() {
    console.log(1);
}).after(function() {
    console.log(3);
});

// 执行函数（C）
func();
)
}


if (v == "简易Cache") {
Var = 
(
/**
 * @func
 * @desc - 灵活使用闭包的概念。
           以下简单的实验说明他们是不同的实例。所以他们各自闭包内的_cache是不相干也不相同的
           其实是简单的类与实例的概念。但还是说明一下比较好
           毕竟大部分的插件也是这样制作的
 */
var Cache = (function () {
    var _cache = {};

    return {
      getCache: function (key) {
        return _cache[key]
      },
      setCache: function (key, value) {
        _cache[key] = value;
      },
      showAllCache: function () {
        console.log(_cache);
      }
    }
});


var a = new Cache();
a.setCache('foo', 'bar');
a.showAllCache();

var b = new Cache();
b.setCache('foo', 'bar2');
b.showAllCache();

/* 从输出的结果得知两者的闭包互不相干 */
)
}

if (v == "参数标记缓存器 memoized") {
Var = 
(
// 参数标记缓存器
var memoized = function (fn) {
      var cache = {};
      return function () {
        // 我们约定以第一个参数作为key
        var __KEY__ = arguments[0]
        // 记录缓存
        return cache[__KEY__] || (cache[__KEY__] = fn.apply(this, arguments));
      };
};

const memoized = fn => {
	const lookupTable = {};
	// setInterval( () => console.log(lookupTable) , 1000); // 可以通过解释这个来观察缓存的变化
	return arg => lookupTable[arg] || (lookupTable[arg] = fn(arg));
}

// 阶乘的demo
let fastFactorial = memoized(n => {
	if (n === 0) {
		return 1;
	}
	// 这是一个递归，并且每一次递归都具有缓存过程
	return n * fastFactorial(n -1);
});

fastFactorial(5)
)
}

if (v == "模块模式：现代模块实现的基石") {
Var = 
(
var Module = (function($){
    var _$body = $("body");     // we can use jQuery now!
    var foo = function(){
        console.log(_$body);    // 特权方法
    }

    // Revelation Pattern
    return {
        foo: foo
    }
})(jQuery)

Module.foo();
)
}



if (v == "1. 改变 this 指向") {
Var = 
(
window.name = 'Mp'
var f = function () { 
	alert(this.name) 
}
f() // => 'Mp'


// 狸猫换太子
var obj = { name: 'Lee' }
f.call(obj) // => 'Lee'





// 认知：在 DOM 事件中的this指向这个 DOM 本身
document.getElementById( 'div1' ).onclick = function () {
	alert(this.id) // => div1
}

// 但如果在事件内部还有一个函数，而这个函数想访问 DOM，则不能使用 this了。因为函数指向window。
document.getElementById( 'div1' ).onclick = function () {
	var f = function () { alert(this.id) }
	f()  // => undefined
}

// 我们知道es6的箭头函数可以解决大部分此类问题。但在es5之前的时代，只能依赖 call/apply
document.getElementById( 'div1' ).onclick = function () {
	var f = function () { alert(this.id) }
	f.cal(this)  // => div1
}
)
}

if (v == "2. Function.prototype.bind") {
Var = 
(
Function.prototype.bind = function () {
	var self = this

	// 获取第一个参数，也就是代替this的『上下文』
	var context = [].shift.call( arguments )

	// 参数集
	var args = [].slice.call( arguments )

	return function () {
		// 新参数
		var new_args = [].slice.call( arguments )

		// 最终参数 = 历史参数 + 新参数
		var finall_args = [].concat.call( args, new_args )

		// 调用自己，使用新的上下文
		return self.apply( context, finall_args )
	}
}




var obj = { name: 'Lee' }

var f = function (a, b, c, d) {
	alert(this.name)
	alert([a, b, c, d])
}.bind(obj, 1, 2)

f(3, 4)
)
}

if (v == "3. 借用其他对象的方法") {
Var = 
(
// 场景1： 借用构造函数，这种方式常用在 JavaScript 模仿继承机制中
var A = function (name) { 
	this.name = name 
}

var B = function () { 
	A.apply(this, arguments) 
}

B.prototype.getName = function () {
	return this.name
}

var b = new B('Lee')
console.log(b.getName) // => Lee





// 场景2：对类数组（ArrayLike），如：arguments、NodeList 使用数组方法
// 所谓类数组，可以简单理解为：『具备 length 属性并且以int索引（0, 1, 2, 3...）为key的对象』
// 譬如这就是一个类数组：{ 0: 'a', 1: 'b', 2: 'c', length: 3 }

// 为 arguments 添加参数
Array.prototype.push.call( arguments, 3 )

// 取出 arguments 第一个参数
Array.prototype.shift( arguments )

// 转化为真正的数组
Array.prototype.slice( arguments )
)
}

if (v == "call 和 apply") {
Var = 
(
var f = function (a, b, c) {
	console.log([a, b, c])
}

// apply 就是传入数组
f.apply(null, [1, 2, 3]) // => [1, 2, 3]

// call 就是传入多参数
f.call(null, 1, 2, 3) // => [1, 2, 3]


『第一个参数为null，函数体内的 this 会指向默认的宿主对象，在浏览器则是window』


// 但如果是严格模式下，函数体内的 this 还是为 null
var f = function () {
	'use strict';
	alert( this === null ) // => null
}


// 借用其他对象
// Math.max([1, 2, 3, 4, 5])
Math.max.apply(null, [1, 2, 3, 4, 5]) // => 5
Math.max.apply(null, 1, 2, 3, 4, 5)   // => 5
)
}


if (v == "Function.prototype.before") {
Var = 
(
// es5 版本
Function.prototype.before = function(beforefn) {
    var __self = this;

    return function() {
        beforefn.apply(this, arguments);
        return __self.apply(this, arguments);
    }
};





// es6 async/await 版本：支持异步before
// 如果要保留this，那么不能使用this，依然需要使用原始的function
Function.prototype.before = function (beforefn) {
    var __self = this

    return async (...args) => {
        await beforefn(...args)
        return __self(...args)
    }
}

// 测试函数
let fuck = () => {
	console.log('fuck')
}

// 返回新的函数
_fuck = fuck.before(() => {
	return new Promise((resolve, reject) => {
	   setTimeout(function () {
	   		console.log('success')
	        resolve('success')
	   }, 1000);
	})
})

// start fuck
_fuck()

/* 使用示例 */
let fuck = () => {
	console.log(20190519080323, 'fuck')
}

fuck = fuck.before(() => {
	return new Promise((resolve, reject) => {
	   setTimeout(function () {
	   		console.log('success')
	        resolve('success')
	   }, 1000);
	})
})






// next的策略版本
// 注意：用next版本，就意味着你无法直接从fuck()中拿到返回值了，你只能使用回调了。
Function.prototype.before = function(beforefn) {
    var __self = this;

    // 所谓的next，就是把函数注入进去让他代理和执行
    return (...args) => {
        return beforefn(__self, ...args)
    }
};

/* 使用示例 */

// 我们约定，第一个参数就是before为我们注入的数据，其他数据是我们额外接受的
let fuck = (beforeData, you) => {
    // 使用before给我们注入的数据
    console.log('use', beforeData)
    // 使用我们自己接受的数据
    console.log('fuck', you)
}

fuck = fuck.before((next, ...args) => {
    setTimeout(() => {
        // 为fuck注入新参数，可有可无。只是说明而已。实际情况可以灵活调整开发
        next('durex', ...args)
    }, 1000);
})

fuck('Lee')
)
}

if (v == "Function.prototype.after") {
Var = 
(
Function.prototype.after = function(afterfn) {
    var __self = this;

    return function() {
        var ret = __self.apply(this, arguments);
        afterfn.apply(this, arguments);
        return ret;
    }
};
)
}


if (v == "extend 浅拷贝（继承模式中最后的圣杯）") {
Var = 
(
// 继承模式中最后的圣杯（Holy Grail）
function extend(Child, Parent){
    var F = function(){ };
    F.prototype = Parent.prototype;
    Child.prototype = new F();
    Child.prototype.constructor = Child;
    Child.parent = Parent.prototype
}
)
}

if (v == "deepExtend 深拷贝") {
Var = 
(
var deepExtend = function(out) {
   out = out || {};

   for (var i = 1; i < arguments.length; i++) {
     var obj = arguments[i];

     if (!obj)
       continue;

     for (var key in obj) {
       if (obj.hasOwnProperty(key)) {
         if (typeof obj[key] === 'object')
           out[key] = deepExtend(out[key], obj[key]);
         else
           out[key] = obj[key];
       }
     }
   }

   return out;
 };

 deepExtend({}, objA, objB);
)
}

if (v == "multi 多重拷贝") {
Var = 
(
function multi() {
  var n = {}, stuff, j = 0, len = arguments.length;
  for (var i = 0; i < len; i++) {
      stuff = arguments[j];
      for (var i in stuff) {
        if (stuff hasOwnProperty(i)) {
          n[i] = stuff[i];
        }
      }
  }
  return n
}
)
}


if (v == "构造器借用") {
Var = 
(
function Shape(id) {
  this.id = id;
}
Shape.prototype.name = 'shape'
Shape.prototype.toString = function () {
  return this.name
}

function Triangle() {
  Shape.apply(this, arguments)
}
Triangle.prototype.name = 'Triangle'

var t = new Triangle(101);
t.name; // "Triangle"
)
}

if (v == "寄生式继承") {
Var = 
(
// 在创建对象的函数中直接吸收其他对象的功能，然后对其进行扩展并返回。“就好像所有的工作都是自己做的一样无耻！”
// 寄生式继承并没有涉及什么新的模式和语法，只是一种概念认知。
var twoD = {
  name: '2D shape',
  dimensions: 2
}

function triangle(s, h) {
  var that = Object(twoD);
  that.name = 'TRIANGLE';
  that.side = s;
  that.height = h;
  that.getArea = function () {
    return this.side * this.height / 2;
  };
  return that;
}

var t = triangle(5, 10);
t.dimensions; // 2
)
}

if (v == "多态") {
Var = 
(
//////////////////////////////////////////////
// 鸭子类型示例
//////////////////////////////////////////////

var makeSound = function(animal) {
    if (animal instanceof Duck) {
        console.log('嘎嘎嘎');
    } else if (animal instanceof Chicken) {
        console.log('咯咯咯');
    }
};
var Duck = function() {};
var Chicken = function() {};
makeSound(new Duck());    // 嘎嘎嘎
makeSound(new Chicken()); // 咯咯咯






//////////////////////////////////////////////
// 地图调用实例
//////////////////////////////////////////////

var renderMap = function( map ){
  if ( map.show instanceof Function ){
     map.show();
  }
};
renderMap( googleMap ); // 输出：开始渲染谷歌地图
renderMap( baiduMap );  // 输出：开始渲染百度地图

// 即使以后增加了搜搜地图， renderMap 函数仍、然不需要做任何改变，如下所示：
var sosoMap = {
  show: function(){
     console.log( '开始渲染搜搜地图' );
  }
};
renderMap( sosoMap ); // 输出：开始渲染搜搜地图
)
}

if (v == "闭包封装实现private") {
Var = 
(
// JavaScript并没有提供private、public、protected 关键字来提供不同的访问权限，我们只能依赖变量的 作用域来实现封装特性

var Module = (function(){
    var _private = "safe now";
    var foo = function(){
        console.log(_private)
    }

    return {
        foo: foo
    }
})()

Module.foo();    // "safe now"
Module._private; // undefined
)
}

if (v == "1、作为对象的方法调用") {
Var = 
(
var obj = {
     a: 1,
     getA: function(){
        alert ( this === obj ); // 输出：true
        alert ( this.a );       // 输出: 1
     }
};
obj.getA();
)
}

if (v == "2、作为普通函数调用时") {
Var = 
(
//////////////////////////////////////////////
// 当函数作为普通函数方式被调用时，此时的 this 总是指向全局对象。
// 如果是在浏览器里，全局对象就是 window。
//////////////////////////////////////////////

window.name = 'windowName';
var getName = function () {
     return this.name;
};
console.log( getName() ); // windowName




// 以下写法和（1）很相似，所以容易混淆，但实际上这种调用函数的方式和（2）也是一样的道理，它指向的是函数执行时的环境，所以需要额外注意一下：
window.name = 'windowName';
var myObject = {
     name: 'sven',
     getName: function(){
        return this.name;
     }
};
var getName = myObject.getName;
console.log( getName() ); // windowName
)
}

if (v == "3、作为构造器调用") {
Var = 
(
//////////////////////////////////////////////
// JavaScript 中没有类，但是可以从构造器中创建对象，同时也提供了 new 运算符，使得构造器看起来更像一个类。
// 所有 JavaScript 函数都可以当作构造器使用。当用 new 运算符调用函数时，该函数总会返回一个对象，通常情况下，构造器里的 this 就指向返回的这个对象。
//////////////////////////////////////////////

var MyClass = function(){
     this.name = 'sven';
};
var obj = new MyClass();
alert ( obj.name ); // 输出：sven
)
}


if (v == "4、call 或 apply 调用") {
Var = 
(
window.name = 'foo';

var obj1 = {name: 'sven'};

var getName = function () {
    alert ( this.name );
};

getName();            // 输出: foo

getName.call( obj1 ); // 输出: sven
)
}


if (v == "5、es6箭头函数调用时") {
Var = 
(
// 箭头函数自己没有this，只能往上找对象。

// 不适用场合
var fuck = {
	bb: 'bb',
	methods: () =>  {
		console.log(this.bb) // undefined
	}
}
)
}


if (v == "6、es6 class 中的") {
Var = 
(
衡指向自己class本身。
)
}

if (v == "实现 new 运算符的过程") {
Var = 
(
var objectFactory = function () {
	// 从 Object.prototype 中实例化对象
	var obj = new Object()

	// 获取第一个参数
	var Constructor = [].shift.call( arguments )

	// 指向原型
	obj.__proto__ = Constructor.prototype

	// 借用外部传入的构造器，给 obj 设置属性，这是一个原型继承中常用的技巧
	var ret = Constructor.apply( obj, arguments )

	// 总会返回一个对象
	return typeof ret === 'object' ? ret : obj
}
)
}

if (v == "实现 Object.create 方法") {
Var = 
(
Object.create = Object.create || function (obj) {
	var F = function () {}
	F.prototype = obj
	return new F() 
}
)
}

if (v == "prototype 和 __proto__的关系") {
Var = 
(
function F() {

}

new F().__proto__ === F.prototype // => true
)
}

if (v == "类式继承模式#1 —— 克隆模式") {
Var = 
(
//////////////////////////////////////////////

// 类式继承模式#1 —— 克隆模式
// 缺点 1：不支持将参数传递给父构造函数。所以 say() 打印出是undefined
// 缺点 2：并没有继承父亲的属性，所以儿子也并没有name的属性
function inherit(C, P) {
	// 重点
	C.prototype = new P();
}

//////////////////////////////////////////////


// 父构造函数
function Parent(name) {
	this.name = name;
}

// 父方法
Parent.prototype.say = function() {
	return this.name;
};

// 空白的子构造函数
function Child(name) {}

// 继承
inherit(Child, Parent);

// 实例化
var c = new Child('Lee')

// 看看
c.name  // => undefined ？？？
c.say() // => undefined ？？？
)
}

if (v == "类式继承模式#2 —— 借用模式") {
Var = 
(
function Article() {
	this.tags = ['js', 'css']
}

//////////////////////////////////////////////

// 类式继承模式#2 —— 借用构造函数
function Blog() {
	// 重点：借风使船
	// 但这也意味着，放弃了原型，断开了原型链的血缘联系
	Article.call(this)
}

//////////////////////////////////////////////

var blog = new Blog()

console.log(blog.hasOwnProperty('tags')) // => true

blog.tags.push('html')

console.log(blog.tags.join(',')) // => js,css,html





//////////////////////////////////////////////

// 使用 #2 重构 #1...
// 缺点：由于没有使用父构造函数，断开了原型联系，所以从未继承过 say() 方法。
// 认知：这里所谓的 『继承 name 属性』，其实也是借用 Article 的代码块进行初始化 Child 罢了。有点类似模板复用。
// 举一反三：这种方法可以实现 『多重继承』，也就是多借用几个构造函数就是了

//////////////////////////////////////////////

function Parent(name) {
	this.name = name
}

Parent.prototype.say = function () {
	return this.name
}

function Child() {
	Parent.apply(this, arguments)
}

var c = new Child('Lee')
c.name // => Lee
c.say  // => undefined ？？？
)
}

if (v == "类式继承模式#3 —— 借用模式 + 克隆模式") {
Var = 
(
//////////////////////////////////////////////

// 类式继承模式#3 —— 借用和设置原型
// 其实就是 #1 + #2
// 缺点：由于结合了 『借用模式』 + 『克隆模式』，所以等于调用了两次父构造函数。效率低下而且风险很高

//////////////////////////////////////////////

function Parent(name) {
    this.name = name
}

Parent.prototype.say = function () {
    return this.name
}

function Child() {
	// 第一次调用父构造函数
    Parent.apply(this, arguments)
}

// 第二次调用父构造函数
Child.prototype = new Parent()

var c = new Child('Lee')
c.name  // => Lee
c.say() // => Lee
)
}

if (v == "类式继承模式#4 —— 共享原型") {
Var = 
(
//////////////////////////////////////////////

// 本模式的经验法则是：
// 任何可复用的成员应该转移到原型中。
// 出于继承的目的，任何值得继承的东西，都应该防止在原型中实现。

//////////////////////////////////////////////

function inherit(C, P) {
	C.prototype = P.prototype
}

//////////////////////////////////////////////

// 缺点：
// 如果子类修改了原型，那么父类也会随着改变。
// 所以下一步精进：用一个代理构造函数F来代替父类。

//////////////////////////////////////////////
)
}


if (v == "类式继承模式#6 —— 最后的圣杯") {
Var = 
(
function inherit = (function () {
	// 使用IIFE可以避免总是临时创建代理构造函数F
	var F = function () {}
	// 圣杯模式
	return function (C, P) {
		// 共享模式（代理构造函数作为桥梁，避免子类修改原型进而修改父类）
		F.prototype = P.prototype
		// 共享原型
		C.prototype = new F()
		
		// 存储父类
		C.__super__ = P.prototype
		
		// 重置 constructor，否则默认是父类的
		C.prototype.constructor = C
	}
}());
)
}

if (v == "类式继承模式#5 —— 临时构造函数") {
Var = 
(
function inherit(C, P) {
	var F = function () {}
	F.prototype = P.prototype
	C.prototype = new F()
	// 存储父类
	C.__super__ = P.prototype
	// 重置 constructor，否则默认是父类的
	C.prototype.constructor = C
}
)
}

if (v == "通过复制属性实现继承") {
Var = 
(

)
}

if (v == "原型继承") {
Var = 
(

)
}

if (v == "设计模式") {
Var = 
(

)
}

if (v == "工厂模式") {
Var = 
(

)
}

if (v == "策略模式") {
Var = 
(

)
}

if (v == "装饰者模式") {
Var = 
(

)
}

if (v == "代理模式") {
Var = 
(

)
}

if (v == "中介者模式") {
Var = 
(

)
}

if (v == "观察者模式") {
Var = 
(

)
}

_Var := StrReplace(Var, "`t", "    ")

GuiControl, Book:Text, BookContent, %_Var%
return



getDec(txt, top) {
; 插入顶级菜单
cornellTop := TV_Add("@" . top)

; 分割 @ 符号
ary := StrSplit(txt, "@@")

For key, value in ary
	; 如果是第一条的话，那么直接加入全体把
	if (key == 1) {
		cornellAry["@" . top] := txt
	; 索引是从1开始的，而1是没有任何内容的
	} else if (key > 1) {
		; 标题
		title := StrSplit(value, "`n")[1]
		; 内容
		v := SubStr(value, StrLen(title) + 1)
		; 塞入数组
    ; 我觉得假如标题会好一点
    prefix := "@" . title . "`n_________________________________________________________________`n" 
		cornellAry["@" . title] := prefix .  v
		; 并且加入当前的树中， 但需要先找到树
		TV_Add("@" . title, cornellTop)
	}
}



; 第一页的内容
initbook() {
  ; 暴漏出 A1 到外部，主要是因为：默认会选择第一个，也就是A作为select，这时候我重定向到A1去。
  global A1
  A := TV_Add("_代码复用模式")
  A1 := TV_Add("类式继承模式#1 —— 克隆模式", A)
  TV_Add("类式继承模式#2 —— 借用模式", A)
  TV_Add("类式继承模式#3 —— 借用模式 + 克隆模式", A)
  TV_Add("类式继承模式#4 —— 共享原型", A)
  TV_Add("类式继承模式#5 —— 临时构造函数", A)
  TV_Add("类式继承模式#6 —— 最后的圣杯", A)
  TV_Add("通过复制属性实现继承", A)
  TV_Add("原型继承", A)

    
  B := TV_Add("_this")
  TV_Add("1、作为对象的方法调用", B)
  TV_Add("2、作为普通函数调用时", B)
  TV_Add("3、作为构造器调用", B)
  TV_Add("4、call 或 apply 调用", B)
  TV_Add("5、es6箭头函数调用时", B)
  TV_Add("6、es6 class 中的", B)

  C := TV_Add("_原型知识")
  TV_Add("prototype 和 __proto__的关系", C)
  TV_Add("实现 Object.create 方法", C)
  TV_Add("实现 new 运算符的过程", C)
  TV_Add("闭包封装实现private", C)
  TV_Add("多态", C)
  TV_Add("Function.prototype.bind", C)
  TV_Add("Function.prototype.before", C)
  TV_Add("Function.prototype.after", C)
  TV_Add("AOP - 面向切面编程", C)
  
  
  D := TV_Add("_继承")
  TV_Add("extend 浅拷贝（继承模式中最后的圣杯）", D)
  TV_Add("deepExtend 深拷贝", D)
  TV_Add("multi 多重拷贝", D)
  TV_Add("寄生式继承", D)
  TV_Add("构造器借用", D)
  
  E := TV_Add("_call 和 apply")
  TV_Add("1. 改变 this 指向", E)
  TV_Add("2. Function.prototype.bind", E)
  TV_Add("3. 借用其他对象的方法", E)
  
  F := TV_Add("_闭包与缓存")
  TV_Add("简易Cache", F)
  TV_Add("参数标记缓存器 memoized", F)
  TV_Add("模块模式：现代模块实现的基石", F)
  TV_Add("延迟上传：解决ajax压力", F)
  
  I := TV_Add("_链式操作")
  TV_Add("让方法调用结束后返回对象本身", I)
  
  G := TV_Add("_单例模式")
  TV_Add("惰性单例", G)
  TV_Add("透明单例", G)
  TV_Add("代理单例", G)
  TV_Add("通用的惰性单例", G)
  TV_Add("单例模式：生成不重复的随机数", G)
  TV_Add("（回调版）单例模式，通常用于ajax类", G)
  
  H := TV_Add("_模板模式")
  TV_Add("咖啡与茶", H)
  TV_Add("通用模板 StateFactory", H)
  
  J := TV_Add("_策略模式")
  TV_Add("最简单的策略模式", J)
  
  K := TV_Add("_观察者模式")
  TV_Add("window.__EVENT__消息订阅", K)
  TV_Add("超简洁版Event事件模块", K)
  TV_Add("仿rxjs的观察者模式", K)
  
  L := TV_Add("_责任链模式")
  TV_Add("优惠券条件分支：链式after解决方案", L)
  
  M := TV_Add("_curry科里化模式")
  TV_Add("超简单的currying与理财花销实例", M)
}
