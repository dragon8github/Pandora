::vue.mixin::
::vue.mixins::
Var =
(
// 全局Mixin，任何一个组件都会被影响，无论是页面、入口、还是组件
Vue.mixin({
  created: function () {
    console.log(20180929205251, 123)
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
  setAppData ({ commit, state, dispatch }, data) {
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

::$refs::
::$ref::
::ref::
::v-ref::
::v-refs::
Var =
(
// <select ref="myselect"></select>
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
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
<template>
    <div class="test">
        test
    </div>
</template>

<script>
export default {
  name: 'test',
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
  beforeMount () {
      console.log(%t%, 'test');
  }
}
</script>

<style lang="scss" scoped>
@import "~@/scss/functions.scss";
.test {

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
    <script src="https://cdn.bootcss.com/vue/2.5.16/vue.min.js"></script>
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



<transition name="msgbox-bounce">
    <div class="msgbox" v-show="value">
    
    </div>
</transition>

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