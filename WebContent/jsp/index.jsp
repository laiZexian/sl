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
  <title>首页</title>
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
  <!-- 头部的开始 -->
 <jsp:include page="include/header.jsp" />
  <!-- 头部结束 -->
  <!-- Left side column. contains the logo and sidebar -->
  <!-- 左侧截取的开始！ -->
 <jsp:include page="include/left.jsp" />
	<!-- 左侧截取的结束！ -->
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        首页
        <small></small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<!--开始-->
	
       
		  <!-- TABLE: 这是公共栏 -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title"><i class="fa fa-th-list"></i>&nbsp;&nbsp;公告栏</h3>

               <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <!--<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>-->
				<a href="#">&gt;&gt;更多</a>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="table-responsive">
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th></th>
                    <th></th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td><i class="fa fa-plus-square"></i>&nbsp;&nbsp;<a href="#">关于加盟店的取消政策</a></td>
                    <td><span class="label label-info">2013-11-13 12:09:11</span></td>
                  </tr>
                  <tr>
                    <td><i class="fa fa-plus-square"></i>&nbsp;&nbsp;<a href="#">关于加盟政策的补充说明</a></td>
                    <td><span class="label label-info">2013-11-13 12:09:11</span></td>
                  </tr> <tr>
                    <td><i class="fa fa-plus-square"></i>&nbsp;&nbsp;<a href="#">全球信用卡支付系统已经开通</a></td>
                    <td><span class="label label-info">2013-11-13 12:09:11</span></td>
                  </tr>
				   <tr>
                    <td><i class="fa fa-plus-square"></i>&nbsp;&nbsp;<a href="#">2017年年度奖励方案</a></td>
                    <td><span class="label label-info">2013-11-13 12:09:11</span></td>
                  </tr>
				   <tr>
                    <td><i class="fa fa-plus-square"></i>&nbsp;&nbsp;<a href="#">关于加强市场管理的通知</a></td>
                    <td><span class="label label-info">2013-11-13 12:09:11</span></td>
                  </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix">
             <!-- <a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat pull-left">Place New Order</a>
              <a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-right">View All Orders</a>-->
            </div>
            <!-- /.box-footer -->
         </div>
		 
		 
		 <!-- TABLE: 这是资讯栏 -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title"><i class="fa fa-th-list"></i>&nbsp;&nbsp;资讯栏</h3>

               <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <!--<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>-->
				<a href="#">&gt;&gt;更多</a>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="table-responsive">
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th></th>
                    <th></th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td><i class="fa fa-plus-square"></i>&nbsp;&nbsp;<a href="#">新世纪新品发布会花絮（视频）</a></td>
                    <td><span class="label label-success">2013-11-13 12:09:11</span></td>
                  </tr>
                  <tr>
                    <td><i class="fa fa-plus-square"></i>&nbsp;&nbsp;<a href="#">《我心飞扬~幸福起航》发布会照片</a></td>
                    <td><span class="label label-success">2013-11-13 12:09:11</span></td>
                  </tr> <tr>
                    <td><i class="fa fa-plus-square"></i>&nbsp;&nbsp;<a href="#">全球信用卡支付系统已经开通</a></td>
                    <td><span class="label label-success">2013-11-13 12:09:11</span></td>
                  </tr>
				   <tr>
                    <td><i class="fa fa-plus-square"></i>&nbsp;&nbsp;<a href="#">Roova平衡液晶专题片（视屏）</a></td>
                    <td><span class="label label-success">2013-11-13 12:09:11</span></td>
                  </tr>
				   <tr>
                    <td><i class="fa fa-plus-square"></i>&nbsp;&nbsp;<a href="#">好专访（视频）</a></td>
                    <td><span class="label label-success">2013-11-13 12:09:11</span></td>
                  </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix">
             <!-- <a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat pull-left">Place New Order</a>
              <a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-right">View All Orders</a>-->
            </div>
            <!-- /.box-footer -->
         </div>
		<!--结束-->
      <!--------------------------
        | Your Page Content Here |
        -------------------------->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <!-- 尾部开始 -->
  <jsp:include page="include/footer.jsp" />
  <!-- 尾部结束 -->

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
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>