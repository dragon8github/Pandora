~^F12::
; 获取指定位置的数值
FileRead, key, C:\Users\lizhaohong\Desktop\keypressed.txt

; b 百度
if (key == 66) {
    RUN, http://www.cnblogs.com/cylee
}

; 输入R，redis的账号密码
if (key == 82) {
    ; 关闭输入法
    SwitchIME(0x08040804)
    ; 输入账号
    SendInput, sit
    ; 切换到密码框
    SendInput, {tab}
    Sleep 200
    ; 输入密码
    SendRaw, 172.16.200.113
    Sleep 200     
    SendInput, {tab}
    SendRaw, 6379
    Sleep 200   
    SendInput, {tab}
    SendRaw, hongte888
}

; 1 代表输入贷后系统的账号密码
if (key == 97) {
    SendInput, ^a
    ; 关闭输入法
    SwitchIME(0x08040804)
    ; 输入账号
    SendInput, admin-alms
    ; 切换到密码框
    SendInput, {tab}
    Sleep 200
    ; 输入密码
    SendRaw, hongte123
    Sleep 200
    SendInput, {enter}
}

; 2 代表输入信贷系统的账号密码
if (key == 98) {
    SendInput, ^a
    ; 关闭输入法
    SwitchIME(0x08040804)
    ; 输入账号
    SendInput, admin
    ; 切换到密码框
    SendInput, {tab}
    Sleep 200
    ; 输入密码
    SendRaw, hongte@2018
    Sleep 200
    SendInput, {enter}
}

; 3 代表输入薪资系统的账号密码
if (key == 99) {
    SendInput, ^a
    ; 关闭输入法
    SwitchIME(0x08040804)
    ; 输入账号
    SendInput, HX-04397
    ; 切换到密码框
    SendInput, {tab}
    Sleep 200
    ; 输入密码
    SendRaw, 123456
    Sleep 200
    SendInput, {enter}
}

; 9 代表输入博客园的账号密码
if (key == 105) {
SendInput, ^a
; 关闭输入法
SwitchIME(0x08040804)
Var = 
(
贝尔塔猫
)
code(Var)
; 切换到密码框
SendInput, {tab}
Sleep 200
; 输入密码
SendRaw, 202063sb_
Sleep 200
SendInput, {enter}
}

; 8 代表输入UC的账号密码
if (key == 104) {
    SendInput, ^a
    ; 关闭输入法
    SwitchIME(0x08040804)
    ; 输入账号
    SendInput, admin-uc
    ; 切换到密码框
    SendInput, {tab}
    Sleep 200
    ; 输入密码
    SendRaw, hongte123
    Sleep 200
    SendInput, {enter}
}

; 1 代表测试相关的，输入[身份确认]的资料
if (key == 49) {
    SendInput, ^a
    ; 关闭输入法
    SwitchIME(0x08040804)
    ; 输入账号
    SendInput, 石明志
    ; 切换到密码框
    SendInput, {tab}
    Sleep 200
    ; 输入密码
    SendRaw, 340321197506109897
    Sleep 200
    ; 切换到密码框
    SendInput, {tab}
    SendRaw, 13800138005
}

; 2 代表测试相关的，输入[登录]
if (key == 50) {
    SendInput, ^a
    ; 关闭输入法
    SwitchIME(0x08040804)
    ; 输入账号
    SendInput, 13794942971
    ; 切换到密码框
    SendInput, {tab}
    Sleep 200
    ; 输入密码
    SendRaw, 123456.a
}

; 【d】跳转到贷后系统
if (key == 68) {
    RUN, http://172.16.200.112:30601/index
}

; 【p】发送post代码
if (key == 80) {
Var = 
(
this.$http.post('/uaa/auth/login', {
    "userName": "admin-salary",
    "password": "123456"
}).then(result => {
    console.log(result);
}).catch(err => {
    this.$message.error('接口异常：' + err.message);
})
)
code(Var)
}

; 【p】发送post代码
if (key == 71) {
Var = 
(
this.$http.get('/uc/auth/loadMenu').then(result => {
    console.log(result);
}).catch(err => {
    this.$message.error('接口异常：' + err.message);
})
)
code(Var)
}

if (key == 76) {
    run, http://localhost:8080
}

if (key == 116) {
    Send, {F5}
}

if (key == 86) {
    run, http://vuejs.org/
    run, http://vuex.vuejs.org
    run, http://router.vuejs.org 
    run, https://github.com/opendigg/awesome-github-vue
}

if (key == 69) {
    run, http://element-cn.eleme.io/#/zh-CN/component/radio
    run, https://github.com/ElemeFE/element/blob/dev/packages/
    run, https://github.com/ElemeFE/mint-ui
    run, http://elemefe.github.io/mint-ui/#/
}

if (key == 88) {
    run, http://172.16.200.106:8083/
}

if (key == 83) {
    run, http://172.16.200.121:31501/index
}

if (key == 85) {
    run, http://172.16.200.110:30131/
}

if (key == 8) {
    send, {BackSpace}
}