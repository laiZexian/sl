<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>角色管理</title>
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
        <small>角色管理</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<!--begin-->
	<div class="row">
        <div class="col-md-12">
         <div class="box">
            <div class="box-header with-border">
				<button  class="btn btn-primary btn-sm " data-toggle="modal" data-target="#modal-primary" >新增</button>&nbsp;&nbsp;
				<button  class="btn btn-success btn-sm "  id="update1"/>修改</button>&nbsp;&nbsp;
				<button  class="btn btn-danger btn-sm " data-toggle="modal" data-target="#modal-danger">删除</button>&nbsp;
			   
			  <!--选择框-->
              <div class="box-tools">
              <form action="${pageContext.request.contextPath}/role/queryalls" method="post" id="formss">
                <div class="input-group input-group-sm" style="width: 250px;">
                  <input type="text" name="roleName" class="form-control pull-right" placeholder="请输入角色（支持模糊查询）....">

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
                  <th>角色编码</th>
                  <th>角色名称</th>
				  <th>创建人</th>
				  <th>状态</th>
				  <th>最后修改时间</th>
                </tr>
                <c:forEach items="${pages.list }" var="rol" varStatus="ii">
				<tr>
                  <td align="center" ><input type="radio" name="r1" class="minimal"  value="${rol.roleId }" <c:if test="${ii.index eq 0 }">checked</c:if>></td>
                  <td><b>${rol.roleId }</b></td>
                  <td style="color:DarkGreen;font-weight:bold;">${rol.roleName }</td>
				  <td style="color:blue;">${rol.userCode }</td>
				  <td><!--  <input type="checkbox" name="" class="mim" <c:if test="${rol.roleStutas eq 1 }">checked</c:if>>-->
				  <c:if test="${ rol.roleStutas eq 1 }"><span class="label label-info">启用</span></c:if> 
				 <c:if test="${ rol.roleStutas eq 0}"><span class="label label-danger">禁用</span></c:if></td>
				  <td><span class="label label-success " ><fmt:formatDate value="${rol.modifyDate }" pattern="yyyy-MM-dd HH:mm:ss"/></span> </td>
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
                <li ><a href="${pageContext.request.contextPath}/role/queryalls?pageNo=${pages.currentPageNo-1 eq 0 ?1:pages.currentPageNo-1}">上一页</a></li>
                <li ><a href="${pageContext.request.contextPath}/role/queryalls">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/role/queryalls?pageNo=${pages.totalPageCount}">末页</a></li>
                <li id="two"><a href="${pageContext.request.contextPath}/role/queryalls?pageNo=${pages.currentPageNo+1 lt pages.totalPageCount ? pages.currentPageNo+1 :pages.totalPageCount }">下一页</a></li>
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
                <h4 class="modal-title">添加角色</h4>
              </div>
              <div class="modal-body">
                <form role="form">
                <!-- text input -->
                <div class="form-group">
                 
                  <input type="text" class="form-control" placeholder="请输入角色编号..." id="roleIds1">
                  <input type="hidden" value="${userAdmin.userCode }"  id="createuser1">
                </div>
                <div class="form-group">
                  
                  <input type="text" class="form-control" placeholder="请输入角色名称 ..." id="roleNames11" value="会员" >
                </div>
				<div class="form-group">
				 <label>角色状态：</label>
					<input type="radio" name="r1"  checked id="r1one1">启用&nbsp;&nbsp;
					<input type="radio" name="r1" id="r1two1">禁用
					
                  	<input type="hidden" value="1" id="statuss1">
                </div>
           
          
              </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" id="update3">保存</button>
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-outline btn-xs" id="buid">编号</button>
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
                <h4 class="modal-title">修改角色</h4>
              </div>
              <div class="modal-body">
                <form role="form">
                <!-- text input -->
                <div class="form-group">
                 
                  <input type="text" class="form-control" placeholder="请输入角色编号..."  disabled id="roleIds">
                </div>
                <div class="form-group">
                  
                  <input type="text" class="form-control" placeholder="请输入角色名称 ..."  id="roleNames" >
                  <input type="hidden"   id="createuser">
                </div>
				<div class="form-group">
				 <label>角色状态：</label>
					<input  type="radio" class="jinrong" name="r1"  checked="checked" id="r1one">启用&nbsp;&nbsp;
					<input type="radio"  class="jinrong" name="r1"  id="r1two">禁用
                  	<input type="hidden"  id="statuss">
                </div>
           
          
              </form>
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
                <p>你确定删除角色吗？</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-outline" id="update5">确定</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
		<!--end-->
		  
	

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
   <jsp:include page="../include/footer.jsp" />

  <div class="control-sidebar-bg"></div>
