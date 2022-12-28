const express = require('express');
const app = express();

app.get('/',(req,resp)=>{
    resp.send(`<h1>hello Babes</h1>`);
});

app.get('/login',(req,resp)=>{
    resp.send(`<h1>Login</h1>`);
});

app.listen(3000,function(){
    console.log("Runnimg on 3000 port ");
})