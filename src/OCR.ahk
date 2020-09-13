
getBase64(imgpath) {	
	Random, rand, 1, 100

	; 当前时间
	t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec . rand
	
	; 存储 txt 路径
	txtPath :=  A_Desktop . "\.pandora\" . t . ".txt"
	
	; certutil.exe -encode C:\Users\Lee\Desktop\.pandora\20200527120330.png C:\Users\Lee\Desktop\abcd.txt
	cmd := "certutil.exe -encode """ . imgpath . """ " . txtPath

	; 等待执行完成
	RunWait, % cmd
	
	; 开始判断文件，提取文本内容
    if FileExist(txtPath) {
        P_image := ""
		
        Loop, Read, %txtPath%
        {
            if InStr(A_LoopReadLine, "-----") = 0 and StrLen(A_LoopReadLine) > 0 {
                P_image := P_image A_LoopReadLine
            }
        }
		
		; 立刻删除它
		; FileDelete, % txtPath
		
        return P_image
    }
	
	return ""
}


; 网址，编码,请求方式，post数据
URLDownloadToVar(url, Encoding = "", Method = "GET", postData = "", headers := "") {
	
	hObject:=ComObjCreate("WinHttp.WinHttpRequest.5.1")
	
	; 设置超时
	hObject.SetTimeouts(30000, 30000, 1200000, 1200000)
	
	try
		; 打开连接
		hObject.Open(Method,url,(Method="POST" ? True : False))  
		
	;设置header
	if IsObject(headers) {
		for k,v in headers {
			if v
				hObject.SetRequestHeader(k, v)
		}
	}
	
	if postData	{
		try
			hObject.Send(postData)
		hObject.WaitForResponse(-1)
	} else	{
		try
			hObject.Send()
	}

	if (Encoding && hObject.ResponseBody) {
		oADO := ComObjCreate("adodb.stream")
		oADO.Type := 1
		oADO.Mode := 3
		oADO.Open()
		oADO.Write(hObject.ResponseBody)
		oADO.Position := 0
		oADO.Type := 2
		oADO.Charset := Encoding
		return oADO.ReadText(), oADO.Close()
	}
	
	return hObject.ResponseText
}


getBaiDuOcr(imgBase64, access_token) {
	; 百度API接口
    P_Url := "https://aip.baidubce.com/rest/2.0/ocr/v1/general_basic?access_token=" access_token
	
	; base64编码后进行urlencode，这是官方要求
    postdata := "image=" . urlencode(imgBase64)
			
	; 开始请求
    P_ReturnTxt := URLDownloadToVar(P_Url, "UTF-8", "POST", postdata, { "Content-Type":"application/x-www-form-urlencoded" })	
	
	; 解析为JSON格式
    P_Json := JSON.Load(P_ReturnTxt)
	
    if (P_Json.error_msg != "") {
        return P_Json.error_msg
	}
	
    wordsC := P_Json.words_result_num
	
    if wordsC > 1
    {
        Loop % wordsC
        {
            txtmp := txtmp P_Json.words_result[A_Index].words
            if C_n
            {
                txtmp := txtmp "`n"
            }
        }
        return txtmp
    }
    else
    {
        Return P_Json.words_result[1].words
    }
    Return 0
}


; grant_type： 必须参数，固定为client_credentials；
; client_id： 必须参数，应用的API Key；
; client_secret： 必须参数，应用的Secret Key；
; API Key：bKfR9Ot5LzMDOowRNRaT3MhN
; Secret Key：X2bGlt3PGHB5xVt3pefUSo0lgwXGFX2X 
; https://aip.baidubce.com/oauth/2.0/token?grant_type=client_credentials&client_id=bKfR9Ot5LzMDOowRNRaT3MhN&client_secret=X2bGlt3PGHB5xVt3pefUSo0lgwXGFX2X
getBaiDuAccessToken(client_id := "bKfR9Ot5LzMDOowRNRaT3MhN", client_secret := "X2bGlt3PGHB5xVt3pefUSo0lgwXGFX2X") {
	P_Url := "https://aip.baidubce.com/oauth/2.0/token?grant_type=client_credentials"
	
	P_Url := P_Url "&client_id=" client_id "&client_secret=" client_secret
	
	P_Json := JSON.Load(URLDownloadToVar(P_Url))
	
	P_access_token := P_Json.access_token
	
	return P_access_token
}


; 依赖 js = ActiveScript.ahk 进行解析 urlencode 
urlencode(base64) {
	jscontent := "function urlencode (str) {str = (str + '').toString(); return encodeURIComponent(str).replace(/!/g, '%21').replace(/'/g, '%27').replace(/\(/g, '%28'). replace(/\)/g, '%29').replace(/\*/g, '%2A').replace(/%20/g, '+'); }; urlencode('" . base64 . "');"
	
	script := new ActiveScript("JScript")
	
	Result := script.Eval(jscontent)
	
	return Result
}