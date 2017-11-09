<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SL会员商城 | Starter</title>
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
		<h1>注册新会员<small>注册表单</small></h1>  
	</section>
	<!-- Main content -->
	<section class="content container-fluid">
	<!-- Horizontal Form -->
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">注册信息</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<form class="form-horizontal" action="${pageContext.request.contextPath}/memsq/chackUserInfo" method="post" enctype="multipart/form-data">
			<div class="box-body">
				<input type="hidden" name="createCode" value="${userAdmin.userCode }">
                	<div class="form-group">
                  		<label for="userCode" class="col-sm-2 control-label">用户名:</label>
	                  	<div class="col-sm-3">
	                    	<input type="text" class="form-control" name="userCode" placeholder="用户名" id="userCode" required="required" >
	           			</div>
	           			<label class="col-sm-1 control-label" style="color:red;" id="checkUserCode"></label>
                  		<label for="realName" class="col-sm-1 control-label">真实姓名:</label>
                  		<div class="col-sm-3">
                    		<input type="text" class="form-control" name="realName" placeholder="真实姓名" required="required" >
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="cardType" class="col-sm-2 control-label">证件类型:</label>
                  		<div class="col-sm-3">
                    		<select class="form-control select2" style="width: 100%;" name="cardType">
			                	<c:forEach items="${cardTypeList }" var="d">
			                		<option value="${d.dicValue }">${d.dicName }</option>
			                	</c:forEach>
			                </select>
                  		</div>
                  		<label for="cardNo" class="col-sm-2 control-label">证件号码:</label>
                  		<div class="col-sm-3">
                    		<input type="text" class="form-control" name="cardNo" pattern="^[0-9]{8,18}$"  placeholder="证件号码" required="required" >
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="phone" class="col-sm-2 control-label">联系电话:</label>
                  		<div class="col-sm-3">
                    		<input type="text" class="form-control" name="phone" placeholder="联系电话" pattern="^{7,11}$"   required="required" >
                  		</div>
                  		<label for="telephone" class="col-sm-2 control-label">移动电话:</label>
                  		<div class="col-sm-3">
                    		<input type="text" class="form-control" name="telephone" pattern="^1[35789][0-9]{9}$" placeholder="移动电话" required="required" >
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="email" class="col-sm-2 control-label">电子邮件:</label>
                  		<div class="col-sm-3">
                    		<input type="email" class="form-control" name="email" placeholder="电子邮件" required="required" >
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="postCode" class="col-sm-2 control-label">邮政编码:</label>
                  		<div class="col-sm-3">
                    		<input type="text" class="form-control" name="postCode" placeholder="邮政编码" pattern="^[1-9][0-9]{5}$" required="required" >
                  		</div>
                  		<label for="createCode" class="col-sm-2 control-label">推荐人:</label>
                  		<div class="col-sm-3">
                    		<input type="text" class="form-control" name="createCode" placeholder="推荐人">
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="country" class="col-sm-2 control-label">收货国家(地区):</label>
                  		<div class="col-sm-3">
                    		<select class="form-control select2" style="width: 100%;" name="country" required="required" >
			                	<c:forEach items="${countryList }" var="d">
			                		<option value="${d.dicValue }">${d.dicName }</option>
			                	</c:forEach>
			                </select>
                  		</div>
                  		<label for="bank" class="col-sm-2 control-label">开户行:</label>
                  		<div class="col-sm-3">
                    		<select class="form-control select2" style="width: 100%;" name="bank" required="required" >
			                	<c:forEach items="${bankList }" var="d">
			                		<option value="${d.dicValue }">${d.dicName }</option>
			                	</c:forEach>
			                </select>
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="bankUser" class="col-sm-2 control-label">开户人:</label>
                 		<div class="col-sm-3">
                    		<input type="text" class="form-control" name="bankUser" placeholder="开户人" required="required" >
                  		</div>
                  		<label for="bankNo" class="col-sm-2 control-label">开户卡号:</label>
                 		<div class="col-sm-3">
                    		<input type="text" class="form-control" name="bankNo" placeholder="开户卡号" pattern="^[0-9]{16}$" required="required" >
                  		</div>
                	</div>
                	<p>&nbsp;</p>
                	<div class="form-group">
                  		<label for="idcardPicFron" class="col-sm-3 control-label">上传身份证图片（正反面）:</label>
                  		<div class="col-sm-2">
                  			<img src="${pageContext.request.contextPath}/statics/login/img/u132.png" >
                  			<input type="file" name="picFron" />
                  		</div>
                  		<div class="col-sm-2">
                  			<img src="${pageContext.request.contextPath}/statics/login/img/u132.png" >
                    		<input type="file" name="picFron" />
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="bankCardPic" class="col-sm-3 control-label">上传银行卡图片:</label>
                 		<div class="col-sm-2">
                    		<img src="${pageContext.request.contextPath}/statics/login/img/u150.png" >
                    		<input type="file" name="picFron" />
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="address" class="col-sm-2 control-label">收货地址:</label>
                 		<div class="col-sm-7">
                    		<input type="text" class="form-control" name="address" placeholder="收货地址" required="required" >
                  		</div>
                	</div>
              	</div>
				<!-- /.box-body -->
				<div class="box-footer">
					<button type="submit" class="btn btn-info pull-right" id="sub">下一步</button>
				</div>
				<!-- /.box-footer -->
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
<%-- <script src="${pageContext.request.contextPath}/statics/localjs/mem/signinform.js"></script> --%>
</body>
</html>