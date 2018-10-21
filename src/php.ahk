::jsonphp::
::phpjson::
Var =
(
header("Access-Control-Allow-Origin:*"); 
header('Access-Control-Allow-Headers:x-requested-with,content-type'); 
$rws_post = $GLOBALS['HTTP_RAW_POST_DATA'];
var_dump($rws_post);
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
Var = 
(
<?php 
    // http://www.cnblogs.com/CyLee/p/7644380.html
    header("Access-Control-Allow-Origin:*"); 
    header('Access-Control-Allow-Headers:x-requested-with,content-type');

    $rws_post = $GLOBALS['HTTP_RAW_POST_DATA'];
    $mypost = json_decode($rws_post);
    print_r($mypost);
?>
)
code(Var)
return

::php.header::
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

::header-utf8::
::header.utf8::
    SendRaw, header("Content-type: text/html; charset=utf-8");
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