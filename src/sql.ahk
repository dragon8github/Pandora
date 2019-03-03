; !s:: 
; 	; 数据库操作
; 	Menu, sqlMenuA, Add, SELECT DATABASE(); -- 查看当前数据库, sqlHandler
; 	Menu, sqlMenuA, Add
; 	Menu, sqlMenuA, Add, SHOW DATABASES[ LIKE 'PATTERN'] -- 查看已有库, sqlHandler
; 	Menu, sqlMenuA, Add
; 	Menu, sqlMenuA, Add, SHOW CREATE DATABASE 数据库名 -- 查看当前库信息, sqlHandler
; 	Menu, sqlMenuA, Add
; 	Menu, sqlMenuA, Add, ALTER DATABASE 库名 选项信息 -- 修改库的选项信息, sqlHandler

; 	; 表的操作
; 	Menu, sqlMenuB, Add, SHOW TABLES -- 查看所有表, sqlHandler
; 	Menu, sqlMenuB, Add
; 	Menu, sqlMenuB, Add, SHOW CREATE TABLE 表名 -- 查看表结构, sqlHandler
; 	Menu, sqlMenuB, Add
; 	Menu, sqlMenuB, Add, ALTER TABLE 表名 表的选项 --修改表, sqlHandler
; 	Menu, sqlMenuB, Add
; 	Menu, sqlMenuB, Add, DROP TABLE[ IF EXISTS] 表名 -- 删除表, sqlHandler
; 	Menu, sqlMenuB, Add
; 	Menu, sqlMenuB, Add, TRUNCATE [TABLE] 表名 -- 清空表数据, sqlHandler
	
; 	; 数据操作
; 	Menu, sqlMenuC, Add, INSERT 增, sqlHandler
; 	Menu, sqlMenuC, Add
; 	Menu, sqlMenuC, Add, SELECT 查, sqlHandler
; 	Menu, sqlMenuC, Add
; 	Menu, sqlMenuC, Add, DELETE 删, sqlHandler
; 	Menu, sqlMenuC, Add
; 	Menu, sqlMenuC, Add, UPDATE 改, sqlHandler

; 	; ______________________________________________________
; 	Menu, sqlMenu, Add, 表, :sqlMenuB
; 	Menu, sqlMenu, Add, 库, :sqlMenuA
; 	Menu, sqlMenu, Add, CRUD, :sqlMenuC

; 	Menu, sqlMenu, Add,, :sqlHandler
; 	Menu, sqlMenu, Add,, :sqlHandler

; 	Menu, sqlMenu, Add, 字符集编码, sqlHandler
; 	Menu, sqlMenu, Add, 数据类型, sqlHandler
; 	Menu, sqlMenu, Add, 列属性, sqlHandler

; 	Menu, sqlMenu, Add,, :sqlHandler
; 	Menu, sqlMenu, Add,, :sqlHandler

; 	Menu, sqlMenu, Add, SELECT, sqlHandler
; 	Menu, sqlMenu, Add, INSERT, sqlHandler
; 	Menu, sqlMenu, Add, DELETE, sqlHandler
; 	Menu, sqlMenu, Add, 子查询, sqlHandler
; 	Menu, sqlMenu, Add, 连接查询(join), sqlHandler

; 	Menu, sqlMenu, Add,, :sqlHandler
; 	Menu, sqlMenu, Add,, :sqlHandler

; 	Menu, sqlMenu, Add, 事务(transaction), sqlHandler
; 	Menu, sqlMenu, Add, 锁表, sqlHandler
; 	Menu, sqlMenu, Add, 触发器, sqlHandler
; 	Menu, sqlMenu, Add, SQL编程 / 存储过程, sqlHandler
; 	Menu, sqlMenu, Add, 视图, sqlHandler

; 	Menu, sqlMenu, Add,, :sqlHandler
; 	Menu, sqlMenu, Add,, :sqlHandler

; 	Menu, sqlMenu, Add, 导出/导入表数据, sqlHandler
; 	Menu, sqlMenu, Add, TRUNCATE 清空数据/删除重建表, sqlHandler
; 	Menu, sqlMenu, Add, 备份与还原, sqlHandler
; 	Menu, sqlMenu, Add, 用户和权限管理, sqlHandler

; 	Menu, sqlMenu, Add,, :sqlHandler
; 	Menu, sqlMenu, Add,, :sqlHandler

; 	Menu, sqlMenu, Add, 连接mysql服务器, sqlHandler
; 	Menu, sqlMenu, Add, 启动MySQL / 创建Mysql服务（Windows）, sqlHandler
; 	Menu, sqlMenu, Add, SHOW PROCESSLIST -- 显示哪些线程正在运行, sqlHandler
; 	Menu, sqlMenu, Add, SHOW VARIABLES -- 显示系统变量信息, sqlHandler
; 	Menu, sqlMenu, Add, SELECT now()`, user()`, version(); -- 显示当前时间、用户名、数据库版本, sqlHandler

