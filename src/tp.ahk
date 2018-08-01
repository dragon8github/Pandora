::tp.request::
::tprequest::
::tp.req::
::tpreq::
::tp.param::
::tp.params::
::tpparam::
::tpparams::
Var =
(
<?php
// https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478286
namespace app\index\controller;

use think\Request;

class Index
{
    public function hello(Request $request)
    {
        echo '请求参数：';
        // 或者可以使用助手函数input: dump(input());/input('name');
        dump($request->param());
        echo 'name:'.$request->param('name');

        // 支持过滤（参数，默认值，过滤方法）
        echo 'name:'.$request->param('name','World','strtoupper');
        echo '<br/>test:'.$request->param('test','thinkphp','strtolower');

        // 其他获取参数的方法
        echo 'GET参数：';
        dump($request->get());
        echo 'GET参数：name';
        dump($request->get('name'));
        echo 'POST参数：name';
        dump($request->post('name'));
        echo 'cookie参数：name';
        dump($request->cookie('name'));
        echo '上传文件信息：image';
        dump($request->file('image'));

        // 获取请求参数
        echo '请求方法：' . $request->method() . '<br/>';
        echo '资源类型：' . $request->type() . '<br/>';
        echo '访问IP：' . $request->ip() . '<br/>';
        echo '是否AJax请求：' . var_export($request->isAjax(), true) . '<br/>';
        echo '请求参数：';
        dump($request->param());
        echo '请求参数：仅包含name';
        dump($request->only(['name']));
        echo '请求参数：排除name';
        dump($request->except(['name']));

        // 获取URL信息
        // 获取当前域名
        echo 'domain: ' . $request->domain() . '<br/>';
        // 获取当前入口文件
        echo 'file: ' . $request->baseFile() . '<br/>';
        // 获取当前URL地址 不含域名
        echo 'url: ' . $request->url() . '<br/>';
        // 获取包含域名的完整URL地址
        echo 'url with domain: ' . $request->url(true) . '<br/>';
        // 获取当前URL地址 不含QUERY_STRING
        echo 'url without query: ' . $request->baseUrl() . '<br/>';
        // 获取URL访问的ROOT地址
        echo 'root:' . $request->root() . '<br/>';
        // 获取URL访问的ROOT地址
        echo 'root with domain: ' . $request->root(true) . '<br/>';
        // 获取URL地址中的PATH_INFO信息
        echo 'pathinfo: ' . $request->pathinfo() . '<br/>';
        // 获取URL地址中的PATH_INFO信息 不含后缀
        echo 'pathinfo: ' . $request->path() . '<br/>';
        // 获取URL地址中的后缀信息
        echo 'ext: ' . $request->ext() . '<br/>';

        // 获取当前模块/控制器/操作信息
        echo '模块：'.$request->module();
        echo '<br/>控制器：'.$request->controller();
        echo '<br/>操作：'.$request->action();

        // 获取路由和调度信息
        echo '路由信息：';
        dump($request->routeInfo());
        echo '调度信息：';
        dump($request->dispatch());
    }
}
)
code(Var)
return

::tp.response::
::tpresponse::
::tp.res::
::tpres::
::tp.resp::
::tpresp::
Var =
(
<?php
// https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478287
namespace app\index\controller;

class Index
{
    public function hello()
    {
        $data = ['name' => 'thinkphp', 'status' => '1'];
        // 指定状态码：return json($data, 201);
        // 指定头信息：return json($data, 201, ['Cache-control' => 'no-cache,must-revalidate']);
        // 也可以这样指定头信息：return json($data)->code(201)->header(['Cache-control' => 'no-cache,must-revalidate']);
        // 当然还可以使用各种数据类型：xml、jsonp、json、view、redirect
        return xml($data);
    }
}
)
code(Var)
return

