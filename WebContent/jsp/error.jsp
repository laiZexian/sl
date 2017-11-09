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
  <title>出错页面500</title>
 
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bower_components/bootstrap/dist/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bower_components/font-awesome/css/font-awesome.min.css">
 
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bower_components/Ionicons/css/ionicons.min.css">
 
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/dist/css/AdminLTE.min.css">
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/dist/css/skins/skin-blue.min.css">
  
 
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="">

    <section class="content-header">
    <div class="row">
    	<div class="col-md-3 col-md-offset-5"> <h1 style="color:red;font-size:50px;">
      <i class="fa  fa-exclamation-triangle"></i>&nbsp;&nbsp;500
        
      </h1>  </div>
    </div>
     
    </section>

   
    <section class="content container-fluid">
		
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title" style="color:red;"></h3>

               <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse">
                </button>
                <!--<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>-->
				<a href="#"></a>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            	
              	 出错消息<br/>${exception.message }
              <!-- /.table-responsive -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix">
           
              <a href="${pageContext.request.contextPath}/jsp/login.jsp" class="btn btn-sm btn-primary btn-flat pull-right">返回登录页面</a>
            </div>
            
         </div>
	

    </section>
   
  </div>
 
  <div class="control-sidebar-bg"></div>


<script src="${pageContext.request.contextPath}/statics/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/statics/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>


</body>
</html>