+Space::
	; 显示
	Gui, ISearch:Show,, ISearch
return


ISearchGuiEscape:
ISearchGuiClose:
	Gui, ISearch:Hide
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
	
return