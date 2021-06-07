<template>
<div class="menu">
  <Header></Header>
  <div class="menuContent">
    <div class="ding"></div>
    <h1>全部菜谱分类</h1>
    <div class="menuLists" v-for="(item,index) in h2" :key="index">
      <h2>{{item}}</h2>
      <ul class="menuGroup">
        <li v-for="(list,i) in menu" :key="i" v-show="index==list.num" @click="ToMenusearch">
          <img :src=list.photo alt="">
          <p>{{list.title}}</p>
        </li>
      </ul>
    </div>
  </div>
  <Footer></Footer>
</div>
</template>

<script>
import Header from '../components/Header.vue'
import Footer from '../components/Footer.vue'
export default {
    components:{
        Header,
        Footer
    },
    data(){
      return {
        h2:['实用分类','每日三餐','主食','家常菜谱','中华菜系','各地小吃','外国菜谱','烘焙','人群','厨具','场景','脏腑调理'],
        menu:[],
      }
    },
    methods:{
      ToMenusearch(){//进入菜谱搜索页
        this.$router.push({path:'/menusearch'})
      }
    },
    created(){
      //获取菜谱内容
      this.axios.get('http://localhost:8082/menu',{
      }).then(res=>{
        // console.log(res);
        this.menu=res.data
      }).catch(err=>{
        console.log(err);
      })
    },
}
</script>

<style scoped>
.menu{
  width: 100%;
}
.menuContent{
  width: 1200px;
  margin: 0 auto;
}
.ding{
  width: 100%;
  height: 80px;
}
h1{
  margin-top: 40px;
  margin-bottom: 20px;
  color: #222;
  font-weight: 700;
}
.menuLists{
  width: 100%;
  background-color: #fff;
  padding:20px;
  box-sizing: border-box;
  margin-bottom: 20px;
  border-radius: 10px;
}
h2{
  font-size: 24px;
  color: #222;
  font-weight: 600;
}
.menuGroup{
  width: 100%;
  box-sizing: border-box;
  /* max-height: 237px;
  overflow: hidden; */
  display: flex;
  flex-wrap: wrap; 
}
.menuGroup li{
  padding: 10px 32px;
  box-sizing: border-box;
  text-align: center;
  border-radius: 12px;
  cursor: pointer;
}
.menuGroup li:hover{
  background: #f5f5f5;
}
.menuGroup li img{
  width: 80px;
  position: relative;
  top: -6px;
  margin-bottom: -6px;
}

</style>
