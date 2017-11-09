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
  
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</style>
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
        购货管理
        <small>结算</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section  class="content container-fluid">
	
		  									<div class="col-md-7 col-md-offset-2">
		  										<h5>订单明细</h5>
		  										
                           <hr style=" height:2px;border:none;border-top:2px solid  #185598;" />
		  									</div>
		  									
                        <div class="col-md-4 col-md-offset-3" >
                        	<form action="" method="post">
                            <table align="center" class="table table-striped table-bordered table-hover dataTables-example">
                            <tr>
                            <td>单号:</td>
                            <td>
                            <input class="bo" style="border :none;"  type="text" name="" value="测试" readonly>
                            </td>
                            
                            </tr>
                        
                            <tr>
                            <td>购买会员用户名:</td>
                            <td>
                            <input class="bo" style="border :none;"  type="text" name="" value="测试" readonly>
                            </td>
                            </tr>
                            
                             <tr>
                            <td>购买人姓名:</td>
                            <td>
                            <input class="bo" style="border :none;"  type="text" name="" value="测试" readonly>
                            </td>
                            </tr>
                            
                             <tr>
                            <td>购买类型:</td>
                            <td>
                            <input class="bo" style="border :none;"  type="text" name="" value="测试" readonly>
                            </td>
                            </tr>
                            
                             <tr>
                            <td>购买时间:</td>
                            <td>
                            <input class="bo" style="border :none;"  type="text" name="" value="测试" readonly>
                            </td>
                            </tr>
                            </table>
                            </form>
                        
                        	
                        
                        </div>
                        	<div class="col-md-7 col-md-offset-2">
		  										<h5>商品详细:</h5>
		  										
                           <hr style=" height:2px;border:none;border-top:2px solid  #185598;" />
		  									</div>
		  									
          							 <div class="col-md-5 col-md-offset-2" >
                        	
                            <table align="center"  class="table table-striped table-bordered table-hover dataTables-example">
                            <tr>
                            <td><strong>套餐标题</strong></td>
                            <td><strong>优惠价（元）</strong></td>
                            <td><strong>数量</strong></td>
                            <td><strong>总价</strong></td>
                            <td><strong>积分</strong></td>
                            </tr>
                        
                            <tr>
                            <td>套餐A</td>
                            <td> 4600 </td>
                            <td>80</td>
                            <td>100000</td>
                            <td>460</td>
                            </tr>
                            
                             
                            </table>
                        <p><snpe>当前余额：</snpe> <snpe> <font color="#FF0000">4000</font></snpe><samp>(元)</samp> &nbsp;<a href="*">
							余额不足，马上去汇款充值</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <samp>总价：</samp><samp><font color="#FF0000">5000</font></samp>
                            <samp>(元)</samp>&nbsp;&nbsp; <samp>积分:11500(PV)</samp>
                            
                            </p> </div>
                            <div class="col-md-7 col-md-offset-2">
		  									
		  										
                           <hr style=" height:2px;border:none;border-top:2px solid  #185598;" />
		  									</div>
                            <div class="col-md-4 col-md-offset-3" >
                        	<form action="" method="post">
                            <table align="center" class="table table-striped table-bordered table-hover dataTables-example">
                            <tr>
                            <td>地址:</td>
                            <td>
                            <input class="bo" style="border :none;"  type="text" name="" value="测试" readonly>
                            </td>
                            
                            </tr>
                        
                            <tr>
                            <td>快递:</td>
                            <td>
                            <input class="bo" style="border :none;"  type="text" name="" value="测试" readonly>
                            </td>
                            </tr>
                            
                             <tr>
                            <td>邮编:</td>
                            <td>
                            <input class="bo" style="border :none;"  type="text" name="" value="测试" readonly>
                            </td>
                            </tr>
                            
                             <tr>
                            <td>输入二级密码:</td>
                            <td>
                            <input class="bo"  type="text" name="" value="测试" readonly> <button type="button" class="btn btn-default btn-sm"><a href="#">支付</a></button>
                            </td>
                            </tr>
                            
                           </table>
                            </form>
                        
                        	
                        
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

<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/statics/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/statics/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/statics/dist/js/adminlte.min.js"></script>
<!-- Slimscroll -->

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>