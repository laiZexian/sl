<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
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
  <script src="${pageContext.request.contextPath}/statics/bower_components/jquery/dist/jquery.min.js"></script>
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
var path="http://localhost:8080/sl";
	$(function(){
		$("#delss").click(function(){
			var id = $(".min:checked").eq(0).val();
			if(!id){
				alert("请选择商品");
				return;
			}
			location.href=path+"/ByIdProSet?setId="+id;
		})
	})
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
        <small>重消购物</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		
		 <div class="ibox-content">
                <table id="clio" class="table table-striped table-bordered table-hover dataTables-example">
                    <thead>
                    <tr>
                        <th>选择</th>
                        <th>编号</th>
                        <th>套餐标题</th>
                        <th>零售价（元）</th>
                        <th>优惠价（元）</th>
                        <th>说明</th>
                        <th>数量</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="l">
                        <tr >
                            <td><input type="checkbox" class="min" value="${l.setId}"></td>
                            <td>${l.setId}</td>
                            <td>${l.setName}</td>
                            <td>${l.markPrice}</td>
                            <td>${l.prePrice} </td>
                            <td>${l.spec}</td>
                            <td>${l.setNum}</td>
                        </tr>

                    </c:forEach>



                    </tbody>

                </table>

            </div>
            
            <button type="button" class="btn btn-default btn-sm" >去结算</button>
            <button type="button" class="btn btn-default btn-sm" id="delss"><a href="#" >加入购物车</a></button>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<div class="modal modal-default fade bs-example-modal-lg" id="modal001">
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
               
                <button type="button" class="btn btn-default btn-sm" id="delss" >去购物车</button>
                <button type="button" class="btn btn-success " data-dismiss="modal">继续购物</button>
              </div>
            </div>
            <!-- /.modal-content -->
        </div>
          <!-- /.modal-dialog -->
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
<script src="${pageContext.request.contextPath}/statics/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/statics/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
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
     <script src="${pageContext.request.contextPath}/statics/js/plugins/jeditable/jquery.jeditable.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/dataTables/dataTables.bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/content.min.js"></script>
 <script>
      $(document).ready(function() {
       
		$(".dataTables-example").dataTable({
        });
      });
	  
	  
    </script>
</body>
</jsp>