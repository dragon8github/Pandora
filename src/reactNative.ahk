﻿!n::
	Menu, ShellMenu, Add, react-native run-android, ReactNativeHandler2
	Menu, ShellMenu, Add, react-native start, ReactNativeHandler2
	Menu, ShellMenu, Add, adb reverse tcp:8081 tcp:8081, ReactNativeHandler2
	Menu, ShellMenu, Add, adb devices, ReactNativeHandler2
	Menu, ShellMenu, Add, watchman watch-del-all && react-native start --reset-cache, ReactNativeHandler2
	Menu, ShellMenu, Add, monitor, ReactNativeHandler2
	

	Menu, ShellMenu, Add, , ReactNativeHandler
	Menu, ShellMenu, Add, , ReactNativeHandler
	
	Menu, ShellMenu, Add, RN.init 初始化模板, ReactNativeHandler
	Menu, ShellMenu, Add, import { ... } from 'react-native', ReactNativeHandler
	Menu, ShellMenu, Add, style={styles.container}, ReactNativeHandler
	Menu, ShellMenu, Add, constructor, ReactNativeHandler
	Menu, ShellMenu, Add, setState 合并状态机最简语法, ReactNativeHandler
	Menu, ShellMenu, Add, setState(oldV => {}`, () => {}) 合并状态机复杂用法, ReactNativeHandler
	Menu, ShellMenu, Add, This.forceUpdate()强制启动更新, ReactNativeHandler
	Menu, ShellMenu, Add, shouldComponentUpdate 是否放弃渲染, ReactNativeHandler
	
	Menu, ShellMenu, Add, , ReactNativeHandler
	Menu, ShellMenu, Add, , ReactNativeHandler
	
	
	Menu, ShellMenu, Add, TextInput-onChnageText, ReactNativeHandler
	

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

if (v == "setState(oldV => {}, () => {}) 合并状态机复杂用法") {
Var =
(
updateNum(v) {
  this.setState(oldV => {
  	console.log(oldV)
  	return {
  		inputNum: newText,
  	}
  }, () => {
  	console.log('我是回调函数')
  })
}
)
}

if (v == "TextInput-onChnageText") {
Var =
(
onChnageText={this.updatePW}
)
}

if (v == "constructor") {
Var =
(
constructor(props) {
  super(props)
  this.state = {
	  inputNum: '',
	  inputPW: '',
  }
  this.updatePW = this.updatePW.bind(this)
}
)
}

if (v == "setState 合并状态机最简语法") {
Var =
(
this.setState(() => {
  return {
    inputNum: 123
  }
})
)
}

if (v == "style={styles.container}") {
Var =
(
style={styles.container}
)
code(Var)
Send, {left}
Send, {ShiftDown}{Left 9}{ShiftUp}
return
}

if (v == "RN.init 初始化模板") {
Var =
(
import React, { Component } from 'react'
import { StyleSheet, Text, View, Dimensions, TextInput } from 'react-native'

export default class LearnRN extends Component {
  render () {
    return (
      <View style={styles.container}>

      </View>
    `)
  }
}

let styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'white',
  },
})
)
}

if (v == "import { ... } from 'react-native'") {
Var =
(
import { AppRegister, StyleSheet, Text, View, Dimensions, TextInput } from 'react-native'
)
}

if (v == "shouldComponentUpdate 是否放弃渲染") {
Var =
(
// 如果这个函数返回false，ReactNative将放弃渲染组件
shouldComponentUpdate() {
	if (this.state.inputNum.length < 3) return false;
	return true;
}
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

::rn.init::
::rninit::
::rntmp::
Var =
(
import React, { Component } from 'react'
import { StyleSheet, Text, View, Dimensions, TextInput } from 'react-native'

export default class LearnRN extends Component {
  render () {
    return (
      <View style={styles.container}>
        
      </View>
    `)
  }
}

let styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'white',
  },
})
)
code(Var)
return

::rn.gz::
::rngz::
Var =
(
constructor(props) {
  super(props)
  this.state = {
	  inputNum: '',
	  inputPW: '',
  }
  this.updatePW = this.updatePW.bind(this)
}
)
code(Var)
return