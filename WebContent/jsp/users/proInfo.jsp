<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>商品详情</title>
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
        <small>查看商品</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		
		<div class="row">
		<div class="col-md-10 col-md-offset-1">
          <div class="box box-solid">
            <div class="box-header with-border">
              <i class="fa fa-text-width"></i>

              <h3 class="box-title">商品介绍</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <dl class="dl-horizontal">
                <dt>商品名称：</dt>
                <dd>${production.proName }</dd>
				<dd>&nbsp;</dd>
                <dt>商品编号：</dt>
                <dd>${production.proId}</dd>
				<dd>&nbsp;</dd>
                <dd></dd>
                <dt>市场价：</dt>
                <dd><span style="color:red;">${production.markPrice }￥</span></dd>
				<dd>&nbsp;</dd>
                <dt>优惠价：</dt>
                <dd><span style="color:red;">${production.prePrice }￥</span></dd>
				<dd>&nbsp;</dd>
				<dt>库存：</dt>
                <dd>${production.proCount }</dd>
				<dd>&nbsp;</dd>
				<dt>状态：</dt>
                <dd>
                	<c:if test="${production.stutas eq 1 }">上架</c:if>
                	<c:if test="${production.stutas eq 0 }">下架</c:if>
                </dd>
				<dd>&nbsp;</dd>
				<dt>商品规格：</dt>
                <dd><!-- 【规格】36g<br/>
					【剂型】胶囊<br/>
					【产地】中国<br/>
					【营养成分】美丽行田园根粉500克<br/>
					【注意事项】<br/>
					 1.本品为膳食补充剂，不能代替药品 -->
					 ${production.standard }
				</dd>
				<dd>&nbsp;</dd>
				<dt>商品说明：</dt>
                <dd> ${production.spec }</dd>
              </dl>
			  
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
	</div>
	<div class="row">
		<div class="col-md-2 col-md-offset-6">
			<a href="javascript:window.history.back();" class="btn btn-primary">返回</a>
		</div>
	</div>
	
      <!--------------------------
        | Your Page Content Here |
        -------------------------->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
   <jsp:include page="../include/footer.jsp" />

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
});
</script>
</body>
</html>