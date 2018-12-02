::mapstate::
Var =
(
import { mapState } from 'vuex'
computed: {
  ...mapState('theme', ['findLastSixMonthAir', 'findLastSixMonthAirTown'])
},
)
code(Var)
return

::vue.update::
::v.update::
Var =
(
this.$forceUpdate();
)
code(Var)
return

::watchdeep::
::deep.watch::
::deepwatch::
::deepw::
Var =
(
watch: {
    proportionofclassificationproblem: {
        deep: true,
        handler (newV, oldV) {
            console.log(20181030114859, newV)
        }
    }
},
)
code(Var)
return

::router.init::
::route.init::
Var =
(
import Vue from 'vue'
import Router from 'vue-router'
import store from '../store'
Vue.use(Router)

// 总体情况
const overallSituation = r => require.ensure([], () => r(require('@/pages/overallSituation/index.vue')), 'overallSituation')
// 列表页面
const list = r => require.ensure([], () => r(require('@/pages/list/index.vue')), 'list')
// 部门看板
const departmental = r => require.ensure([], () => r(require('@/pages/departmental/index.vue')), 'departmental')
// 镇街看板
const townStreet = r => require.ensure([], () => r(require('@/pages/townStreet/index.vue')), 'townStreet')
// 事项分类
const matters = r => require.ensure([], () => r(require('@/pages/matters/index.vue')), 'matters')
// 专题看板
const theme = r => require.ensure([], () => r(require('@/pages/theme/index.vue')), 'theme')
// 专题看板 > 城市管理
const cityManagement = r => require.ensure([], () => r(require('@/pages/theme/children_pages/cityManagement/index.vue')), 'cityManagement')
// 专题看板 > 行政效能
const efficiency = r => require.ensure([], () => r(require('@/pages/theme/children_pages/efficiency/index.vue')), 'efficiency')
// 专题看板 > 环境保护
const environmentalProtection = r => require.ensure([], () => r(require('@/pages/theme/children_pages/environmentalProtection/index.vue')), 'environmentalProtection')
// 专题看板 > 交通管理
const trafficControl = r => require.ensure([], () => r(require('@/pages/theme/children_pages/trafficControl/index.vue')), 'trafficControl')
// 专题看板 > 地图看板
const map = r => require.ensure([], () => r(require('@/pages/themeMap/index.vue')), 'map')

// 路由配置
var router = new Router({
  // 哈希模式
  mode: 'hash',
  // 路由导航
  routes: [
    // 首页 > 重定向 > 总体情况
    { path: '/', redirect: '/overallSituation' },
    // 总体情况
    { path: '/overallSituation', name: 'overallSituation', meta: { title: '总体情况' }, component: overallSituation },
    // 列表页面
    { path: '/list', name: 'list', meta: { title: '详情明细' }, component: list },
    // 部门看板
    { path: '/departmental', name: 'departmental', meta: { title: '部门看板' }, component: departmental },
    // 镇街看板
    { path: '/townStreet', name: 'townStreet', meta: { title: '镇街看板' }, component: townStreet },
    // 事项分类
    { path: '/matters', name: 'matters', meta: { title: '事项分类' }, component: matters },
    // 专题看板 > 重定向 > 城市管理
    { path: '/theme/', redirect: '/theme/cityManagement' },
    // 专题看板
    { path: '/theme', name: 'theme', meta: { title: '专题看板' }, component: theme, children: [
        // 专题看板 > 城市管理
        { path: 'cityManagement', name: 'cityManagement', meta: { title: '城市管理' }, component: cityManagement },
        // 专题看板 > 行政效能
        { path: 'efficiency', name: 'efficiency', meta: { title: '行政效能' }, component: efficiency },
        // 专题看板 > 环境保护
        { path: 'environmentalProtection', name: 'environmentalProtection', meta: { title: '环境保护' },component: environmentalProtection },
        // 专题看板 > 交通管理
        { path: 'trafficControl', name: 'trafficControl', meta: { title: '交通管理' }, component: trafficControl },
        // 专题看板 > 地图看板
        { path: 'map', name: 'map', meta: { title: '地图看板' }, component: map },
        
      ]
    },
  ]
})


// 全局路由钩子
router.afterEach((to, from) => {
   
})

router.beforeEach((to, from, next) => {
    // 前往页面
    let _to = to.fullPath.toUrl()
    // 来路页面
    let _from = from.fullPath.toUrl()
    // 设置标题
    setTitle(to.meta.title)
    // 放行页面
    next()
})

export default router
)
code(Var)
return

