::tp.request::
::tprequest::
::tp.req::
::tpreq::
Var =
(
<?php
namespace app\index\controller;

use think\Request;

class Index
{
	// request参数是系统自动注入的
    public function hello(Request $request, $name = 'World')
    {
        // 获取当前URL地址 不含域名
		// 也可以不使用注入的$request，直接使用 $this->request->url()，甚至可以使用tp内置函数助手 request()->url()
        echo 'url: ' . $request->url() . '<br/>';
        return 'Hello,' . $name . '！';
    }
}
)
code(Var)
return

::tp.param::
::tp.params::
::tpparam::
::tpparams::
Var =
(
<?php
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
<?php
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
Var =
(
<?php
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
        Db::execute('insert into think_data (id, name ,status) values (?, ?, ?)', [8, 'thinkphp', 1]);
        $result = Db::query('select * from think_data where id = ?', [8]);
        dump($result);

        // 参数绑定之命名占位符（强烈推荐）
        Db::execute('insert into think_data (id, name , status) values (:id, :name, :status)', ['id' => 10, 'name' => 'thinkphp', 'status' => 1]);
        $result = Db::query('select * from think_data where id=:id', ['id' => 10]);
        dump($result);
    }
}
)
code(Var)
return