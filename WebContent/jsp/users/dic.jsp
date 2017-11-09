<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>数据字典</title>
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
	input{
		border-radius: 10px;
	}
  </style>
</head>

<body class="hold-transition skin-blue sidebar-mini">
       <!--add-->
        <div class="modal modal-primary fade bs-example-modal-sm" id="modal-primary">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加数据字典</h4>
              </div>
              <div class="modal-body">
               
                <!-- text input -->
                <div class="form-group">
                 
                  <input type="text" class="form-control" placeholder="请输入类型..."  id="typeadd1" ispass="yes">
                </div>
                <div class="form-group">
                  
                  <input type="text" class="form-control" placeholder="请输入名称 ..." id="nameadd1" ispass="yes">
                </div>
				<div class="form-group">
                 
                  <input type="text" class="form-control" placeholder="请输入编码 ..." id="codeadd1" ispass="yes">
                </div>
                <div class="form-group">
                  
                  <input type="text" class="form-control" placeholder="请输入数据值 ..." id="valueadd1" ispass="yes">
                </div>
                <!-- textarea -->
                <div class="form-group">
                  <label>描述：</label>
                  <textarea class="form-control" rows="3" placeholder="请输入描述 ..." id="specadd1" ispass="yes"></textarea>
                </div>
              
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left"  id="update3">保存</button>
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
                <h4 class="modal-title">修改数据字典</h4>
              </div>
              <div class="modal-body">
               <form >
                <!-- text input -->
                <div class="form-group">
                 
                  <input type="text" class="form-control" placeholder="请输入类型..."  id="typeadd">
                </div>
                <div class="form-group">
                  
                  <input type="text" class="form-control" placeholder="请输入名称 ..."  id="nameadd">
                </div>
				<div class="form-group">
                 
                  <input type="text" class="form-control" placeholder="请输入编码 ..."   id="codeadd" disabled>
                </div>
                <div class="form-group">
                  
                  <input type="text" class="form-control" placeholder="请输入数据值 ..."  id="valueadd">
                </div>
                <!-- textarea -->
                <div class="form-group">
                  <label>描述：</label>
                  <textarea class="form-control" rows="3" placeholder="请输入描述 ..." id="specadd" ></textarea>
                </div>
              </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left"  id="update2">保存</button>
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
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal" >取消</button>
                <button type="button" class="btn btn-outline" id="update4">确定</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        
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
        <small>数据字典</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<!--begin-->
	<div class="row">
        <div class="col-md-12">
         <div class="box">
            <div class="box-header with-border">
				<button  class="btn btn-primary btn-sm " id="add">新增</button>&nbsp;&nbsp;
				<button  class="btn btn-success btn-sm " id="update" />修改</button>&nbsp;&nbsp;
				<button  class="btn btn-danger btn-sm " data-toggle="modal" data-target="#modal-danger">删除</button>&nbsp;
			   
			  <!--选择框-->
              <div class="box-tools">
              <form action="${pageContext.request.contextPath}/dictionary/queryDics" method="post" id="upFrom">
                <div class="input-group input-group-sm" style="width: 250px;">
                  <input type="text" name="dicType" class="form-control pull-right" placeholder="请输入类型名（支持模糊查询）...." value="${dicType }">

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
                  <th>类型</th>
                  <th>名称</th>
				  <th>编码</th>
				  <th>数据值</th>
				 
                </tr>
                
                <c:forEach items="${pages.list }" var="dic"  varStatus="r">
                <tr>
                  <td align="center" ><input type="radio" name="r1" class="minimal" value="${dic.dicCode }" <c:if test="${r.count eq 1 }">checked</c:if>><input type="hidden" name="dicCode" value="${dic.dicType }"></td>
                  <td>${dic.dicType }</td>
                  <td>${dic.dicName }</td>
				  <td>${dic.dicCode }</td>
				  <td>${dic.dicValue }</td>
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
                <li ><a href="${pageContext.request.contextPath}/dictionary/queryDics?pageNo=${pages.currentPageNo-1}">上一页</a></li>
                <li ><a href="${pageContext.request.contextPath}/dictionary/queryDics">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/dictionary/queryDics?pageNo=${pages.totalPageCount}">末页</a></li>
                <li id="two"><a href="${pageContext.request.contextPath}/dictionary/queryDics?pageNo=${pages.currentPageNo+1}">下一页</a></li>
              </ul>
            </div>
        </div>
          
        </div>
      

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
//刷新按钮事件
function sub(){
$("#upFrom").submit();
}
//项目路径
var path="http://localhost:8080//sl";
	$(function(){
		//固定
		$(".treeview").eq(0).addClass("menu-open");
		$(".treeview-menu").eq(0).addClass("open").addClass("showss");
		var dicCode1="";
		//弹出添加的弹框
		$("#add").click(function(){
			
			$("#modal-primary").modal();
		});
		//获得数据字典的信息
		$("#update").click(function(){
			dicCode1 =$(".minimal:checked").val();//获得当前选中的类型编码
			$.ajax({
				type:"post",//请求类型
				url:path+"/dictionary/queryDic",//请求的url
				data:{dicCode:dicCode1},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){
					$("#typeadd").val(data.dicType);
					$("#nameadd").val(data.dicName);
					$("#codeadd").val(data.dicCode);
					$("#valueadd").val(data.dicValue);
					$("#specadd").val(data.dicSpec);
					$("#modal-success").modal();
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("加载数据失败！");
				}
			});  
			
		});
		//提交修改的数据字典信息
		$("#update2").click(function(){
			//alert("确定提交");
			//$("#modal-success").modal("hide");
			var $type=$("#typeadd").val();
			var $name=$("#nameadd").val();
			var $code=$("#codeadd").val();
			var $value= $("#valueadd").val();
			var $spec=$("#specadd").val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/dictionary/updateDic",//请求的url
				data:{dicCode:$code,dicType:$type,dicName:$name,dicValue:$value,dicSpec:$spec},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){
					$("#modal-success").modal("hide");
					if (data.mess=="1") {
						
						$("#mess").html("修改成功！");
					}else{
						$("#mess").html("修改失败！");
					}
					$("#modal-alert").modal();
						
					
					
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("请求失败！");
				}
			});  
					
		});
		//刷新页面
		$("#sure").click(function(){
			$("#modal-alert").modal("hide");
			setTimeout("sub()", 1000 );
			
		});
		//添加数据字典的信息
		$("#update3").click(function(){
			//获得当前的所有信息
			var $type1=$("#typeadd1").val();
			var $name1=$("#nameadd1").val();
			var $code1=$("#codeadd1").val();
			var $value1= $("#valueadd1").val();
			var $spec1=$("#specadd1").val();
			if ($type1=="") {
				alert("类型名称不能为空")
				return;
			}
			if ($name1=="") {
				alert("名称不能为空")
				return;
			}
			if ($code1=="") {
				alert("编码不能为空")
				return;
			}
			if ($value1=="") {
				alert("值不能为空")
				return;
			}
			//调用ajax添加数据
			$.ajax({
				type:"post",//请求类型
				url:path+"/dictionary/addDic",//请求的url
				data:{dicCode:$code1,dicType:$type1,dicName:$name1,dicValue:$value1,dicSpec:$spec1},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){
					$("#modal-primary").modal("hide");
					if (data=="1") {
						
						$("#mess").html("添加成功！");
					}else{
						$("#mess").html("修改失败！");
					}
					$("#modal-alert").modal();
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("添加失败！");
				}
			});  
		});
		
		//验证编码的唯一
		$("#codeadd1").blur(function(){
			var code =$(this).val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/dictionary/send",//请求的url
				data:{dicCode:code},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){
					if (data=="true") {
						$(this).attr("ispass","no");
						alert("编码已存在！");
					}else {
						$(this).attr("ispass","yes");
						alert("编码可以使用！");
					}
					
					
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("请求失败！");
				}
			});  		
		});
		//删除数据
		$("#update4").click(function(){
			dicCode1 =$(".minimal:checked").val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/dictionary/delDic",//请求的url
				data:{dicCode:dicCode1},//请求参数
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