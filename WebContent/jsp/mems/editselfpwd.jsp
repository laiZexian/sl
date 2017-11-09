<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SL会员商城 | 修改本人密码</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bower_components/font-awesome/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bower_components/Ionicons/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/dist/css/AdminLTE.min.css">
	<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
	      page. However, you can choose any other skin. Make sure you
	      apply the skin class to the body tag so the changes take effect. -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/dist/css/skins/skin-blue.min.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	<!-- Main Header -->
	<jsp:include page="../include/header.jsp" />
	<!-- Left side column. contains the logo and sidebar -->
	<jsp:include page="../include/left.jsp" />
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> 修改本人密码</h1>  
    </section>
    <!-- Main content -->
	<section class="content container-fluid">
		<input type="hidden" value="${userAdmin.userCode }" id="userCode">
        <div class="box">
	    	<div class="box-header with-border">
	        	<h3 class="box-title">修改商城登录密码:</h3>
	    	</div>
			<form class="form-horizontal" >
            	<div class="box-body">
                	<div class="form-group">
                		<label for="oldLogPwd" class="col-sm-3 control-label">旧密码:</label>
                  		<div class="col-sm-4">
                    		<input type="password" class="form-control" id="oldLogPwd" placeholder="旧密码">
           				</div>
           				<div class="col-sm-4">
                    		<label id="checkOldLogPwd"  style="color:red;"></label>
           				</div>
                	</div>
                	<div class="form-group">
                		<label for="logPwd" class="col-sm-3 control-label">新密码:</label>
                  		<div class="col-sm-4">
                    		<input type="password" class="form-control" id="logPwd" placeholder="新密码">
           				</div>
           				<div class="col-sm-4">
                    		<label id="checkLogPwd"  style="color:red;"></label>
           				</div>
                	</div>
                	<div class="form-group">
                		<label for="reLogPwd" class="col-sm-3 control-label">确认新密码:</label>
                  		<div class="col-sm-4">
							<input type="password" class="form-control" id="reLogPwd" placeholder="确认新密码">
           				</div>
           				<div class="col-sm-4">
                    		<label id="checkReLogPwd"  style="color:red;"></label>
           				</div>
                	</div>
                	<div class="col-sm-offset-3">
                		<button type="button" class="btn btn-info" id ="logPwdSub">保存</button>
                	</div>
                </div>
			</form>
		</div>
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">修改商城二级密码:</h3>
			</div>
			<form class="form-horizontal" >
				<div class="box-body">
               		<div class="form-group">
               			<label for="oldSecPwd" class="col-sm-3 control-label">旧密码:</label>
                 		<div class="col-sm-4">
							<input type="password" class="form-control" id="oldSecPwd" placeholder="旧密码">
          				</div>
          				<div class="col-sm-4">
                   			<label id="checkOldSecPwd"  style="color:red;"></label>
          				</div>
               		</div>
               		<div class="form-group">
               			<label for="secPwd" class="col-sm-3 control-label">新密码:</label>
                 			<div class="col-sm-4">
                   				<input type="password" class="form-control" id="secPwd" placeholder="新密码">
          					</div>
          					<div class="col-sm-4">
                   				<label id="checkSecPwd"  style="color:red;"></label>
          					</div>
               		</div>
               		<div class="form-group">
               			<label for="reSecPwd" class="col-sm-3 control-label">确认新密码:</label>
                 			<div class="col-sm-4">
                   				<input type="password" class="form-control" id="reSecPwd" placeholder="确认新密码">
          					</div>
          					<div class="col-sm-4">
                   				<label id="checkReSecPwd"  style="color:red;"></label>
          					</div>
               		</div>
					<div class="col-sm-offset-3">
	              		<button type="button" class="btn btn-info" id = "secPwdSub">保存</button>
					</div>
				</div>
        	</form>
		</div>
	</section>
	<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<!-- Main Footer -->
	<jsp:include page="../include/footer.jsp" />
	<div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/statics/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/statics/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/statics/dist/js/adminlte.min.js"></script>
<!-- js -->
<script src="${pageContext.request.contextPath}/statics/localjs/mem/editselfpwd.js"></script>
</body>
</html>