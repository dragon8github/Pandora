::nojq::
    Send, http://youmightnotneedjquery.com/
return

>!l::
    run, https://github.com/sentsin/layui/
    run, http://layer.layui.com/
    run, http://www.layui.com/doc/
    run, http://www.layui.com/demo/
return

>^v::
    run, http://vuejs.org/
    run, http://vuex.vuejs.org
    run, http://router.vuejs.org 
    run, https://github.com/opendigg/awesome-github-vue
return

::bd::
    SendRaw, http://www.baidu.com
return

>^e::
    run, http://element-cn.eleme.io/#/zh-CN/component/radio
    run, https://github.com/ElemeFE/element/blob/dev/packages/
return

>^m::
    run, https://github.com/ElemeFE/mint-ui
    run, http://elemefe.github.io/mint-ui/#/
return

::chandao::
    Send, http://28f.bujidele.com:81/zentao/user-login-L3plbnRhby9teS5odG1s.html
return

>^f::
    run, http://fontawesome.dashgame.com/
return

!b::
    RUN, http://www.cnblogs.com/cylee
Return

^g::
    RUN, https://www.github.com/
    RUN, https://legacy.gitbook.com/
Return

!space::
    InputBox, OutputVar, title, what's your Q?
    if (ErrorLevel == 0)
    {
        RUN, https://www.zhihu.com/search?type=content&q=%OutputVar%
        RUN, https://segmentfault.com/search?q=%OutputVar%
        RUN, https://www.google.com/search?q=%OutputVar%
        RUN, https://stackoverflow.com/search?q=%OutputVar%
        RUN, https://www.baidu.com/s?wd=%OutputVar%
    }
Return

>^j::
    RUN, http://youmightnotneedjquery.com/
    RUN, https://wyagd001.github.io/zh-cn/docs/Tutorial.htm
Return

>!d::
    SendRaw, chrome://inspect/#devices
return