::tp.redirect::
::tp.chongdingxiang::
Var =
(
<?php
// https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478287
namespace app\index\controller;

class Index
{
    // 这是PHP5.4版本的新特性，如果你的控制器类是继承的\think\Controller的话，无需再次引入
    use \traits\controller\Jump;

    public function hello($name = '')
    {
        if ('thinkphp' == $name) {
            $this->success('欢迎使用ThinkPHP5.0','index');
        } elseif ('fuck' == strtolower($name)) {
            $this->redirect('http://thinkphp.cn');
        } else {
            $this->error('错误的name','guest');
        }
    }

    public function index()
    {
        return 'Hello,ThinkPHP!';
    }

    public function guest()
    {
        return 'Hello,Guest!';
    }
}
)
code(Var)
return

::tp.CURD::
::tp.db::
::tp.database::
::tpCURD::
::tpdb::
::tpdatabase::
::tp.orm::
::tprom::
::tpshiwu::
::tp.shiwu::
::tptrans::
::tp.trans::
::tptransaction::
::tp.transaction::
Var =
(
<?php
// 原生sql操作：https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478291
// ORM：https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478292
// 事务支持：https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478294
namespace app\index\controller;
use think\Db;
/**
CREATE TABLE IF NOT EXISTS ``think_data``(
``id`` int(8) unsigned NOT NULL AUTO_INCREMENT,
``name`` varchar(255) NOT NULL COMMENT '名称',
``status`` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
PRIMARY KEY (``id``)
`) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
INSERT INTO ``think_data``(``id``,``name``,``status``) VALUES
(1,'thinkphp',1),
(2,'onethink',1),
(3,'topthink',1);
*/
class Index
{
    public function hello($name = '')
    {
        // 插入记录
        $result = Db::execute('insert into think_data (id, name ,status) values (5, "thinkphp",1)');
        // int(1)
        dump($result);

        // 更新记录
        $result = Db::execute('update think_data set name = "framework" where id = 5 ');
        // int(1)
        dump($result);

        // 查询数据
        $result = Db::query('select * from think_data where id = 5');
        // array
        dump($result);

        // 删除数据
        $result = Db::execute('delete from think_data where id = 5 ');
        // int(1)
        dump($result);

        // 显示数据库列表
        $result = Db::query('show tables from tp');
        // array
        dump($result);

        // 参数绑定之占位符（个人不推荐）
        Db::execute('delete from think_data where id = ?', [8]);
        Db::execute('insert into think_data (id, name ,status) values (?, ?, ?)', [8, 'thinkphp', 1]);
        $result = Db::query('select * from think_data where id = ?', [8]);
        dump($result);

        // 参数绑定之命名占位符（强烈推荐）
        Db::execute('delete from think_data where id = ?', [10]);
        Db::execute('insert into think_data (id, name , status) values (:id, :name, :status)', ['id' => 10, 'name' => 'thinkphp', 'status' => 1]);
        $result = Db::query('select * from think_data where id=:id', ['id' => 10]);
        dump($result);


        // 由于配置了数据表的前缀为think_，所以这里简写为db('data')，而且也必须是这样。
        $db = db('data');
        // 插入记录
        $db->insert(['id' => 18, 'name' => 'thinkphp', 'status' => 1]);
        // 更新记录
        $db->where('id', 18)->update(['name' => "hello"]);
        // 查询数据
        $list = $db->field('name,status')->where('id', 18)->select();
        // 删除数据
        $db->where('id', 18)->delete();

        // 数据库复杂查询链式操作：查询十个满足条件的数据 并按照id倒序排列
        $list = Db::name('data')
            ->where('status', 1)
            ->field('id,name')
            ->order('id', 'desc')
            ->limit(10)
            ->select();
        dump($list);

        // 事务支持（由于需要用到事务的功能，请先修改数据表的类型为InnoDB，而不是MyISAM。）
        // 对于事务的支持，最简单的方法就是使用transaction方法
        Db::transaction(function () {
            Db::table('think_data')->delete(1);
            // 这条语句会因为重复的key报错，所以会回滚操作，上面的delete操作也会失效
            Db::table('think_data')->insert(['id' => 8, 'name' => 'thinkphp', 'status' => 1]);
        });

        // 也可以手动控制事务的提交，而且try...catch...的好处是不会引发报错。
        Db::startTrans();
        try {
            Db::table('think_data')->delete(1);
            Db::table('think_data')->insert(['id' => 28, 'name' => 'thinkphp', 'status' => 1]);
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
        }
    }
}
)
code(Var)
return

