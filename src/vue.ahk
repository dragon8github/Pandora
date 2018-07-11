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
              template: `
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