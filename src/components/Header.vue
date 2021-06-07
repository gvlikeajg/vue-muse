<template>
<div class="body">
  <div class="header">
      <img src="../../public/data/images/header-log.png" alt="">
      <input placeholder="菜谱名~食材名" v-model="input"/>
      <button @click="search1">搜索</button>
      <ul>
          <li @click="toIndex">首页</li>
          <li @click="toMenu">菜谱分类</li>
      </ul>
      <div class="head-right">
          <el-avatar shape="square" :size="50" :src="squareUrl" v-if=head></el-avatar>
          <span @click="login">{{loginData}}</span>
          <span>|</span>
          <span @click="register">{{registerData}}</span>
      </div>
  </div>
</div>
</template>

<script>
// import { mapState } from 'vuex'
export default {
    name:'Header',
      data() {
      return {
        input: '',
        loginData:'登录',
        registerData:'注册',
        //头像
        squareUrl: "",
        head:false,
      }
    },
    // computed:{
    //     ...mapState({
    //         loginData:'login',
    //         registerData:'register'
    //     })
    // },
    created(){
        if(localStorage.getItem('name')==null){//判断是否是登录状态
            this.loginData='登录'
            this.registerData='注册'
        }else{
            this.loginData=localStorage.getItem('name')
            this.axios.get('http://localhost:8082/main',{//获取用户头像
                params:{
                    user:this.loginData
                }
            }).then((res)=>{
                // console.log(111,res.data[0].img);
                this.squareUrl=res.data[0].img
            }).catch(err=>{
                console.log(err);
            })
                this.head=true
                this.registerData='退出'
        }
    },
    methods:{
        search1(){//搜索
            if(this.input==''){
                this.$router.push({path:'/'})
            }else{
                this.$router.push({path:'/Menusearch',query:{plan:this.input}})
            }
        },
        toIndex(){
            this.$router.push({path:'/'})
        },
        toMenu(){
            this.$router.push({path:'/menu'})
        },
        login(){
            // console.log(this.loginData);
            if(this.loginData==='登录'){//判断登录后进入个人主页
                this.$router.push({path:'/login'})
                
            }else{
                this.$router.push({path:'/main'})
            }
        },
        register(){
            if(this.registerData=='注册'){
                this.$router.push({path:'/register'})
            }else{//退出登录
                
                localStorage.clear()
                this.head=false
                this.loginData='登录'
                this.registerData='注册'
                this.$router.push({path:'/'})
            }
        }
    }
}
</script>

<style scoped>
.body{
    width: 100%;
    background-color: #f66f5c;
    box-sizing: border-box;
    position: fixed;
    z-index: 999;
}
.header{
    width: 1200px;
    height: 80px;
    /* padding: 0 35px; */
    box-sizing: border-box;
    margin: 0 auto;
    /* background-color: rgba(246,77,54,0.8); */
    position: relative;
}
.header img{
    width: 106px;
    height: 54px;
    margin: 13px 0px 0px 0px;
    display: inline-block;
}
input{
    height: 45px;
    width: 220px;
    margin-left: 30px;
    padding-left: 15px;
    box-sizing: border-box;
    border-radius: 25px;
    border: none;
    outline: none;
    position: absolute;
    top:20px;
}
button{
    width: 65px;
    height: 41px;
    position: absolute;
    border-radius: 22px;
     border: none;
    outline: none;
    color: #fff;
    font-size: 16px;
    font-weight: 600;
    left: 289px;
    top: 22px;
    cursor: pointer;
    background: #eb4b34;
}
ul{
    display: flex;
    position: absolute;
    line-height: 80px;
    left: 500px;
    top: 0px;
}
ul li{
    margin-left: 50px;
    cursor: pointer;
    padding: 0 20px;
    box-sizing: border-box;
    color: #fff;
    font-size: 18px;
    font-weight: 600;
}
ul li:hover{
    background-color: rgba(255, 255, 255, 0.164);
}
.head-right{
    float: right;
    line-height: 80px;
}
.el-avatar{
    width: 50px;
    height: 50px;
    position: absolute;
    top:15px;
    right: 100px;
}
.head-right span{
    display: inline-block;
    cursor: pointer;
    color: #fff;
}
.head-right span:nth-child(2){
    margin: 0 30px;
}
.head-right span:nth-child(1):hover{
    text-decoration: underline;
}
.head-right span:nth-child(3):hover{
    text-decoration: underline;
}
</style>