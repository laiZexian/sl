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
  <script src="${pageContext.request.contextPath}/statics/bootstrap/jquery.min.js"></script>
  
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bootstrap/bootstrap-responsive.min.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bootstrap/bwizard.min.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bootstrap/dataTables.bootstrap.css">
 
   
    <link href="${pageContext.request.contextPath}/statics/bootstrap/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/statics/bootstrap/styles.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/statics/Arrange area/styles.css" type="text/css" rel="stylesheet"/>
  <!-- jsp5 Shim and Respond.js IE8 support of jsp5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/jsp5shiv/3.7.3/jsp5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
 <!-- <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">-->
</head>
<script type="text/javascript">
$(document).ready(function() {
	$("#xiayibu").click(function(){
		var num1 =  $('input:radio:checked').val();
		if(num1==null){
			alert("请选择需要激活的用户");
			return 
		}else{
			var otext1 = document.getElementById('num');
			num.value = num1;
		}
		
		
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
        <small>确认激活</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
				 <div class="ibox-content">
                <table id="clio" class="table table-striped table-bordered table-hover dataTables-example">
                    <thead>
                    <tr>
                        <th>选择</th>
                        <th>单号</th>
                        <th>会员用户名</th>
                        <th>收货人姓名</th>
                        <th>日期</th>
                        <th>购货总金额金额</th> 
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="l">
                        <tr class="gradeX">
                            <td><input type="radio" value="${l.userCode}" data-label="1" name="memType"/></td>
                            <td>${l.orderId}</td>
                            <td>${l.userCode}</td>
                            <td>${l.receiveName}</td>
                            <td><fmt:formatDate value="${l.createDate}" pattern="yyyy/MM/dd"/></td>
                            <td>${l.total}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div id="xiayibu" class="col-md-offset-9">
						 <button id="btnNextStep" class="btn btnblack" type="button"><a href="#" data-toggle="modal" data-target="#modal003">下一步</a></button></div>
			</div>
		</div>
		</div>
		 
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
	<div class="modal modal-success fade bs-example-modal-lg" id="modal003">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h6 class="modal-title">请输入密码</h6>
              </div>
               <form action="${pageContext.request.contextPath}/querUser" method="post">
             <div class="modal-header">
             	  <input type="hidden" name="totalMoney" id="num" value=""/>	
                  <label for="middle-name">二级密码</label>
                  <input class="form-control" type="password" name="secPwd" >
                </div>
               <div class="modal-footer">
                <button type="submit" class="btn btn-outline pull-left"  id="update2">提交</button>
                <button type="button" class="btn btn-outline" data-dismiss="modal">关闭</button>
              </div>
              </form>
            <!-- /.modal-content -->
          </div>
         
          <!-- /.modal-dialog -->
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
<script src="${pageContext.request.contextPath}/statics/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/statics/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/statics/dist/js/demo.js"></script>
<script src="${pageContext.request.contextPath}/statics/bootstrap/jquery.dataTables.js"></script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
   <script src="${pageContext.request.contextPath}/statics/bootstrap/bwizard.min.js" type="text/javascript"></script>
   <script type="text/javascript">
   	
	   $("#ww").bwizard();
	   
	</script>
	   <script>
     $(document).ready(function () {
        $(".dataTables-example").dataTable({
        });

    });
	  
	  
    </script>
</body>

</html>