::vue.w::
::vue.watch::
::vuew::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
watch: {
    proportionofclassificationproblem (newV, oldV) {
        console.log(%t%, newV)
    }
},
)
code(Var)
return


::vuex.action::
::vuex.actions::
::vuex.a::
::vuexa::
InputBox, OutputVar, title, enter a name?,,,,,,,,test
Var =
(
%OutputVar% ({ commit, state, dispatch, rootState }, %OutputVar%) {
  state.%OutputVar% = %OutputVar%
  dispatch('list')
},
)
code(Var)
return

::vue.msg::
::vue.msgbox::
::v.msgbox::
::v.msg::
Var =
(
import Vue from 'vue';
import mapbox from './mapbox.vue'

const mapboxConstructor = Vue.extend(mapbox);

let _initInstance;

const initInstance = () => {
  _initInstance = new mapboxConstructor({
    el: document.createElement('div')
  });
  document.body.appendChild(_initInstance.$el);
};

const show = ({ name, list, center }) => {
	if (!_initInstance) {
	  initInstance();
	}

	_initInstance.value = true;
	_initInstance.name = name;
	_initInstance.list = list;
	_initInstance.center = center;
}

const close = () => {
	Vue.nextTick(() => {
		_initInstance && (_initInstance.value = false)
	});
}

export default {
	show,
	close,
}
)
code(Var)
return

::vue.init::
InputBox, OutputVar, title, enter a name?,,,,,,,,test
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
<template>
    <div class="%OutputVar%">
        %OutputVar%
    </div>
</template>

<script>
export default {
  name: '%OutputVar%',
  data () {
    return {
        items: [],
        title: 'HelloWorld'
    }
  },
  methods: {
      go () {
          console.log('go');
      }
  },
  components: {

  },
  computed: {
  
  },
  watch: {
  
  },
  beforeMount () {
      console.log(%t%, '%OutputVar%');
  }
}
</script>

<style lang="scss" scoped>
@import "~@/scss/functions.scss";
.%OutputVar% {

}
</style>
)
code(Var)
return

!v::


  Menu, VueMenu, Add, vuex.init, VueHandler
  Menu, VueMenu, Add, vuex.modules, VueHandler
  Menu, VueMenu, Add, this.$store.dispatch, VueHandler
  Menu, VueMenu, Add, this.$store.state.list.loading, VueHandler
  Menu, VueMenu, Add, mapState, VueHandler  

  Menu, VueMenu, Add, , VueHandler
  Menu, VueMenu, Add, , VueHandler
  

  Menu, VueMenu, Add, vue.init, VueHandler
  Menu, VueMenu, Add, this.$forceUpdate(), VueHandler
  
  Menu, VueMenu, Add, vue.deep.watch, VueHandler
  Menu, VueMenu, Add, vue.watch-vuex, VueHandler
  
  Menu, VueMenu, Add, vue.data, VueHandler
  Menu, VueMenu, Add, vue.methods, VueHandler
  Menu, VueMenu, Add, vue.computed, VueHandler
  Menu, VueMenu, Add, vue.watch, VueHandler
  Menu, VueMenu, Add, vue.components, VueHandler
  
  Menu, VueMenu, Add, vue.style, VueHandler
  Menu, VueMenu, Add, v-for, VueHandler
  Menu, VueMenu, Add, $refs, VueHandler
  
  Menu, VueMenu, Add, <transition-group>, VueHandler
  Menu, VueMenu, Add, <transition>, VueHandler
  Menu, VueMenu, Add, <transition v-on...>, VueHandler
  
  Menu, VueMenu, Add, , VueHandler
  Menu, VueMenu, Add, , VueHandler
  
  Menu, VueMenu, Add, beforeMount, VueHandler
  Menu, VueMenu, Add, beforeCreate, VueHandler
  Menu, VueMenu, Add, created, VueHandler
  Menu, VueMenu, Add, mounted, VueHandler
  Menu, VueMenu, Add, activated, VueHandler
  Menu, VueMenu, Add, destroyed, VueHandler
  
  Menu, VueMenu, Add, , VueHandler
  Menu, VueMenu, Add, , VueHandler
  
  Menu, VueMenu, Add, router.init, VueHandler
  Menu, VueMenu, Add, this.$router.push('index'), VueHandler
  Menu, VueMenu, Add, this.$router.back, VueHandler
  Menu, VueMenu, Add, 组件钩子beforeRouteLeave, VueHandler
  Menu, VueMenu, Add, 组件钩子beforeRouteEnter, VueHandler
  Menu, VueMenu, Add, 全局钩子router.afterEach, VueHandler
  Menu, VueMenu, Add, 全局钩子router.beforeEach, VueHandler
  Menu, VueMenu, Add, 获取参数this.$route.params.id, VueHandler
  
  
  Menu, VueMenu, Add, , VueHandler
  Menu, VueMenu, Add, , VueHandler

  Menu, VueMenu, Add, myprogress组件, VueHandler
  Menu, VueMenu, Add, msgbox组件, VueHandler
  Menu, VueMenu, Add, click-outside 指令, VueHandler


  Menu, VueMenu, Show
  Menu, VueMenu, DeleteAll
