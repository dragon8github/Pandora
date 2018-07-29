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

        // 使用多个查询条件
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
    }
}
)
code(Var)
return