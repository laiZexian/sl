<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SL会员商城 | 注册信息确认</title>
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
		<h1>注册新会员<small>注册信息确认</small></h1>  
	</section>
    <!-- Main content -->
    <section class="content container-fluid">
		<div class="box">
			<div class="box-header with-border">
		    	<h3 class="box-title">信息确认</h3>
			</div>
			<form class="form-horizontal" action="${pageContext.request.contextPath}/memsq/saveUser" method="post" >
				<input type="hidden" name="createCode" value="${chackUser.createCode }">
				<input type="hidden" name="userCode" value="${chackUser.userCode }">
				<input type="hidden" name="realName" value="${chackUser.realName }">
				<input type="hidden" name="member" value="${chackUser.member }">
				<input type="hidden" name="cardType" value="${chackUser.cardType }">
				<input type="hidden" name="cardNo" value="${chackUser.cardNo }">
				<input type="hidden" name="country" value="${chackUser.country }">
				<input type="hidden" name="postCode" value="${chackUser.postCode }">
				<input type="hidden" name="telephone" value="${chackUser.telephone }">
				<input type="hidden" name="phone" value="${chackUser.phone }">
				<input type="hidden" name="email" value="${chackUser.email }">
				<input type="hidden" name="address" value="${chackUser.address }">
				<input type="hidden" name="bank" value="${chackUser.bank }">
				<input type="hidden" name="bankNo" value="${chackUser.bankNo }">
				<input type="hidden" name="bankUser" value="${chackUser.bankUser }">
				<input type="hidden" name="idcardPicFron" value="${chackUser.idcardPicFron }">
				<input type="hidden" name="idcardPicRev" value="${chackUser.idcardPicRev }">
				<input type="hidden" name="bankCardPic" value="${chackUser.bankCardPic }">
				<input type="hidden" name="createCode" value="${chackUser.createCode }">
				<div class="box-body">
		    		<div class="form-group">
		    			<label for="createCode" class="col-sm-2 control-label">推荐用户名:</label>
		    			<label for="createCode" class="col-sm-2 ">${chackUser.createCode }</label>
		    			<label for="phone" class="col-sm-3 control-label">联系电话:</label>
		    			<label for="phone" class="col-sm-2 ">${chackUser.phone }</label>
		    		</div>
		    		<div class="form-group">
		    			<label for="userCode" class="col-sm-2 control-label">用户名:</label>
		    			<label for="userCode" class="col-sm-2 ">${chackUser.userCode }</label>
		    			<label for="telephone" class="col-sm-3 control-label">移动电话:</label>
		    			<label for="telephone" class="col-sm-2 ">${chackUser.telephone }</label>
		    		</div>
		    		<div class="form-group">
		    			<label for="realName" class="col-sm-2 control-label">姓名:</label>
		    			<label for="realName" class="col-sm-2 ">${chackUser.realName }</label>
		    			<label for="email" class="col-sm-3 control-label">电子邮件:</label>
		    			<label for="email" class="col-sm-2 ">${chackUser.email }</label>
		    		</div>
		    		<div class="form-group">
		    			<label for="cardNo" class="col-sm-2 control-label">证件号码:</label>
		    			<label for="cardNo" class="col-sm-2 ">${chackUser.cardNo }</label>
		    			<label for="address" class="col-sm-3 control-label">收货地址:</label>
		    			<label for="address" class="col-sm-2 ">${chackUser.address }</label>
		    		</div>
		    		<div class="form-group">
		    			<label for="country" class="col-sm-2 control-label">收货国家(地区):</label>
		    			<label for="country" class="col-sm-2 ">${chackUser.country }</label>
		    			<label for="postCode" class="col-sm-3 control-label">邮政编码:</label>
		    			<label for="postCode" class="col-sm-2 ">${chackUser.postCode }</label>
		    		</div>
		    		<div class="form-group">
		    			<label for="bank" class="col-sm-2 control-label">开户行:</label>
		    			<label for="bank" class="col-sm-2 ">${chackUser.bank }</label>
		    			<label for="bankNo" class="col-sm-3 control-label">开户卡号:</label>
		    			<label for="bankNo" class="col-sm-3 ">${chackUser.bankNo }</label>
		    		</div>
		    		<div class="form-group">
		    			<label for="bankUser" class="col-sm-2 control-label">开户人:</label>
		    			<label for="bankUser" class="col-sm-3 ">${chackUser.bankUser }</label>
		       		</div>
		       		<div class="form-group">
		       			<label for="idcardPic" class="col-sm-3 control-label">身份证图片(正反面):</label>
		       			<img src="static\images\u132.png" >
		         		<img src="static\images\u132.png" >
		       		</div>
		       		<div class="form-group">
		       			<label for="bankCardPic" class="col-sm-3 control-label">银行卡图片:</label>
		       			<img src="static\images\u150.png" >
		       		</div>
		       	</div>
		       	<div class="box-footer">
		       		<a href="javascript:window.history.back();" class="btn btn-primary">上一步</a>
		       		<button type="submit" class="btn btn-info">提交</button>
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