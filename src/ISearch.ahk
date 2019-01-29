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
return
