!s:: 

	; 数据库操作
	Menu, A, Add, SELECT DATABASE(); -- 查看当前数据库, sqlHandler
	Menu, A, Add, SELECT now()`, user()`, version(); -- 显示当前时间、用户名、数据库版本, sqlHandler
	Menu, A, Add, CREATE DATABASE[ IF NOT EXISTS] 数据库名 数据库选项 -- 创建库, sqlHandler
	Menu, A, Add, SHOW DATABASES[ LIKE 'PATTERN'] -- 查看已有库, sqlHandler
	Menu, A, Add, SHOW CREATE DATABASE 数据库名 -- 查看当前库信息, sqlHandler
	Menu, A, Add, ALTER DATABASE 库名 选项信息 -- 修改库的选项信息, sqlHandler

	; 表的操作
	Menu, B, Add, 创建表, sqlHandler
	Menu, B, Add, SHOW TABLES FROM 数据库名 -- 查看所有表, sqlHandler
	Menu, B, Add, SHOW CREATE TABLE 表名 -- 查看表结构, sqlHandler
	Menu, B, Add, SHOW CREATE TABLE 表名 -- 查看表结构, sqlHandler
	Menu, B, Add,  ALTER TABLE 表名 表的选项 --修改表, sqlHandler
	Menu, B, Add, DROP TABLE[ IF EXISTS] 表名 -- 删除表, sqlHandler
	Menu, B, Add, TRUNCATE [TABLE] 表名 -- 清空表数据, sqlHandler
	Menu, B, Add, CREATE TABLE 表名 LIKE 要复制的表名 -- 复制表结构, sqlHandler
	Menu, B, Add, CREATE TABLE 表名 [AS] SELECT * FROM 要复制的表名 -- 复制表结构和数据, sqlHandler
	
	; 数据操作
	Menu, C, Add, INSERT [INTO] 表名 [(字段列表)] VALUES (值列表)[`, (值列表)`, ...] -- 增, sqlHandler
	Menu, C, Add, SELECT 字段列表 FROM 表名[ 其他子句] -- 查, sqlHandler
	Menu, C, Add, DELETE FROM 表名[ 删除条件子句] -- 删, sqlHandler
	Menu, C, Add, UPDATE 表名 SET 字段名=新值[`, 字段名=新值] [更新条件] -- 改, sqlHandler

	; 杂项 / SHOW
	Menu, Z, Add, SHOW PROCESSLIST -- 显示哪些线程正在运行, sqlHandler
	Menu, Z, Add, SHOW VARIABLES -- 显示系统变量信息, sqlHandler

	
	
	Menu, ShellMenu, Add, 数据操作, :C
	Menu, ShellMenu, Add, 数据库操作, :A
	Menu, ShellMenu, Add, 表的操作, :B
	Menu, ShellMenu, Add, 字符集编码, sqlHandler
	Menu, ShellMenu, Add, 数据类型（列类型）大全, sqlHandler
	Menu, ShellMenu, Add, 列属性（列约束）大全, sqlHandler
	Menu, ShellMenu, Add, SELECT大全, sqlHandler
	Menu, ShellMenu, Add, INSERT, sqlHandler
	Menu, ShellMenu, Add, DELETE, sqlHandler
	Menu, ShellMenu, Add, 子查询	, sqlHandler
	Menu, ShellMenu, Add, 连接查询(join), sqlHandler
	Menu, ShellMenu, Add, 事务(transaction), sqlHandler
	Menu, ShellMenu, Add, 锁表, sqlHandler
	Menu, ShellMenu, Add, 触发器, sqlHandler
	Menu, ShellMenu, Add, 导出/导入表数据, sqlHandler
	Menu, ShellMenu, Add, TRUNCATE 清空数据/删除重建表, sqlHandler
	Menu, ShellMenu, Add, 备份与还原, sqlHandler
	Menu, ShellMenu, Add, 视图, sqlHandler
	Menu, ShellMenu, Add, SQL编程 / 存储过程, sqlHandler
	Menu, ShellMenu, Add, 用户和权限管理, sqlHandler
	Menu, ShellMenu, Add, （Windows）启动MySQL / 创建Mysql服务, sqlHandler
	Menu, ShellMenu, Add, 连接mysql服务器, sqlHandler
	Menu, ShellMenu, Add, 杂项 / SHOW, :Z

	Menu, ShellMenu, Show
	Menu, ShellMenu, DeleteAll
return


sqlHandler:
v := A_ThisMenuItem
Var :=

if (v == "（Windows）启动MySQL / 创建Mysql服务") {
Var = 
(
-- 启动MySQL
    net start mysql
-- 创建Windows服务
    sc create mysql binPath= mysqld_bin_path(注意：等号与值之间有空格)
)
}

if (v == "") {
Var = 
(

)
}

if (v == "连接mysql服务器") {
Var = 
(
mysql -h 地址 -P 端口 -u 用户名 -p 密码
)
}

if (v == "SELECT DATABASE(); -- 查看当前数据库") {
Var = 
(
SELECT DATABASE(); -- 查看当前数据库
)
}

if (v == "SELECT now()`, user()`, version(); -- 显示当前时间、用户名、数据库版本") {
Var = 
(
SELECT now()`, user()`, version(); -- 显示当前时间、用户名、数据库版本
)
}

if (v == "CREATE DATABASE[ IF NOT EXISTS] 数据库名 数据库选项 -- 创建库") {
Var = 
(
CREATE DATABASE[ IF NOT EXISTS] 数据库名 数据库选项
数据库选项：
    CHARACTER SET charset_name
    COLLATE collation_name
)
}

if (v == "SHOW DATABASES[ LIKE 'PATTERN'] -- 查看已有库") {
Var = 
(
SHOW DATABASES[ LIKE 'PATTERN'] -- 查看已有库
)
}

if (v == "SHOW CREATE DATABASE 数据库名 -- 查看当前库信息") {
Var = 
(
SHOW CREATE DATABASE 数据库名 -- 查看当前库信息
)
}

if (v == "ALTER DATABASE 库名 选项信息 -- 修改库的选项信息") {
Var = 
(
ALTER DATABASE 库名 选项信息 -- 修改库的选项信息
)
}

if (v == "DROP DATABASE[ IF EXISTS] 数据库名 -- 删除库") {
Var = 
(
DROP DATABASE[ IF EXISTS] 数据库名 -- 删除库
)
}

if (v == "INSERT [INTO] 表名 [(字段列表)] VALUES (值列表)[`, (值列表)`, ...] -- 增") {
Var = 
(
INSERT [INTO] 表名 [(字段列表)] VALUES (值列表)[, (值列表), ...]
    -- 如果要插入的值列表包含所有字段并且顺序一致，则可以省略字段列表。
    -- 可同时插入多条数据记录！
    REPLACE 与 INSERT 完全一样，可互换。
INSERT [INTO] 表名 SET 字段名=值[, 字段名=值, ...]
)
}

if (v == "SELECT 字段列表 FROM 表名[ 其他子句] -- 查") {
Var = 
(
SELECT 字段列表 FROM 表名[ 其他子句]
    -- 可来自多个表的多个字段
    -- 其他子句可以不使用
    -- 字段列表可以用*代替，表示所有字段
)
}

if (v == "DELETE FROM 表名[ 删除条件子句] -- 删") {
Var = 
(
DELETE FROM 表名[ 删除条件子句]
-- 没有条件子句，则会删除全部
)
}

if (v == "UPDATE 表名 SET 字段名=新值[`, 字段名=新值] [更新条件] -- 改") {
Var = 
(
UPDATE 表名 SET 字段名=新值[, 字段名=新值] [更新条件]
)
}


code(Var)
return

::sqls::
::sql.s::
::sqs::
Var =
(
SELECT * FROM Table WHERE 1=1
)
code(Var)
Send, {left 10}
Send, {ShiftDown}{left 5}{ShiftUp}
return