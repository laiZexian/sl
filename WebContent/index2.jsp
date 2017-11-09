<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/login/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/login/css/AdminLTE.css" />
<script src="${pageContext.request.contextPath}/statics/login/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	var path="http://localhost:8080//sl";
	$(function(){
		
		$("#btnns").click(function(){
			$.ajax({
				type:"post",//请求类型
				url:path+"/user/setjson",//请求的url
				data:{userCode:"admin",logPwd:"admin"},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){//data：返回数据（json对象）
					var str="<tr><td align='center'>"+
					"<input type='radio' name='r1' class='minimal'></td>"+
					"<td>"+data.userCode+"</td>"+
					"<td>"+data.roleId+"</td>"+
					"<td>"+data.member+"</td>"+
					"<td>"+data.createCode+"</td>"+
					"<td><input type='checkbox' class='minimal' checked></td>"+
					"<td>"+data.modifyDate+"</td></tr>";
					$("#tabl").append(str);
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("加载数据失败！");
				}
			});  
		});
		
	});
</script>
</head>
<body class="content" style="background:#E6E6FA;" >
	<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="box box-solid">
					<div class="box-header with-border">
							  <i class="fa fa-text-width"></i>
							  <h3 class="box-title"></h3>
					</div>
							
					<div class="box-body">
						<table class="table table-bordered" id="tabl" border="1">
					        <tr class="active">
					          <th style="width: 70px" align="center">选择</th>
					          <th>用户名</th>
					          <th>角色</th>
							  <th>会员类型</th>
							  <th>推荐人用户名</th>
							  <th>状态（启用/禁用）</th>
							  <th>最后修改时间</th>
							 </tr>
							<tr>
					          <td align="center" ><input type="radio" name="r1" class="minimal" checked></td>
					          <td>${users.userCode }</td>
					          <td>${users.roleId }</td>
							  <td>${users.member}</td>
							  <td>${users.createCode }</td>
							  <td><input type="checkbox" class="minimal" checked></td>
							  <td><fmt:formatDate value="${users.modifyDate }" pattern="yyyy-MM-dd HH:mm:ss"/>  </td>
					         </tr>
					      </table>
					     <!--  <input type="button" class="btn btn-primary" value="加载数据" id="btnns"/> 
					      <a href="${pageContext.request.contextPath}/up.jsp" class="btn btn-danger">上传文件</a>-->
					</div>
				</div>
			</div>
	</div>
	
</body>
</html>