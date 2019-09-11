>+F::
	; 显示
	Gui, ISearch:Show,, ISearch
return


ISearchGuiEscape:
ISearchGuiClose:
	Gui, ISearch:Hide
return

; 全局变量
__AINFO__ := -1

; 打开函数（由于我不能使用全局变量，所以外部传递进来吧）
openthepath(_) {
	if (_ != -1) {
		LV_GetText(text, _, 2)
		StringLower, lowerText, text
		if (InStr(lowerText, "http") or InStr(lowerText, "c:") or InStr(lowerText, "d:") or InStr(lowerText, "e:") or InStr(lowerText, "g:") or InStr(lowerText, "f:") or InStr(lowerText, "h:")) {
			return lowerText
		}
	}
	return ""
}

MyListView:
if (A_GuiEvent = "Normal") {
   __AINFO__ := A_EventInfo 
}

if (A_GuiEvent = "RightClick") {
	__AINFO__ := A_EventInfo 
	run, % openthepath(__AINFO__)
}

if (A_GuiEvent = "DoubleClick") {
    LV_GetText(RowText1, A_EventInfo, 1)
    LV_GetText(RowText2, A_EventInfo, 2)
    Clipboard := RowText2
    ToolTip  已加入到剪切板： "%RowText2%"
    SetTimer, RemoveToolTip, -1000
}
return

RemoveToolTip:
ToolTip
return


ISearchContent:
    GuiControlGet, OutputVar, ISearch:, ISearchContent, Text	
	
	; 删除所有
	LV_Delete()
	
	; 遍历所有数据
	For key, value in __SEARCH_DATABASE__
		if (InStr(key, OutputVar) || InStr(value, OutputVar)) {
			LV_Add("", key, value)
		}
return

Open:
	data := openthepath(__AINFO__)
	if (data) {
		run, % data
	}
return


cmderOpen:
	data := openthepath(__AINFO__)
	if (data) {
		RunByCmder(data)
	}
return

vscodeOpen:
	data := openthepath(__AINFO__)
	if (data) {
		RunByVsCode(data)
	}
return

sublimeOpen:
	data := openthepath(__AINFO__)
	if (data) {
		RunBy(data)
	}
return