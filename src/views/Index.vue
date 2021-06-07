<template>
  <div class="index">
    <Header></Header>
    <div class="ding"></div>
    <div class="index_topvideo">
      <h1>
        今日热门菜谱
        <a href="">更多菜谱<span>></span></a>
      </h1>
      <!-- 轮播 -->
      <div class="carousel">
          <el-carousel :interval="3000" type="card" height="300px">
          <el-carousel-item v-for="(item, index) in carouselImg"  :key="index">
            <img :src="item.carousel" alt="" class="carousel-img">
          </el-carousel-item>
          </el-carousel>
      </div>
    </div>
    <!-- 中间部分 -->
    <div class="index_contentw">
      <div class="index_contentw-left">
        <div class="host">
            <h2>今日热搜</h2>
            <ul>
              <li v-for="(item,index) in hostList" :key="index" :class="index==0||index==1||index==2? 'active':''" @click="ToMenusearch(item)">
                {{item}}
              </li>
            </ul>
        </div>
        <div class="sancan">
          <div class="sancan-top">
            <h2>今日三餐</h2>
            <p v-for="(item,index) in sancanLists" :key="index" @click="sancanChange(index)" :class="index==num?'sancanActive':''">{{item}}</p>
          </div>
          <!-- 今日三餐图片 -->
          <div class="sancan-btm">
            <ul>
              <li v-for="(item,index) in sancanPhotos" :key="index">
                <img :src="item.img" alt="" class="sancanImg" @click="intoContent(index)"/>
                <strong class="sancanTitle">{{item.title}}</strong>
                <p class="sancanContent">{{item.content}}</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="index_contentw-right">
        <img src="../../public/data/images/sancan-right1.jpg" alt="" class="sancanRight-G">
        <img src="../../public/data/images/sancan-right2.png" alt="" class="sancanRight-L">
        <img src="../../public/data/images/sancan-right3.png" alt="" class="sancanRight-S">
        <div class="index_contentw-right-btm">
          <strong>让吃饭变简单</strong>
          <p>www.Meishi.cc</p>
        </div>
      </div>
    </div>
    <!-- 美食推荐 -->
    <div class="menuList">
      <div class="recommend-list" v-for="(item,index) in h2" :key="index">
        <h2>{{item.h2}}</h2>
        <ul class="lists">
          <li class="list" v-for="(lists,i) in cateRecommend" :key="i">
            <img :src="lists.img" alt="" @click="toContent(i)">
            <div class="hideDiv">
              <img src="https://s1.st.meishij.net/user/32/12/q13190532_153726902764365.jpg" alt="">
              <span>{{lists.author}}</span>&nbsp;&nbsp;
            </div>
            <div class="listText">
              <strong>{{lists.title}}</strong>
              <p>
                <span><img src="../../public/data/images/icon.png" alt=""></span>
                {{lists.content}}
              </p>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
// @ is an alias to /src
import Header from '../components/Header.vue'
import Footer from '../components/Footer.vue'


