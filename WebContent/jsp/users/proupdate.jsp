<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>修改商品</title>
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
  <style>
	.showss{
		display:block;
	}
  </style>
 
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
      <h1>
        后台管理
        <small>修改商品</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<!--start-->
		<div class="row">
			<div class="col-md-8 col-md-offset-1">
				<div class="box box-solid">
					<div class="box-header with-border">
					  <i class="fa fa-text-width"></i>
					  <h3 class="box-title"></h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
			<form class="form-horizonta" role="form" action="${pageContext.request.contextPath}/pro/update" method="post" id="formss">
							<div class="form-group row">
								<span class="col-md-3 text-right" >商品名称：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入商品名称..." name="proName" value="${production.proName }"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >商品编号：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入商品编号..." name="proId" value="${production.proId}" readonly></div>
								<!-- 看来disabled也不是可以顺便用的。！ -->
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >市场价：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入市场价..." name="markPrice" value="${production.markPrice }"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >优惠价：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入优惠价..." name="prePrice" value="${production.prePrice }"></div>
								<span class="col-md-4" style="color:red;line-height:32px;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >库存：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入库存..." name="proCount" value="${production.proCount }"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >单位：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入单位..." name="unit" value="${production.unit }"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >状态：</span>
								<div class="col-md-5">
									<input type="radio" name="stutas" value="1" <c:if test="${production.stutas eq 1 }">checked</c:if>>上架&nbsp;&nbsp;&nbsp; 
									<input type="radio" name="stutas" value="0" <c:if test="${production.stutas eq 0 }">checked</c:if>>下架 
								</div>
								<span class="col-md-4" style="color:red;"></span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >商品规格：</span>
								<div class="col-md-8"><textarea class="form-control" rows="4" placeholder="请输入商品规格 ..." name="standard">${production.standard }</textarea></div>
								<span class="col-md-1" style="color:red;"></span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >商品说明：</span>
								<div class="col-md-8"><textarea class="form-control" rows="4" placeholder="请输入商品说明 ..." name="spec">${production.spec }</textarea></div>
								<span class="col-md-1" style="color:red;"></span>
							</div>
					  </form>
					</div>
					
			    </div>
			 
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-md-offset-4">
				<input type="button" class="btn btn-success" id="update1" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="javascript:window.history.back();" class="btn btn-primary">返回</a>
			</div>
			
		</div>
		<!--end-->
	
      <!--------------------------
        | Your Page Content Here |
        -------------------------->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <jsp:include page="../include/footer.jsp" />

  <!-- Control Sidebar -->
  
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
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
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath}/statics/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/statics/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/statics/dist/js/demo.js"></script>
<script type="text/javascript">
$(function(){
	//固定
	$(".treeview").eq(0).addClass("menu-open");
	$(".treeview-menu").eq(0).addClass("open").addClass("showss");
	$("#update1").click(function(){
		$("#formss").submit();
	});
});
</script>
</body>
</html>