return

VueHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

if (v == "") {
Var = 
(

)
}

if (v == "<transition v-on...>") {
Var = 
(
<transition
  v-on:before-enter="beforeEnter"
  v-on:enter="enter"
  v-on:after-enter="afterEnter"
  v-on:enter-cancelled="enterCancelled"

  v-on:before-leave="beforeLeave"
  v-on:leave="leave"
  v-on:after-leave="afterLeave"
  v-on:leave-cancelled="leaveCancelled"
>
  <!-- ... -->
</transition>

// ...
methods: {
  // --------
  // 进入中
  // --------

  beforeEnter: function (el) {
    // ...
  },
  // 当与 CSS 结合使用时
  // 回调函数 done 是可选的
  enter: function (el, done) {
    // ...
    done()
  },
  afterEnter: function (el) {
    // ...
  },
  enterCancelled: function (el) {
    // ...
  },

  // --------
  // 离开时
  // --------

  beforeLeave: function (el) {
    // ...
  },
  // 当与 CSS 结合使用时
  // 回调函数 done 是可选的
  leave: function (el, done) {
    // ...
    done()
  },
  afterLeave: function (el) {
    // ...
  },
  // leaveCancelled 只用于 v-show 中
  leaveCancelled: function (el) {
    // ...
  }
}
)
}

if (v == "<transition>") {
Var = 
(
<transition name="msgbox-bounce">
  <div class="msgbox" v-show="value">
     
  </div>
</transition>

.msgbox-bounce-leave-active, .msgbox-bounce-enter-active {
    transition: .3s all ease;
}
.msgbox-bounce-enter {
  opacity: 0;
  transform: translate3d(-50`%, -50`%, 0) scale(0.7);
}
.msgbox-bounce-leave-active {
  opacity: 0;
  transform: translate3d(-50`%, -50`%, 0) scale(0.9);
}
)
}

if (v == "<transition-group>") {
Var = 
(
<transition-group name='fadeIn' @enter="fadeIn" @leave='fadeOut' class='news__items' tag='ul'>
  <li class='news__item' v-for='(item, index) in analysisOfPublicOpinion' :key='index' 
      v-if='index >= page * 5 && index < page * 5 + 5'
      :data-index='index'
      @click='go(item.link)'
  >
    <div class='news__item--index'>{{ index + 1 }}</div>
    <article class='news__item--article'>{{ item.title }}</article>
  </li>
</transition-group>

<style lang="scss" scoped>
@import "~@/scss/functions.scss";
.fadeIn-enter-active, .fadeIn-leave-active {
  transition: all .5s ease;
}

.fadeIn-enter, .fadeIn-leave-to{
  opacity: 0;
}
</style>
)
}

if (v == "vue.components") {
Var = 
(
import myprogress from '@/components/myprogress.vue'

)
}

if (v == "$refs") {
Var = 
(
// <select ref="myselect"></select>
this.$refs.myselect
)
}

if (v == "mapState") {
Var = 
(
import { mapState } from 'vuex'
computed: {
  ...mapState('theme', ['findLastSixMonthAir', 'findLastSixMonthAirTown'])
},
)
}

if (v == "click-outside 指令") {
Var = 
(
export default {
  bind: function (el, { value }) {
    let onClickOutside = value
    el.handler = function (e) {
      if (el && !el.contains(e.target)) {
        onClickOutside(e)
      }
    }
    document.addEventListener('click', el.handler, true)
  },
  unbind: function (el) {
    document.removeEventListener('click', el.handler, true)
    el.handler = null
  }
}
)
}

