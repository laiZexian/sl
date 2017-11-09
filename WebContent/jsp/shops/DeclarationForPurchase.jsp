<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/statics/bootstrap/jquery.min.js"></script>
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
		var name = $('#userName').val();	
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
		$("#userName").blur(function() {
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
  <jsp:include page="../include/left.jsp" />
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        购物管理
        <small>报单管理</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<div >
		
		<div id="ww">
			<div>
				 <span style="font-family:'Arial Negreta', 'Arial';font-weight:700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span style="font-family:'Arial Negreta', 'Arial';font-weight:700;">说明</span></p><p><span style="font-family:'Arial Negreta', 'Arial';font-weight:	            700;">&nbsp;</span>
            </p>
                     
            <div id="step-1" style="font-size:16px;" class="col-md-offset-2">
                      
                       
            <p><span style="font-family:'Arial Normal', 'Arial';font-weight:400;"> · 购货分</span></p>
            <p><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">&nbsp; </span><span style="font-family:'Arial Normal', 'Arial';font-weight:            400;">&nbsp;</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">&nbsp; &nbsp; </span><span style="font-family:'Arial Normal',            'Arial';font-weight:400;">①“报单购货”：使用基本帐户中的款项，“报单购货”后一定要“确认激活”此购货单才有效。 </span><span style="font-family:'Arial Normal',            'Arial';font-weight:400;">&nbsp;</span>
            </p>
            <p><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">&nbsp; </span><span style="font-family:'Arial Normal', 'Arial';font-weight:            400;">&nbsp;&nbsp; </span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">&nbsp; </span><span style="font-family:'Arial Normal',            'Arial';font-weight:400;">②</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">&nbsp;</span><span style="font-family:'Arial            Normal', 'Arial';font-weight:400;">“重消购货”：使用消费帐户中的款项，“重消购货”不需要“确认激活”。</span></p>
            <p><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">&nbsp; </span><span style="font-family:'Arial Normal', 'Arial';font-weight:            400;">&nbsp; &nbsp; </span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">&nbsp;</span><span style="font-family:'Arial Normal',            'Arial';font-weight:400;">③</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">“辅消购货”：使用基本帐户中的款项，“辅消购货”不            需要“确认激活”。</span></p>
            <p><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">&nbsp;</span></p>
            <p><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">&nbsp;</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400            ;">&nbsp;</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">· “确认激活”完成2项工作，确认“报单购货”的购货单有效，为新会员安            排左右区位置。 </span>
            </p>	            
            <p><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">&nbsp;</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400             ;">&nbsp;</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">·&nbsp; 购货单一旦确认、左右区位置一旦安排将不能更改，因此请慎重操作”</span>             <span style="font-family:'Arial Normal', 'Arial';font-weight:400;">。</span></p>
            <p><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">&nbsp; </span><span style="font-family:'Arial Normal', 'Arial';font-weight:            400;">· “确认激活”前要检查基本帐户的余额是否大于等于购货款，如果不足要及时为基本帐户</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">汇            </span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">款充值。</span></p>

                      </div>
                      <span id="ee">1</span>
			</div>
			<div>
				<form class="form-horizontal form-label-left" action="${pageContext.request.contextPath}/showdecla" method="post">

                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name"> 报单购货会员用户名： <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" name="userCode" id="userName"  class="form-control col-md-7 col-xs-12">
                            </div>
                            <span id="checkUN"></span>
                      </div><br>
                      <div class="col-md-offset-4">
                      <button id="btnNextStep" class="btn btnblack" type="submit">下一步</button></div>
                      </form>
			</div>
			
	</div>
	
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

<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/statics/bootstrap/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/statics/dist/js/adminlte.min.js"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath}/statics/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/statics/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/statics/dist/js/demo.js"></script>
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
	
<script>

</script>
	
    
</body>
</html>