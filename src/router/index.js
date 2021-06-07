import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'
import Login from '../views/Login.vue'
import Register from '../views/Register.vue'
import Menu from '../views/Menu.vue'
import Menusearch from '../views/Menusearch.vue'
import Main from '../views/Main.vue'
import MenuContent from '../views/MenuContent.vue'
import ChangeData from '../views/ChangeData.vue'
import SearchContent from '../views/SearchContent.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'index',
    component: Index
  },
  {
    path: '/login',
    name: 'login',
    component: Login
  },
  {
    path: '/register',
    name: 'register',
    component: Register
  },
  {
    path:'/menu',
    name:'menu',
    component:Menu
  },
  {
    path:'/menusearch',
    name:'menusearch',
    component:Menusearch
  },
  {
    path:'/main',
    name:'main',
    component:Main
  },
  {
    path:'/menucontent',
    name:'menucontent',
    component:MenuContent
  },
  {
    path:'/main/changedata',
    name:'changedata',
    component:ChangeData
  },
  {
    path:'/menusearch/searchcontent',
    name:'searchcontent',
    component:SearchContent
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
