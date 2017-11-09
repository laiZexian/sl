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
  <title>修改资讯管理</title>
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

  <!-- Google Font -->
 <!-- <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">-->
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
       资讯管理>	
		<small>修改资讯管理</small>
      </h1>  
	  
    </section>
	
    <!-- Main content -->
    <section class="content container-fluid">
		
	<div class="box box-info">
        <div class="box-header with-border">
          <h3 class="box-title"></h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
            
             
          </div>
        </div>
        <div class="box-body">
		
		<div class="form-group row">
				<span class="col-md-3 text-right" > 标题：</span>
				<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入名称..."></div>
				<span class="col-md-4" style="color:red;">*</span>
		</div>
		<div class="form-group row">
				<span class="col-md-3 text-right" > 资讯类型：</span>
				<div class="col-md-5">
				<select style="width:150px;z-index:-5" name="tmpSel" onmouseover="selMouseOver(this)"
					onmouseout="selMouseOut" (this)="" onkeydown="catch_keydown(this)"
					onkeypress="catch_press(this)" onfocus="catch_focus(this)">
					<option value="请选择">请选择</option>
					<option value="文本">文本</option>
					<option value="图片">图片</option>
					<option value="视频">视频</option>
				</select>
				</div>
				<span class="col-md-4" style="color:red;">*</span>
		</div>
		<div class="form-group row">
				<span class="col-md-3 text-right" > 上传文件：</span>
				<div class="col-md-5"><input id="u78_input" type="file" value="浏览"></div>
				<span class="col-md-4" style="color:red;">*</span>
		</div>
		<div class="form-group row">
				<span class="col-md-3 text-right" > 内容：</span>
				<div class="col-md-5"><textarea style="width:300px;height:100px;"></textarea></div>
				<span class="col-md-4" style="color:red;">*</span>
		</div>
		<div class="form-group row">
				<span class="col-md-3 text-right" > 状态：</span>
				<div class="col-md-5">
					<span>发布</span><input  type="radio" value="radio"  name="u17" checked="">
					<span>不发布</span><input  type="radio" value="radio"  name="u17" checked="">
				</div>
				<span class="col-md-4" style="color:red;"></span>
		</div>
		<div class="form-group row">
				<span class="col-md-3 text-right" ></span>
				<div class="col-md-5">
					
					<input type="button" value=保存 class="btn btn-success" onClick="window.location='下载地址'" /> 
					<a href="${pageContext.request.contextPath}/informationz/showInformations" class="btn btn-success " >
						返回
					</a>
				</div>
				<span class="col-md-4" style="color:red;"></span>
		</div>
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          
        </div>
        <!-- /.box-footer-->
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
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>