::tp.query::
::tpquery::
Var =
(
<?php
// 原生sql操作：https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478291
// ORM：https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478292
// 事务支持：https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478294
// 各种查询语言表达式：https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/478295
namespace app\index\controller;
use think\Db;
/**
CREATE TABLE IF NOT EXISTS ``think_data``(
``id`` int(8) unsigned NOT NULL AUTO_INCREMENT,
``name`` varchar(255) NOT NULL COMMENT '名称',
``status`` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
PRIMARY KEY (``id``)
`) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
INSERT INTO ``think_data``(``id``,``name``,``status``) VALUES
(1,'thinkphp',1),
(2,'onethink',1),
(3,'topthink',1);
*/
class Index
{
    // 表达式                含义
    // EQ、=                等于（=）
    // NEQ、<>              不等于（<>）
    // GT、>                大于（>）
    // EGT、>=              大于等于（>=）
    // LT、<                小于（<）
    // ELT、<=              小于等于（<=）
    // LIKE                模糊查询
    // [NOT] BETWEEN       （不在）区间查询
    // [NOT] IN            （不在）IN 查询
    // [NOT] NULL          查询字段是否（不）是NULL
    // [NOT] EXISTS        EXISTS查询
    // EXP                 表达式查询，支持SQL语法
    public function hello($name = '')
    {
        // 由于配置了数据表的前缀为think_，所以这里简写为db('data')，而且也必须是这样。
        $db = Db::name('data');
        // 默认表达式为“=”，也就等同于：$result = Db::name('data') ->where('id', '=', 1) ->find();
        $result = $db->where('id', 1)->find();
        dump($result);

        // 如果使用EXP条件表达式的话，表示后面是原生的SQL语句表达式
        // select方法用于查询数据集，如果查询成功，返回的是一个二维数组
        $result = Db::name('data') ->where('id', 'exp', '>= 1') ->limit(10) ->select();
        dump($result);

        // 如果要查询id的范围，可以使用：
        $result = Db::name('data')->where('id', 'in', [1, 2, 3]) ->select();
        // 或者：$result = Db::name('data')->where('id', 'between', [5, 8]) ->select();
        dump($result);

        // 使用多次where
        $result = Db::name('data')
            // id 在 1到3之间的
            ->where('id', 'between', [1, 3])
            // name 中包含think
            ->where('name', 'like', '%think%')
            ->select();
        dump($result);

        // 如果要查询某个字段是否为NULL，可以使用：(必须将字段设计为允许null，然后将值右键设置为null才可以测试哦)
        $result = Db::name('data') ->where('name', 'null') ->select();
        dump($result);

        // 使用一次where，多个查询条件
        $result = Db::name('data')
            ->where([
                'id'   => ['between', '1,3'],
                'name' => ['like', '%think%'],
            ])->select();
        dump($result);

        // 一些复杂的用法，使用OR和AND混合条件查询
        $result = Db::name('data')
            ->where('name', 'like', '%think%')
            ->where('id', ['in', [1, 2, 3]], ['between', '5,8'], 'or')
            ->limit(10)
            ->select();
        dump($result);

        // 多个字段需要使用相同的查询条件，可以使用快捷查询
        $result = Db::name('data')
            // 例如，我们要查询id和status都大于0的数据，等价于：SELECT * FROM `think_data` WHERE ( `id` > 0 AND `status` > 0 ) LIMIT 10
            ->where('id&status', '>', 0)
            ->limit(10)
            ->select();
        dump($result);

        // 也可以使用or，等价于：SELECT * FROM `think_data` WHERE ( `id` > 0 OR `status` > 0 ) LIMIT 10
        $result = Db::name('data')
            ->where('id|status', '>', 0)
            ->limit(10)
            ->select();
        dump($result);

        // find() 和 select() 方法可以直接使用闭包查询（其实就是省略最后的->select()和->find()）
        $result = Db::name('data')->select(function ($query) {
            $query->where('name', 'like', '%think%')
                ->where('id', 'in', '1,2,3')
                ->limit(10);
        });
        dump($result);

        // 获取列数据，使用column方法
        $list = Db::name('data')
            ->where('status', 1)
            ->column('name');
        dump($list);

        // 聚合查询：count、max、min、avg、sum
        // 统计data表的数据
        $count = Db::name('data')
            ->where('status', 1)
            ->count();
        dump($count);

        // 统计user表的最高分
        $max = Db::name('user')
            ->where('status', 1)
            ->max('score');
        dump($max);

        // where 参数注入
        $result = Db::name('data')
            ->where('id > :id AND name IS NOT NULL', ['id' => 10])
            ->select();
        dump($result);
    }
}
)
code(Var)
return

