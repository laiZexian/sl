<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>基础信息</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/dist/css/AdminLTE.min.css">
 
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/dist/css/skins/skin-blue.min.css">
   <style>
	.showss{
		display:block;
	}
  </style>
  
  
</head>

<body class="hold-transition skin-blue sidebar-mini">
 <div class="modal modal-warning fade bs-example-modal-sm " id="modal-alert">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">提示：</h4>
              </div>
              <div class="modal-body">
                <p id="mess">修改成功！</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" id="sure">确定</button>
                
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
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
        后台管理
        <small>基础信息</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<!--begin-->
	<div class="row">
        <div class="col-md-12">
         <div class="box">
            <div class="box-header with-border">
				<button  class="btn btn-primary btn-sm " data-toggle="modal" data-target="#modal-primary">新增</button>&nbsp;&nbsp;
				<button  class="btn btn-success btn-sm "  id="update1"/>修改</button>&nbsp;&nbsp;
				<button  class="btn btn-danger btn-sm " data-toggle="modal" data-target="#modal-danger">删除</button>&nbsp;
			   
			  <!--选择框-->
              <div class="box-tools">
              <form action="${pageContext.request.contextPath}/para/queryall" method="post" id="formss">
                <div class="input-group input-group-sm" style="width: 250px;">
                
                  <input type="text" name="paraName" class="form-control pull-right" placeholder="请输入基础字段名称（支持模糊查询）...." value="${paraName }">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                  
                </div>
                </form>
              </div>
			  
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-bordered">
                <tr class="active">
                  <th style="width: 70px" align="center">选择</th>
                  <th>参数关键字</th>
                  <th>参数编码</th>
				  <th>参数值</th>
				 
				
                </tr>
                <c:forEach items="${pages.list}" var="pa" varStatus="is">
				<tr>
                  <td align="center" ><input type="radio" name="r1" class="minimal"  value="${pa.paraCode }" <c:if test="${is.index eq 0 }">checked</c:if>></td>
                  <td><b>${pa.paraName }</b></td>
                  <td><b>${pa.paraCode }</b></td>
				  <td>${pa.paraValue }</td>
                </tr>
                </c:forEach>
				
				
              </table>
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix">
            	<ul class="pagination pagination-sm no-margin ">
                <li ><a href="#">当前页:${pages.currentPageNo }页</a></li>
                <li><a href="#">共：${pages.totalPageCount }页</a></li>
              </ul>
              <ul class="pagination pagination-sm no-margin pull-right">
                <li ><a href="${pageContext.request.contextPath}/para/queryall?pageNo=${pages.currentPageNo-1}">上一页</a></li>
                <li ><a href="${pageContext.request.contextPath}/para/queryall">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/para/queryall?pageNo=${pages.totalPageCount}">末页</a></li>
                <li id="two"><a href="${pageContext.request.contextPath}/para/queryall?pageNo=${pages.currentPageNo+1}">下一页</a></li>
              </ul>
            </div>
        </div>
          
        </div>
        <!-- 下拉显示 -->
       <!--add-->
        <div class="modal modal-primary fade bs-example-modal-sm" id="modal-primary">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加参数</h4>
              </div>
              <div class="modal-body">
                <form role="form">
                <!-- text input -->
                <div class="form-group">
                 
                  <input type="text" class="form-control" placeholder="请输入参数关键字..." id="names1">
                </div>
                <div class="form-group">
                  
                  <input type="text" class="form-control" placeholder="请输入参数编码..." id="codes1">
                </div>
				<div class="form-group">
                 
                  <input type="text" class="form-control" placeholder="请输入参数值 ..." id="values1">
                </div>
                <!-- textarea -->
                <div class="form-group">
                  <textarea class="form-control" rows="3" placeholder="请输入参数描述 ..." id="specs1"></textarea>
                </div>
              </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" id="update3" >保存</button>
                <button type="button" class="btn btn-outline" data-dismiss="modal">关闭</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
		<!--update-->
		
        <div class="modal modal-success fade bs-example-modal-sm" id="modal-success">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改参数</h4>
              </div>
              <div class="modal-body">
               
                <!-- text input -->
                <div class="form-group">
                 
                  <input type="text" class="form-control" placeholder="请输入参数关键字..." id="names" >
                </div>
                <div class="form-group">
                  
                  <input type="text" class="form-control" placeholder="请输入参数编码..." id="codes" disabled>
                </div>
				<div class="form-group">
                 
                  <input type="text" class="form-control" placeholder="请输入参数值 ..." id="values">
                </div>
                <!-- textarea -->
                <div class="form-group">
                  <textarea class="form-control" rows="3" placeholder="请输入参数描述 ..." id="specs"></textarea>
                </div>
              
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" id="update2">保存</button>
                <button type="button" class="btn btn-outline" data-dismiss="modal">关闭</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
		
		<!--alert-->
		
		   <div class="modal modal-danger fade bs-example-modal-sm " id="modal-danger">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">温馨提示：</h4>
              </div>
              <div class="modal-body">
                <p>你确定删除吗？</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-outline" id="update4">确定</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
		<!--end-->
		  
	
      <!--------------------------
        | Your Page Content Here |
        -------------------------->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
   <jsp:include page="../include/footer.jsp" />

 
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
function subs(){
	$("#formss").submit();
}
var path="http://localhost:8080/sl";
$(function(){
	//固定
	$(".treeview").eq(0).addClass("menu-open");
	$(".treeview-menu").eq(0).addClass("open").addClass("showss");
	var paraCode1 ="";
	//显示可修改的信息
	$("#update1").click(function(){
		paraCode1 =$(".minimal:checked").val();
		$.ajax({
			type:"post",//请求类型
			url:path+"/para/query",//请求的url
			data:{paraCode:paraCode1},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){
				$("#names").val(data.paraName);
				$("#codes").val(data.paraCode);
				$("#values").val(data.paraValue);
				$("#specs").val(data.paraSpec);
				$("#modal-success").modal();
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				alert("出现异常！");
			}
		});  	
	});
	//修改参数信息
	$("#update2").click(function(){
		var names=$("#names").val();
		var codes=$("#codes").val();
		var values=$("#values").val();
		var specs=$("#specs").val();
		$("#modal-success").modal("hide");
		$.ajax({
			type:"post",//请求类型
			url:path+"/para/uppara",//请求的url
			data:{paraCode:codes,paraName:names,paraValue:values,paraSpec:specs},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){
				if (data=="1") {
					$("#mess").html("修改成功！");
				}else{
					$("#mess").html("修改失败！");
				}
				$("#modal-alert").modal();
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				alert("出现异常！");
			}
		});  	
	});
	
	//刷新页面
	$("#sure").click(function(){
		$("#modal-alert").modal("hide");
		
		setTimeout("subs()", 1000 );
	});
	//添加参数
	$("#update3").click(function(){
		var names1=$("#names1").val();
		var codes1=$("#codes1").val();
		var values1=$("#values1").val();
		var specs1=$("#specs1").val();
		if (names1=="") {
			alert("参数名不能为空！");
			return;
		}
		if (codes1=="") {
			alert("参数编码不能为空！");
			return;
		}
		if (values1=="") {
			alert("参数值不能为空！");
			return;
		}
		$.ajax({
			type:"post",//请求类型
			url:path+"/para/add",//请求的url
			data:{paraCode:codes1,paraName:names1,paraValue:values1,paraSpec:specs1},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){
				$("#modal-primary").modal("hide");
				if (data=="1") {
					$("#mess").html("添加成功！");
				}else{
					$("#mess").html("添加失败！");
				}
				$("#modal-alert").modal();
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				alert("添加出现异常！");
			}
		});  	
	});
	//验证编码唯一
	$("#codes1").blur(function(){
		var codes2=$(this).val();
		//alert(codes2);
		$.ajax({
			type:"post",//请求类型
			url:path+"/para/simple",//请求的url
			data:{paraCode:codes2},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){
				
				if (data=="1") {
					alert("编码已存在，无法使用！")
				}else{
					alert("编码可以使用！")
				}
				
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				alert("验证出现异常！");
			}
		});  
	});
	
	$("#update4").click(function(){
		paraCode1 =$(".minimal:checked").val();
		$.ajax({
			type:"post",//请求类型
			url:path+"/para/delpara",//请求的url
			data:{paraCode:paraCode1},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){
				$("#modal-danger").modal("hide");
				if (data=="1") {
					$("#mess").html("删除成功！");
				}else{
					$("#mess").html("删除失败！");
				}
				$("#modal-alert").modal();
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				alert("删除出现异常！");
			}
		});  
	});
});
</script>
</body>
</html>