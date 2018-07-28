::tp.request::
::tprequest::
Var =
(
<?php
namespace app\index\controller;

use think\Request;

class Index
{
    public function hello(Request $request, $name = 'World')
    {
        // 获取当前URL地址 不含域名
		// 也可以使用$this->request->url()
        echo 'url: ' . $request->url() . '<br/>';
        return 'Hello,' . $name . '！';
    }
}
)
code(Var)
return