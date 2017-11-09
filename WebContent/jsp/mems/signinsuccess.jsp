<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SL会员商城 | 注册新会员</title>
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
		<h1>注册新会员<small>会员注册</small></h1>  
    </section>
    <!-- Main content -->
    <section class="content container-fluid">
		<div class="box">
			<form action="${pageContext.request.contextPath}/jsp/shops/wu.jsp">
				<div class="box-body" style="text-align:left;line-height:normal;">
					<p style="text-align:center;color:#006600;">
			        	<span>会员注册 数据已经成功保存,祝贺您成为 注册会员！！</span>
			        </p>
			        <p>&nbsp;</p>
			        <p style="color:#333333;">注意:用户名、编号是您登陆网站时使用的，您的初始密码是证件号码的后6位，註册成功后要立即更改。</p>
			        <p style="color:#333333;">请您准备好纸笔将以下内容记录下来保存好： </p>
			        <p>&nbsp;</p>
			        <p style="line-height:20px;color:#FF0000;">姓名：${userInfo.realName }</p>
			        <p style="color:#FF0000;line-height:20px;">用户名：${userInfo.userCode }</p>
			        <p style="color:#FF0000;line-height:20px;">证件号码：${userInfo.cardNo }</p>
			        <p style="color:#FF0000;line-height:20px;">移动电话：${userInfo.telephone }</p>
	       		</div>
       			<div class="box-footer">
               		<button type="submit" class="btn btn-info pull-right">报单购物</button>
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
</body>
</html>