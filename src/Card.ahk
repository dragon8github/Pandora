>+g::
	Gui, Card:Show,, Card
return

initCard() {
	; 获取 gists 所有代码片段
	data := gistList()
	
	; 获取方法 code 的索引
	HFN := Func("code")
	
	; 遍历所有片段
	For key, value in data {
		; 遍历 files ，但目前我只获取第一个即可
		For key2, value2 in value.files {
			; 加入变量
			cardGistObj[value.description] := { content: value2.content, label: key2 }
			; 添加到树中
			LV_Add("", value.description, key2)
			; 加入热键
			Hotstring(":?:" . key2, HFN.bind(value2.content))
			; 只拿第一个，如果有需要以后再说
			break
		}
	}
	
	; 自动适应宽度
	LV_ModifyCol()
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
		Clipboard := content 
		ToolTip  已加入到剪切板： "%content%"
		SetTimer, RemoveToolTip, -1000
	}
}