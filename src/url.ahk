>^v::
    run, http://vuejs.org/
    run, http://vuex.vuejs.org
    run, http://router.vuejs.org 
    run, https://github.com/opendigg/awesome-github-vue
return


>^l::
    SendRaw, http://localhost:8080
return

::baidu::
    SendRaw, http://www.baidu.com
return


>^e::
    run, http://element-cn.eleme.io/#/zh-CN/component/radio
    run, https://github.com/ElemeFE/element/blob/dev/packages/
    run, https://github.com/ElemeFE/mint-ui
    run, http://elemefe.github.io/mint-ui/#/
return


>^f::
    run, http://fontawesome.dashgame.com/
return


>^b::
    RUN, http://www.cnblogs.com/cylee
Return


^g::
    RUN, https://www.github.com/
    RUN, https://legacy.gitbook.com/
Return


; ¿ìËÙËÑË÷ÒôÀÖ
>^m::
    InputBox, OutputVar, title, enter a music name?
    if (OutputVar != "") 
    {
        RUN, http://music.163.com/#/search/m/?s=%OutputVar%
        RUN, https://y.qq.com/portal/search.html#w=%OutputVar%
        RUN, https://www.xiami.com/search?key=%OutputVar%
        RUN, http://www.kugou.com/yy/html/search.html#searchType=song&searchKeyWord=%OutputVar%
    }
return

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