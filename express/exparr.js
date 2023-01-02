var express = require("express");
var app = express();
var  memparr =  require("./moduleemparr");
var bodyparser = require("body-parser");

app.use(bodyparser.urlencoded({extended:false}));

app.get("/",function(req,resp){
resp.sendFile("public/empform.html",{root:__dirname});
});

app.get("/empdata",function(req,resp){
    if (req.query.btn === "add") {
        var id= req.query.id;
        var name = req.query.name;
        var desg = req.query.desg;

        var ob = {id,name,desg};
        memparr.insertEmp(ob);
        console.log(memparr.getlength());
        resp.send("<h2>Member Added Successfully.</h2>")
    }
    else{
        var id = req.query.id;
        var search = memparr.searchEmp(id);
        if(search != null){
            resp.send(JSON.stringify(search));
        }
        else{
            resp.send("No record Found with this id "+id);
        }
    }
});

app.listen(3000);
console.log("server running at port 3000");