if (v == "this.$forceUpdate()") {
Var = 
(
this.$forceUpdate()
)
}

if (v == "msgbox组件") {
Var = 
(
import Vue from 'vue';
import mapbox from './mapbox.vue'

const mapboxConstructor = Vue.extend(mapbox);

let _initInstance;

const initInstance = () => {
  _initInstance = new mapboxConstructor({
    el: document.createElement('div')
  });
  document.body.appendChild(_initInstance.$el);
};

const show = ({ name, list, center }) => {
	if (!_initInstance) {
	  initInstance();
	}

	_initInstance.value = true;
	_initInstance.name = name;
	_initInstance.list = list;
	_initInstance.center = center;
}

const close = () => {
	Vue.nextTick(() => {
		_initInstance && (_initInstance.value = false)
	});
}

export default {
	show,
	close,
}
)
}

if (v == "myprogress组件") {
Var = 
(
<template>
    <div class="myprogress" :style='{ width: mywidth }'></div>
</template>

<script>
export default {
  name: 'myprogress',
  data () {
    return {
      mywidth: 0
    }
  },
  methods: {
      go () {
          console.log('go');
      }
  },
  props: {
    _width: {
      default: 0,
      type: String
    }
  },
  components: {

  },
  computed: {

  },
  watch: {
    _width (newV) {
      this.mywidth = 0
      setTimeout(_ => this.mywidth = newV, 50)
    }
  },
  mounted () {
      setTimeout(() => {
        this.mywidth = this._width
      }, 50);
  }
}
</script>

<style lang="scss" scoped>
@import "~@/scss/functions.scss";
.myprogress {
  transition: .5s all ease;
  width: 0;
}
</style>
)
}

if (v == "vue.deep.watch") {
Var = 
(
watch: {
    proportionofclassificationproblem: {
        deep: true,
        handler (newV, oldV) {
            console.log(20181030114859, newV)
        }
    }
},
)
}


if (v == "destroyed") {
Var = 
(
destroyed () {}
)
}


if (v == "router.init") {
Var = 
(
import Vue from 'vue'
import Router from 'vue-router'
import store from '../store'
Vue.use(Router)

// 总体情况
const overallSituation = r => require.ensure([], () => r(require('@/pages/overallSituation/index.vue')), 'overallSituation')
// 列表页面
const list = r => require.ensure([], () => r(require('@/pages/list/index.vue')), 'list')
// 部门看板
const departmental = r => require.ensure([], () => r(require('@/pages/departmental/index.vue')), 'departmental')
// 镇街看板
const townStreet = r => require.ensure([], () => r(require('@/pages/townStreet/index.vue')), 'townStreet')
// 事项分类
const matters = r => require.ensure([], () => r(require('@/pages/matters/index.vue')), 'matters')
// 专题看板
const theme = r => require.ensure([], () => r(require('@/pages/theme/index.vue')), 'theme')
// 专题看板 > 城市管理
const cityManagement = r => require.ensure([], () => r(require('@/pages/theme/children_pages/cityManagement/index.vue')), 'cityManagement')
// 专题看板 > 行政效能
const efficiency = r => require.ensure([], () => r(require('@/pages/theme/children_pages/efficiency/index.vue')), 'efficiency')
// 专题看板 > 环境保护
const environmentalProtection = r => require.ensure([], () => r(require('@/pages/theme/children_pages/environmentalProtection/index.vue')), 'environmentalProtection')
// 专题看板 > 交通管理
const trafficControl = r => require.ensure([], () => r(require('@/pages/theme/children_pages/trafficControl/index.vue')), 'trafficControl')
// 专题看板 > 地图看板
const map = r => require.ensure([], () => r(require('@/pages/themeMap/index.vue')), 'map')

// 路由配置
var router = new Router({
  // 哈希模式
  mode: 'hash',
  // 路由导航
  routes: [
    // 首页 > 重定向 > 总体情况
    { path: '/', redirect: '/overallSituation' },
    // 总体情况
    { path: '/overallSituation', name: 'overallSituation', meta: { title: '总体情况' }, component: overallSituation },
    // 列表页面
    { path: '/list', name: 'list', meta: { title: '详情明细' }, component: list },
    // 部门看板
    { path: '/departmental', name: 'departmental', meta: { title: '部门看板' }, component: departmental },
    // 镇街看板
    { path: '/townStreet', name: 'townStreet', meta: { title: '镇街看板' }, component: townStreet },
    // 事项分类
    { path: '/matters', name: 'matters', meta: { title: '事项分类' }, component: matters },
    // 专题看板 > 重定向 > 城市管理
    { path: '/theme/', redirect: '/theme/cityManagement' },
    // 专题看板
    { path: '/theme', name: 'theme', meta: { title: '专题看板' }, component: theme, children: [
        // 专题看板 > 城市管理
        { path: 'cityManagement', name: 'cityManagement', meta: { title: '城市管理' }, component: cityManagement },
        // 专题看板 > 行政效能
        { path: 'efficiency', name: 'efficiency', meta: { title: '行政效能' }, component: efficiency },
        // 专题看板 > 环境保护
        { path: 'environmentalProtection', name: 'environmentalProtection', meta: { title: '环境保护' },component: environmentalProtection },
        // 专题看板 > 交通管理
        { path: 'trafficControl', name: 'trafficControl', meta: { title: '交通管理' }, component: trafficControl },
        // 专题看板 > 地图看板
        { path: 'map', name: 'map', meta: { title: '地图看板' }, component: map },

      ]
    },
  ]
})


// 全局路由钩子
router.afterEach((to, from) => {

})

router.beforeEach((to, from, next) => {
    // 前往页面
    let _to = to.fullPath.toUrl()
    // 来路页面
    let _from = from.fullPath.toUrl()
    // 设置标题
    setTitle(to.meta.title)
    // 放行页面
    next()
})

export default router
)
}


