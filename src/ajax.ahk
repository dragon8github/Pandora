AppsKey & a::
>^a::
::ajax::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
$.ajax({
    url: "http://localhost:3000",
    type: "post",
    data: JSON.stringify({
        test: 123
    }),
    headers: {
        token: '123'
    },
    dataType: 'json',
    contentType: 'application/json;charset=utf-8',
    success: function (data) {
        console.log(%t%, data);
    },
    error: function(e, m){
       console.log('数据接口请求异常', e, m);
    }
})
)
code(Var)
Return

::xhrajax::
::_ajax::
::xhr::
::_xhr::
Var =
(
var request = new XMLHttpRequest();
// 由于request.Send() 只能发送POST参数，所以如果你想使用GET请求，就不要使用Send（）来传递参数，而是直接在URL后拼接参数即可。
request.open('POST', '/my/url', true);
request.onload = function() {
  if (request.status >= 200 && request.status < 400) {
    // Success!
    window.alert('Success!');
    var resp = request.responseText;
    console.log(resp)
  } else {
  	// Fail
  	 window.alert('Fail');
  }
};

request.onerror = function() {
	window.alert('Error!');
};

request.send();
)
code(Var)
return

::ajax.get::
::ajaxget::
::getajax::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
$.ajax({
    url: getPostUrl('http://192.168.8.199:8080') + "/api/dcfda/catering/fdaCateringOrder/searchDTO",
    type: "get",
    dataType: 'json',
    contentType: 'application/json;charset=utf-8',
    success: function (data) {
        console.log(%t%, data)
    }
})
)
code(Var)
return


::formajax::
::ajaxform::
::ajax.form::
::form.ajax::
::postform::
Var =
(
// 其他form提交方式（如a=b&c=d）请参考：https://www.cnblogs.com/CyLee/p/9441535.html
$(function(){
  var formData = new FormData();
  formData.append("username", "Groucho");
  formData.append("accountnum", 123456);

  $.ajax({
      url: "http://fuckyou.com/test.php",
      type: "post",
      data: formData,
      processData:false,
      contentType:false,
      success: function (data) {
          console.log(data);
      }
  })
})
)
code(Var)
return

::formajax2::
::formstringajax::
::formstrajax::
::formobjajax::
::ajaxformstring::
::ajaxformstr::
::ajaxformobj::
::form.ajax2::
Var =
(
var obj2formdata = (body) => {
    let formparams = '';
    Object.keys(body).forEach(key => {
         if (formparams.length > 0) {
           formparams += '&';
         }
         formparams = formparams + key + '=' + body[key];
    });
    return formparams
}

var request = new XMLHttpRequest();
request.open("POST", "http://fuckyou.com/test.php", true);
request.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
request.send(obj2formdata({a: 'b', c: 'd'}));
)
code(Var)
return