; 	Menu, sqlMenu, Show
; 	Menu, sqlMenu, DeleteAll
; 	Menu, sqlMenuA, DeleteAll
; 	Menu, sqlMenuB, DeleteAll
; 	Menu, sqlMenuC, DeleteAll
; return


; sqlHandler:
; v := A_ThisMenuItem
; Var :=

; if (v == "") {
; Var = 
; (

; )
; }

; if (v == "SHOW TABLES -- 查看所有表") {
; Var = 
; (
; SHOW TABLES -- [FROM 数据库名]
; )
; }

; if (v == "启动MySQL / 创建Mysql服务（Windows）") {
; Var = 
; (
; -- 启动MySQL
;     net start mysql
; -- 创建Windows服务
;     sc create mysql binPath= mysqld_bin_path(注意：等号与值之间有空格)
; )
; }

; if (v == "连接mysql服务器") {
; Var = 
; (
; mysql -h 地址 -P 端口 -u 用户名 -p 密码
; )
; }

; if (v == "SELECT DATABASE(); -- 查看当前数据库") {
; Var = 
; (
; SELECT DATABASE(); -- 查看当前数据库
; )
; }

; if (v == "SELECT now()`, user()`, version(); -- 显示当前时间、用户名、数据库版本") {
; Var = 
; (
; SELECT now()`, user()`, version(); -- 显示当前时间、用户名、数据库版本
; )
; }

; if (v == "SHOW DATABASES[ LIKE 'PATTERN'] -- 查看已有库") {
; Var = 
; (
; SHOW DATABASES[ LIKE 'PATTERN'] -- 查看已有库
; )
; }

; if (v == "SHOW CREATE DATABASE 数据库名 -- 查看当前库信息") {
; Var = 
; (
; SHOW CREATE DATABASE 数据库名 -- 查看当前库信息
; )
; }

; if (v == "ALTER DATABASE 库名 选项信息 -- 修改库的选项信息") {
; Var = 
; (
; ALTER DATABASE 库名 选项信息 -- 修改库的选项信息
; )
; }

; if (v == "DROP DATABASE[ IF EXISTS] 数据库名 -- 删除库") {
; Var = 
; (
; DROP DATABASE[ IF EXISTS] 数据库名 -- 删除库
; )
; }

; if (v == "INSERT 增") {
; Var = 
; (
; -- INSERT [INTO] 表名 SET 字段名=值[, 字段名=值, ...]
; INSERT [INTO] 表名 [(字段列表)] VALUES (值列表)[, (值列表), ...] 
; )
; }

; if (v == "SELECT 查") {
; Var = 
; (
; SELECT 字段列表 FROM 表名[ 其他子句]
; )
; }

; if (v == "DELETE 删") {
; Var = 
; (
; DELETE FROM 表名[ 删除条件子句] -- 没有条件子句，则会删除全部
; )
; }

; if (v == "UPDATE 改") {
; Var = 
; (
; UPDATE 表名 SET 字段名=新值[, 字段名=新值] [更新条件]
; )
; }

; SendInput, % Var
; return

::sqls::
::sql.s::
::sqs::
::select::
Var =
(
SELECT * FROM Table WHERE 1=1
)
code(Var)
Send, {left 10}
Send, {ShiftDown}{left 5}{ShiftUp}
return

::sql.createtable::
::sql.ct::
::sql.ctable::
Var =
(
CREATE TABLE ``NewTable`` (
	``orderId``  int NOT NULL ,
	``acceptTime``  varchar(50) NULL ,
	``accepttime``   varchar(500) NULL ,
	``title``   varchar(500) NULL ,
	``content``   varchar(500) NULL ,
	``problemtype``   varchar(500) NULL ,
	``departname``   varchar(500) NULL ,
	``itemname``   varchar(500) NULL ,
	``hlcatalogname``   varchar(500) NULL ,
	``source``   varchar(500) NULL ,
	``isdistribute``   varchar(500) NULL ,
	``streetname``   varchar(500) NULL ,
	``lat``   varchar(500) NULL ,
	``lng``   varchar(500) NULL ,
	``twoconsitemname``   varchar(500) NULL ,
	``twoconstypename``   varchar(500) NULL ,
	``donetime``   varchar(500) NULL ,
	``timelimit``   varchar(500) NULL ,
	``urgency``   varchar(500) NULL ,
	``state``   varchar(500) NULL ,
	``overdue``   varchar(500) NULL ,
	``departaccepttime``   varchar(500) NULL ,
	``overdueflag``   varchar(500) NULL ,
	PRIMARY KEY (``orderId``)
`);
)
code(Var)
return

::sqli::
::sql.inserts::
::sql.i::
Var =
(
INSERT INTO ``article`` VALUES ('3', 'hello', 'world'),('4', 'fuck', 'you');
)
cs(Var)
return

