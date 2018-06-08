
; 创建专属目录
if !FileExist(".pandora")
	FileCreateDir, .pandora
	; 创建缓存目录
	if !FileExist(".pandora/.cache")
		FileCreateDir, .pandora/.cache
	
	


~^c::
~^x::
    filename := A_WorkingDir . "\.pandora\.cache\" . A_YYYY . A_MM . A_DD . ".txt"
    Var := Clipboard
	Clipboard := 
    Send, ^c
	ClipWait
    if (Var != Clipboard and StrLen(Trim(StrReplace(Clipboard, "`r`n"))) != 0) {
        time := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
        FileAppend, __________________%time%__________________`r`n`r`n%Clipboard%`r`n`r`n, *%filename%
    }
return

!t::
    filename := A_WorkingDir . "\.pandora\.cache\" . A_YYYY . A_MM . A_DD . ".txt"
	if FileExist(filename)
		run, %filename%
return