﻿!v::
  Menu, VueMenu, Add, vuex.init, VueHandler
  Menu, VueMenu, Add, vuex.modules, VueHandler
  Menu, VueMenu, Add, vuex.action, VueHandler
  Menu, VueMenu, Add, this.$store.commit, VueHandler
  Menu, VueMenu, Add, this.$store.dispatch, VueHandler
  Menu, VueMenu, Add, this.$store.state.list.loading, VueHandler
  Menu, VueMenu, Add, import { mapState`, mapActions } from 'vuex', VueHandler  
  Menu, VueMenu, Add, ElementUI 按需引入教程, VueHandler  

  Menu, VueMenu, Add, , VueHandler
  Menu, VueMenu, Add, , VueHandler
  
  Menu, vuewatch, Add, vue.watch, VueHandler
  Menu, vuewatch, Add, vue.watch.deep, VueHandler
  Menu, vuewatch, Add, vue.watch-vuex, VueHandler
  Menu, vuewatch, Add, vue.watch-$route, VueHandler
  Menu, vuewatch, Add, vue.watch-deep-$route, VueHandler

  Menu, VueMenu, Add, vue.init, VueHandler
  Menu, VueMenu, Add, v-cloak 用来解决渲染之前的尴尬期, VueHandler
  Menu, VueMenu, Add, css-scoped深度作用选择器：>>>（css） 与 /deep/（sass）, VueHandler
  Menu, VueMenu, Add, :style='{}' 表达式, VueHandler
  Menu, VueMenu, Add, vue.style, VueHandler
  Menu, VueMenu, Add, vue.computed: get/set, VueHandler
  Menu, VueMenu, Add, $refs, VueHandler
  Menu, VueMenu, Add, vue.props, VueHandler
  Menu, VueMenu, Add, vue.watch的N种套路, :vuewatch
  
  
  Menu, VueMenu, Add, , VueHandler
  Menu, VueMenu, Add, , VueHandler
  
  Menu, VueMenu, Add, this.$forceUpdate(), VueHandler
  Menu, VueMenu, Add, <keep-alive>, VueHandler
  Menu, VueMenu, Add, <transition>, VueHandler
  Menu, VueMenu, Add, <transition v-on...>, VueHandler
  Menu, VueMenu, Add, <transition-group>, VueHandler
  Menu, VueMenu, Add, render(h), VueHandler
  Menu, VueMenu, Add, render(h) jsx用法, VueHandler
  Menu, VueMenu, Add, vue.directive 指令, VueHandler
  Menu, VueMenu, Add, this.$set 深度赋值, VueHandler
  
  Menu, VueMenu, Add, , VueHandler
  Menu, VueMenu, Add, , VueHandler
  
    
  Menu, vuerouterhock, Add, 组件钩子beforeRouteLeave, VueHandler
  Menu, vuerouterhock, Add, 组件钩子beforeRouteEnter, VueHandler
  Menu, vuerouterhock, Add, 全局钩子router.afterEach, VueHandler
  Menu, vuerouterhock, Add, 全局钩子router.beforeEach, VueHandler
  
  Menu, VueMenu, Add, router.init, VueHandler
  
  Menu, VueMenu, Add, 获取参数this.$route.params.id, VueHandler
  Menu, VueMenu, Add, this.$router.push('index'), VueHandler
  Menu, VueMenu, Add, this.$router.back(), VueHandler
  Menu, VueMenu, Add, this.$router.currentRoute.meta.step, VueHandler
  Menu, VueMenu, Add, router路由钩子大全, :vuerouterhock  
  Menu, VueMenu, Add, <router-view></router-view>, VueHandler
  Menu, VueMenu, Add, <router-link></router-link>, VueHandler
  
  
  Menu, VueMenu, Add, 路由 Layout 布局示例, VueHandler
  Menu, VueMenu, Add, 动态路由：router.addRoutes, VueHandler
  Menu, VueMenu, Add, next() 的三种参数形态, VueHandler
  Menu, VueMenu, Add, 路由验证token并跳转登录与重定向的套路, VueHandler
  
  Menu, VueMenu, Add, , VueHandler
  Menu, VueMenu, Add, , VueHandler
  
  Menu, vuesolution, Add, myprogress组件, VueHandler
  Menu, vuesolution, Add, msgbox组件, VueHandler
  Menu, vuesolution, Add, click-outside 指令, VueHandler
  Menu, vuesolution, Add, 组件复用的新套路: 合并配置，来代替mixin方案, VueHandler
  Menu, vuesolution, Add, 波浪效果组件, VueHandler
  Menu, vuesolution, Add, 波浪效果指令：v-waves, VueHandler
  Menu, vuesolution, Add, NProgress页面加载组件, VueHandler
  Menu, vuesolution, Add, 宇宙流星雨canvas, VueHandler
  Menu, vuesolution, Add, $.scrollforevery 无缝滚动（Vue版本）, VueHandler
  Menu, vuesolution, Add, el-menu简易封装, VueHandler
  
  
  Menu, VueMenu, Add, Vue 解决方案和组件, :vuesolution
  
  
  Menu, VueMenu, Show
  Menu, VueMenu, DeleteAll
return

VueHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var = 
(
)
}

if (v == "el-menu简易封装") {
Var = 
(
<template>
  <el-menu @open='handleOpen'>
    <div class="fuck" v-for='(item, index) in list' :key='index'>
      <el-submenu v-if='item.childList' :index='item.tagId'>
        <template slot="title">
          {{ item.tagName }}
        </template>
        <fuck :list='item.childList' @open='handleOpen'></fuck>
      </el-submenu>
      <el-menu-item  :index='item.tagId' v-else>
        <i class="el-icon-menu"></i>
        <span slot="title">{{ item.tagName }}</span>
      </el-menu-item>
    </div>
  </el-menu>
</template>

<script>
export default {
  name: 'fuck',
  methods: {
      handleOpen (...args) {
        this.$emit('open', ...args)
      }
  },
  components: {

  },
  computed: {

  },
  props: {
     list: {
         type: Array,
         default: []
     }
  },
  watch: {

  },
  beforeMount () {

  }
}
</script>

<style lang="scss" scoped>
@import "~@/scss/functions.scss";
.fuck {

}
</style>
)
}


if (v == "this.$set 深度赋值") {
Var = 
(
this.$set(this.tags, key, value)
)
}

if (v == "this.$store.commit") {
Var = 
(
this.$store.commit('Collection/SET_DATABASENAMES', response.databaseNames)
)
}


if (v == "路由验证token并跳转登录与重定向的套路") {
Var = 
(
router.beforeEach((to, from, next) => {
	// 如果是登录页面，直接放
    if (to.path === '/login') {
        next()
    // 如果不是登录页面，判断是否有token
    } else if (getToken()) { 
        next({ ...to, replace: true })
    // 如果没有登录页面，跳转到登录页面。并且记录重定向的值
    } else {
        next(`/login?redirect=${to.path}`)
    }
})

---

export default {
  watch: {
    $route: {
      handler: function(route) {
        this.redirect = route.query && route.query.redirect
      },
      immediate: true
    }
  },
  methods: {
  	handleLogin () {
  		// 登录成功后，跳转到重定向的地方
  		this.$router.push({ path: this.redirect || '/' })
  	}
  }
}
)
txtit(Var)
return 
}


if (v == "next() 的三种参数形态") {
Var = 
(
next({ path: '/' })
next(`/login?redirect=${to.path}`)
next({ ...to, replace: true })
)
}

if (v == "css-scoped深度作用选择器：>>>（css） 与 /deep/（sass）") {
Var = 
(
<style lang="scss" scoped>
.select {
  width: 100px;

  /deep/ .el-input__inner {
    border: 0;
    color: #000;
  }
}

/deep/.el-select-dropdown__item {
  padding: 0;
  height: auto;
  line-height: 0;
}
</style>
)
}

if (v == "this.$router.currentRoute.meta.step") {
Var = 
(
this.$router.currentRoute.meta.step
)
}

if (v == "ElementUI 按需引入教程") {
_send("elementui", true, true)
return
}

if (v == "vue.props") {
_send("vue.props", true, true)
return
}

if (v == ":style='{}' 表达式") {
Var = 
(
:style='{ "z-index": isShowGuidance ? 2001 : 1 }'
)
}

if (v == "v-cloak 用来解决渲染之前的尴尬期") {
Var = 
(
<style>
    [v-cloak] {
         display: none;
    }
</style>
<div id='app' v-cloak></div>
)
}

if (v == "vue.watch-deep-$route") {
Var = 
(
watch: {
  '$route': {
      deep: true,
      handler (newV, oldV) {
          this.$store.dispatch('Map/reset')
      }
  }
},
)
}


if (v == "$.scrollforevery 无缝滚动（Vue版本）") {
Var = 
(
<template>
    <div class="growthRanking" :class="{ 'emptying': town.empty }">
        <div class='growthRanking__header'>
            <span class='growthRanking__header--id'>排名</span>
            <span class='growthRanking__header--name'>事件名称</span>
            <span class='growthRanking__header--count'>事件增长量（件）</span>
        </div>

       <div class='growthRanking__rows' ref='dragscroll'>
           <template v-if='maybe(_=> town.data.length, 0)'>
               <div class='growthRanking__row' v-for='(item, index) in town.data.concat(town.data)' :key='index' @click.stop = "go(item.itemId)">
                   <div class='growthRanking__row--id' </div>
                   <div class='growthRanking__row--name' :title='item.itemName'>{{ item.itemName }}</div>
                   <div class='growthRanking__row--count'>{{ item.countt }}</div>
               </div>
           </template>
       </div>
    </div>
</template>

<script>
import { dragScroll, getCityIdList } from '@/utils/utils'
export default {
    name: 'growthRanking',
    data() {
        return {
            timer: null,
            dragScrollClick: null,
            cityIdList: getCityIdList(),
        }
    },
    methods: {
        go(itemId) {
            this.dragScrollClick(_ => {
                // 设置单位id
                this.$store.dispatch('list/departmentSelect', this.eq_departId)
                // 设置事项id
                this.$store.dispatch('list/matterSelect', itemId)
                // // 跳转到部门二级
                this.$router.push('./details')
            })
        },
    },
    computed: {
        town() {
            return this.maybe(_ => this.$store.state.departmentDetails.getDepartSecondGrowth)
        },
        eq_departId () {
            return this.$store.state.departmentDetails.eq_departId
        }
    },
    watch: {
        town: {
            deep: true,
            handler (newV, oldV) {
                if (newV) {
                    setTimeout(() => {
                        // 没有滚动条也可以滚动
                        $('.growthRanking__rows').niceScroll({ scrollbarid: 'growthRanking--scrollbarid' })
                        // 鼠标拖拽滚动
                        this.dragScrollClick = dragScroll(this.$refs.dragscroll)
                    }, 350);

                    // 开始自动滚动
                    const $app = $('.growthRanking__rows')
                    // 每一条的高度
                    const innerHeight = window.px2px(65)
                    // 固定的33个东莞镇区
                    const len = newV.length
                    // 边界点
                    const distance = innerHeight * len
                    // 是否停止？
                    let stop = false

                    // 无限滚动的函数
                    const _start = () => {
                        // 检测是否停止
                        if (stop) return

                        // 清空计时器
                        window.cancelAnimationFrame(this.timer)

                        // 获取当前滚动
                        const scrollDistance = $app.scrollTop();

                        // 如果触发临界点
                        if (scrollDistance >= distance) {
                             // 0 返回到第一层的指定距离
                            $app.scrollTop(scrollDistance `% distance)
                        } else {
                            // 滚动
                            $app.scrollTop(scrollDistance + 1)
                        }

                        // 尽量保证性能
                        this.timer = window.requestAnimFrame(_start)
                    }

                    // 开始滚动
                    _start()

                    // 鼠标开关
                    $app.mouseover(e => {
                        stop = true
                    }).mouseleave(e => {
                        stop = false
                        _start()
                    })
                }
            }
        }
    },
    mounted() {
        
    },
    // 页面离开的时候，初始化一些参数配置
    beforeRouteLeave  (to, from, next) {
        // 清空计时器
        window.cancelAnimationFrame(this.timer)
        // 放行
        next();
    },
}
</script>
)
}


