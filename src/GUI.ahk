Gui, Add, Text, gAllSearchA W120, 搜索引擎类:
Gui, Add, Checkbox, gMySubroutine Checked HwndMyEditHwnd vbd, 百度
Gui, Add, Checkbox, vgoogle, Google
Gui, Add, Checkbox, vgithub, Github
Gui, Add, Checkbox, vso, Stack Overflow

Gui, Add, Text, gAllSearchB W120 ym, 翻译类:
Gui, Add, Checkbox, vbdfy, 百度翻译   
Gui, Add, Checkbox, vyoudaofy, 有道翻译
Gui, Add, Checkbox, vgooglefanyi, Google翻译

Gui, Add, Text, gAllSearchC W120 ym, 音乐类:
Gui, Add, Checkbox, vwy, 网易云音乐   
Gui, Add, Checkbox, vqq, QQ音乐
Gui, Add, Checkbox, vdog, 酷狗音乐
Gui, Add, Checkbox, vxiami, 虾米音乐

Gui, Add, Text, gAllSearchD W120 ym, 社区类:
Gui, Add, Checkbox, vjuejin, 掘金
Gui, Add, Checkbox, vjianshu, 简书
Gui, Add, Checkbox, vcsdn, CSDN
Gui, Add, Checkbox, vzhihu, 知乎
Gui, Add, Checkbox, vsegmentfault, SegmentFault

Gui, Add, Text, gAllSearchE W120 ym, 购物类:
Gui, Add, Checkbox, vtaobao, 淘宝
Gui, Add, Checkbox, vtianmao, 天猫
Gui, Add, Checkbox, vjingdong, 京东
Gui, Add, Checkbox, vdangdang, 当当

; ym 可以 y轴换列，有点类似float:left ，而 xm可以换行,有点类似clear:both
Gui, Add, Edit, r9 vSearchContent w300 Limit50 ym , 
Gui, Color, E6FFE6
Gui, Margin, 10, 10
Gui, Add, Button, w300 h30, OK
Gui, Show,, Simple Input Example
return 

; +g 其实就是添加吧
MySubroutine:
	/*
		MsgBox, %MyEditHwnd%
		MsgBox, %A_EventInfo%, %A_GuiEvent%, %A_GuiControl%, %A_Gui%
	*/
return

isAllSearchA := false
AllSearchA:
	isAllSearchA := !isAllSearchA
	if (isAllSearchA) {
		GuiControl,, bd, 1 
		GuiControl,, google, 1 
		GuiControl,, so, 1 
		GuiControl,, github, 1 
	} else {
		GuiControl,, bd, 0
		GuiControl,, google, 0
		GuiControl,, so, 0
		GuiControl,, github, 0
	}
return

isAllSearchB := false
AllSearchB:
	isAllSearchB := !isAllSearchB
	if (isAllSearchB) {
		GuiControl,, bdfy, 1 
		GuiControl,, youdaofy, 1 
		GuiControl,, googlefanyi, 1 
	} else {
		GuiControl,, bdfy, 0
		GuiControl,, youdaofy, 0
		GuiControl,, googlefanyi, 0
	}
return

isAllSearchC := false
AllSearchC:
	isAllSearchC := !isAllSearchC
	if (isAllSearchC) {
		GuiControl,, wy, 1 
		GuiControl,, qq, 1 
		GuiControl,, dog, 1 
		GuiControl,, xiami, 1 
	} else {
		GuiControl,, wy, 0
		GuiControl,, qq, 0
		GuiControl,, dog, 0
		GuiControl,, xiami, 0
	}
return

isAllSearchD := false
AllSearchD:
	isAllSearchD := !isAllSearchD
	if (isAllSearchD) {
		GuiControl,, juejin, 1 
		GuiControl,, jianshu, 1 
		GuiControl,, csdn, 1 
		GuiControl,, zhihu, 1 
		GuiControl,, segmentfault, 1 
	} else {
		GuiControl,, juejin, 0
		GuiControl,, jianshu, 0
		GuiControl,, csdn, 0
		GuiControl,, zhihu, 0
		GuiControl,, segmentfault, 0
	}
return

isAllSearchE := false
AllSearchE:
	isAllSearchE := !isAllSearchE
	if (isAllSearchE) {
		GuiControl,, taobao, 1 
		GuiControl,, tianmao, 1 
		GuiControl,, jingdong, 1 
		GuiControl,, dangdang, 1 
	} else {
		GuiControl,, taobao, 0
		GuiControl,, tianmao, 0
		GuiControl,, jingdong, 0
		GuiControl,, dangdang, 0
	}
return


GuiClose:
ButtonOK:
Gui, Submit

; 百度
if (bd == 1) {
	RUN, https://www.baidu.com/s?wd=%SearchContent%
}

; Google
if (google == 1) {
	RUN, http://
}

; Github
if (github == 1) {
	RUN, http://
}

; Stack Overfl
if (so == 1) {
	RUN, http://
}

; 百度翻译   
if (bdfy == 1) {
	RUN, http://
}

; 有道翻译
if (youdaofy == 1) {
	RUN, http://
}

; Google翻译
if (googlefanyi == 1) {
	RUN, http://
}

; 网易云音乐   
if (wy == 1) {
	RUN, http://
}

; QQ音乐
if (qq == 1) {
	RUN, http://
}

; 酷狗音乐
if (dog == 1) {
	RUN, http://
}

; 虾米音乐
if (xiami == 1) {
	RUN, http://
}

; 掘金
if (juejin == 1) {
	RUN, http://
}

; 简书
if (jianshu == 1) {
	RUN, http://
}

; CSDN
if (csdn == 1) {
	RUN, http://
}

; 知乎
if (zhihu == 1) {
	RUN, http://
}

; SegmentFault
if (segmentfault == 1) {
	RUN, http://
}

; 淘宝
if (taobao == 1) {
	RUN, http://
}

; 天猫
if (tianmao == 1) {
	RUN, http://
}

; 京东
if (jingdong == 1) {
	RUN, http://
}

; 当当
if (dangdang == 1) {
	RUN, http://
}
return