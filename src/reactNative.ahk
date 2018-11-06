!n::
	Menu, ShellMenu, Add, react-native run-android, ReactNativeHandler2
	Menu, ShellMenu, Add, react-native start, ReactNativeHandler2
	Menu, ShellMenu, Add, adb reverse tcp:8081 tcp:8081, ReactNativeHandler2
	Menu, ShellMenu, Add, adb devices, ReactNativeHandler2
	
	Menu, ShellMenu, Add, , ReactNativeHandler
	Menu, ShellMenu, Add, , ReactNativeHandler
	
	Menu, ShellMenu, Add, This.forceUpdate()强制启动更新, ReactNativeHandler


	Menu, ShellMenu, Show
	Menu, ShellMenu, DeleteAll
return

ReactNativeHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(

)
}

if (v == "This.forceUpdate()强制启动更新") {
Var =
(
This.forceUpdate()
)
}

code(Var)
return

ReactNativeHandler2:
v := A_ThisMenuItem
SendInput, %A_ThisMenuItem%
return
