const express=require('express')
const app=express()
const port=8082
app.use(express.json())
const mysql=require('mysql')

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'cate'
})
connection.connect()

//注册
app.post('/register',(req,res)=>{
    var user=req.body.user
    var psw=req.body.psw
    connection.query(`insert into login(user,psw) values ('${user}','${psw}');`,(err,rows,fields)=>{
        res.send(rows)
    })
})
//验证用户名是否重复
app.get('/verify',(req,res)=>{
    var user=req.query.user
    connection.query(`select * from login where user='${user}';`,(err,rows,fields)=>{
        res.send(rows)
    })
})
//登录
app.post('/login',(req,res)=>{
    var user=req.body.user
    var psw=req.body.psw
    connection.query(`select * from login where user='${user}' && psw='${psw}';`,(err,rows,fields)=>{
        if(rows.length==0){
            res.send({
                code:0
            })
        }
        else{
            res.send({
                code:1
            })
        }
    }) 
})
//轮播图
app.get('/carousel',(req,res)=>{
    connection.query('select * from carousel;',(err,rows,fields)=>{
        res.send(rows)
    })
   
})
//今日三餐
app.get('/sancan',(req,res)=>{
    var num=req.query.num
    connection.query(`select * from sancan where num='${num}';`,(err,rows,fields)=>{
        res.send(rows)
    })
   
})
//美食推荐h2标题
app.get('/recommendh2',(req,res)=>{
    connection.query('select * from recommendh2;',(err,rows,fields)=>{
        res.send(rows)
    })
   
})
//美食推荐图片内容请求
app.get('/cateRecommend',(req,res)=>{
    connection.query('select * from cateRecommend;',(err,rows,fields)=>{
        res.send(rows)
    })
   
})
//菜谱分类
app.get('/menu',(req,res)=>{
    connection.query(`select * from menu ;`,(err,rows,fields)=>{
        res.send(rows)
    })
   
})
//菜谱搜索
app.get('/menusearch',(req,res)=>{
    var craft=req.query.craft
    var taste=req.query.taste
    var difficulty=req.query.difficulty
    connection.query(`select * from menusearch where classify like '%${craft}%' and label2 like '%${taste}%' and label3 like '%${difficulty}%';`,(err,rows,fields)=>{
        res.send(rows)
    })
   
})
//菜谱搜索栏搜索
app.get('/search',(req,res)=>{
    var input=req.query.input
    connection.query(`select * from menusearch where title like '%${input}%';`,(err,rows,fields)=>{
        res.send(rows)
    })
   
})
//个人信息
app.get('/main',(req,res)=>{
    var user=req.query.user
    connection.query(`select * from login where user='${user}';`,(err,rows,fields)=>{
        res.send(rows)
    })
   
})
//菜谱搜索进入详情
app.get('/menucontent',(req,res)=>{
    var id=req.query.id
    connection.query(`select * from menusearch where id='${id}';`,(err,rows,fields)=>{
        res.send(rows)
    })
   
})
//收藏
app.post('/collect',(req,res)=>{
    var user=req.body.user
    var title=req.body.title
    var img=req.body.img
    connection.query(`insert into collect(user,title,img) values ('${user}','${title}','${img}');`,(err,rows,fields)=>{
        res.send(rows)
    })
})
//读取收藏内容
app.get('/maincollect',(req,res)=>{
    var user=req.query.user
    connection.query(`select * from collect where user='${user}';`,(err,rows,fields)=>{
        res.send(rows)
    })
   
})
//删除收藏
app.delete('/delete',(req,res)=> {
    var id=req.body.id
    connection.query(`delete from collect where id=${id};`,(err,rows,field)=> {
        res.send('删除成功')
    })
})
//修改密码
app.put('/changedata',(req,res)=> {
    var newpsw=req.body.newpsw
    var user=req.body.user
    connection.query(`update login set psw='${newpsw}' where user='${user}';`,(err,rows,field)=> {
        res.send('修改成功')
    })
})

app.listen(port,()=>{
    console.log('连接成功');
})
