var express = require('express');

var app = express();

var Employee = {
    'empid':12,
    'ename':'raman',
    'sal':'21230'
}

app.get('/public/index.html',(req,resp)=>{
    resp.send(Employee);
})
    
app.listen(4000,function(){
    console.log("Connection Establish with port 4000");
});