</div>

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
<script src="${pageContext.request.contextPath}/statics/localjs/user/code.js"></script>
<script >
	function subss(){
		$("#formss").submit();
	}
	var path="http://localhost:8080/sl";
	$(function(){
		//自动生成编码：
		$("#buid").click(function(){
			var timeCode =addCode("role");
			$("#roleIds1").val(timeCode);
		});
		
		//固定
		$(".treeview").eq(0).addClass("menu-open");
		$(".treeview-menu").eq(0).addClass("open").addClass("showss");
		
		$("#r1one").click(function(){
			$("#statuss").val("1");
		});
		$("#r1two").click(function(){
			$("#statuss").val("0");
		});
		$("#r1one1").click(function(){
			$("#statuss1").val("1");
		});
		$("#r1two1").click(function(){
			$("#statuss1").val("0");
		});
		$("#update1").click(function(){
			var code =$(".minimal:checked").val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/role/query",//请求的url
				data:{roleId:code},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){
					$("#roleIds").val(data.roleId);
					$("#roleNames").val(data.roleName);
					$("#createuser").val(data.userCode);
					$("#statuss").val(data.roleStutas);
					if (data.roleStutas=="0") {
						$(".jinrong").eq(0).removeAttr("checked");
						$(".jinrong").eq(1).attr("checked","checked");
					} 
					$("#modal-success").modal();
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("出现异常！");
				}
			});  	
		});
		//修改
		$("#update2").click(function(){
			var $roleId=$("#roleIds").val();
			var $roleName=$("#roleNames").val();
			var create =$("#createuser").val();
			var status=$("#statuss").val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/role/update",//请求的url
				data:{roleId:$roleId,roleName:$roleName,userCode:create,roleStutas:status},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){
					$("#modal-success").modal("hide");
					if (data=="1") {
						$("#mess").html("修改成功！");
					}else{
						$("#mess").html("修改失败！");
					}
					$("#modal-alert").modal();
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("修改出现异常！");
				}
			});  	
		});
		
		$("#sure").click(function(){
			$("#modal-alert").modal("hide");
			setTimeout("subss()",1000);
		});
		
		$("#update3").click(function(){
			var $roleId1=$("#roleIds1").val();
			var $roleName1=$("#roleNames11").val();
			var create1 =$("#createuser1").val();
			var status1=$("#statuss1").val();
			if ($roleId1=="") {
				alert("角色编号不能为空！");
				return;
			}
			if ($roleName1=="") {
				alert("名称不能为空！");
				return;
			}
			if (create1=="") {
				alert("请重新登录！");
				return;
			}
			
			$.ajax({
				type:"post",//请求类型
				url:path+"/role/add",//请求的url
				data:{roleId:$roleId1,roleName:$roleName1,userCode:create1,roleStutas:status1},//请求参数
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
		//验证编码的唯一
		
		$("#roleIds1").blur(function(){
			var ids =$(this).val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/role/exist",//请求的url
				data:{roleId:ids},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){
					
					if (data=="1") {
						alert("编码已经存在！无法使用");
					}else{
						alert("编码可以使用！");
					}
					
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("添加出现异常！");
				}
			});  	
		});
		//删除
		$("#update5").click(function(){
			var codes =$(".minimal:checked").val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/role/del",//请求的url
				data:{roleId:codes},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){
					$("#modal-danger").modal("hide");
					if (data=="1") {
						$("#mess").html("删除成功！");
					}else if(data=="2"){
						$("#mess").html("角色名称已被使用，无法删除！");
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