if (v == "宇宙流星雨canvas") {
Var = 
(
<!-- 星空背景 -->
<canvas id='space'></canvas>

// 星空背景canvas
bg (canvas) {
    const c = canvas.getContext("2d");
    const numStars = 1900
    const radius = '0.' + Math.floor(Math.random() * 9) + 1
    const focalLength = canvas.width * 2

    let centerX, centerY
    let stars = []
    let star
    let i

    initializeStars();

    function initializeStars() {
        centerX = canvas.width / 2;
        centerY = canvas.height / 2;

        stars = [];
        for (i = 0; i < numStars; i++) {
            star = { x: Math.random() * canvas.width, y: Math.random() * canvas.height, z: Math.random() * canvas.width, o: '0.' + Math.floor(Math.random() * 99) + 1 };
            stars.push(star);
        }
    }

    function moveStars() {
        for (i = 0; i < numStars; i++) {
            star = stars[i];
            star.z--;

            if (star.z <= 0) {
                star.z = canvas.width;
            }
        }
    }

    function drawStars() {
        var pixelX, pixelY, pixelRadius;

        if (canvas.width != window.innerWidth || canvas.height != window.innerHeight) {
            canvas.width = window.innerWidth;
            canvas.height = window.innerHeight;
            initializeStars();
        }

        c.fillStyle = "rgba(0,10,20,1)";
        c.fillRect(0, 0, canvas.width, canvas.height);
        c.fillStyle = "rgba(209, 255, 255, " + radius + ")";

        for (i = 0; i < numStars; i++) {
            star = stars[i];

            pixelX = (star.x - centerX) * (focalLength / star.z);
            pixelX += centerX;
            pixelY = (star.y - centerY) * (focalLength / star.z);
            pixelY += centerY;
            pixelRadius = 1 * (focalLength / star.z);

            c.fillRect(pixelX, pixelY, pixelRadius, pixelRadius);
            c.fillStyle = "rgba(209, 255, 255, " + star.o + ")";
        }
    }

    return function executeFrame() {
        moveStars();
        drawStars();
        canvas.animateID = window.requestAnimFrame(executeFrame);
    }
}

mounted () {
    // canvas 
    this.canvas = document.getElementById("space")
    // 获取动画的开关
    this.executeFrame = this.bg(this.canvas)
}
)
}

