!h::
    Menu, phpMenu, Add, php.header, phpHandler2
    
    Menu, phpMenu, Show
    Menu, phpMenu, DeleteAll
return

phpHandler2:
_send(A_ThisMenuItem, true, true)
return

phpHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var = 
(
)
}

code(Var)
return

::php.new::
::newphp::
::php.test::
Var =
(
<?php 

header('Content-Type: application/json; charset=utf-8');

class userinfo {
    var $user_name;
    var $user_ip;
    var $user_logintime;
    var $user_token;
}

$u = new userinfo();
$u->user_name = "贝尔塔猫";
$u->user_logintime = time();
$u->user_ip = "127.0.0.1";
$u->user_token = uniqid();
// $result = serialize($u); 

$data = array('msg' => '请求成功', 'code' => 200, 'data' => $u);
echo json_encode($data);

?>
)
code(Var)
return

::php.class::
::php.model::
::php.m::
Var =
(
<?php 

header('Content-Type: application/json; charset=utf-8');

class userinfo {
    var $user_name;
    var $user_ip;
    var $user_logintime;
    var $user_token;
}

$u = new userinfo();
$u->user_name = "贝尔塔猫";
$u->user_logintime = time();
$u->user_ip = "127.0.0.1";
$u->user_token = uniqid();
// $result = serialize($u); 

$data = array('msg' => '请求成功', 'code' => 200, 'data' => $u);
echo json_encode($data);

?>
)
code(Var)
return

::php.log::
::phplog::
Var =
(
function WriteLog($msg,$module = null,$logLevel = "DEBUG")
{
    $filepath = "./log/";
    if(!is_dir($filepath)) mkdir($filepath,'0777');
    $MyLogFile = @fopen($filepath.date("Y-m-d").".txt",'a+');

    $time = date("Y-m-d H:i:s");
    if(isset($module)){$module =  sprintf("\r\n归属模块：".$module."\r\n");}
    $logLine = "\r\n-------------------------------  $time -------------------------------\r\n";
    $logLine .= $module;
    $logLine .= "\r\n异常信息：$msg\r\n";
    $logLine .= "\r\n错误等级：$logLevel\r\n";
    fwrite($MyLogFile,$logLine);
}

WriteLog("test");
)
code(Var)
return

::php.jsonp::
Var =
(
$rws_post = $GLOBALS['HTTP_RAW_POST_DATA'];
$mypost = json_decode($rws_post);
)
code(Var)
return


::php.jsons::
Var =
(
json_encode($_REQUEST)
)
code(Var)
return

::phpmatch::
::php_match::
::preg_match::
::php-match::
Var = 
(
// 过滤中文
function getEn2 ($str) {
    // 如果存在中文，那么只取英文并且返回
    if (preg_match('~[\x{4e00}-\x{9fa5}]+~u', $str)) {
        preg_match('/\[(.+?)\](\s|_)([a-zA-Z]+)/', $str, $pat_array);
        return $pat_array[count($pat_array) - 1];
    }   
    return $str;
}
)
code(Var)
return

::php_post::
::php.post::
::phppost::
::jsonpost::
::php.json::
::php::
Var = 
(
<?php
    // http://www.cnblogs.com/CyLee/p/7644380.html
    header("Access-Control-Allow-Origin:*");
    header('Access-Control-Allow-Headers:x-requested-with,content-type');


    // var_dump($GLOBALS['HTTP_RAW_POST_DATA']);
    // var_dump($_REQUEST);
    // var_dump($_SERVER["CONTENT_TYPE"]);
    // var_dump($_SERVER["REQUEST_METHOD"]);
    // var_dump($_SERVER);
    // var_dump($_FILES);

    $rws_post = $GLOBALS['HTTP_RAW_POST_DATA'];
    $mypost = json_decode($rws_post);
    print_r($rws_post);
?>
)
code(Var)
return


::php.header::
::phpheader::
::header.php::
Var = 
(
header('Access-Control-Allow-Origin:*');
// https://www.cnblogs.com/CyLee/p/7644380.html
header('Access-Control-Allow-Headers:x-requested-with,content-type'); 
header('Access-Control-Allow-Headers:Content-Type,Content-Length, Authorization,Origin,Accept,X-Requested-With, token, app');
header('Access-Control-Allow-Methods:GET,POST');
header('Access-Control-Allow-Credentials:true');
header("Content-type: text/html; charset=utf-8");
)
code(Var)
Return


::curl::
Var = 
(
function http_post($url,$param){
        $oCurl = curl_init();
        if(stripos($url,"https://")!==FALSE){
            curl_setopt($oCurl, CURLOPT_SSL_VERIFYPEER, FALSE);
            curl_setopt($oCurl, CURLOPT_SSL_VERIFYHOST, false);
        }
        if (is_string($param)) {
            $strPOST = $param;
        } else {
            $aPOST = array();
            foreach($param as $key=>$val){
                $aPOST[] = $key."=".urlencode($val);
            }
            $strPOST =  join("&", $aPOST);
        }
        curl_setopt($oCurl, CURLOPT_URL, $url);
        curl_setopt($oCurl, CURLOPT_RETURNTRANSFER, 1 );
        curl_setopt($oCurl, CURLOPT_POST,true);
        curl_setopt($oCurl, CURLOPT_POSTFIELDS,$strPOST);
        $sContent = curl_exec($oCurl);
        $aStatus = curl_getinfo($oCurl);
        curl_close($oCurl);
        if(intval($aStatus["http_code"])==200){
            return $sContent;
        }else{
            return false;
        }
}
)
code(Var)
return

::curl2::
Var = 
(
define("CURL_TIMEOUT",   20); 
//发起网络请求
function call($url, $args=null, $method="post", $testflag = 0, $timeout = CURL_TIMEOUT, $headers=array())
{/*{{{*/
    $ret = false;
    $i = 0; 
    while($ret === false) 
    {
        if($i > 1)
            break;
        if($i > 0) 
        {
            sleep(1);
        }
        $ret = callOnce($url, $args, $method, false, $timeout, $headers);
        $i++;
    }
    return $ret;
}/*}}}*/

function callOnce($url, $args=null, $method="post", $withCookie = false, $timeout = CURL_TIMEOUT, $headers=array())
{/*{{{*/
    $ch = curl_init();
    if($method == "post") 
    {
        $data = convert($args);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_POST, 1);
    }
    else 
    {
        $data = convert($args);
        if($data) 
        {
            if(stripos($url, "?") > 0) 
            {
                $url .= "&$data";
            }
            else 
            {
                $url .= "?$data";
            }
        }
    }
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    if(!empty($headers)) 
    {
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    }
    if($withCookie)
    {
        curl_setopt($ch, CURLOPT_COOKIEJAR, $_COOKIE);
    }
    $r = curl_exec($ch);
    curl_close($ch);
    return $r;
}/*}}}*/

$args = array('q' => $query, 'appid' => APP_ID, 'salt' => rand(10000,99999), 'from' => $from, 'to' => $to);
define("URL","http://api.fanyi.baidu.com/api/trans/vip/translate"); 
$ret = call(URL, $args);
)
code(Var)
return