::tp.model::
::tpmodel::
Var =
(
<?php
namespace app\index\model;

use think\Model;

/**
    CREATE TABLE IF NOT EXISTS ``think_user``(
    ``id`` int(8) unsigned NOT NULL AUTO_INCREMENT,
    ``nickname`` varchar(50) NOT NULL COMMENT '昵称',
    ``email`` varchar(255) NULL DEFAULT NULL COMMENT '邮箱',
    ``birthday`` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '生日',
    ``status`` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
    ``create_time`` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '注册时间',
    ``update_time`` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
    PRIMARY KEY (``id``)
    `) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;
 **/
class User extends Model
{
    // 设置数据表（不含前缀），如果想自动包含前缀，可以定义$name： protected $name = 'user';
    protected $table = 'think_user';
}
)
code(Var)
return

::tpconnect::
::tp.connect::
::tp.$connect::
::tp.model.connect::
::tp.model.$connect::
Var =
(
// 设置单独的数据库连接
protected $connection = [
	// 数据库类型
	'type'        => 'mysql',
	// 服务器地址
	'hostname'    => '127.0.0.1',
	// 数据库名
	'database'    => 'test',
	// 数据库用户名
	'username'    => 'root',
	// 数据库密码
	'password'    => '',
	// 数据库连接端口
	'hostport'    => '',
	// 数据库连接参数
	'params'      => [],
	// 数据库编码默认采用utf8
	'charset'     => 'utf8',
	// 数据库表前缀
	'prefix'      => 'think_',
	// 数据库调试模式
	'debug'       => true,
];
)
code(Var)
return

