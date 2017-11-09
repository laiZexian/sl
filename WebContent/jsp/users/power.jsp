<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>权限管理</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/dist/css/skins/skin-blue.min.css">
<style>
.showss {
	display: block;
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
					后台管理 <small>权限管理</small>
				</h1>
			</section>

			<!-- Main content -->
			<section class="content container-fluid">
				<!--begin-->
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h5 class="box-title">
									<span style="font-size: 14px;"><b><i
											class="fa fa-thumb-tack"></i>&nbsp;&nbsp;角色列表:&nbsp;&nbsp;</b></span>
								</h5>
								<!--以下是决定盒子的伸缩-->
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<form action="${pageContext.request.contextPath}/power/all" method="post" id="formss">
								<table class="table">
									<tr>
										<c:forEach items="${pages.list }" var="r" varStatus="i">
											<td><input type="radio" name="roleId" class="roless"
												<c:if test="${r.roleId eq roles.roleId }">checked</c:if>
												value="${r.roleId }">&nbsp;&nbsp;&nbsp;<b>${r.roleName }</b></td>
										</c:forEach>
										
										<!--  <td><input type="radio" name="rd" checked>管理员</td>
							<td><input type="radio" name="rd" >会员</td> -->
									</tr>
								</table>
								<input type="hidden" name="pageNo" value="${pages.currentPageNo }"/>
							</form>
							</div>
							<div class="box-footer clearfix">

								<ul class="pagination pagination-sm no-margin pull-right">
									<li><a
										href="${pageContext.request.contextPath}/power/all?pageNo=${pages.currentPageNo-1 lt 1? 1:pages.currentPageNo-1}">&lt&lt</a></li>

									<li id="two"><a
										href="${pageContext.request.contextPath}/power/all?pageNo=${pages.currentPageNo+1 gt pages.totalPageCount ? pages.totalPageCount:pages.currentPageNo+1}">&gt&gt</a></li>
								</ul>
							</div>
						</div>
					</div>


				</div>


				<h4>
					<i class="fa fa-flag"></i>&nbsp;&nbsp;权限列表:&nbsp;&nbsp; <small><button
							class="btn btn-primary btn-xs" id="saves">保存</button></small>
				</h4>
				<form action="${pageContext.request.contextPath}/power/up" method="post" id="formsd">
				<div class="row">
					<div class="col-md-4">
						<div class="box box-primary">
							<div class="box-header with-border">
								<h5 class="box-title">
									<!-- <input type="checkbox" name="" /> -->&nbsp;&nbsp; <span
										style="font-size: 14px;"><b>后台管理</b></span>
								</h5>
								<!--以下是决定盒子的伸缩-->
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse" >
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<ul class="products-list product-list-in-box">
									<li class="item ">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"
										name="fmt" <c:if test="${roles.roleInfo['1'].stutas eq 1 }">checked</c:if> 
										value="${roles.roleInfo['1'].rlId }"/>&nbsp;&nbsp;用户管理</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['2'].stutas eq 1 }" >checked</c:if> 
										value="${roles.roleInfo['2'].rlId }"/>&nbsp;&nbsp;角色管理
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['3'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['3'].rlId }"/>&nbsp;&nbsp;权限管理
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['4'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['4'].rlId }"/>&nbsp;&nbsp;商品管理
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['5'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['5'].rlId }"/>&nbsp;&nbsp;商品套餐管理
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['6'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['6'].rlId }"/>&nbsp;&nbsp;基础信息
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['7'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['7'].rlId }"/>&nbsp;&nbsp;数据字典<input type="hidden" name="roleId" value="${roles.roleId }"/>
										<input type="hidden" name="pageNo" value="${pages.currentPageNo }"/>
									</li>

								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box box-info">
							<div class="box-header with-border">
								<h5 class="box-title">
									<!--<input type="checkbox" name="" />-->&nbsp;&nbsp; <span
										style="font-size: 14px;"><b>会员管理</b></span>
								</h5>
								<!--以下是决定盒子的伸缩-->
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<ul class="products-list product-list-in-box">
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['8'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['8'].rlId }"/>&nbsp;&nbsp;注册新会员
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['10'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['10'].rlId }"/>&nbsp;&nbsp;修改本人资料
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['9'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['9'].rlId }"/>&nbsp;&nbsp;新会员管理
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['11'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['11'].rlId }"/>&nbsp;&nbsp;修改本人密码
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box box-warning">
							<div class="box-header with-border">
								<h5 class="box-title">
									<!--<input type="checkbox" name="" />-->&nbsp;&nbsp; <span
										style="font-size: 14px;"><b>电子银行</b></span>
								</h5>
								<!--以下是决定盒子的伸缩-->
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<ul class="products-list product-list-in-box">
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['12'].stutas eq 1 }">checked</c:if> 
										value="${roles.roleInfo['12'].rlId }"/>&nbsp;&nbsp;汇款充值
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['13'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['13'].rlId }"/>&nbsp;&nbsp;基本账户
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['14'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['14'].rlId }"/>&nbsp;&nbsp;消费账户
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['15'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['15'].rlId }"/>&nbsp;&nbsp;内部转账
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['16'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['16'].rlId }"/>&nbsp;&nbsp;申请提现
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['17'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['17'].rlId }"/>&nbsp;&nbsp;提现明细
									
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="box box-default">
							<div class="box-header with-border">
								<h5 class="box-title">
									<!--<input type="checkbox" name="" />-->&nbsp;&nbsp; <span
										style="font-size: 14px;"><b>购物管理</b></span>
								</h5>
								<!--以下是决定盒子的伸缩-->
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<ul class="products-list product-list-in-box">
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['18'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['18'].rlId }"/>&nbsp;&nbsp;报单购货
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['19'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['19'].rlId }"/>&nbsp;&nbsp;确认激活
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['20'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['20'].rlId }"/>&nbsp;&nbsp;重消购货
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['21'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['21'].rlId }"/>&nbsp;&nbsp;辅消购货
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['22'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['22'].rlId }"/>&nbsp;&nbsp;购货管理
									</li>
								<!-- 	<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" />&nbsp;&nbsp;删除订单
									</li> 
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['1'].stutas eq 1 }">checked</c:if>/>&nbsp;&nbsp;货单查询
									</li>-->

								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box box-danger">
							<div class="box-header with-border">
								<h5 class="box-title">
									<!--<input type="checkbox" name="" />-->&nbsp;&nbsp; <span
										style="font-size: 14px;"><b>信息查询</b></span>
								</h5>
								<!--以下是决定盒子的伸缩-->
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<ul class="products-list product-list-in-box">
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt"  <c:if test="${roles.roleInfo['23'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['23'].rlId }"/>&nbsp;&nbsp;奖励查询
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['24'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['24'].rlId }"/>&nbsp;&nbsp;推荐查询
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['25'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['25'].rlId }"/>&nbsp;&nbsp;区域查询
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['26'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['26'].rlId }"/>&nbsp;&nbsp;操作须知
									</li>

								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box box-primary">
							<div class="box-header with-border">
								<h5 class="box-title">
									<!--<input type="checkbox" name="" />-->&nbsp;&nbsp; <span
										style="font-size: 14px;"><b>资讯管理</b></span>
								</h5>
								<!--以下是决定盒子的伸缩-->
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<ul class="products-list product-list-in-box">
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['27'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['27'].rlId }"/>&nbsp;&nbsp;公告管理 <!-- <ul class="products-list product-list-in-box">
								<li class="item" style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;查看</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;新增</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;修改</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;删除</li>
							</ul> -->
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['28'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['28'].rlId }"/>&nbsp;&nbsp;资讯管理 <!--<ul class="products-list product-list-in-box">
								<li class="item" style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;查看</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;新增</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;修改</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;删除</li>
								
							</ul>-->
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['29'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['29'].rlId }"/>&nbsp;&nbsp;下载中心 <!--<ul class="products-list product-list-in-box">
								<li class="item" style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;查看</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;新增</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;修改</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;删除</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;下载</li>
							</ul><input value="${roles.roleInfo['29'].stutas },${roles.roleInfo['29'].rlId }">-->
									</li>
									<li class="item ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="fmt" <c:if test="${roles.roleInfo['30'].stutas eq 1 }">checked</c:if>
										value="${roles.roleInfo['30'].rlId }"/>&nbsp;&nbsp;留言管理 <!-- <ul class="products-list product-list-in-box">
								<li class="item" style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;查看</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;新增</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;回复</li>
								<li class="item"style="padding-left:50px;"><input type="checkbox" name=""/>&nbsp;&nbsp;删除</li>
							</ul> -->
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--end-->
			</form>

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
	<script
		src="${pageContext.request.contextPath}/statics/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="${pageContext.request.contextPath}/statics/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/statics/dist/js/adminlte.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="${pageContext.request.contextPath}/statics/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="${pageContext.request.contextPath}/statics/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script
		src="${pageContext.request.contextPath}/statics/dist/js/demo.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".treeview").eq(0).addClass("menu-open");
			$(".treeview-menu").eq(0).addClass("open").addClass("showss");
			$(".roless").click(function(){
				$("#formss").submit();
			});
			$("#saves").click(function(){
				//alert("aa");
				$("#formsd").submit();
			});
		});
	</script>
</body>
</html>