if (v == "beforeMount") {
Var = 
(
beforeMount () {}
)
}
if (v == "beforeCreate") {
Var = 
(
beforeCreate () {}
)
}
if (v == "created") {
Var = 
(
created () {}
)
}
if (v == "mounted") {
Var = 
(
mounted () {}
)
}
if (v == "activated") {
Var = 
(
activated () {}
)
}


if (v == "vue.methods") {
Var = 
(
methods: {
    go () {
        
    }
}
)
}

if (v == "全局钩子router.beforeEach") {
Var = 
(
router.beforeEach((to, from, next) => {
    // 前往页面
    let _to = to.fullPath.toUrl()
    // 来路页面
    let _from = from.fullPath.toUrl()
    // 设置标题
    setTitle(to.meta.title)
    // 放行页面
    next()
})
)
}


if (v == "全局钩子router.afterEach") {
Var = 
(
// 全局路由钩子
router.afterEach((to, from) => {
    // 记录回路
    if (name) store.state.back = { title: from.meta.title, path: from.path }
    // 获取面包屑标题
    const completeTitle = getCompleteTitleByMatched(to.matched)
    // 更新 vuex 状态 - 标题
    store.dispatch('SET_TITLE', completeTitle)
    // 更新页面标题（简单即可）
    document.title = to.meta.title
    // 关闭所有的loading
    Loader.hideAll();
})
)
}

if (v == "this.$router.back") {
Var = 
(
this.$router.back
)
}

if (v == "获取参数this.$route.params.id") {
Var = 
(
this.$route.params.id
)
}

if (v == "组件钩子beforeRouteLeave") {
Var = 
(
// 页面离开的时候，初始化一些参数配置
beforeRouteLeave  (to, from, next) {
    // 还原为全部选择框都显示
    this.$store.dispatch('list/onlyShowSelect')
    // 取消问题类型，默认为空
    this.$store.dispatch('list/eq_problemType')
    next();
},
)
}

if (v == "组件钩子beforeRouteEnter") {
Var = 
(
beforeRouteEnter (to, from, next) {
    next(vm => {
      if (from.path === '/myBusiness') vm.$router.push('/')
      next()
    })
}
)
}



if (v == "vue.init") {
InputBox, OutputVar, title, enter a name?,,,,,,,,test
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
<template>
    <div class="%OutputVar%">
        %OutputVar%
    </div>
</template>

<script>
export default {
  name: '%OutputVar%',
  data () {
    return {
        items: [],
        title: 'HelloWorld'
    }
  },
  methods: {
      go () {
          console.log('go');
      }
  },
  components: {

  },
  computed: {
  
  },
  watch: {
  
  },
  beforeMount () {
      console.log(%t%, '%OutputVar%');
  }
}
</script>

<style lang="scss" scoped>
@import "~@/scss/functions.scss";
.%OutputVar% {

}
</style>
)
}

