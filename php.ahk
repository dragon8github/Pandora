::header::
Var = 
(
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Headers:Content-Type,Content-Length, Authorization,Origin,Accept,X-Requested-With');
header('Access-Control-Allow-Methods:GET,POST);
header('Access-Control-Allow-Credentials:true');
header("Content-type: text/html; charset=utf-8");
)
code(Var)
Return

::header-utf8::
    SendRaw, header("Content-type: text/html; charset=utf-8");
Return