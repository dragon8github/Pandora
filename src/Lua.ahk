~^F12::
; 获取指定位置的数值
FileRead, key, C:\Users\lizhaohong\Desktop\keypressed.txt

; b 博客园
if (key == 66) {
    RUN, http://www.cnblogs.com/cylee
}

input(V, select := false) {
    SwitchIME(0x08040804)
    if (select == true) {
        Send, ^a
    }
    SendRaw, % V
    Send, {tab}
    Sleep 200
}

; 输入R，redis的账号密码
if (key == 82) {
    input("sit")
    input("172.16.200.113")
    input("6379")
    input("hongte888")
}

; 【1】 代表输入贷后系统的账号密码
if (key == 97) {
    input("admin-alms")
    input("hongte123")
    SendInput, {enter}
}

; 【2】 代表输入信贷系统的账号密码
if (key == 98) {
    input("admin")
    input("hongte@2018")
    SendInput, {enter}
}

; 【3】 代表输入薪资系统的账号密码
if (key == 99) {
    input("HX-04397")
    input("123456")
    SendInput, {enter}
}

; 【9】 代表输入博客园的账号密码
if (key == 105) {
    input("贝尔塔猫")
    input("202063sb_")
    SendInput, {enter}
}

; 【8】 代表输入UC的账号密码
if (key == 104) {
    input("admin-uc")
    input("hongte123")
    SendInput, {enter}
}

; 【1】 代表测试相关的，输入[身份确认]的资料
if (key == 49) {
    input("石明志",true)
    input("340321197506109897")
    input("13800138005")
}

; 【3】 代表测试相关的，输入[身份确认]的资料
if (key == 51) {
    input("梁愿华",true)
    input("321315345553213123")
    input("张鑫")
    input("450203198605050730")
    input("13821262000")
}

; 【2】 代表测试相关的，输入[登录]
if (key == 50) {
    input("13794942971", true)
    input("123456.a")
}

; 【d】跳转到贷后系统
if (key == 68) {
    RUN, http://172.16.200.112:30601/index
}

; 打开本地链接localhost
if (key == 76) {
    Var := "http://" . A_IPAddress2 . ":8080"
    run, % Var
}

; F5
if (key == 116) {
    Send, {F5}
}

; 打开Vue全家桶
if (key == 86) {
    run, http://vuejs.org/
    run, http://vuex.vuejs.org
    run, http://router.vuejs.org 
    run, https://github.com/opendigg/awesome-github-vue
}

; 打开饿了么全家桶
if (key == 69) {
    run, http://element-cn.eleme.io/#/zh-CN/component/radio
    run, https://github.com/ElemeFE/element/blob/dev/packages/
    run, https://github.com/ElemeFE/mint-ui
    run, http://elemefe.github.io/mint-ui/#/
}

; 按下[x]，打开贷后系统
if (key == 88) {
    run, http://172.16.200.106:8092/
}

; 按下[s]，打开薪资系统
if (key == 83) {
    run, http://172.16.200.121:31501/index
}

; 按下[u]，打开用户权限系统
if (key == 85) {
    run, http://172.16.200.110:30131/
}

; BackSpace
if (key == 8) {
    send, {BackSpace}
}

; 按下C的时候执行ctrl + l,专门用来清空控制台的内容
if (key == 67) {
    Send, ^l
}

return