if (v == "v-for") {
Var = 
(
v-for='(item, index) in items' :key='item'
)
}

if (v == "vuex.init") {
Var = 
(
import Vue from 'vue'
import Vuex from 'vuex'
import user from './modules/user'
import mutations from './mutations.js'
import * as actions from './actions'
import * as getters from './getters'
import * as state from './state.js'

Vue.use(Vuex)

const store = new Vuex.Store({
  strict: false,
  state,
  getters,
  actions,
  mutations,
  modules: {
    user
  },
})

export default store
)
}
if (v == "vuex.modules") {
Var = 
(
let state = {
    AppData: {}
}

const actions = {
  setAppData ({ commit, state, dispatch, rootState }, data) {
     commit('SET_APP_DATA', data.userInfo)
  }
}

const mutations = {
  SET_APP_DATA (state, userInfo) {
    return state.AppData = userInfo
  }
},

const getters = {
  AppData (state) {
    return state.AppData;
  }
}
export default {
  namespaced: true,
  state,
  mutations,
  actions,
  getters,
}
)
}

if (v == "this.$store.dispatch") {
Var = 
(
this.$store.dispatch
)
}
if (v == "this.$store.state.list.loading") {
Var = 
(
this.$store.state.list.loading
)
}
if (v == "vue.computed") {
Var = 
(
computed: {
  departmentalProblemRanking () {
    return this.$store.state.overallSituation.departmentalProblemRanking
  }
},
)
}
if (v == "vue.watch") {
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
watch: {
    proportionofclassificationproblem (newV, oldV) {
        console.log(%t%, newV)
    }
},
)
}
if (v == "vue.watch-vuex") {
Var = 
(
computed: {
    reportType () {
        return this.$store.state.reportType
    }
},
watch: {
    reportType (newV, oldV) {
        this.go()
    }
},
)
}
if (v == "vue.data") {
Var = 
(
data () {
  return {
      items: [],
      title: 'HelloWorld'
  }
},
)
}
if (v == "vue.style") {
Var = 
(
<style lang="scss" scoped>
@import "~@/scss/functions.scss";
.test {

}
</style>
)
}
if (v == "this.$router.push('index')") {
Var = 
(
this.$router.push('index')
)
}
if (v == "this.$store.dispatch") {
Var = 
(
this.$store.dispatch('deparmental/departmentalProblemRanking')
)
}

code(Var)
return

::vue.style::
Var =
(
<style lang='scss' scoped>
@import '~@/scss/functions.scss';
.test {
    
}
</style>
)
code(Var)
return

::vue.c::
::vuec::
Var =
(
computed: {
    hotcounselling () {
      return this.$store.state.departmental.hotcounselling
    }
},
)
code(Var)
return

::vue.cw::
::vue.wc::
::vuewc::
::vuecw::
Var =
(
computed: {
    reportType () {
        return this.$store.state.reportType
    }
},
watch: {
    reportType (newV, oldV) {
        this.go()
    }
},
)
code(Var)
return

::vue.mixin::
::vue.mixins::
Var =
(
// 全局Mixin，任何一个组件都会被影响，无论是页面、入口、还是组件
Vue.mixin({
  methods: {
	maybe () {
		try { 
		   return fn() || n 
		} catch (err) {
		   return n 
		}
	}
  }
})
)
code(Var)
return

::vue.nginx::
::nginx.vue::
::nginx.config::
Var =
(
location / {
   try_files $uri /index.html;
}

location ^~ /api/ {
  proxy_pass  http://192.168.8.184:8080/api/;
}
)
code(Var)
return

::webpack.router::
::webpack.route::
::webpack.require::
::webpack.ensure::
::ensure::
::luyouqiege::
::webpack.luyouqiege::
::require.ensure::
Var =
(
const Login = r => require.ensure([], () => r(require('@/views/User/Login')), 'Login')
)
code(Var)
return

::vuex.new::
::vuex.tmp::
::vuex.modules::
::vuex.module::
Var =
(
let state = {
    AppData: {}
}

const actions = {
  setAppData ({ commit, state, dispatch, rootState }, data) {
	   commit('SET_APP_DATA', data.userInfo)
  }
}

const mutations = {
	SET_APP_DATA (state, userInfo) {
	  return state.AppData = userInfo
	}
},

const getters = {
  AppData (state) {
    return state.AppData;
  }
}
export default {
  namespaced: true,
  state,
  mutations,
  actions,
  getters,
}
)
code(Var)
return