export default {
  name: 'Index',
  components: {
    Header,
    Footer,
  },
  data(){
    return{
      carouselImg:[],//轮播图片
      //今日热搜列表
      hostList:['早餐','鱼香肉丝','家常菜','红烧肉','牛肉','红烧排骨','宫保鸡丁','酸菜鱼','可乐鸡翅'],
      //今日三餐
      sancanLists:['早餐','午餐','下午茶','晚餐','夜宵'],
      sancanPhotos:[],
      num:0,
      //美食推荐标题
      h2:[],
      //美食推荐请求内容
      cateRecommend:[]
    }
  },
   methods: {
     //今日热搜进入菜谱搜索
     ToMenusearch(text){
       this.$router.push({path:'/Menusearch',query:{plan:text}})
     },
     //今日三餐
     sancanChange(i){//按钮切换
        this.num=i
        this.getDataSancan()
     },
     getDataSancan(num=0){//三餐内容请求
       this.axios.get('http://localhost:8082/sancan',{
         params:{
           num:this.num
         }
       }).then(res=>{
        //  console.log(res.data);
         this.sancanPhotos=res.data
       }).catch(err=>{
         console.log(err);
       })
     },
     toContent(i){//美食推荐进入菜单详情
        this.$router.push({path:'/menucontent',query:{plan:i}})
     },
     intoContent(j){//今日三餐进入菜谱搜索
       this.$router.push({path:'/menusearch',query:{plan:j}})
     }
    },
    created(){

      //请求轮播图片地址(网址)
      this.axios.get('http://localhost:8082/carousel').then(res=>{
          this.carouselImg=res.data
      }).catch(err=>{
          console.log(err);
      })
      this.getDataSancan()

      //美食推荐h2标题请求
    this.axios.get('http://localhost:8082/recommendh2').then(res=>{
          // console.log(res.data);
          this.h2=res.data
      }).catch(err=>{
          console.log(err);
      })
      //美食推荐图片内容请求
      this.axios.get('http://localhost:8082/cateRecommend').then(res=>{
          // console.log(res.data);
          this.cateRecommend=res.data
      }).catch(err=>{
          console.log(err);
      })
  },
}
</script>
<style scoped>
.ding{
  height: 80px;
  background-color: rgba(246,77,54,0.8);
}
  .index_topvideo{
    width: 100%;
    background: #efeeec;
  }
  .index_topvideo h1{
    width: 1200px;
    margin: auto;
    font-size: 24px;
    padding: 30px 0 10px 0;
  }
  .index_topvideo h1 a{
    float: right;
    font-size: 17px;
    font-weight: 600;
    border-radius: 16px;
    background: #f64d36;
    padding: 5px 15px;
    box-sizing: border-box;
    background-image: linear-gradient(to right,#f67536,#f64d36);
    color: #fff;
  }
  .index_topvideo h1 a:hover{
    background: #eb4b34;
  }
  .index_topvideo h1 a span{
    padding-left: 4px;
    box-sizing: border-box;
  }
  /* 轮播 */
  .carousel{
    width: 1200px;
    margin: auto;
  }
  .el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 200px;
    margin: 0;
  }
  
  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
  .carousel-img{
    width: 100%;
    height: 100%;
  }
 /* 中间部分 */
.index_contentw{
  width: 1200px;
  margin:40px auto;
  display: flex;
  justify-content: space-between;
}
.index_contentw-left{
  width: 67%;
}
.host{
  width: 100%;
  margin-bottom: 35px;
  background: #fff;
  padding: 20px;
  box-sizing: border-box;
  border-radius: 10px;
}
.host>ul{
  width: 100%;
  height: 100%;
  padding-top: 20px;
  box-sizing: border-box;

}
.host ul>li{
  cursor: pointer;
  font-size: 18px;
  padding:0 16px;
  line-height: 40px;
  font-weight: 400;
  color: #222;
  border-radius: 30px;
  background: #f5f5f5;
  display: inline-block;
  margin-right: 20px;
  margin-bottom: 10px;
}
.host ul>li:hover{
  background: #eee;
}
.host ul .active{
  background: rgba(246,77,54,0.15);
  color: #f64d36;
}
.host ul .active:hover{
  background: rgba(246,77,54,0.2);
}
/* 三餐 */
.sancan{
  background: #fff;
  padding: 15px;
  box-sizing: border-box;
  border-radius: 10px;
}
.sancan-top h2{
  display: inline-block;
  line-height: 40px;
  margin-right: 20px;
}
.sancan-top p{
  display: inline-block;
  line-height: 30px;
  margin-right: 20px;
  font-size: 18px;
  color: #999;
  font-weight: 600;
  background-color: #eee;
  padding: 0 15px;
  box-sizing: border-box;
  border-radius: 20px;
  cursor: pointer;
}
.sancan-top p:hover{
    background: #e8e8e8;
    color: #888;
}
.sancan-top .sancanActive{
    background: #f64d36;
    color: #fff;
}
.sancan-top .sancanActive:hover{
  background: #f64d36;
  color: #fff;
}
.sancan-btm ul{
  display: flex;
  justify-content: space-between;
  padding: 20px 10px;
}
.sancanImg{
  width: 240px;
  height: 240px;
  border-radius: 10px;
}
.sancanTitle{
  display: block;
  font-size: 18px;
  color: #222;
  margin-bottom: 10px;
}
.sancanContent{
  color: #999;
  font-size: 14px;
}
/* 今日三餐右侧图片部分 */
.index_contentw-right{
  width: 30%;
  height: 640px;
  border-radius: 10px;
  overflow: hidden;
  position: relative;
}
.sancanRight-G{
  width: 100%;
  border-radius: 10px;
  z-index: 0;
  animation-name: example1;
  animation-duration: 4s;
  animation-iteration-count: infinite;
  animation-direction:alternate-reverse;
  animation-timing-function: linear;
}

