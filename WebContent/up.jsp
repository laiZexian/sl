<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
				 <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Quick Example</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" action="user/uploadss" enctype="multipart/form-data" method="post">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" name="email">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="pwd">
                </div>
                <div class="form-group">
                  <label for="exampleInputFile">File input</label>
                  <input type="file" id="exampleInputFile" name="starrh">

                  <p class="help-block">Example block-level help text here.</p>
                </div>
                <div class="checkbox">
                  <label>
                    <input type="checkbox"> Check me out
                  </label>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
         </div>
			</div>
	</div>
	
</body>
</html>