::vuex.init::
::vuexinit::
::vuex.index::
::vuex.store::
::vuex.demo::
::vuexdemo::
::vuex tmp::
::vuextmp::
Var =
(
import Vue from 'vue'
import Vuex from 'vuex'
import user from './modules/user'
import mutations from './mutations.js'
import * as actions from './actions'
import * as getters from './getters'
import * as state from './state.js'

Vue.use(Vuex)

const store = new Vuex.Store({
  strict: false,
  state,
  getters,
  actions,
  mutations,
  modules: {
    user
  },
})

export default store
)
code(Var)
return

::vuex2::
::vuex2.init2::
::vuexinit2::
::vuex.demo2::
::vuexdemo2::
::vuex.index2::
::vuex.store2::
Var =
(
import Vuex from 'vuex'
import users from './users'

const createStore = () => {
  // 新建 Store
  return new Vuex.Store({
    // false：非严格模式
    strict: false,
    // 状态
    state: {
      counter: 0
    },
    // 在非严格模式下，action是可以直接修改state，但不推荐这样做。所以我们约定： 
    // 1、 action为异步而生： 只有需要异步操作才定义和使用action，否则外部直接调用mutations来更新state即可；
    // 2、 action不能操作state：在进行完异步操作之后，只能通过commit调用mutations来更新state。自己不能操作state
    actions: {
        nuxtServerInit ({ commit }, data) {
          // 使用commit调用mutation
          commit('user', data.req.session.user)
        },
        // 异步action示例
        async nuxtServerInit({ dispatch }) {
          // 继续调用其他action
          await dispatch('core/load')
        },
    },
    // 在非严格模式下，外部其实可以直接获取state，这个getters实际上是冗余的。
    getters: {
      AppData (state) {
         return state.AppData;
       }
    },
    // 同步更新state
    mutations: {
      increment (state) {
        state.counter++
      }
    },
    modules: {
      users,
      todos: {
        state: {
          list: []
        },
        mutations: {
          add (state, { text }) {
            state.list.push({
              text,
              done: false
            })
          },
          remove (state, { todo }) {
            state.list.splice(state.list.indexOf(todo), 1)
          },
          toggle (state, { todo }) {
            todo.done = !todo.done
          }
        }
      }
    }
  })
}

export default createStore
)
code(Var)
return

::v-clo::
Var =
(
v-cloak
)
code(Var)
return

::this.refs::
::this.ref::
::this.$ref::
::this.$refs::
::$refs::
::$ref::
::ref::
::v-ref::
::v-refs::
Var =
(
this.$refs.myselect
)
code(Var)
return

::$nextTick::
::$next::
::$.next::
Var =
(
this.$nextTick(() => {
    
})
)
code(Var)
return

>!v::
InputBox, OutputVar, title, enter a name?,,,,,,,,test
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
<template>
    <div class="%OutputVar%">
        test
    </div>
</template>

<script>
export default {
  name: '%OutputVar%',
  data () {
    return {
        items: [],
        title: 'HelloWorld'
    }
  },
  methods: {
      go () {
          console.log('go');
      }
  },
  components: {

  },
  computed: {
  
  },
  watch: {
  
  },
  beforeMount () {
      console.log(%t%, '%OutputVar%');
  }
}
</script>

<style lang="scss" scoped>
@import "~@/scss/functions.scss";
.%OutputVar% {

}
</style>
)
code(Var)
return


::vstyle::
::vuestyle::
Var = 
(
<style lang="scss" scoped>
    
</style>
)
code(Var)
return


::mapgetters::
Var = 
(
// https://vuex.vuejs.org/en/getters.html
import { mapGetters } from 'vuex'
computed: {
    ...mapGetters([
        'menuList'
    ]),
    // 也可以这样
    ...mapGetters({
        menuList: 'menuList'
    })
},
)
code(Var)
return

::mapmutations::
Var = 
(
// https://vuex.vuejs.org/guide/mutations.html
import { mapMutations } from 'vuex'
methods: {
    ...mapMutations([
        'SET_MENU',
        'SET_USERINFO'
    ]),
    // 也可以这样
    ...mapMutations({
        SET_MENU： 'SET_MENU',
        SET_USERINFO： 'SET_USERINFO'
    }),
},
)
code(Var)
return

