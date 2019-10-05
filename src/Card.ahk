>+g::
	Gui, Card:Show,, 知识卡片
	
	; 由于点击 button 的时候会失去焦点，所以我必须找一个变量，存储上一次点击的ListView
	global currentSelectSnippets := {}
return

CardGuiEscape:
CardGuiClose:
	Gui, Book:Hide
return

getGists(access_token) {
	; 初始化文件夹
	DIRECTORY := pandoraFolderInit()
	; 存储数据的文件路径
	filename := DIRECTORY . "\.Gists.json"
	; 读取内容
	FileRead, OutputVar, %filename%
	
	; 如果没有数据存在的话，那么重新请求。
	if (!OutputVar) {
		; getAccessToken
		accessToken := getAccessToken()
		; 获取 gists 所有代码片段
		data := gistList(access_token)
		; 删除旧文件，不管是否存在
		FileDelete, % filename
		; 插入数据
		FileAppend, % JSON.Dump(data),  %filename%
		return data
	} else {
		; 如果存在的话，那么直接序列化返回即可。
		return JSON.load(OutputVar)
	}
}

initCard() {
	; 删除所有
	LV_Delete()
	
	; 获取当前输入框的内容
	GuiControlGet, access_token, Card:, CardAccessToken, Text
	
	if (!access_token)
		return
	
	; 获取 gists 的数据
	data := getGists(access_token)
	
	; 获取方法 『code』 的索引
    HFN := Func("code")
    
    ; 遍历所有片段
    For key, value in data {
        ; 遍历 files ，但目前我只获取第一个即可。所以进行一次我就 break 了
        For __key__, __value__ in value.files {
            ; 描述
            desc := value.description
            ; 代码内容
            content := __value__.content

            ; （重要）加入变量
            cardGistObj[desc] := { content: content, label: __key__, id: value.id, desc: desc }
            ; （重要）添加到树中
            LV_Add("", desc,  __key__)
            ; （重要）加入热键
            Hotstring(":?:" . __key__, HFN.bind(content))

            ; 只拿第一个，所以循环一次就中断了。如果有需要以后再说。
            break
        }
    }
    
    ; 自动适应宽度
    LV_ModifyCol()
	
	; 聚焦 search input
	GuiControl, Focus, CardSearchInput
}

CardAccessTokenHandler() {

}


UpdateGist() {
	; 获取当前输入框的内容
	GuiControlGet, access_token, Card:, CardAccessToken, Text
	
	; 初始化文件夹
	DIRECTORY := pandoraFolderInit()
	; access_token 存储文件
	filename := DIRECTORY . "/.access_token"
	; gists 存储文件
	jsonfilename := DIRECTORY . "/.Gists.json"
	
	; 删除旧内容（删除内容）
	FileDelete, % filename 
	FileDelete, % jsonfilename
	
	; 新增
	FileAppend, %access_token%,  %filename%
	
	; 调用初始化
	initCard()
}

CardInputHandler() {
    GuiControlGet, OutputVar, Card:, CardSearchInput, Text	
	
	; 删除所有
	LV_Delete()
	
	; 遍历所有数据
	For key, value in cardGistObj
		; 如果还希望检索内容，则可以加入： InStr(value.content, OutputVar)
		if (InStr(key, OutputVar) || InStr(value.label, OutputVar)) {
			LV_Add("", key, value.label)
		}
}

getAccessToken() {
	FileRead, OutputVar, %A_Desktop%\.pandora\.access_token
	return OutputVar
}

SwitchCardTab() {

}

CardTreeSelect() {
	; 获取点击的索引
	index := A_EventInfo
	
	; 获取标题
	LV_GetText(RowText, A_EventInfo)
	
	; 获取内容
	content := cardGistObj[RowText].content
	
	if (A_GuiEvent == "I" && InStr(ErrorLevel, "SF", true)) {
		currentSelectSnippets := cardGistObj[RowText]
		GuiControl, Card:Text, CardContent, % content
	}
	
	if (A_GuiEvent = "Normal") {
		; GuiControl, Card:Text, CardContent, % content 
	}
	
	if (A_GuiEvent = "RightClick") {
		Clipboard := content 
		ToolTip  已加入到剪切板： "%content%"
		SetTimer, RemoveToolTip, -1000
	}

	if (A_GuiEvent = "DoubleClick") {
		; TODO: 弹出一个文本框，支持修改。
	}
}

CardUpdateHandler() {
	; 获取当前的 access_token
	GuiControlGet, access_token, Card:, CardAccessToken, Text
	; 获取当前的label
	label := currentSelectSnippets.label 
	; 获取最新的content
	GuiControlGet, content, Card:, CardContent, Text
	; 获取描述
	desc := currentSelectSnippets.desc 
	
	
	data := {}
	data.access_token := access_token
	data.files := {}
	data.files[label] := { content: content } 
}


saveWhereDelete(desc, label, content) {
	; 初始化文件夹
	DIRECTORY := pandoraFolderInit()
	; 存储数据的文件路径
	filename := DIRECTORY . "\.r"
	; content
	content := "__________________ " . title . " 【" . desc . "】 " . " 【" . label . "】 " . "__________________ `r`n`r`n" . content . "`r`n`r`n`r`n`r`n"
	; append
	FileAppend, %content%, %filename%
}

CardDeleteHandler() {
	; 通过这个原来也可以获取。 但只是获取索引，根本不靠谱，如果是搜索状态下，肯定不对。
	; MsgBox, % LV_GetNext(0, "Focused")
	
	; 获取当前选择的id
	id := currentSelectSnippets.id
	; 获取当前选择的 desc
	desc := currentSelectSnippets.desc 
	; 获取当前选择的 label
	label := currentSelectSnippets.label 
	; 当前内容
	content := currentSelectSnippets.content
	; 文本框id
	GuiControlGet, access_token, Card:, CardAccessToken, Text
	
	; 弹出提示
	MsgBox, 4,, 你确定要删除『%desc% - %label%』吗？(press Yes or No)
	
	; 取消的话，直接中断
	IfMsgBox No
		return
	
	saveWhereDelete(desc, label, content)
	result := delete("https://gitee.com/api/v5/gists/" . id . "?access_token=" . access_token)
	; 重新请求数据
	UpdateGist()
}