<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>申请提现</title>
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
  
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font 
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
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
        电子银行
        <small>申请提现</small>
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
			<form class="form-horizonta" role="form" id="role2">
							<div class="form-group row">
								<span class="col-md-3 text-right" >余额：</span>
								<div class="col-md-5"> 
								<span style="color:red;">1800.00</span>
								
								</div>
								<span class="col-md-4" style="color:red;"></span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >提现金额：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入提现金额..."></div>
								<span class="col-md-4" style="color:red;">（提现金额不能大于余额）</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >银行所在地及支行详细名称</span>
								<div class="col-md-5">
									<input class="form-control" rows="4" placeholder="请输入银行详细名称 ...">
								</div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >银行名称：</span>
								<div class="col-md-5">
									<select class="form-control" style="width: 100%;">
									  <option>请选择</option>
									  <option>中国银行</option>
									  <option>中国建设银行</option>
									  <option>中国交通银行</option>
									  <option>中国农业银行</option>
									  <option>中国工商银行</option>
									</select>
								</div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >银行开户名称：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入开户名称..."></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >银行卡号：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入银行卡号..."></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
					  
					</div>
					
			    </div>
			 
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-md-offset-4">
				<input type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-danger" value="提交申请">&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="javascript:window.history.back();" class="btn btn-primary">返回</a>
			</div>
			</form>
		</div>
		
		 <div class="modal modal-default fade  " id="modal-danger">
          <div class="modal-dialog ">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" ><i class="fa fa-info-circle"></i>&nbsp;&nbsp;提现信息确认</h4>
              </div>
			  <form action="cashInfo.jsp">
              <div class="modal-body">
			  <div class="row">
				<div class="col-md-12">
				<table>
					<tr>
						<td style="30%">提现金额：</td>
						<td>1200.00（元）<input type="hidden" name="money" value="1200"/></td>
					</tr>
					<tr>
						<td>银行所在地址及支行详细名称：</td>
						<td>中国建设银行xxx支行<input type="hidden" name="money" value="100"></td>
					</tr>
					<tr>
						<td>银行名称：</td>
						<td>中国建设银行<input type="hidden" name="spec" value="this a money"/></td>
					</tr>
					<tr>
						<td>银行开户名：</td>
						<td><a href="#">张三</a><input type="hidden" name="num" value="张三"/></td>
					</tr>
					<tr>
						<td>银行卡号：</td>
						<td><a href="#">62251  212111  2312</a><input type="hidden" name="num" value="62251  212111  2312"/></td>
					</tr>
				</table>
               
				</div>
			  </div>
			  
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-warning pull-right" data-dismiss="modal">取消</button>
                <input type="submit" class="btn btn-danger " id="sub" value="确定">&nbsp;&nbsp;&nbsp;
              </div>
			  </form>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
		<!--end-->
		<div class="modal modal-default fade  " id="iss">
          <div class="modal-dialog ">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title" ><i class="fa  fa-warning"></i></h1>
              </div>
			  <form action="index.html">
              <div class="modal-body">
			  <div class="row">
				<div class="col-md-12">
				 <p>您好，根据公司的提现规定，每月10号之前申请提现，30号发放，20号之前申请提现，</p><p>&nbsp;</p>
				 <p>次月10号发放，每月30号之前申请提现，次月20号发放，提现有5%手续费（国际汇款</p><p>&nbsp;</p><p>费用，汇率差）。</p><p>&nbsp;</p>
				 <p>谢谢!</p>
               
				</div>
			  </div>
			  
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-success pull-right" data-dismiss="modal">好的，继续</button>
                
              </div>
			  </form>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
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
<script src="${pageContext.request.contextPath}/statics/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/statics/dist/js/adminlte.min.js"></script>
<script>
  $(function () {
  $("#iss").modal();
  })
</script>
<!-- Slimscroll -->

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>