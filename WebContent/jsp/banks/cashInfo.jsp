<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SL会员商城 | 提现明细</title>
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
		<h1>电子银行<small>提现明细</small></h1>  
	</section>
    <!-- Main content -->
	<section class="content container-fluid">
	<!--begin-->
		<div class="box">
			<form action="${pageContext.request.contextPath}/banksq/showCostInfoList2" method="get">
				<div class="box-header with-border">
					日期：
					<input type="text" id="datepicker" name="firstDate"> to <input type="text" id="datepicker2" name="lastDate"> <i class="fa fa-calendar"></i> 
					<input class="btn btn-warning btn-sm " type="submit" value="查询">
					<div class="box-tools"></div>
				</div>
			</form>
			<div class="box-body">
				<table class="table table-bordered">
					<tr class="active">
	                  <th >序号</th>
					  <th>日期时间</th>
	                  <th>提现金额（元）</th>
	                  <th>状态</th>
	                </tr>
					<c:forEach items="${pager.list }" var="c">
						<tr>
							<td>${c.cashId }</td>
							<td>${c.cashDate }</td>
							<td>${c.cashMoney }</td>
							<td>${c.stutas }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		<!-- /.box-body -->
			<div class="box-footer clearfix">
				<ul class="pagination pagination-sm no-margin pull-right">
					<li><a href="${pageContext.request.contextPath}/memsq/showUserList">首页</a></li>
					<li><a href="${pageContext.request.contextPath}/memsq/showUserList?pageSize=${pager.currentPageNo==1?pager.currentPageNo:pager.currentPageNo-1  }">&laquo;</a></li>
					<li><a href="#">${pager.currentPageNo }</a></li>
					<li><a href="${pageContext.request.contextPath}/memsq/showUserList?pageSize=${pager.currentPageNo==pager.totalPageCount?pager.totalPageCount:pager.currentPageNo-1  }">&raquo;</a></li>
					<li><a href="${pageContext.request.contextPath}/memsq/showUserList?pageSize=${pager.totalPageCount  }">末页</a></li>
				</ul>
			</div>
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
<script src="${pageContext.request.contextPath}/statics/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script>
$(function () {
	//Date picker
	$('#datepicker').datepicker({
		autoclose: true
	})
	$('#datepicker2').datepicker({
		autoclose: true
	})
})
</script>
</body>
</html>