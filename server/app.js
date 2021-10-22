//引入express模块
const express = require("express");
//引入路由
//**************预留引入路由位置 ↓↓↓↓↓******************
//引入用户路由
const userRouter = require("./routers/user");



//**************预留引入路由位置 ↑↑↑↑↑******************
//创建服务器,并监听端口
const app = express();
app.listen(9999,()=>{
  console.log("server is working....")
});
//托管静态资源
app.use(express.static("./views"));
//urlencoded中间件
app.use(express.urlencoded({
  exrend: false
}));
//**************预留挂载路由位置 ↓↓↓↓↓******************
app.use("/user",userRouter);



//**************预留挂载路由位置 ↑↑↑↑↑******************
//错误处理中间件
app.use((err,req,res,next)=>{
  console.log(err);
  res.status(500).send({
    code: 500,
    msg: "服务器端错误"
  })
});