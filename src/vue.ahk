
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
    ...mapGetters({
        menuList: 'menuList'
    })
},
)
return

::mapmutations::
Var = 
(
// https://vuex.vuejs.org/en/getters.html
import { mapMutations } from 'vuex'
methods: {
    ...mapMutations([
        'SET_MENU',
        'SET_USERINFO'
    ]),
    ...mapMutations({
        SET_MENU£º 'SET_MENU',
        SET_USERINFO£º 'SET_USERINFO'
    }),
},
)
return

::dispatch:: 
    SendInput, this.$store.dispatch('').then(_ => {{} {}}){left 2}{enter 2}{up}{tab} // ...
Return

::v-for::
    SendInput, v-for='(item, index) in items' :key='index'
Return