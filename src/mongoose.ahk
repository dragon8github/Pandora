!p::

    Menu, moogoseMenu, Add, mongodb 启动步骤与设置管理员, moogosetxt
    Menu, moogoseMenu, Add, 常用命令大全, moogosetxt

    Menu, moogoseMenu, Add
    Menu, moogoseMenu, Add

    Menu, moogoseMenu, Add, mongoose 入门示例, moogosetxt
    Menu, moogoseMenu, Add, mongoose 数据校验, moogosetxt
    Menu, moogoseMenu, Add, mongoose 联表查询, moogosetxt


    Menu, moogoseMenu, Show
    Menu, moogoseMenu, DeleteAll
return

moogoseHandler2:
v := A_ThisMenuItem
_send(v, true, true)
return


moogosetxt:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}

if (v == "mongoose 联表查询") {
Var =
(
# 插入测试数据

db.order.insert({"order_id":"1","uid":10,"trade_no":"111","all_price":100,"all_num":2})
db.order.insert({"order_id":"2","uid":7,"trade_no":"222","all_price":90,"all_num":2})
db.order.insert({"order_id":"3","uid":9,"trade_no":"333","all_price":20,"all_num":6})
db.order_item.insert({"order_id":"1","title":"商品鼠标 1","price":50,num:1})
db.order_item.insert({"order_id":"1","title":"商品键盘 2","price":50,num:1})
db.order_item.insert({"order_id":"1","title":"商品键盘 3","price":0,num:1})
db.order_item.insert({"order_id":"2","title":"牛奶","price":50,num:1})
db.order_item.insert({"order_id":"2","title":"酸奶","price":40,num:1})
db.order_item.insert({"order_id":"3","title":"矿泉水","price":2,num:5})
db.order_item.insert({"order_id":"3","title":"毛巾","price":10,num:1})
---
# 封装 model/db.js

const mongoose = require('mongoose')

// # 重要认知：
// 最理想的情况：返回的 client 才是我们需要的连接器。 所以我们会想到使用 asyc/await 来获取 『连接器』。 但考虑到报错超时等错误，你还得加上 try/catch 
// 但实际上，并不需要那么麻烦。 mongoose 有一种 『懒执行』 机制：会将所有sql操作收集起来，等待数据库连接成功以后，再执行。
// 也就是说，我连我的，你操作你的，等我连接好了，我再帮你执行这些数据库操作。 
// 因为这种机制，我们即不需要在连接回调里写sql操作逻辑，也不需要使用await + try。
mongoose.connect('mongodb://eggadmin:123456@localhost:27017/eggcms', { useNewUrlParser: true, useUnifiedTopology: true }, (err, client) => {
    if (err) throw new Error(err)
    console.log('连接数据库成功')
})

module.exports = mongoose
---
# 新建模型 db/order.js
const mongoose = require('./db.js')

const OrderSchema = mongoose.Schema({
    order_id: String,
    uid: Number,
    trade_no: String,
    all_price: Number,
    all_num: Number
})

module.exports = mongoose.model('Order', OrderSchema, 'order')

# 新建模型 db/order_item.js
const mongoose = require('./db.js')

const OrderItemSchema = mongoose.Schema({
    order_id: String,
    title: String,
    price: Number,
    num: Number
})

module.exports = mongoose.model('OrderItem', OrderItemSchema, 'order_item')
---
index.js 联表查询
const OrderModel = require('./model/order.js')

;(async function() {
    const docs = await OrderModel.aggregate([
        {
            $lookup: {
                from: 'order_item',
                localField: "order_id",
                foreignField: "order_id",
                as: "item"
            }
        }
    ])
    console.log(JSON.stringify(docs, null, '\t'))
}())


index.js 联表查询2 
通过商品查到订单，并且使用 mongoose.Types.ObjectId
const mongoose = require('./model/db.js')
const OrderItemModel = require('./model/order_item.js')

;(async function() {
    const docs = await OrderItemModel.aggregate([
        {
            $lookup: {
                from: 'order',
                localField: "order_id",
                foreignField: "order_id",
                as: "order_info"
            }
        },
        {
            $match: {
                _id: mongoose.Types.ObjectId('5e26747a0117d427c7db0bd0')
            }
        }
    ])

    console.log(JSON.stringify(docs, null, '\t'))
    
}())
---
三表关联查询示例代码
ArticleModel.aggregate([
    {
        $lookup: {
            from: "articlecate",
            localField: "cid",
            foreignField: "_id",
            as: "cate"
        }
    },
    {
        $lookup: {
            from: "user",
            localField: "author_id",
            foreignField: "_id",
            as: "user"
        }
    }
])
---
使用 populate + ref 实现关联查询
Article.js
const mongoose = require('./db.js')
const Schema = mongoose.Schema

const ArticleSchema = new Schema({
    title: { type: String, unique: true },
    author_name: { type: String, default: '李钊鸿' },
    descripton: String,
    content: String,
    cid: {
        type: Schema.Types.ObjectId,
        // cid和 文章分类建立关系。
        ref: "ArticleCate" 
    },
    // 文章作者 id 关联用户id
    author_id: {
        type: Schema.Types.ObjectId,
        // author_id和 用户表建立关系。
        ref: "User"
    }
})

module.exports = mongoose.model('Article', ArticleSchema, 'article')


app.js
ArticleModel.find({ })
    .populate('cid')
    .populate('author_id')
    .exec(function(err, docs){
        console.log(docs);
    })
)
}

