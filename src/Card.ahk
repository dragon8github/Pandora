>+g::
	Gui, Card:Show,, Card
return

initCard() {
	data := gistList()
	
	; 遍历所有片段
	For key, value in data {
		; 遍历 files ，但目前我只获取第一个即可
		For key2, value2 in value.files {
			; 加入变量
			cardGistObj[value.description] := value2.content
			; 添加到树中
			LV_Add("", value.description, key2)
			; 只拿第一个，如果有需要以后再说
			break
		}
	}
	
	; 自动适应宽度
	LV_ModifyCol()
}

SwitchCardTab() {

}

CardTreeSelect() {
	index := A_EventInfo
	LV_GetText(RowText, A_EventInfo)
	content := cardGistObj[RowText]
	
	if (A_GuiEvent = "Normal") {
		GuiControl, Card:Text, CardContent, % content 
	}
	
	if (A_GuiEvent = "RightClick") {
		Clipboard := content 
		ToolTip  已加入到剪切板： "%RowText2%"
		SetTimer, RemoveToolTip, -1000
	}

	if (A_GuiEvent = "DoubleClick") {
		Clipboard := content 
		ToolTip  已加入到剪切板： "%RowText2%"
		SetTimer, RemoveToolTip, -1000
	}
}