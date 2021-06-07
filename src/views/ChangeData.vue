<template>
  <div class="changedata">
      <Header></Header>
      <div class="ding"></div>
      <h1>个人中心</h1>
      <div class="data">
        <h2>修改头像:</h2>
        <div>
            <el-upload
                class="avatar-uploader"
                action="https://jsonplaceholder.typicode.com/posts/"
                :show-file-list="false"
                :on-success="handleAvatarSuccess"
                :before-upload="beforeAvatarUpload">
                <img v-if="imageUrl" :src="imageUrl" class="avatar">
                <i v-else class="el-icon-plus avatar-uploader-icon"></i>
            </el-upload>
        </div>
        
        <h2>名称:</h2>
        <el-input
            placeholder="请输入内容"
            v-model="input1"
            clearable>
        </el-input>
        <h2>修改密码</h2>
        <el-input placeholder="请输入密码" v-model="input2" show-password></el-input>
        <button @click="changepsw">修改确认</button>
      </div>
  </div>
</template>

<script>
import Footer from '../components/Footer.vue'
import Header from '../components/Header.vue'
export default {
  components: { Header, Footer },
    data(){
        return{
            imageUrl: '',
            input1:localStorage.getItem('name'),
            input2:'',
            num:0,
            newuser:''
        }
    },
    methods:{
        handleAvatarSuccess(res, file) {
            this.imageUrl = URL.createObjectURL(file.raw);
            console.log(this.imageUrl);
        },
        beforeAvatarUpload(file) {
            const isJPG = file.type === 'image/jpeg';
            const isLt2M = file.size / 1024 / 1024 < 2;

        if (!isJPG) {
            this.$message.error('上传头像图片只能是 JPG 格式!');
        }
        if (!isLt2M) {
            this.$message.error('上传头像图片大小不能超过 2MB!');
        }
            return isJPG && isLt2M;
        },
         changepsw(){//修改密码
            if(this.input2==''){
                this.$alert('请输入要更改密码', '提示', {
                        confirmButtonText: '确定',
                });
            }
            else{
                this.axios.put('http://localhost:8082/changedata',{
                    newpsw:this.input2,
                    user:localStorage.getItem('name')
                }).then(res=>{
                    console.log(res);
                }).catch(err=>{
                    console.log(err);
                })
                    this.$alert('修改成功请重新登录', '提示', {
                    confirmButtonText: '确定',
                });
                localStorage.clear()
                this.$router.push({path:'/'})
            }
        }
    },
    created(){
        this.userName=localStorage.getItem('name')//获取用户名
        this.axios.get('http://localhost:8082/main',{//根据用户名查找用户信息
            params:{
                user:this.userName
            }
        }).then((res)=>{
            this.input2=res.data[0].psw
        }).catch(err=>{
            console.log(err);
        })
      
    }
}
</script>

<style scoped>
.ding{
    height: 80px;
}
h1{
    text-align: center;
    line-height: 80px;
}
.data{
    width: 1200px;
    margin:20px auto;
    padding: 20px;
    box-sizing: border-box;
    background-color: #fff;
}
  ::v-deep .avatar-uploader .el-upload {
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }
  .avatar-uploader .el-upload:hover {
    border-color: #409EFF;
  }
  .avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 178px;
    height: 178px;
    line-height: 178px;
    text-align: center;
  }
  .avatar {
    width: 178px;
    height: 178px;
    display: block;
  }
  ::v-deep .el-input{
      width: 200px;
  }
  span{
      cursor: pointer;
  }
  span:hover{
      color: red;
  }
  button{
      background: rgb(183, 231, 183);
      display: inline-block;
      margin: 0 10px ;
  }
</style>