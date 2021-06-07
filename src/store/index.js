import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    userName:''
  },
  mutations: {
    changeName(state,payload){
      state.userName=payload
    }
  },
  actions: {
  },
  modules: {
  }
})
