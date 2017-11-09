<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>商品添加</title>
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
          <button type="button" class="btn btn-outline pull-left" id="sure">回到商品列表</button>
          <button type="button" class="btn btn-outline pull-left" id="sure2" data-dismiss="modal">继续添加？</button>
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
        <small>添加商品</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<!--start-->
		<div class="row">
			<div class="col-md-8 col-md-offset-1">
				<div class="box box-solid">
					<div class="box-header with-border">
					  <i class="fa fa-text-width"></i>
					  <h3 class="box-title"></h3>
					  
					  <div class="box-tools">
             
                    	<button type="button" class="btn btn-default" id="build"><i class="fa fa-plus-square" style="color:blue"></i></button>
              
             		 </div>
					  
					</div>
					<!-- /.box-header -->
					<div class="box-body">
			<form class="form-horizonta" role="form">
							<div class="form-group row">
								<span class="col-md-3 text-right" >商品名称：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入商品名称..." id="names" value="商品"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >商品编号：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入商品编号..." id="proIds"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >市场价：</span>
								<div class="col-md-5"><input type="number" class="form-control" placeholder="请输入市场价..." id="markPrices" min="0"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >优惠价：</span>
								<div class="col-md-5"><input type="number" class="form-control" placeholder="请输入优惠价..." id="prePrices" min="0"></div>
								<span class="col-md-4" style="color:red;line-height:32px;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >库存：</span>
								<div class="col-md-5"><input type="number" class="form-control" placeholder="请输入库存..." id="numss" min="0" value="1"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<datalist id="datalist">
									<option value="瓶"></option>
									<option value="件"></option>
									<option value="袋"></option>
									<option value="小件"></option>
									<option value="盒"></option>
								</datalist>
								<span class="col-md-3 text-right" >单位：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入单位..." id="units" list="datalist"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >状态：</span>
								<div class="col-md-5"><input type="radio" name="rd" id="rdone1" checked>上架&nbsp;&nbsp;&nbsp; <input type="radio" name="rd" id="rdone2">下架 </div>
								<input type="hidden" id="statuss" value="1">
								<span class="col-md-4" style="color:red;"></span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >商品规格：</span>
								<div class="col-md-8"><textarea class="form-control" rows="4" placeholder="请输入商品规格 ..." id="standards"></textarea></div>
								<span class="col-md-1" style="color:red;"></span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >商品说明：</span>
								<div class="col-md-8"><textarea class="form-control" rows="4" placeholder="请输入商品说明 ..." id="specs"></textarea></div>
								<span class="col-md-1" style="color:red;"></span>
							</div>
					  
					</div>
					
			    </div>
			 
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-md-offset-4">
				<input type="button" class="btn btn-success" id="adds" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="javascript:window.history.back();" class="btn btn-primary">返回</a>
			</div>
			</form>
		</div>
		
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
<script src="${pageContext.request.contextPath}/statics/localjs/user/code.js"></script>
<script>
	var path="http://localhost:8080/sl";
	$(function(){
		//自动生成编码：
		$("#build").click(function(){
			var timeCode =addCode("F");
			$("#proIds").val(timeCode);
		});
		//固定
		$(".treeview").eq(0).addClass("menu-open");
		$(".treeview-menu").eq(0).addClass("open").addClass("showss");
		$("#rdone2").click(function(){
			$("#statuss").val("0");
		});
		$("#rdone1").click(function(){
			$("#statuss").val("1");
		});
		$("#adds").click(function(){
			var $names =$("#names").val();
			var $proId =$("#proIds").val();
			var $markPrices =$("#markPrices").val();
			var $prePrices =$("#prePrices").val();
			var $numss =$("#numss").val();
			var $units =$("#units").val();
			var $statuss =$("#statuss").val();
			var $standards =$("#standards").val();
			var $specs =$("#specs").val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/pro/add",//请求的url
				data:{proId:$proId,proName:$names,markPrice:$markPrices,
					prePrice:$prePrices,proCount:$numss,unit:$units,
					stutas:$statuss,standard:$standards,spec:$specs},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){
					
					if (data=="1") {
						$("#mess").html("添加成功！请选择下一步操作！");
					
					}else{
						$("#mess").html("添加失败！请选择下一步操作！");
					}
					$("#modal-alert").modal();
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("提交出现异常！");
				}
			});  	
		});
		//继续操作(回到商品列表)
		$("#sure").click(function(){
			location.href="http://localhost:8080/sl/pro/queryall";
		});
		$("#sure2").click(function(){
			location.reload() ;
		});
		//验证编码
		$("#proIds").blur(function(){
			var codess=$(this).val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/pro/exist",//请求的url
				data:{proId:codess},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){
					
					if (data=="1") {
						$(this).parent().next().html("编码已存在，无法使用！");
						alert("编码已存在，无法使用！");
					
					}else{
						$(this).parent().next().html("*");
					}
					
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("提交出现异常！");
				}
			});  	
		});
	});
</script>
</body>
</html>