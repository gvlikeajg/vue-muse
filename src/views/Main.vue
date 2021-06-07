<template>
  <div class="main">
      <Header></Header>
      <div class="ding"></div>
      <h1>我的美食空间</h1>
      <div class="myMessage">
          <img :src=myImg alt="">
          <div class="myMessage-right">
              <h2>{{userName}}</h2>
              <p @click="intoChangeData">编辑个人资料</p>
          </div>
      </div>
      <div class="myContent">
          <!-- <el-button type="text">关注</el-button> -->
          <el-button type="text">收藏</el-button>
          <div class="content">
              <ul class="content-list">
                  <li v-for="(item,index) in collect" :key="index">
                      <img :src=item.img alt="" :class="item.title=='暂无收藏内容'?'action':''">
                      <p>{{item.title}}</p>
                      <p @click="del(item)" :class="item.title=='暂无收藏内容'?'action':''">删除</p>
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
  components: { Header,Footer },
    data(){
        return {
            userName:'',
            myImg:'',
            collect:[],
        }
    },
    methods:{
        intoChangeData(){
            this.$router.push({path:'/main/changedata'})
        },
        del(item){//删除
            console.log(item);
           this.axios.delete('http://localhost:8082/delete', {
                data: {
                    id:item.id
                }
            }).then(res=> {
                console.log(res)
                this.getCollectData()
            }).catch(err=>{
                console.log(err);
            })
        },
        getCollectData(){//获取收藏列表
             this.axios.get('http://localhost:8082/maincollect',{//根据用户名查找用户收藏信息
            params:{
                user:this.userName
            }
            }).then((res)=>{
                this.collect=res.data
                if(this.collect==''){
                    this.collect=[{title:'暂无收藏内容'}]
                }
            }).catch(err=>{
                console.log(err);
            })
        }
    },
    created(){
        this.userName=localStorage.getItem('name')//获取用户名
        this.axios.get('http://localhost:8082/main',{//根据用户名查找用户信息
            params:{
                user:this.userName
            }
        }).then((res)=>{
            // console.log(111,res.data[0].img);
            this.myImg=res.data[0].img
        }).catch(err=>{
            console.log(err);
        })
        //获取收藏列表
       this.getCollectData()
    }
    
}
</script>

<style scoped>
.main{
    background: #fae8c8;
}
.ding{
    height: 80px;
}
h1{
    text-align: center;
    line-height: 80px;
}
.myMessage{
    width: 1200px;
    margin:20px auto;
    display: flex;
}
.myMessage img{
    width: 200px;
    height: 200px;
    border: 1px solid #000;
}
.myMessage-right{
    width: 1000px;
    background: #fff;
    padding: 20px;
    box-sizing: border-box;
}
.myMessage-right p{
    margin-top: 20px;
    cursor: pointer;
}
.myContent{
    width: 1200px;
    margin: auto;
}
.content{
    width: 1200px;
    margin: 20px auto;
    padding: 20px;
    box-sizing: border-box;
    background: #fff;
}
.content-list{
    display: flex;
    flex-wrap: wrap;
} 
.content-list li{
    width: 230px;
    height: 250px;
    padding: 0 15px;
    text-align: center;
    box-sizing: border-box;
}
.content-list li img{
    width: 220px;
    height: 200px;
}
p{
    cursor: pointer;
}
 .action{
    display: none;
}
</style>