var path="http:localhost:8080/sl";
$(function() {
	 $("#sub").click(function(){
		checkUserCode();
		 if($("#CheckUserCode").html() != ""){
			 return false;
		 }else{
			 return true;
		 }
	 });
})
function checkUserCode(){
	var userCode = $("#userCode").val();
	$.post({
		url:path+"/memsq/checkUserCode",
		data:{"userCode":userCode},
		success:function(data){
			if(data == "true"){
				$("#checkUserCode").html("用户已存在");
			}else{
				$("#checkUserCode").html("");
			}
		}
	});
}


