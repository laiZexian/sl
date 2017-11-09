<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>资讯管理</title>
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
      <h1>
        资讯管理	>
		<small>资讯管理</small>
      </h1>
		
    </section>
		 
    <!-- Main content -->
    <section class="content container-fluid">
		<div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">
		 <a href="${pageContext.request.contextPath}/jsp/infos/AddSuggest.jsp" class="btn btn-primary">
			新增
		</a>
		<a href="${pageContext.request.contextPath}/jsp/infos/UpdateSuggest.jsp" class="btn btn-success " >
			修改
		</a>
		<button class="btn btn-danger " data-toggle="modal" data-target="#modal001">
			删除
		</button>
		  
		  </h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
			
	<table  class="table table-bordered">
		
	<tr class="active">
		<th align="center">选择</th>
		<th>文件标题</th>
		<th>下载说明</th>
		<th>文件大小</th>
		<th>下载次数</th>
		<th>状态(发布/不发布)</th>
		<th>最后修改时间</th>
	</tr>
	<tbody>
	<tr class="">
		<td align="center"><input type="radio" name="rd" checked></td>
		<td>xxxx</td>
		<td>下载说明</td>
		<td>文件大小</td>
		<td>下载次数</td>
		<td align="center"><input type="checkbox" name="" checked></td>
		<td>2017-11-11 13:09:11</td>
	</tr>
	<c:forEach items="${noList }" var="y">
		<tr class="">
		<td align="center"><input type="radio" name="rd" ></td>
		<td>${y.title}</td>
		<td>${y.stutas}</td>
		<td>${y.fileSize}</td>
		<td>${y.degree }</td>
		<td align="center"><input type="checkbox" name="" ></td>
		<td><fmt:formatDate value="${y.modifyDate }"/></td>
	</tr>
	</c:forEach>
	</tbody>	
	</table>
	<p style="color:red">注：状态打钩或去掉打钩则立即生效</p>
	
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
         <ul class="pagination pull-right">
		<!--disabled禁用状态-->
		<li class="disabled"><a href="#">&laquo;</a></li>
		<!--active当前页-->
		<li class="active"><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li><a href="#">&raquo;</a></li>
	</ul>
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
<script src="${pageContext.request.contextPath}/statics/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script>
  $(function () {
  
    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })
	$('#datepicker2').datepicker({
      autoclose: true
    })
	$('#datepicker3').datepicker({
      autoclose: true
    })
	$('#datepicker4').datepicker({
      autoclose: true
    })
  })
</script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>