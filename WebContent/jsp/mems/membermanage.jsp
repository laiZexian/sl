<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SL会员商城 | 会员列表</title>
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
		<h1>会员列表</h1>  
	</section>
	<!-- Main content -->
	<section class="content container-fluid">
		<div class="box">
			<div class="box-header with-border">
				<button  class="btn btn-success btn-sm " data-toggle="modal" data-target="#modal-success" >修改</button>
				<button  class="btn btn-danger btn-sm " data-toggle="modal" data-target="#modal-danger">删除</button>
				<!--选择框-->
				<div class="box-tools">
					<div class="input-group input-group-sm" style="width: 250px;">
						<input type="text" name="table_search" class="form-control pull-right" placeholder="请输入用户名（支持模糊查询）....">
						<div class="input-group-btn">
							<button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
						</div>
					</div>
				</div>
			</div>
			<!-- /.box-header -->
            <div class="box-body">
				<table class="table table-bordered">
					<tr class="active">
						<th style="width: 70px" align="center">选择</th>
						<th>用户名</th>
						<th>角色</th>
						<th>会员类型</th>
						<th>推荐人用户名</th>
						<th>状态（启用/禁用）</th>
						<th>最后修改时间</th>
					</tr>
					<c:forEach items="${pager.list }" var="u">
						<tr>
							<td align="center" ><input type="radio" name="r1" class="minimal"  value="${u.userCode }" checked></td>
							<td>${u.userCode }</td>
							<td>${u.roleId }</td>
							<td>${u.member }</td>
							<td>${u.createCode }</td>
							<td><input type="checkbox" class="minimal" checked></td>
							<td>${u.modifyDate }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<!-- /.box-body -->
			<div class="box-footer clearfix">
				<ul class="pagination pagination-sm no-margin pull-right">
					<li><a href="${pageContext.request.contextPath}/memsq/showUserList">首页</a></li>
					<li><a href="${pageContext.request.contextPath}/memsq/showUserList?pageSize=${pager.currentPageNo==1?pager.currentPageNo:pager.currentPageNo-1  }">&laquo;</a></li>
					<li><a href="#">${pager.currentPageNo }</a></li>
					<li><a href="${pageContext.request.contextPath}/memsq/showUserList?pageSize=${pager.currentPageNo==pager.totalPageCount?pager.totalPageCount:pager.currentPageNo-1  }">&raquo;</a></li>
					<li><a href="${pageContext.request.contextPath}/memsq/showUserList?pageSize=${pager.totalPageCount  }">末页</a></li>
				</ul>
            </div>
        </div>
		<!--update-->
         <div class="modal modal-success fade" id="modal-success">
         <form action="${pageContext.request.contextPath}/user/update"  method="post" enctype="multipart/form-data"> 
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改用户</h4>
              </div>
              <div class="modal-body">
                <table class=" " style="color:#000;">
               	<tr>
               		<td>角色：</td>
               		<td><select name="roleId" id="roleIds">
	               		 	<option >请选择</option>
	            		 	<option value="sl_role01">会员</option>
	               		 	<option value="sl_role02">管理员</option>
	               		 	
	               		</select></td>
               		<td>会员类型：</td>
               		<td>
	               		 <select name="member" id="members">
	               		 	<option value="0">请选择</option>
	               		 	<option value="1">注册会员</option>
	               		 	<option value="2">消费会员</option>
	               		 	<option value="3">vip会员</option>
	               		 	<option value="4">加盟店</option>
	               		</select>
               		</td>
               	</tr>
               	<tr>
               		<td>用户名:</td>
               		<td><input type="text" name="userCode" id="userCodes" readonly style="color:blue;background:#eee;"/></td>
               		<td>姓名:</td>
               		<td><input type="text" name="realName" id="realNames"/></td>
               	</tr>
               	<tr>
               		<td>证件类型:</td>
               		<td><select name="cardType" id="cardTypes">
	               		 	<option>请选择</option>
	               		 	<option value="1">二代身份证</option>
	               		 	<option value="2">护照</option>
	               		 	<option value="3">军官证</option>
	               		</select></td>
               		<td>证件号码:</td>
               		<td><input type="text" name="cardNo" id="cardNos"/></td>
               	</tr>
               	<tr>
               		<td>收货国家（地区）</td>
               		<td><select name="country" id="countrys">
	               		 	<option value="0">请选择</option>
	               		 	<option value="1">中国</option>
	               		 	<option value="2">美国</option>
	               		 	<option value="3">日本</option>
	               		</select></td>
	
               		<td>移动电话</td>
               		<td><input type="text" name="telephone" id="telephones"/></td>
               	</tr>
               	<tr>
               		<td>电子邮件：</td>
               		<td><input type="text" name="email" id="emails" pattern="/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/"/></td>
               		<td>邮件编码：</td>
               		<td><input type="text" name="postCode" id="postCodes"/></td>
               	</tr>
               	<tr>
               		<td>联系电话：</td>
               		<td colspan="2"><input type="text" name="phone" id="phones"/></td>
               		<td>&nbsp;</td>
               	</tr>
               	<tr>
               		<td>收货地址：</td>
               		<td colspan="3"><textarea rows="3" cols="50" name="address" id="addresss"></textarea> </td>
               	</tr>
               		<tr>
               		<td>开户行:</td>
               		<td><select name="bank" id="banks">
	               		 	<option value="0">请选择</option>
	               		 	<option value="1">中国银行</option>
	               		 	<option value="2">中国工商银行</option>
	               		 	<option value="3">中国农业银行</option>
	               		</select></td>
               		<td>开户卡号:</td>
               		<td><input type="text" name="bankNo" id="bankNos"/></td>
               	</tr>
               	<tr>
               		<td>开户人:</td>
               		<td colspan="3"><input type="text" name="bankUser" id="bankUsers"/>
               		<!-- <input type="hidden" name="createCode" value="${userAdmin.userCode }" id=""/> -->
               		<input type="hidden" name="userStutas" value="0" id="userStutas"/></td>
               	</tr>
               	<tr>
               		<td colspan="4">上传身份证的正反面</td>
               	</tr>
               	<tr>
               		<td colspan="2">正面：<input type="file" name="attatch"/></td>
               		<td colspan="2">反面：<input type="file" name="attatch"/></td>
               	</tr>
               	<tr>
               		<td colspan="2">上传银行卡图片：</td>
               		<td colspan="2"><input type="file" name="attatch"/></td>
               	</tr> 
               </table>
              </div>
              <div class="modal-footer">
                <input type="submit" class="btn btn-primary pull-right" value="保存"/>
                <button type="button" class="btn btn-warning pull-right" data-dismiss="modal">关闭</button>&nbsp;&nbsp;
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          </form>
          <!-- /.modal-dialog -->
        </div>
		<!--alert-->
		<div class="modal modal-danger fade bs-example-modal-sm" id="modal-danger">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">提示：</h4>
					</div>
					<div class="modal-body">
						<p>是否删除？</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-outline pull-left" data-dismiss="modal">取消</button>
						<button type="button" class="btn btn-outline" id="del">确定</button>
					</div>
				</div>
			</div>
		</div>
    </section>
	<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<!-- Main Footer -->
	<jsp:include page="../include/footer.jsp" />
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
<script type="text/javascript">
var path = "http://localhost:8080/sl/";
$(function(){
	$("#del").click(function(){
		delUser();
	})
});
function delUser(){
	var userCode = $("input:radio:checked").val();
	$.post({
		url:path+"/memsq/delUser",
		data:{"userCode":userCode},
		success:function(data){
			if(data == "true"){
				location.href=path+"memsq/showUserList";
			}else{
				alert("失败");
			}
		}
	});
}
</script>
</body>
</html>