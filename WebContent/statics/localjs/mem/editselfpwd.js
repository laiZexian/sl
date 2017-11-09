var path="http://localhost:8080//sl";
var userCode = $("#userCode").val();
$(function(){
	$("#oldLogPwd").blur(function(){
			checkOldLogPwd();
	});
	$("#logPwd").blur(function(){
		checkLogPwd();
	});
	$("#reLogPwd").blur(function(){
		checkReLogPwd();
	});
	$("#logPwdSub").click(function(){
		checkOldLogPwd();
		if($("#checkOldLogPwd").html() == "" & checkLogPwd() & checkReLogPwd())
			updateLogPwd();
	});
	$("#oldSecPwd").blur(function(){
			checkOldSecPwd();
	});
	$("#secPwd").blur(function(){
		checkSecPwd();
	});
	$("#reSecPwd").blur(function(){
		checkReSecPwd();
	});
	$("#secPwdSub").click(function(){
		checkOldSecPwd();
		if($("#checkOldSecPwd").html() == "" & checkSecPwd() & checkReSecPwd())
			updateSecPwd();
	});
});
function checkOldLogPwd(){
	var oldLogPwd = $("#oldLogPwd").val();
	if(oldLogPwd == ""){
		$("#checkOldLogPwd").html("请输入原密码");
	}else{
		$.post({
			url:path+"/memsq/checkUserPwd",
			data:{"userCode":userCode,"logPwd":oldLogPwd},
			success:function(data){
				if(data == "true"){
					$("#checkOldLogPwd").html("");
				}else{
					$("#checkOldLogPwd").html("密码错误");
				}
			}
		});
	}
}
function checkLogPwd(){
	var result = false;
	var logPwd = $("#logPwd").val();
	if(logPwd == ""){
		$("#checkLogPwd").html("密码不能为空");
	}else{
		$("#checkLogPwd").html("");
		result =  true;
	}
	return result;
}
function checkReLogPwd(){
	var result = false;
	if($("#reLogPwd").val() != null){
		var logPwd = $("#logPwd").val();
		var reLogPwd = $("#reLogPwd").val();
		if(logPwd == reLogPwd){
			$("#checkReLogPwd").html("");
			result =  true;
		}else{
			$("#checkReLogPwd").html("密码不一致");
		}
	}
	return result;
}
function updateLogPwd(){
	var logPwd = $("#logPwd").val();
	$.post({
		url:path+"/memsq/updateUserPwd",
		data:{"userCode":userCode,"logPwd":logPwd},
		success:function(data){
			alert("修改成功！下一次登录请使用新密码登录!");
			$("#oldLogPwd").val("");
			$("#logPwd").val("");
			$("#reLogPwd").val("");
		},
		error:function(data){
			alert("修改失败！");
		}
	});  
}
function checkOldSecPwd(){
	var oldSecPwd = $("#oldSecPwd").val();
	if(oldSecPwd == ""){
		$("#checkOldSecPwd").html("请输入原密码");
	}else{
		$.post({
			url:path+"/memsq/checkUserPwd",
			data:{"userCode":userCode,"secPwd":oldSecPwd},
			success:function(data){
				if(data == "true"){
					$("#checkOldSecPwd").html("");
				}else{
					$("#checkOldSecPwd").html("密码错误");
				}
			}
		});
	}
}
function checkSecPwd(){
	var result = false;
	var secPwd = $("#secPwd").val();
	if(secPwd == ""){
		$("#checkSecPwd").html("密码不能为空");
	}else{
		$("#checkSecPwd").html("");
		result =  true;
	}
	return result;
}
function checkReSecPwd(){
	var result = false;
	if($("#reSecPwd").val() != null){
		var secPwd = $("#secPwd").val();
		var reSecPwd = $("#reSecPwd").val();
		if(secPwd == reSecPwd){
			$("#checkReSecPwd").html("");
			result =  true;
		}else{
			$("#checkReSecPwd").html("密码不一致");
		}
	}
	return result;
}
function updateSecPwd(){
	var secPwd = $("#secPwd").val();
	$.post({
		url:path+"/memsq/updateUserPwd",
		data:{"userCode":userCode,"secPwd":secPwd},
		success:function(data){
			alert("修改成功！");
			$("#oldSecPwd").val("");
			$("#secPwd").val("");
			$("#reSecPwd").val("");
		},
		error:function(data){
			alert("修改失败！");
		}
	});  
}