::dispatch:: 
    SendInput, this.$store.dispatch('').then(_ => {{} {}}){left 2}{enter 2}{up}{tab} // ...
Return

::v-for::
::vfor::
::vuefor::
::vue.for::
::v.for::
    SendInput, v-for='(item, index) in items' :key='item'
Return


::vue.components::
::vuecomponents::
::vcmp::
::vmp::
::vcomponent::
::vcomponents::
::vue-radio::
::vue.radio::
::vradio::
Var = 
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js"></script>
    <style>
    </style>
    
    <body>
        <div id="app">
            <div v-for='(item, index) in items' :key='index'>
                <myradio v-model="picked" :text="item"></myradio>
            </div>
            <br>
            <span>Picked: {{ picked }}</span>
        </div>
    </body>
    <script>
    
        // 局部注册组件
        var myradio = Vue.extend({
              data: function () {
                    return {
                        currentValue: this.value
                    }
              }, 
              props: {
                value: '',
                text: ''
              },     
              template: ``
                <label>
                    <input type="radio" id="two" :value="text" v-model="currentValue">
                    <label for="two">{{ text }}</label>
                </label>
              `,
              watch: {
                    value(val) {
                      this.currentValue = val;
                    },
                    currentValue(val) {
                      this.$emit('input', val);
                    }
              }
        });

        Vue.component('myradio', myradio)

        new Vue({
            el: '#app',
            data: {
                picked: 'Three',
                items: ['One', 'Two', 'Three']
            }
        })
    </script>

</html>
)
code(Var)
return

::new vue::
::newvue::
Var = 
(
var vue = new Vue({
    el: '#app',
    data: {
        items: []
    },
    methods: {
        handleClick: function () {
            
        }
    },
    beforeMount: function () {
        
    }
})
)
code(Var)
return

::vext::
::vextend::
::vextends::
::vueextend::
::vue-extend::
::vue.extend::
::vue.extends::
Var = 
(
var mybutton = Vue.extend({
    template: ``
        <div></div>
    `,
    data: {
        title: '123'
    },
    methods: {
        handleClick: function () {
            
        }
    },
    props: {
        text: ''
    },
    watch: {
        
    },
    beforeMount () {
        console.log('hello world');
    },
});
Vue.component('mybutton', mybutton)
)
code(Var)
return

::v-animate::
::vue-animate::
::vue-tran::
::v-tran::
::vue-trans::
::v-trans::
::v.animate::
::vue.animate::
::vue.tran::
::v.tran::
::vue.trans::
::v.trans::
Var =
(
<transition-group name="cell" tag="div" class="kitchenBright__list--items transition-group" tag='ul'>
    <li v-for='(item, index) in items' :key='item' 
    	class='cell kitchenBright__list--item'
    	:class="{active: index === 0 && step !== -1}"
    	:title='item.schoolName'
    	@click='handleClick(index)'>
        	{{ item.schoolName }}
    </li>
</transition-group>

.cell-enter-active, .cell-leave-active {
  transition: all 1s;
}

.cell-enter, .cell-leave-to /* .cell-leave-active below version 2.1.8 */ {
  /*opacity: 0;*/
  transform: translateY(300px);
}

/* 动画钩子 */
.cell-move {
  transition: transform 1s ease;
}

////////////////////////////////////////////////////////////////////////////////////////////

<transition name="msgbox-bounce">
    <div class="msgbox" v-show="value"></div>
</transition>

methods: {
    // 隐藏弹窗
    hideListener (e) {
      // 如果点击的地方不是弹窗本身的话，那么关闭弹窗
      if (!e.target.className.includes('msgbox')) this.value = false
    }
}

watch: {
    // 如果弹窗发生了变化
    value (newV) {
        newV === true && window.addEventListener('mouseup', this.hideListener)
        newV === false && window.removeEventListener('mouseup', this.hideListener);
    },
}

.msgbox {
    @include center;
    width: 835px;
    z-index: 199307100337;
    /* 切记添加transition，除非你在钩子中添加 */
    transition: .3s all;
}

.msgbox-bounce-enter {
   opacity: 0;
   transform: translate3d(-50`%, -50`%, 0) scale(0.7);
}

.msgbox-bounce-leave-active {
   opacity: 0;
   transform: translate3d(-50`%, -50`%, 0) scale(0.9);
}
)
code(Var)
return