<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SL会员商城 | 汇款充值</title>
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
		<h1>电子银行<small>汇款充值</small></h1>  
	</section>
    <!-- Main content -->
	<section class="content container-fluid">
		<form class="form-horizonta" role="form" id="role2">
			<input type="hidden" name="userCode" value="${userAdmin.userCode }">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title"></h3>
				</div>
				<div class="box-body">
					<div class="form-group row">
						<span class="col-md-3 text-right" >汇款日期：</span>
						<div class="col-md-5"> 
							<div class="input-group date">
								<input type="text" class="form-control pull-right" id="datepicker" placeholder="请输入日期...">
								<div class="input-group-addon">
									<i class="fa fa-calendar"></i>
							  	</div>
							</div>
						</div>
						<span class="col-md-4" style="color:red;">*</span>
					</div>
					<div class="form-group row">
						<span class="col-md-3 text-right" >汇款金额：</span>
						<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入汇款金额..." id="costMoney"></div>
						<span class="col-md-4" style="color:red;">（CNY）</span>
					</div>
					<div class="form-group row">
						<span class="col-md-3 text-right" >摘要：</span>
						<div class="col-md-5">
							<textarea class="form-control" rows="4" placeholder="请输入摘要 ..." id="costSpec"></textarea>
						</div>
						<span class="col-md-4" style="color:red;">*</span>
					</div>
					<div class="form-group row">
						<span class="col-md-3 text-right" >单号：</span>
						<div class="col-md-5"><a href="#">008085M0127735312020</a></div>
						<span class="col-md-4" style="color:red;"></span>
					</div>
					<div class="form-group row">
						<div class="col-md-3 col-md-offset-4">
							<input type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-danger" id="confirm" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="javascript:window.history.back();" class="btn btn-primary">返回</a>
						</div>
					</div>
				</div>
			</div>
		</form>
		<div class="modal modal-default fade bs-example-modal-sm " id="modal-danger">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" ><i class="fa fa-info-circle"></i>&nbsp;&nbsp;确认汇款信信息</h4>
					</div>
					<form action="banksq/addAccout" method="post">
						<div class="modal-body">
							<div class="row">
								<div class="col-md-12">
									<table>
										<tr>
											<td style="40%">汇款日期：</td>
											<td><span id="costDateSpan"></span><input type="hidden" name="costDate" id="costDate"/></td>
										</tr>
										<tr>
											<td>汇款金额：</td>
											<td><span style="color:red;"id="conCostMoneySpan"></span><input type="hidden" name="costMoney" id="conCostMoney"></td>
										</tr>
										<tr>
											<td>摘要：</td>
											<td><span id="conCostSpecSpan"></span><input type="hidden" name="costSpec" id="conCostSpec"/></td>
										</tr>
										<tr>
											<td>单号：</td>
											<td>
												<a href="#" id="numA">008085M0127735312066</a>
												<input type="hidden" name="num" id="num" value="008085M0127735312066"/>
												<input type="hidden" name="costType" value="1"/>
											</td>
										</tr>
									</table>
								</div>
			  				</div>
              			</div>
              			<div class="modal-footer">
                			<button type="button" class="btn btn-default pull-right" data-dismiss="modal">取消</button>
               				<input type="submit" class="btn btn-default " id="sub" value="确定">&nbsp;&nbsp;&nbsp;
              			</div>
					</form>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!--end-->
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
<script src="${pageContext.request.contextPath}/statics/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/statics/dist/js/adminlte.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#confirm").click(function(){
		var costMoney  = $("#costMoney").val();
		$("#conCostMoneySpan").html(costMoney+" (CNY)");
		$("#conCostMoney").val(costMoney);
		var costDate  = $("#datepicker").val();
		$("#costDateSpan").html(costDate);
		$("#costDate").val(costDate);
		var costSpec  = $("#costSpec").val();
		$("#conCostSpecSpan").html(costSpec);
		$("#conCostSpec").val(costSpec);
	});
});
var add = '<%=request.getAttribute("add")%>' ;
if(add==1){
	alert("正在处理");
}
</script>
</body>
</html>