::tp.model.controler::
::tp.modelcontroler::
::tp.modelc::
::tp.model.use::
::tp.modeluse::
::tp.model.fuck::
::tp.modelfuck::
Var =
(
<?php
namespace app\index\controller;
// https://www.kancloud.cn/thinkphp/thinkphp5_quickstart/147285
// 为了避免和当前类重名，可以使用 as 重命名来解决： use app\index\model\User as UserModel; $user  = new UserModel;
use app\index\model\User;

// tp5.com/index/index/add
class Index
{
    // 新增用户数据
    // User::create(array $user)
    public function add()
    {
        $user           = new User;
        $user->nickname = '李钊鸿';
        $user->email    = 'thinkphp@qq.com';
        $user->birthday = strtotime('1977-07-10');
        // 默认是insert操作
        if ($user->save()) {
            return '用户[ ' . $user->nickname . ':' . $user->id . ' ]新增成功';
        } else {
            return $user->getError();
        }
    }

    // 批量新增用户数据
    public function addList()
    {
        $user = new User;
        $list = [
            ['nickname' => '张三', 'email' => 'zhanghsan@qq.com', 'birthday' => strtotime('1988-01-15')],
            ['nickname' => '李四', 'email' => 'lisi@qq.com', 'birthday' => strtotime('1990-09-19')],
        ];
        if ($user->saveAll($list)) {
            return '用户批量新增成功';
        } else {
            return $user->getError();
        }
    }

    // 读取用户数据
    // http://tp5.com/index/index/read/id/1
    public function read($id='')
    {
        // 可以通过getByAttr 语法来获取指定的字段，如根据Email字段来获取数据：$user = User::getByEmail('thinkphp@qq.com');
        // 也可以通过传入数组查询条件：$user = User::get(['nickname'=>'流年']);
        // 还可以使用闭包 + 查询构建器：$user = User::get(function($query){ $query->where('nickname', '流年')->where('id', '>', 10)->order('id','desc'); });
        $user = User::get($id);
        echo $user->nickname . '<br/>';
        echo $user->email . '<br/>';
        echo date('Y/m/d', $user->birthday) . '<br/>';
    }

    // 查询多个数据
    public function readList() {
        // 可以直接传入数组条件查询
        // 依然可以使用闭包 + 构造器：$list = User::all(function ($query) { $query->where('id', '<', 3)->order('id', 'desc'); });
        $list = User::all(['status' => 0]);
        foreach ($list as $user) {
            echo $user->nickname . '<br/>';
            echo $user->email . '<br/>';
            echo date('Y/m/d', $user->birthday) . '<br/>';
            echo '----------------------------------<br/>';
        }
    }

    // 更新用户数据
    // http://tp5.com/index/index/update/id/1
    // User::update(array $user);
    public function update($id)
    {
        $user           = User::get($id);
        $user->nickname = '刘晨';
        $user->email    = 'liu21st@gmail.com';
        $user->save();
        return '更新用户成功';
    }

    // 删除用户数据
    // http://tp5.com/index/index/delete/id/4
    // User::destroy(int $id);
    public function delete($id)
    {
        $user = User::get($id);
        if ($user) {
            $user->delete();
            return '删除用户成功';
        } else {
            return '删除的用户不存在';
        }
    }
}
)
code(Var)
return

::tp.reader::
::tp.getter::
::tp.setter::
::tp.set::
::tp.read::
::tpread::
::tpreader::
::tpmodelattr::
::tpmodelget::
::tpmodelgetter::
::tpgetter::
::tpsetter::
::tp.model.read::
::tp.model.reader::
::tp.model.attr::
::tp.model.get::
::tp.model.getter::
::tp.model.setter:
Var =
(
<?php
namespace app\index\model;

use think\Model;

/**
    CREATE TABLE IF NOT EXISTS ``think_user``(
    ``id`` int(8) unsigned NOT NULL AUTO_INCREMENT,
    ``nickname`` varchar(50) NOT NULL COMMENT '昵称',
    ``email`` varchar(255) NULL DEFAULT NULL COMMENT '邮箱',
    ``birthday`` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '生日',
    ``status`` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
    ``create_time`` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '注册时间',
    ``update_time`` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
    PRIMARY KEY (``id``)
    `) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;
 **/
class User extends Model
{
    // 设置数据表（不含前缀），如果想自动包含前缀，可以定义$name： protected $name = 'user';
    protected $table = 'think_user';

    // birthday读取器（getter）
    protected function getBirthdayAttr($birthday)
    {
        return date('Y-m-d', $birthday);
    }

    // 读取器还可以定义读取数据表中不存在的属性，譬如以下这个 user_birthday 读取器
    protected function getUserBirthdayAttr($value,$data)
    {
        // 这里的读取器方法使用了第二个参数，表示传入所有的属性数据。因为原始的user_birthday属性数据是不存在的，所以我们需要通过data参数获取。
        return date('Y/m/d', $data['birthday']);
    }

    // birthday修改器（setter）
    protected function setBirthdayAttr($value)
    {
        // 由于birthday属性是时间戳（整型）格式的，因此我们必须在写入数据前进行时间戳转换
        return strtotime($value);
    }
}
)
code(Var)
return

::tp.controler::
::tp.c::
Var =
(
<?php
namespace app\index\controller;

class User
{
    // 创建用户数据页面
    public function create()
    {
        return view('user/create');
    }
}
)
code(Var)
return

::tp.autotime::
::tp.autofinish::
::tp.aotu::
::tp.model.autotime::
::tp.model.autofinish::
::tp.model.aotu::
Var =
(

)
code(Var)
return