if (v == "render(h) jsx用法") {
Var = 
(
// <script type="text/jsx"></script>
// https://github.com/ElemeFE/element/blob/dev/packages/menu/src/menu.vue
render(h) {
    let uploadList;

    if (this.showFileList) {
      uploadList = (
        <UploadList
          disabled={this.uploadDisabled}
          listType={this.listType}
          files={this.uploadFiles}
          on-remove={this.handleRemove}
          handlePreview={this.onPreview}>
        </UploadList>
      `);
    }

    const uploadData = {
      props: {
        type: this.type,
        drag: this.drag,
        action: this.action,
        multiple: this.multiple,
        'before-upload': this.beforeUpload,
        'with-credentials': this.withCredentials,
        headers: this.headers,
        name: this.name,
        data: this.data,
        accept: this.accept,
        fileList: this.uploadFiles,
        autoUpload: this.autoUpload,
        listType: this.listType,
        disabled: this.uploadDisabled,
        limit: this.limit,
        'on-exceed': this.onExceed,
        'on-start': this.handleStart,
        'on-progress': this.handleProgress,
        'on-success': this.handleSuccess,
        'on-error': this.handleError,
        'on-preview': this.onPreview,
        'on-remove': this.handleRemove,
        'http-request': this.httpRequest
      },
      ref: 'upload-inner'
    };

    const trigger = this.$slots.trigger || this.$slots.default;
    const uploadComponent = <upload {...uploadData}>{trigger}</upload>;

    return (
      <div>
        { this.listType === 'picture-card' ? uploadList : ''}
        {
          this.$slots.trigger
            ? [uploadComponent, this.$slots.default]
            : uploadComponent
        }
        {this.$slots.tip}
        { this.listType !== 'picture-card' ? uploadList : ''}
      </div>
    `);
  }
)
}

if (v == "render(h)") {
Var = 
(
// <script type="text/jsx"></script>
render(h) {
  let el = h(false)
  if (this.show) {
    el = h('div', {
      staticClass: 'nuxt-progress',
      class: {
        'nuxt-progress-notransition': this.skipTimerCount > 0,
        'nuxt-progress-failed': !this.canSucceed
      },
      style: {
        'width': this.percent + '`%',
        'left': this.left
      }
    })
  }
  return el
}
)
}


if (v == "NProgress页面加载组件") {
Var = 
(
// $ cnpm install --save nprogress
import NProgress from 'nprogress'
import 'nprogress/nprogress.css'

router.beforeEach((to, from, next) => {
    // page-loading  启动
    NProgress.start()
    // 放行页面
    next()
})

// 全局路由钩子
router.afterEach((to, from) => {
    // page-loading 关闭
    NProgress.done()
})
)
}

if (v == "vue.directive 指令") {
Var = 
(
/* .waves-ripple {
    position: absolute;
    border-radius: 100`%;
    background-image: radial-gradient(circle, rgba(255, 255, 255, .35) 100`%, rgba(0, 0, 0, .15) 100`%);
    background-clip: padding-box;
    pointer-events: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    -webkit-transform: scale(0);
    -ms-transform: scale(0);
    transform: scale(0);
    opacity: 1;
}

.waves-ripple.z-active {
    opacity: 0;
    -webkit-transform: scale(2);
    -ms-transform: scale(2);
    transform: scale(2);
    -webkit-transition: opacity 1.2s ease-out, -webkit-transform 0.6s ease-out;
    transition: opacity 1.2s ease-out, -webkit-transform 0.6s ease-out;
    transition: opacity 1.2s ease-out, transform 0.6s ease-out;
    transition: opacity 1.2s ease-out, transform 0.6s ease-out, -webkit-transform 0.6s ease-out;
} */
import './waves.css';

const vueWaves = {};
vueWaves.install = (Vue, options = {}) => {
  Vue.directive('waves', {
    bind(el, binding) {
      el.addEventListener('click', e => {
        const customOpts = Object.assign(options, binding.value);
        const opts = Object.assign({
            ele: el, // 波纹作用元素
            type: 'hit', // hit点击位置扩散center中心点扩展
            color: 'rgba(0, 0, 0, 0.15)' // 波纹颜色
          }, customOpts),
          target = opts.ele;
        if (target) {
          target.style.position = 'relative';
          target.style.overflow = 'hidden';
          const rect = target.getBoundingClientRect();
          let ripple = target.querySelector('.waves-ripple');
          if (!ripple) {
            ripple = document.createElement('span');
            ripple.className = 'waves-ripple';
            ripple.style.height = ripple.style.width = Math.max(rect.width, rect.height) + 'px';
            target.appendChild(ripple);
          } else {
            ripple.className = 'waves-ripple';
          }
          switch (opts.type) {
            case 'center':
              ripple.style.top = (rect.height / 2 - ripple.offsetHeight / 2) + 'px';
              ripple.style.left = (rect.width / 2 - ripple.offsetWidth / 2) + 'px';
              break;
            default:
              ripple.style.top = (e.pageY - rect.top - ripple.offsetHeight / 2 - document.body.scrollTop) + 'px';
              ripple.style.left = (e.pageX - rect.left - ripple.offsetWidth / 2 - document.body.scrollLeft) + 'px';
          }
          ripple.style.backgroundColor = opts.color;
          ripple.className = 'waves-ripple z-active';
          return false;
        }
      }, false);
    }
  })
};

export default vueWaves;

/* 
main.js 中这样注册使用
import vueWaves from './directive/waves'
Vue.use(vueWaves)

<a class='header__crumbs--btn' @click.stop='goback' v-waves>返回</a>
 */
)
}

if (v == "波浪效果指令：v-waves") {
url := "https://raw.githubusercontent.com/dragon8github/Pandora/master/template/waves.zip"
name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
FileCreateDir, %name%
RunWaitOne("cd " . name . " && curl -O " . url)
run, %name%
return
}

if (v == "动态路由：router.addRoutes") {
Var = 
(
// 根据菜单生成的路由信息
// https://github.com/wdlhao/vue2-element-touzi-admin/blob/master/src/utils/mUtils.js#L166
// https://github.com/wdlhao/vue2-element-touzi-admin/blob/master/src/page/login.vue#L80
const routes = mUtils.generateRoutesFromMenu(menuData)
const asyncRouterMap = [
  {
  path: '/index',
  name:'',
  hidden   : true,
  component: require('layout/home.vue'),
  redirect: '/index',
  children:routes
  }
]
router.addRoutes(asyncRouterMap);
)
}

if (v == "<router-link></router-link>") {
Var = 
(
// 推荐使用path，name不太靠谱
<router-link :to="{ path: this.fromFullPath, name: 'user', params: { userId: 123 }}">User</router-link>
)
}

if (v == "<keep-alive>") {
Var = 
(
<!-- 路由入口 -->
<keep-alive include="overallSituation,townStreet">
    <router-view class='view' :class='{"is-mask": isMask}' />
</keep-alive>
)
}

if (v == "vuex.action") {
SendLevel 1
Send, vuex.a{tab}
return
}

if (v == "波浪效果组件") {
run, https://github.com/dragon8github/Pandora/blob/master/template/MdRipple.zip?raw=true
return
}
    

if (v == "组件复用的新套路: 合并配置，来代替mixin方案") {
Var = 
(
// core/MdComponent
import deepmerge from 'deepmerge'
export default function (newComponent) {
	const defaults = {
		props: {
			mdTheme: null
		},
		computed: {
			$mdActiveTheme () {
			}
		}
	}
	return deepmerge(defaults, newComponent)
}

// index.vue
import MdComponent from 'core/MdComponent'
export default new MdComponent({
	name: 'test',
	components: {

	},
	props: {

	},
	data () {
		return {

		}
	},
	computed: {

	},
	watch： {

	},
	methods: {
	
	},
})
)
}

if (v == "<router-view></router-view>") {
Var = 
(
<router-view></router-view>
)
}


if (v == "路由 Layout 布局示例") {
Var = 
(
import DashboardLayout from "@/pages/Layout/DashboardLayout.vue";

import Dashboard from "@/pages/Dashboard.vue";

const routes = [
  {
    path: "/",
    component: DashboardLayout,
    redirect: "/dashboard",
    children: [
      {path: "dashboard", name: "Dashboard", component: Dashboard },
    ]
  }
];

export default routes;

)
}

if (v == "vue.watch-$route") {
Var = 
(
watch: {
  '$route' (to, from) {
      // 只有详情页面，才需要多一个来路路径。
      this.fromTitle = to.name === 'details' ? from.meta.title + '> ' : ''
  }
},
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

if (v == "import { mapState, mapActions } from 'vuex'") {
Var = 
(
import { mapState, mapActions } from 'vuex'
---
methods: {
    ...mapActions('themeDetails', {
      deparmenthandleChange: 'departmentSelect',
      cityChange: 'townstreetSelect',
      matterChange: 'matterSelect',
      eq_problemTypeChange: 'eq_problemType',
      eq_stateIdChange: 'eq_satisfyId',
      eq_satisfyIdChange: 'eq_stateId',
    })
},
---
computed: {
  ...mapState('themeDetails', [
    'departmentItems', 
    'matterItems', 
    'departmentSelect', 
    'townstreetSelect', 
    'matterSelect',
    'eq_problemType',
    'eq_stateId',
    'eq_satisfyId',
  ])
},
)
txtit(Var)
return
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

if (v == "vue.watch.deep") {
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
_send("router.init", true, true)
return
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

if (v == "this.$router.back()") {
Var = 
(
this.$router.back() // window.history.back();
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
SendLevel 1
Send, vuex.modules{tab}
return
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
if (v == "vue.computed: get/set") {
Var = 
(
computed: {
    townstreetSelect: {
        get () {
          return this.$store.state.mapDetails.townstreetSelect
        },
        set (newV) {
           this.$store.dispatch('mapDetails/townstreetSelect', newV)
        }
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
    // 也支持这样： 'analysis.data': {}
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
import NProgress from 'nprogress'
import 'nprogress/nprogress.css'

Vue.use(Router)

// layoutA
const layoutA = r => require.ensure([], () => r(require('@/layout/layoutA')), 'layoutA')
// 首页
const Home = r => require.ensure([], () => r(require('@/pages/Home')), 'Home')

// layoutB
const layoutB = r => require.ensure([], () => r(require('@/layout/layoutB')), 'layoutB')
// 数据采集
const Collection = r => require.ensure([], () => r(require('@/pages/Collection')), 'Collection')

// 路由配置
var router = new Router({
  mode: 'history',
  scrollBehavior: () => ({ y: 0 }),
  routes: [
	// 重定向首页
	{ path: '/', redirect: '/dg/Home' },
	// layoutA
	{ path: '/dg', component: layoutA, children: [
		// 重定向数据中心
		{ path: '/', redirect: 'Home' },
		// 数据中心
		{ path: 'Home', name: 'Home', meta: { title: '数据中心' }, component: Home },
	]},
	// layoutB
	{ path: '/am', component: layoutB, children: [
		// 重定向数据采集
		{ path: '/', redirect: 'Collection' },
		// 数据采集
		{ path: 'Collection', name: 'Collection', meta: { title: '数据采集' }, component: Collection },
	]},
  ]
})

router.beforeEach((to, from, next) => {
	// page-loading  启动
	NProgress.start()
	// 更新 vuex 状态 - 标题
	store.dispatch('SET_TITLE', to.meta.title + ' - 欢迎来到东莞市教育数据中心！')
    // 放行页面
    next()
})

// 全局路由钩子
router.afterEach((to, from) => {
	// page-loading 关闭
	NProgress.done()
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
  return request('/dc/record/dcColumnRule/showAllColumnByTable', { params: { datasourceId: state.datasourceId, databaseName: state.selectDatabase, tableName }})
  return request('/dc/record/dcTableRule/queryTableWithColumn', { 
      method: 'POST', 
      data: { 
        tableQuery: {
          datasourceId: state.datasourceId, 
          databaseName: state.selectDatabase, 
          tableNameList: state.selectTables.map(_ => _.tableName)
        }
      }
  })
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
::vueinit::
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
    townstreetSelect: {
        get () {
          return this.$store.state.mapDetails.townstreetSelect  
        },
        set (newV) {
           this.$store.dispatch('mapDetails/townstreetSelect', newV)
        }
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
::vuex.m::
Var =
(
import { request } from '@/utils/request.js'
import Model from '@/utils/Model.js'

let state = {
    AppData: {},
    getDepartSecondOverdue: null,
}

const actions = {
  setAppData ({ commit, state, dispatch, rootState }, data) {
	   commit('SET_APP_DATA', data.userInfo)
  },
  getDepartSecondOverdue ({ commit, state, dispatch, rootState }, departId) {
    return request('/sg/department/sgDepartmentCount/getDepartSecondOverdue?departId=' + departId).then(result => {
        state.getDepartSecondOverdue = result
    })
  },
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

::this.$nextTick::
::this.$next::
::$nextTick::
::$next::
::$.next::
::next::
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
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.min.js"></script>
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

::`:style::
Var =
(
:style='{ "z-index": isShowGuidance ? 2001 : 1 }'
)
code(Var)
return

::props::
::vue.props::
::vue.prop::
Var =
(
props: {
   text: {
       type: String,
       default: ''
   }
},
)
code(Var)
return

::element::
::elementui::
Var =
(
1、需要安装

cnpm install babel-plugin-component -D

2、.babelrc 替换：

{
  "presets": [
    ["env", {
      "targets": {
        "browsers": ["> 1`%", "last 2 versions", "not ie <= 8"]
      }
    }],
    "stage-2"
  ],
  "plugins": [
    "transform-vue-jsx", 
    "transform-runtime",
    ["component", {
      "libraryName": "element-ui",
        "styleLibraryName": "theme-chalk"
    }]
   ]
}

3、使用教程：
import 'element-ui/lib/theme-chalk/index.css'

import { DatePicker, Select, Option, Cascader, MessageBox, tooltip, Message, Autocomplete, Input, Checkbox, Switch, Dropdown, DropdownMenu, DropdownItem } from 'element-ui'

Vue.component(btn.name, btn)
Vue.component(vtitle.name, vtitle)
Vue.component(DatePicker.name, DatePicker)
Vue.component(Select.name, Select)
Vue.component(Option.name, Option)
Vue.component(Cascader.name, Cascader)
Vue.component(tooltip.name, tooltip)
Vue.component(Input.name, Input)
Vue.component(Autocomplete.name, Autocomplete)
Vue.component(Checkbox.name, Checkbox)
Vue.component(Switch.name, Switch)
Vue.component(Dropdown.name, Dropdown)
Vue.component(DropdownMenu.name, DropdownMenu)
Vue.component(DropdownItem.name, DropdownItem)

Vue.prototype.$message = Message
Vue.prototype.$msgbox = MessageBox
Vue.prototype.$alert = MessageBox.alert
Vue.prototype.$confirm = MessageBox.confirm
Vue.prototype.$prompt = MessageBox.prompt
)
code(Var)
return

::window.back::
::window.back()::
::back::
Var =
(
this.$router.back() // window.history.back();
)
code(Var)
return

::vuex.module2::
::vuex.m2::
Var =
(
import { request } from '@/utils/request.js'

let state = {
   tableHeader: null
}

const actions = {
  tableHeader ({ commit, state, dispatch, rootState }, data) {
	  request('/chuanghui/dc/group/dcGroupViewData/tableHeader/1').then(result => {
        console.log(20190403103346, result)
    }) 
  },
}

export default {
  namespaced: true,
  state,
  actions,
}
)
code(Var)
return

::vuex.mu::
::vuex.mutation::
::vuex.mutations::
InputBox, OutputVar, title, enter a name?,,,,,,,,test
StringUpper, a, OutputVar
Var =
(
SET_%a% (state, %OutputVar%) {
  state.%OutputVar% = %OutputVar%
},
)
code(Var)
return

::vue.main::
::vue.entry::
::vue.main.js::
Var =
(
import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import vueWaves from './directive/waves'
import { maybe } from './utils/utils'

import '@/scss/utils.scss'

Vue.use(vueWaves)

Vue.mixin({
  methods: {
	maybe,
  }
})

new Vue({
  render: h => h(App),
  router,
  store,
}).$mount('#app')
)
code(Var)
return

::router-view::
::route-view::
Var =
(
<router-view></router-view>
)
code(Var)
return