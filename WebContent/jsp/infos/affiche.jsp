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
  <title>公告管理</title>
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
        公告管理
      </h1>
		
    </section>
		
	
    <!-- Main content -->
		<section class="content container-fluid">
		 <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">
			<button class="btn btn-primary " data-toggle="modal" data-target="#modal002">
		
				新增
			</button>
			<button class="btn btn-primary " id="up"  >
		
				修改
			</button>
			<button class="btn btn-primary " id="delss">
				删除
			</button>
		  </h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
        
        <c:forEach items="${noList }" var="u">
        <p>
        	<input type="checkbox" class="min" name="" value="${u.noId }"/>
        	<a href="${pageContext.request.contextPath}/noticez/showNotice?noId=${u.noId}">${u.noTitle }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <fmt:formatDate value="${u.createDate }"/>
        </a>
        </p>
       
        </c:forEach>
        </div>
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
	</div>
		<div class="modal modal-default fade bs-example-modal-sm" id="modal001">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><i class="fa fa-bell-o"></i>提示：</h4>
              </div>
              <div class="modal-footer ">
                <button type="button" class="btn btn-success " data-dismiss="modal">确定</button>
              </div>
            </div>
            <!-- /.modal-content -->
        </div>
          <!-- /.modal-dialog -->
    </div>	  
	<div class="modal modal-default fade " id="modal002">
        <div class="modal-dialog ">
            <div class="modal-content">
            <form action="${pageContext.request.contextPath}/noticez/saveNotice" method="post">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><i class="fa fa-bell-o"></i>添加公告：</h4>
              </div>
              <div class="modal-body">
               <div class="row">
				<table class="table table-bordered col-md-12">
					<tr>
						<td>标题:</td>
						<td><input type="text" name="noTitle" value="${u.noTitle }"/></td>
						<td style="color:red">*</td>
					</tr>
					<tr>
						<td>公告时间段:</td>
						<td><input type="text" name="startTime" value="${u.startTime }" id="datepicker2" placeholder="yyyy/MM/dd" style="width:80px;" required/>-
						<input type="text" name="endTime" value="${u.endTime }" id="datepicker" placeholder="yyyy/MM/dd" style="width:80px;" required/></td>
						<td style="color:red"><small style="color:red">注:为空则没有时间限制</small></td>
					</tr>
					<tr>
						<td>公告内容:</td>
						<td><textarea class="form-control" rows="4" placeholder="请输入公告内容 ..." name="noContent">${u.noContent }</textarea></td>
						<td style="color:red">*</td>
					</tr>
				</table>
			   </div>
              </div>
              <div class="modal-footer ">
               <button type="submit" class="btn btn-success ">确定</button>
                <button type="button" class="btn btn-warning " data-dismiss="modal">取消</button>
              </div>
			  </form>
            </div>
            <!-- /.modal-content -->
        </div>
          <!-- /.modal-dialog -->
    </div>	
	<div class="modal modal-default fade " id="modal003">
        <div class="modal-dialog ">
            <div class="modal-content">
              <form action="${pageContext.request.contextPath}/noticez/updateNotice" method="post">
              <input type="hidden" name="noId" value="${u.noId }" id="noIds"/>
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><i class="fa fa-bell-o"></i>修改公告：</h4>
              </div>
              <div class="modal-body">
               <div class="row">
				<table class="table table-bordered col-md-12">
					<tr>
						<td>标题:</td>
						<td><input type="text" name="noTitle" value="${u.noTitle }" id="titles"/></td>
						<td style="color:red">*</td>
					</tr>
					<tr>
						<td>公告时间段:</td>
						<td><input type="text" name="startTime" value="${u.startTime }" id="datepicker4" placeholder="yyyy/MM/dd" style="width:80px;"required/>-
						<input type="text" name="endTime" value="${u.endTime }" id="datepicker3" placeholder="yyyy/MM/dd" style="width:80px;" required/></td>
						<td style="color:red"><small style="color:red">注:为空则没有时间限制</small></td>
					</tr>
					<tr>
						<td>公告内容:</td>
						<td><textarea class="form-control" rows="4" placeholder="请输入公告内容 ..." name="noContent" id="contents"></textarea></td>
						<td style="color:red">*</td>
					</tr>
				</table>
			   </div>
              </div>
              <div class="modal-footer ">
               <button type="submit" class="btn btn-success ">确定</button>
                <button type="button" class="btn btn-warning " data-dismiss="modal">取消</button>
              </div>
			  </form>
            </div>
            <!-- /.modal-content -->
        </div>
          <!-- /.modal-dialog -->
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
<script src="${pageContext.request.contextPath}/statics/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript">
//日期转化器
  function datTran(dates){	
		var year =dates.substring(0,4);
		var month =dates.substring(5,7);
		var day =dates.substring(8,10);
		var date =month+"/"+day+"/"+year;
		return date;
  }
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
    
    var path="http://localhost:8080/sl";
	$(function(){
		$("#delss").click(function(){
			alert("删除成功!");
			var id=$(".min:checked").eq(0).val();
			if (!id) {
				alert("请选择要删除的公告信息!");
				return;
			}
			location.href=path+"/noticez/deleteNotice?noId="+id;
		});
		
  	});
	//弹出修改框
	$("#up").click(function(){
		var id=$(".min:checked").eq(0).val();
		if (!id) {
			alert("请选择要修改的公告信息!");
			return;
		}
		$.ajax({
			type:"post",//请求类型
			url:path+"/noticez/showone",//请求的url
			data:{noId:id},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）
				$("#titles").val(data.noTitle);
				$("#contents").val(data.noContent);
				var start =data.startTime;
				var end =data.endTime;
				start =datTran(start);
				end  =datTran(end);
				$("#datepicker4").val(start);
				$("#datepicker3").val(end);
				$("#noIds").val(data.noId);
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				alert("加载数据失败！");
			}
		});  
		$("#modal003").modal();
	});
  
  });
</script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>