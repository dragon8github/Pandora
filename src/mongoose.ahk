>^m::
>!m::

    Menu, moogoseMenu, Add, mongodb 启动步骤与设置管理员, moogosetxt
    Menu, moogoseMenu, Add, 常用命令, moogosetxt
    Menu, moogoseMenu, Add, mongoose, moogosetxt


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

if (v == "常用命令") {
Var =
(
创建一张表
use eggcms

// 我们刚创建的数据库 eggcms 并不在数据库的列表中， 要显示它，我们需要向数据库插入一些数据。
db.eggcms.insert({ "name": "Lee" })


创建一张表
use eggcms

// 我们刚创建的数据库 eggcms 并不在数据库的列表中， 要显示它，我们需要向数据库插入一些数据。
 db.eggcms.insert({ "name": "Lee" })


查看当前数据库
db


创建集合
db.createCollection("users")

show collections


往集合里插入文档
db.COLLECTION_NAME.insert(document)

db.users.insert({
    name: 'lee', age: 18, status: 1,
})
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