.sancanRight-L{
  width: 290px;
  height: 250px;
  position: absolute;
  top: 50px;
  left: 35px;
}
/* 手机旋转动画 */
@keyframes example {
  from {
    transform: rotate(72deg);
    transform-origin: right bottom;
  }
  to {
    transform: rotate(0deg);
    transform-origin: right bottom;
  }
}
/* 背景图动画 */
@keyframes example1 {
  from {
    width: 100%;
    opacity: 1;
  }
  to {
      width: 120%;
      opacity: 0.8;
  }
}
.sancanRight-S{
  width: 296px;
  height: 324px;
  position: absolute;
  top: 280px;
  left: 64px;
  animation-name: example;
  animation-duration: 4s;
  animation-iteration-count: infinite;
  animation-direction:alternate-reverse;
  animation-timing-function: linear;
}
.index_contentw-right-btm{
  text-align: center;
  position: absolute;
  color: #fff;
  top: 570px;
  left: 125px;
}
.index_contentw-right-btm strong{
 font-size: 19px;
 font-weight: 400;
}
.index_contentw-right-btm p{
  font-size: 14px;
 font-weight: 300;
}
/* 菜单列表 ,美食推荐*/
.menuList{
  width: 1200px;
  margin: auto;
}
.recommend-list{
  width: 1200px;
}
.recommend-list h2{
  margin-bottom: 20px;
}
.lists{
  width: 1200px;
  display: flex;
  justify-content: space-between;
  margin-bottom: 20px;
}
.list{
  width: 19%;
  position: relative;
  background: rgb(247, 246, 245);
  border-radius: 15px;
}
.list:hover .hideDiv{
   display: block;
}
.list img{
  width: 100%;
  height: 80%;
  border-radius: 15px;
}
.listText{
  width: 100%;
  background-color: #fff;
  margin: 0;
  padding: 15px;
  box-sizing: border-box;
  position: absolute;
  top: 315px;
  left: 0px;
  border-bottom-right-radius: 10px;
  border-bottom-left-radius:10px;
  overflow: hidden;
}
.listText strong:hover{
  color: #f64d36;
  cursor: pointer;
}
.listText span{
  display: inline-block;
  width: 20px;
  height: 20px;
  vertical-align: middle;
}
.listText p{
  margin-top: 10px;
  overflow: hidden;
  font-size: 14px;
  color: #999;
  white-space: nowrap;
  text-overflow: ellipsis;
  vertical-align: middle;
}
.hideDiv{
  width: 100%;
  display: none;
  transition: display 2s;
  position: absolute;
  top: 266px;
  left: 0px;
  padding: 10px 15px;
  box-sizing: border-box;
  background-color: #666;
}
.hideDiv span{
  color: #fff;
  cursor: pointer;
  display: inline-block;
  vertical-align: middle;
}
.hideDiv span:hover{
  color: #f64d36;
}
.hideDiv img{
  width: 30px;
  height: 30px;
  margin-right: 15px;
  line-height: 30px;
  border-radius: 30px;
  vertical-align: middle;
}
</style>>


