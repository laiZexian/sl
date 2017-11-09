<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
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
  
  <script src="${pageContext.request.contextPath}/statics/bootstrap/jquery.min.js"></script>
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bootstrap/bootstrap-responsive.min.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bootstrap/bwizard.min.css">
  <!-- jsp5 Shim and Respond.js IE8 support of jsp5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/jsp5shiv/3.7.3/jsp5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
</head>
<script type="text/javascript">

	function ine(data) {

		if (data == 1) {
			document.getElementById("checkUN").innerHTML = "<b style='color: red'>用户名正确</b>";
			$("#btnNextStep").attr("disabled", false);
		} else if (data == 2) {
			document.getElementById("checkUN").innerHTML = "<b style='color:red'>不能为空</b>";
		} else if (data == 3) {
			document.getElementById("checkUN").innerHTML = "<b style='color:green'>该用户不存在</b>"
		} else if (data == 0) {
			document.getElementById("checkUN").innerHTML = "<b style='color:red'>ajax成功返回值为空</b>"
		} else {
			document.getElementById("checkUN").innerHTML = "<b style='color:red'>未知错误</b>"
		}
	}
	var path="http://localhost:8080/sl";
	function checkUser() {
		var name = $('#last-name').val();	
		var s = 0;
		$.ajax({
			type : "post",
			url:path+"/userL/chekUser",//请求的url
			data : {name:name},
			success : function(data) {
				ine(data);
				
			}
		});
	}
	
	$(document).ready(function() {
		$("#btnNextStep").attr("disabled", true);
		$("#last-name").blur(function() {
			checkUser();
			
		});
	});
	
</script>
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
  <jsp:include page="../include/left.jsp" />  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        购物管理
        <small> 辅助购货</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		
			
				 <form class="form-horizontal form-label-left"  action="${pageContext.request.contextPath}/showByID" method="post" >
                        <div class="form-group">
                           <label class="control-label col-md-3 col-sm-5 col-xs-20" for="last-name">辅消购货会员用户名: <span class="required">*</span>
                            </label>
                            <div  class="col-md-6 col-sm-6 col-xs-12">
                              <input  type="text" id="last-name" name="last-name" required class="form-control col-md-7 col-xs-12"  >
                           <span id="checkUN"></span>
                            </div>
                            
                            <div class="col-md-offset-4">
                      		<button id="btnNextStep" class="btn btnblack" type="submit">下一步</button></div>
                            </form>
                        


    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<div class="modal modal-default fade bs-example-modal-sm" id="modal001">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><i class="fa fa-bell-o"></i>提示：</h4>
              </div>
              <div class="modal-body">
                <p>添加成功！</p>
              </div>
              <div class="modal-footer ">
               
                <button type="button" class="btn btn-default btn-sm"  ><a href="购物车.jsp">去购物车</a></button>
                <button type="button" class="btn btn-success " data-dismiss="modal">继续购物</button>
              </div>
            </div>
            </div>
            </div>
            
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

<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/statics/bootstrap/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/statics/dist/js/adminlte.min.js"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath}/statics/../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/statics/../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/statics/../dist/js/demo.js"></script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
   <script src="${pageContext.request.contextPath}/statics/bootstrap/bwizard.min.js" type="text/javascript"></script>
   <script type="text/javascript">
	   $("#ww").bwizard();
	</script>
	  <script>
      $(document).ready(function() {
	 
        $('#wizard').smartWizard();

        $('#wizard_verticle').smartWizard({
          transitionEffect: 'slide'
        });
		
		
      });
	  </script>
</body>
</jsp>