if (v == "mongoose 数据校验") {
Var =
(
required : 表示这个数据必须传入
max: 用于 Number 类型数据，最大值
min: 用于 Number 类型数据，最小值
enum:枚举类型，要求数据必须满足枚举值 enum: ['0', '1', '2']
match:增加的数据必须符合 match（正则）的规则
maxlength：最大值
minlength：最小值
---
var UserSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true,
    },
    age: {
        type: Number,
        // 是否必须的校验器
        required: true,
        // 数字类型的最大值校验器
        max: 120,
        // 数字类型的最小值校验器
        min: 0
    },
    status: {
        type: String,
        // 设置字符串的可选值
        enum: ['0', '1', '2']
    },
    phone: {
        type: Number,
        match: /^\d{11}$/
    },
    desc: {
        type: String,
        maxlength: 20,
        minlength: 10
    }
});
---
var UserSchema = new mongoose.Schema({
    desc: {
        type: String,
        // 自定义的验证器，如果通过验证返回 true，没有通过则返回 false
        validate: function(desc) {
            return desc.length >= 10;
        }
    }
});
)
}

if (v == "mongoose 入门示例") {
Var =
(
const mongoose = require('mongoose')

// # 重要认知：
// 最理想的情况：返回的 client 才是我们需要的连接器。 所以我们会想到使用 asyc/await 来获取 『连接器』。 但考虑到报错超时等错误，你还得加上 try/catch 
// 但实际上，并不需要那么麻烦。 mongoose 有一种 『懒执行』 机制：会将所有sql操作收集起来，等待数据库连接成功以后，再执行。
// 也就是说，我连我的，你操作你的，等我连接好了，我再帮你执行这些数据库操作。 
// 因为这种机制，我们即不需要在连接回调里写sql操作逻辑，也不需要使用await + try。
mongoose.connect('mongodb://eggadmin:123456@localhost:27017/eggcms', { useNewUrlParser: true, useUnifiedTopology: true }, (err, client) => {
    if (err) throw new Error(err)
    console.log('连接数据库成功')
})
---
// Schema
const UserSchema = mongoose.Schema({ name: String, age: Number, status: Number })

// Model
// 1 - 模型名（意义不明）
// 2 - Schema
// 3 - 数据表
const User = mongoose.model('User', UserSchema, 'users')
---
// CURD
;(async function() {
	// 查询
    const users = await User.find({ })
    if (users) console.log('查找成功', users)

    // 新增
    const u = new User({ name: 'lisi2222333', age: 20, status: true })
    const { _id: save_id } = await u.save()
    if ( save_id ) console.log('新增成功')

    // 修改
    const { ok: update_ok } = await User.updateOne({ name: 'lisi2222333' }, { name: '哈哈哈' })
    if (update_ok === 1) console.log('更新成功')	

    // 删除
    const del_id = users[0]._id
    const { ok: del_ok } = await User.deleteOne({ _id: del_id })
    if (del_ok === 1) console.log('删除成功')	
}())
)
}

if (v == "mongodb 启动步骤与设置管理员") {
Var =
(
1、先将 mongo/bin 加入到环境变量吧，这样方便全局使用 mongod.exe 和 mongo.exe

2、随便找个地方，新建一个文件夹譬如： mongodb/test， 新建以下三个内容：
data ： 数据文件存储的目录；
mongodb.log： 日志文件；
mongodb.conf： 启动配置文件，包括端口和日志目录、存储目录等。
mkdir data && touch mongodb.conf && touch mongodb.log
---
mongodb.conf 加入以下代码

# 数据库路径
dbpath=C:\Users\Lee\Desktop\mongodb\test\data

# 日志输出文件路径
logpath=C:\Users\Lee\Desktop\mongodb\test\mongodb.log

# 启用日志文件，默认启用
journal=true 

# 错误日志采用追加模式，配置这个选项后mongodb的日志会追加到现有的日志文件，而不是从新创建一个新文件
logappend=true

# 这个选项可以过滤掉一些无用的日志信息，若需要调试使用请设置为false
quiet=true 

# 端口号 默认为27017
port=27017
---
3、启动mangod服务（请确保你已经将 mongodb/bin 加入到环境变量）
mongod --config C:\Users\Lee\Desktop\mongodb\test\mongodb.conf


4、打开命令行（请确保你已经将 mongodb/bin 加入到环境变量）
mongo.exe
---
5、设置管理员账号和密码
> use admin
switched to db admin

> db.createUser({ user: "root", pwd: "123456", roles: ["root"] })
Successfully added user: { "user" : "root", "roles" : [ "root" ] }


6、再次回到 mongodb.conf 修改，开启身份验证。
auth=true

7、用管理员账号登陆 mongo
mongo admin -u root
---
为数据库 eggcms 设置管理员

use eggcms

show users

db.dropUser('eggadmin')

db.createUser({ user: "eggadmin", pwd: "123456", 
    roles: [{
        role: 'dbOwner',
        db: 'eggcms'
    }] 
})


登陆
mongo eggcms -u eggadmin
)
}

if (v == "常用命令大全") {
Var =
(
# 创建一张表
use eggcms

// 我们刚创建的数据库 eggcms 并不在数据库的列表中， 要显示它，我们需要向数据库插入一些数据。
db.eggcms.insert({ "name": "Lee" })


# 创建一张表
use eggcms

// 我们刚创建的数据库 eggcms 并不在数据库的列表中， 要显示它，我们需要向数据库插入一些数据。
 db.eggcms.insert({ "name": "Lee" })


# 查看当前数据库
db
---
# 创建集合
db.createCollection("users")

# 查看所有集合
show collections

# 往集合里插入文档
db.users.insert({name: 'lee', age: 18, status: 1, }) 

# 使用 bsondump 将 bson 转化为 json
bsondump ./article.bson --outFile ./test.json
---
)
}

txtit(Var)
return

moogoseHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}

code(Var)
return
