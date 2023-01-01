var emp = [{id:101,name:"Ram",desg:"Designer"},
{id:102,name:"Rom",desg:"Designer"},
{id:103,name:"Cpu",desg:"Designer"}]

exports.insertEmp=function(ob){
    emp.push(ob);
}

exports.getlength=function(){
    return emp.length;
}

exports.searchEmp=function(id){
    for(var eid of emp)
    {
        if(eid.id === parseInt(id)){
            return eid;
        }
    }    
    return  null;
}