<template>
    <div class="detail">
        <Header></Header>
        <div class="ding"></div>
        <h1>内容</h1>
        <div class="content">
            <img :src=content.img alt="">
            <div class="content-right">
                <p>{{content.title}}</p>
                <h2>空空如也,哈哈哈...</h2>
            </div>
            <p class="collect" @click="collect">点击收藏</p>
        </div>
        <Footer></Footer>
    </div>
</template>

<script>
import Header from '../components/Header.vue'
import Footer from '../components/Footer.vue'
export default {
  components: { Header,Footer},
    data(){
        return{
            num:0,
            content:{},
            title:'',
            img:'',
        }
    },
    methods:{
        collect(){//点击收藏
            if(localStorage.getItem('name')){
                this.$alert('收藏成功', '您好', {
                confirmButtonText: '确定',
                });
               
                this.axios.post('http://localhost:8082/collect',{//收藏信息写入数据库
                    user:localStorage.getItem('name'),
                    title:this.title,
                    img:this.img,
                }).then(res=>{
                    // console.log(res);
                }).catch(err=>{
                    console.log(err);
                })
            }
            else{
                this.$alert('请先登录', '您好', {
                confirmButtonText: '确定',
                });
            }
            
        }
    },
    created(){
        this.num=this.$route.query.plan
        this.axios.get('http://localhost:8082/cateRecommend').then(res=>{
            this.content=res.data[this.num];
            this.title=this.content.title
            this.img=this.content.img
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
.content{
    width: 1200px;
    margin: 40px auto;
    display: flex;
    background: #fff;
}
img{
    width: 400px;
}
.content-right{
    padding: 20px;
    position: relative;
}
p{
    font-size: 40px;
    font-weight: 700;
    box-sizing: border-box;
}
h1{
    width: 1200px;
    margin: auto;
    text-align: center;
}
h2{
    margin: 100px;
}
.collect{
    margin-top: 400px;
    cursor: pointer;
}

</style>