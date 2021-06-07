<template>
  <div class="menusearch">
      <div class="header">
          <div>
                <img src="../../public/data/images/header-log.png" alt="" @click="ToIndex">
                <el-input
                    placeholder="请输入内容"
                    v-model="input"
                    clearable>
                </el-input>
                <el-button type="danger" @click="search">搜索</el-button>
          </div>
      </div>
      <div class="ding"></div>
      <!-- 标签栏 -->
      <div class="label">
          <div class="label1">
            <span>工艺:</span>
            <ul v-for="(item1,a) in label1" :key="a">
              <li @click="checked1(item1,a)" :class="a==num1?'action':''">{{item1}}</li>
            </ul>
          </div>
          <div class="label2">
            <span>口味:</span>
            <ul v-for="(item2,b) in label2" :key="b">
              <li  @click="checked2(item2,b)" :class="b==num2?'action':''">{{item2}}</li>
            </ul>
          </div>
            <div  class="label3">
            <span>难度:</span>
            <ul v-for="(item3,c) in label3" :key="c">
                <li  @click="checked3(item3,c)" :class="c==num3?'action':''">{{item3}}</li>
            </ul>
        </div>
      </div>
      <div class="content">
          <ul>
              <li class="content-li" v-for="(item,index) in content" :key="index">
                  <img :src=item.img alt="" @click="intoContent(item)">
                  <div>
                      <span>{{item.title}}</span>
                  </div>
              </li>
          </ul>
      </div>
      <!-- 分页 -->
    <el-pagination
        background
        layout="prev, pager, next"
        :total="1000">
    </el-pagination>
      <Footer></Footer>
  </div>
</template>

<script>
import Footer from '../components/Footer.vue'

export default {
    components:{
        Footer,
    },
    data() {
      return {
        //搜索框数据
        input: '',
        //标签数据
        label1:['不限','炒','蒸','煮','炖','炸'],
        label2:['不限','家常味','香辣味','甜味','蒜香','麻辣','鱼香味'],
        label3:['不限','新手尝试','初级入门','初中水平','中级掌勺','高级厨师','厨神级'],
        //标签请求传参数据
        craft:'不限',
        taste:'不限',
        difficulty:'不限',
        //选中高亮
        num1:0,
        num2:0,
        num3:0,
        //获取到的数据渲染的数据
        content:[],
      }
    },
    methods:{
        ToIndex(){//进入首页
            this.$router.push({path:'/'})
        },
        //搜索栏搜索
        search(){
            // console.log(this.input);
            this.getDataSearch(this.input)
        },
        //标签栏
        checked1(item1,a){
            // console.log(item1,a);
            this.num1=a
            this.craft=item1
            this.input=''
            this.getDataMenu()
            // console.log(this.craft);
        },
        checked2(item2,b){
            // console.log(item2,b)
            this.num2=b
            this.taste=item2
            this.input=''
            this.getDataMenu()
        },
        checked3(item3,c){
            this.num3=c
            // console.log(item3,c)
            this.difficulty=item3
            this.input=''
            this.getDataMenu()
        },
          getDataSearch(input){//搜索栏搜索
            this.axios.get('http://localhost:8082/search',{
                params:{
                    input:this.input,
                }
            }).then(res=>{
                //  console.log(res);
                this.content=res.data
                // console.log(this.content);
                if(this.content==''){
                    this.content=[{title:'暂无内容'}]
                }
            }).catch(err=>{
                console.log(err);
            })
        },
        getDataMenu(craft='不限',taste='不限',difficulty='不限'){//菜谱内容请求
            this.axios.get('http://localhost:8082/menusearch',{
                params:{
                    craft:this.craft,
                    taste:this.taste,
                    difficulty:this.difficulty
                }
            }).then(res=>{
                //  console.log(res);
                this.content=res.data
                if(this.content==''){
                    this.content=[{title:'暂无内容'}]
                }else if(this.content.length>20){
                    this.content=res.data.splice(0,20)
                }
                // console.log(this.content);
            }).catch(err=>{
                console.log(err);
            })
        },
        //进入详情
        intoContent(item){
            this.$router.push({path:'/menusearch/searchcontent',query:{id:item.id}})
        }
    },
    created(){
        //判断是否有路由传值
        if(this.$route.query.plan==undefined){
           this.getDataMenu() 
        }else{
            this.input=this.$route.query.plan
            this.getDataSearch(this.input)
        }
    }
}
</script>

<style scoped>
/* 头部 */
.header{
    width: 100%;
    height: 80px;
    margin: auto;
    background-color: #fff;
    border-bottom: 1px solid #ddd;
    position: fixed;
    top: 0px;
    text-align: center;
    z-index: 999;
}
.ding{
    height: 80px;
    margin-bottom: 30px;
}
.header>div{
    width: 1200px;
    height: 80px;
    margin: auto;
    background-color: #fff;
    position: relative;
    text-align: center;
}
.header img{
    width: 100px;
    display: inline-block;
    position: absolute;
    cursor: pointer;
    top: 12px;
    left: 0px;
}
.el-input{
    width: 500px;
    line-height: 80px;
}
.el-button{
    border-radius: 0;
    position: absolute;
    top: 20px;
    right: 284px;
}
::v-deep .el-input__inner{
    border: 2px solid #ff5151 ;
}
/* 标签栏 */
.label{
    width: 1000px;
    margin: auto;
    background: #fff;
}
.label>div{
    width: 100%;
    height: 40px;
    display: flex;
    padding: 12px 80px 12px 80px;
    box-sizing: border-box;
    border-bottom: 1px dashed #ddd;
    position: relative;
}
.label span{
    position: absolute;
    left:15px;
    color: #999;
    line-height: 22px;
}
.label li{
    margin-right: 30px;
    cursor: pointer;
    font-size: 14px;
    height: 22px;
    line-height: 22px;
    color: #333;
    margin: 0px 12px 4px 0px;
    padding: 0px 8px;
    border-radius: 2px;
}
.label  .action{
    background-color: #ff5151;
    color: #fff;
}
/* 内容部分 */
.content{
    width: 1000px;
    margin:20px auto;
}
.content ul{
    display: flex;
    flex-wrap: wrap;
}
.content-li{
    width: 25%;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 20px;
    border: 1px solid #fff;
}
.content-li:hover{
    border: 1px solid #ff5151;
}
.content-li img{
    width: 100%;
    height: 250px;
}
.content-li div{
    width: 100%;
    height: 80px;
    overflow: hidden;
    background: #fff;
    padding: 20px;
    box-sizing: border-box;
}
.content-li span:hover{
    cursor: pointer;
    color: #ff5151;
    text-decoration: underline;
}
/* 分页 */
.el-pagination{
    width: 300px;
    text-align: center;
    margin: auto;
}
</style>