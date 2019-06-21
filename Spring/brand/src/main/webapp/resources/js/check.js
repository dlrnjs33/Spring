$(document).ready(function(){
    
    $("#all").click(function(){
        
        if($("#all").prop("checked")){
            
            $("input[name=chk]").prop("checked",true);
            
        }else{
            
            $("input[name=chk]").prop("checked",false);
        }
    })
})