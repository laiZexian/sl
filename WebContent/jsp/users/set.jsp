<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>商品套餐管理</title>
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
<div class="wrapper">

 
 <jsp:include page="../include/header.jsp" />
 
   <jsp:include page="../include/left.jsp" />

 
  <div class="content-wrapper">
   
    <section class="content-header">
      <h1>
        后台管理
        <small>商品套餐管理</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<!--begin-->
	<div class="row">
        <div class="col-md-12">
         <div class="box">
            <div class="box-header with-border">
				<a  class="btn btn-primary btn-sm " href="${pageContext.request.contextPath}/jsp/users/setadd.jsp">新增</a>&nbsp;&nbsp;
				<a  class="btn btn-success btn-sm " href="#" id="shows">修改</a>&nbsp;&nbsp;
				<button  class="btn btn-danger btn-sm " data-toggle="modal" data-target="#modal-danger">删除</button>&nbsp;&nbsp;
				<a class="btn btn-warning btn-sm "  href="#" id="update5">查看</a>&nbsp;&nbsp;
			  <!--选择框-->
              <div class="box-tools">
              <form action="${pageContext.request.contextPath}/sets/all" method="post" id="formss">
                <div class="input-group input-group-sm" style="width: 250px;">
                  <input type="text" name="setName" class="form-control pull-right" value="${setName }" placeholder="请输入商品套餐名称（支持模糊查询）....">

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
                  <th>编号</th>
				  <th>套餐名称</th>
                  <th>零售价（元）</th>
				  <th>优惠价（元）</th>
				  <th>剩余套餐数</th>
				  <th>状态</th>
				  <th>套餐类型</th>
                </tr>
                <c:forEach items="${pages.list }" var="pro"  varStatus="dd">
				<tr>
                  <td align="center" ><input type="radio" name="r1" class="minimal"  value="${pro.setId }"  <c:if test="${dd.index eq 0 }">checked</c:if>></td>
                  <td><b>${pro.setId }</b></td>
                  <td>${pro.setName }<c:if test="${ pro.setNum eq 0 }">&nbsp;&nbsp;&nbsp;<span style="color:red;"><i class="fa fa-exclamation-triangle"></i></span></c:if></td>
				  <td>${pro.markPrice }</td>
				  <td>${pro.prePrice }</td>
				  <td> <c:if test="${ pro.setNum ne 0 }">${pro.setNum }</c:if>
				   <c:if test="${ pro.setNum eq 0 }"><span class="label label-warning">0</span></c:if>
				  </td>
				 <!--  <td><input type="checkbox" class="min"  <c:if test="${ pro.stutas eq 1 }">checked</c:if>></td> -->
				 <td><c:if test="${ pro.stutas eq 1 }"><span class="label label-info">上架</span></c:if> 
				 <c:if test="${ pro.stutas eq 0 }"><span class="label label-danger">下架</span></c:if></td>
				  <td>
				  <c:if test="${ pro.setType eq 1 }">报单购货</c:if>
				  <c:if test="${ pro.setType eq 2 }">重消购货</c:if>
				  <c:if test="${ pro.setType eq 3 }">辅消购货</c:if>
				  </td>
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
                <li ><a href="${pageContext.request.contextPath}/sets/all?pageNo=${pages.currentPageNo-1 eq 0?1:pages.currentPageNo-1}">上一页</a></li>
                <li ><a href="${pageContext.request.contextPath}/sets/all">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/sets/all?pageNo=${pages.totalPageCount}">末页</a></li>
                <li id="two"><a href="${pageContext.request.contextPath}/sets/all?pageNo=${pages.currentPageNo+1 lt pages.totalPageCount?pages.currentPageNo+1:pages.totalPageCount }">下一页</a></li>
              </ul>
            </div>
        </div>
          
        </div>
       
		
		<!--alert-->
		
		<div class="modal modal-danger fade bs-example-modal-sm" id="modal-danger">
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
                <button type="button" class="btn btn-outline" id="update3">确定</button>
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
<script type="text/javascript">
	var path="http://localhost:8080/sl/";
	function sub(){
		$("#formss").submit();
	}
	$(function(){
		
		//固定
		$(".treeview").eq(0).addClass("menu-open");
		
		$(".treeview-menu").eq(0).addClass("open").addClass("showss");
		$(".treeview").eq(0).addClass("active");
		$("#update5").click(function(){
			var codes2 =$(".minimal:checked").val();
			
			location.href=path+"sets/one/2?setId="+codes2;
			//alert(codes2);
		});
		
		$("#update3").click(function(){
			var codes3 =$(".minimal:checked").val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/sets/del",//请求的url
				data:{setId:codes3},//请求参数
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
		//关闭提示框刷新页面
		$("#sure").click(function(){
			$("#modal-alert").modal("hide");
			setTimeout("sub()",200);
		});
		
		$("#shows").click(function(){
			var codes3 =$(".minimal:checked").val();
			location.href=path+"sets/one/1?setId="+codes3;
		});
		
		
	});
</script>
</body>
</html>