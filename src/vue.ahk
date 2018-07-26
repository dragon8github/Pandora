::$refs::
::$ref::
Var =
(
// <select ref="myselect"></select>
this.$refs.myselect
)
code(Var)
return

::$nextTick::
::$next::
Var =
(
this.$nextTick(() => {
    
})
)
code(Var)
return

>!v::
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
        myData: []
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
      console.log('test');
  }
}
</script>

<style lang="scss" scoped>
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
    SendInput, v-for='(item, index) in items' :key='index'
Return


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
::newv::
Var = 
(
var vue = new Vue({
    el: '#app',
    data: {
        title: '123'
    },
    beforeMount () {
        console.log('hello world');
    },
    methods: {
        handleClick: function () {
            
        }
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
