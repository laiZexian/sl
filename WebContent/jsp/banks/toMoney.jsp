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
  <title>内部转账</title>
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
        <small>内部转账</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<!--start-->
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="box box-solid">
					<div class="box-header with-border">
					  <i class="fa fa-text-width"></i>
					  <h3 class="box-title"></h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
			<form class="form-horizonta" role="form" id="role2">
							<div class="form-group row">
								<span class="col-md-2 text-right" >当前余额：</span>
								<div class="col-md-2"> 
								<span style="color:red;">3800.00</span>(元)
								
								
							</div>
								<span class="col-md-8" style="color:red; font-size:12px;"></span>
							</div>
							<div class="form-group row">
								<span class="col-md-2 text-right"  style="font-size:14px;">转账目标会员：</span>
								<div class="col-md-3"><input type="text" class="form-control" placeholder="请输入目标会员..."></div>
								<span class="col-md-7" style="color:red;font-size:14px;">(接收转帐的会员用户名必须填写正确，不能给註册会员转帐。）</span>
							</div>
							<div class="form-group row">
								<span class="col-md-2 text-right" >转账金额：</span>
								<div class="col-md-5">
									<input type="text" class="form-control" placeholder="请输入转账金额...">
								</div>
								<span class="col-md-4" ><a href="send.jsp">余额不足，马上去汇款充值</a></span>
							</div>
							<div class="form-group row">
								<span class="col-md-2 text-right" >二级密码：</span>
								<div class="col-md-5"><input type="password" class="form-control" placeholder="请输入二级密码..."></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							
					  
					</div>
					
			    </div>
			 
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-md-offset-4">
				<input type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-danger" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="javascript:window.history.back();" class="btn btn-primary">返回</a>
			</div>
			</form>
		</div>
		
		 <div class="modal modal-default fade bs-example-modal-sm " id="modal-danger">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" ><i class="fa fa-info-circle"></i>&nbsp;&nbsp;确认转账信息</h4>
              </div>
			  <form action="${pageContext.request.contextPath}/jsp/index.jsp">
              <div class="modal-body">
			  <div class="row">
				<div class="col-md-12">
				<table>
					<tr>
						<td style="40%">转账目标会员：</td>
						<td>sl_user03<input type="hidden" name="user" value="sl_user03"/></td>
					</tr>
					<tr>
						<td>转账金额：</td>
						<td><span style="color:red;">200.00(元)</span><input type="hidden" name="money" value="200"></td>
					</tr>
					<tr>
						<td>转账时间：</td>
						<td>2013-12-30 13:47:05<input type="hidden" name="time" value="2013-12-30 13:47:05"/></td>
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
  
    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })
	
  })
</script>
<!-- Slimscroll -->

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>