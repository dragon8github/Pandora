<?php
error_reporting(0);
define("CURL_TIMEOUT",   20); 
define("URL",            "http://openapi.youdao.com/api"); 
define("APP_KEY",         "69ab873bf6b202ef"); //替换为您的应用ID
define("SEC_KEY",        "mnJjOaydLZzB60HNfP60peuVvhPUoQgr");//替换为您的密钥

//翻译入口
function translate($query, $from, $to)
{
    $args = array(
        'q' => $query,
        'appKey' => APP_KEY,
        'salt' => rand(10000,99999),
        'from' => $from,
        'to' => $to,

    );
    $args['sign'] = buildSign(APP_KEY, $query, $args['salt'], SEC_KEY);
    $ret = call(URL, $args);
    // echo $ret;
    $ret = json_decode($ret, true);
    return $ret; 
}

//加密
function buildSign($appKey, $query, $salt, $secKey)
{/*{{{*/
    $str = $appKey . $query . $salt . $secKey;
    $ret = md5($str);
    return $ret;
}/*}}}*/

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

function convert(&$args)
{/*{{{*/
    $data = '';
    if (is_array($args))
    {
        foreach ($args as $key=>$val)
        {
            if (is_array($val))
            {
                foreach ($val as $k=>$v)
                {
                    $data .= $key.'['.$k.']='.rawurlencode($v).'&';
                }
            }
            else
            {
                $data .="$key=".rawurlencode($val)."&";
            }
        }
        return trim($data, "&");
    }
    return $args;
}/*}}}*/

// 驼峰写法
function toUp ($str) {
    return preg_replace_callback('/\s(\w)|-(\w)/', function ($matches) {
        if (count($matches) > 2) {
            return strtoupper($matches[2]);
        }
        return strtoupper($matches[1]);
    }, $str);
}

// 从数组中，找出不包含中文的结果（已废弃）
function getEn ($arr_str) {
    // 如果最终都有中文，那么就随便返回第一个吧。管它死活
    $data = $arr_str[0];
    for ($i = 0; $i < count($arr_str); $i++) {
        // 如果不存在中文，直接返回
        if (!preg_match('~[\x{4e00}-\x{9fa5}]+~u', $arr_str[$i])) {
            return $data = $arr_str[$i];
        }       
    }
    return $data;
}

// 过滤中文
function getEn2 ($str) {
    // 如果存在中文，那么只取英文并且返回
    if (preg_match('~[\x{4e00}-\x{9fa5}]+~u', $str)) {
        preg_match('/\[(.+?)\](\s|_)([a-zA-Z]+)/', $str, $pat_array);
        return $pat_array[count($pat_array) - 1];
    }   
    return $str;
}

if ($_GET["text"]) {
    // 调用有道API
    $ret = translate($_GET["text"], "zh-CHS", "EN");
    // 随便获取第一个即可，去掉中文
    $data = getEn2($ret["basic"]["explains"][0]);
    // 先小写再说
    $data = strtolower($data);
    // 默认返回源单词
    if ($_GET['type'] == null) {
        exit($data);
    } else if ($_GET['type'] == 'tuofeng') {
        // 支持驼峰
        exit(toUp($data));
    } else if ($_GET['type'] == '-') {
        // 中划线
        exit(preg_replace('/\s|\-/i', '-', $data));
    } else if ($_GET['type'] == '_') {
        // 下划线
        exit(preg_replace('/\s|\-/i', '_', $data));
    } else {
        // 其他情况返回下划线
        exit(preg_replace('/\s|\-/i', '_', $data));
    }
}
?>