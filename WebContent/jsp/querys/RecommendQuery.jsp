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
  <title>推荐查询</title>
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
        信息查询
        <small> >>推荐查询</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<div class="row">
			<div class="col-md-4">
				 <div class="box">
					<div class="box-header with-border">
					<h3 class="box-title">推荐会员</h3> 
					<div class="box-tools pull-right">
					
					</div>
				</div>
				<div class="box-body"> 
					<span id="admins">${userAdmin.userCode }</span>
					<ul style="list-style:none; " id="uls">
						
					</ul>
								<!-- /.modal-content -->
								<div class="modal001" id="c">
									<p >申请日期：<span id="date"></span> </p>
									<p>用户名：<span id="user"></span> </p>
									<p>姓名：<span id="names"></span> </p>
									<p>证件号码： <span id="cards"></span></p>
									<p>收货国家（地区）：<span id="country"></span> </p>
									<p>联系电话：<span id="phones"></span> </p>
									<p>移动电话：<span id="tel"></span> </p>
									<p>电子邮件：<span id="emails"></span></p>
									<p>收货地址：<span id="adress"></span></p>
									<p>邮政编码：<span id="post"></span> </p>
									<p>推荐人用户名：<span id="usreco"></span> </p>
							</div>
				</div>
				</div> 
						<div class="modal-dialog " >
						
				</div>
							
				<!-- /.box-body -->
				
        <!-- /.box-footer-->
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
<script >
function showli(dom){
	var ss=$(dom).html();
	//userRelactiony/getone?userCode=
	$.ajax({
		type:"post",//请求类型
		url:path+"/userRelactiony/getone",//请求的url
		data:{userCode:ss},//请求参数
		dataType:"json",//ajax接口（请求url）返回的数据类型
		success:function(data){//data：返回数据（json对象）
			//alert(data.email);
			$("#date").html(data.createDate);
			$("#user").html(data.userCode);
			$("#names").html(data.realName);
			$("#cards").html(data.cardNo);
			var str ="";
			if (data.country==1) {
				str="中国";
			}else if(data.country==2){
				str="美国";
			}else{
				str="日本";
			}
			$("#country").html(str);
			$("#phones").html(data.phone);
			$("#tel").html(data.telephone);
			$("#emails").html(data.email);
			$("#adress").html(data.address);
			$("#post").html(data.postCode);
			$("#usreco").html(data.createCode);
			$("#modal001").modal();
			
		},
		error:function(data){//当访问时候，404，500 等非200的错误状态码
			alert("加载数据失败！");
		}
	});  
	
}
var path="http://localhost:8080/sl";
	$(function(){
		
		$("#admins").click(function(){
			var code  =$(this).html();
			$.ajax({
				type:"post",//请求类型
				url:path+"/userRelactiony/getusers",//请求的url
				data:{parentUser:code},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){//data：返回数据（json对象）
					$("#uls").empty();
					var str ="";
					for (var i = 0; i < data.length; i++) {
						str+="<li onclick='showli(this)'>"+data[i].userCode+"</li>"
					}
					$("#uls").append(str);
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("加载数据失败！");
				}
			});  
		});
		
		
	});
</script>


</body>
<style>
	#c {
		width: 500px;
		height: 400px;
		float: left;
		margin: auto 100px ;'
	}
</style>
</html>