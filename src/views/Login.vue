<template>
  <div class="login">
      <h1>欢迎来到美食杰</h1>
      <div class="content">
          <p>美食杰</p>
        <el-input v-model="input1" placeholder="请输入用户名"></el-input>
        <el-input placeholder="请输入密码" v-model="input2" show-password></el-input>
        <button @click="login">登&nbsp;陆</button>
        <p class="p1" @click="register">没有账号?&nbsp;立即注册</p>
        <div class="footer">
            <span class="left"></span>
            <span>使用第三方登录</span>
            <span class="right"></span>
        </div>
        <ul>
            <li></li>
            <li></li>
            <li></li>
        </ul>
      </div>
  </div>
</template>

<script>
export default {
     data() {
        return {
        input1: '',
        input2: ''
        }
    },
  methods:{
      register(){//跳转注册页面
          this.$router.push({path:'/register'})
      },
      login(){//登录
        // console.log(this.input1,this.input2);
         this.axios.post('http://localhost:8082/login',{
                    user:this.input1,
                    psw:this.input2
                }).then(res=>{
                    // console.log(res.data.code);
                    if(res.data.code==1){
                        this.$router.push({path:'/'})//跳转登录页面
                        this.$alert('欢迎回来:'+this.input1, '您好', {
                             confirmButtonText: '确定',
                        });
                        localStorage.setItem('name',this.input1)//储存用户名
                    }
                    else{
                        this.$alert('用户名或密码输入错误', '提示', {
                            confirmButtonText: '确定',
                        });
                    }
                }).catch(err=>{
                    console.log(err);
                })
        }
  }
}
</script>

<style scoped>
.login{
    background-image: url(../../public/data/images/body-image.jpg);
    background-size: 100%;
    background-repeat: no-repeat;
    background-color: aliceblue;
    height: 100vh;
}
h1{
    text-align: center;
    color: #fff;
    margin: 0 0 30px 0;
}
.content{
    width: 400px;
    height: 450px;
    background-color: #fff;
    margin: auto;
    border-radius: 20px;
}
.content p{
    text-align: center;
    font-size: 18px;
    font-weight: 600;
}
.el-input{
    width: 300px;
    display: block;
    margin: 15px auto;
}
button{
    display: block;
    margin: 10px auto;
    width: 170px;
    height: 40px;
    padding: 10px 0;
    box-sizing: border-box;
    background-color: #ea5d4e;
    border-radius: 20px;
    border: none;
    outline: none;
    cursor: pointer;
    color: #fff;
}
button:hover{
    background-color:#db432e ;
}
.content .p1{
    margin: 20px auto;
    font-size: 14px;
    font-weight: 600;
    color: #ea5d4e;
    cursor: pointer;
}
.content .p1:hover{
    text-decoration:underline;
}
.footer{
    width: 280px;
    margin: 0 auto;
    color: #999;
    font-size: 12px;
    vertical-align: middle;
}
.left{
    display: inline-block;
    width: 80px;
    height: 1px;
    background-color: #999;
}
.right{
    display: inline-block;
    width: 80px;
    height: 1px;
    background-color: #999;
}
.footer span:nth-child(2){
    display: inline-block;
    margin: 0 10px;
}
ul{
    width: 250px;
    margin: 20px auto;
    display: flex;
    justify-content: space-between;
}
li{
    cursor: pointer;
}
li:nth-child(1){
    display: block;
    height: 48px;
    width: 48px;
    background: url(https://s1.st.meishij.net/p2/20191112/20191112171037_886.png) no-repeat;
    transition: all ease .3s;
    -webkit-transition: all ease .3s;
}
li:nth-child(2){
    display: block;
    height: 48px;
    width: 48px;
    background: url(https://s1.st.meishij.net/p2/20191112/20191112171037_886.png) no-repeat;
    background-position: -48px 0px;
    transition: all ease .3s;
    -webkit-transition: all ease .3s;
}
li:nth-child(3){
    display: block;
    height: 48px;
    width: 48px;
    background: url(https://s1.st.meishij.net/p2/20191112/20191112171037_886.png) no-repeat;
    background-position: -96px 0px;
    transition: all ease .3s;
    -webkit-transition: all ease .3s;
}
</style>>
