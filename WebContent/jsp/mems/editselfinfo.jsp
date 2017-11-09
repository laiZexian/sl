<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SL会员商城 | 修改本人资料</title>
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
		<h1>修改本人资料</h1>  
	</section>
	<!-- Main content -->
	<section class="content container-fluid">
		<!-- Horizontal Form -->
		<div class="box">
        	<div class="box-header with-border">
            	<h3 class="box-title" id="date">申请日期：2017-11-08</h3>
			</div>
            <!-- /.box-header -->
            <!-- form start -->
			<form class="form-horizontal" action="${pageContext.request.contextPath}/memsq/updateUserInfo" method="post">
				<div class="box-body">
		    		<div class="form-group">
		      			<label class="col-sm-2 control-label">用户名:</label>
		      			<label class="control-label">${userAdmin.userCode }</label>
		      			<input type="hidden" name="userCode" value="${userAdmin.userCode }" >
		    		</div>
			    	<div class="form-group">
			    		<label class="col-sm-2 control-label">真实姓名:</label>
			      		<div class="col-sm-4">
			        		<input type="text" class="form-control" name="realName" value="${userAdmin.realName }">
			      		</div>
					</div>
					<div class="form-group">
			      		<label class="col-sm-2 control-label">证件类型:</label>
			      		<div class="col-sm-4">
			        		<select class="form-control select2" style="width: 100%;" name="cardType">
			                	<c:forEach items="${cardTypeList }" var="d">
				                	<c:if test="${userAdmin.cardType == d.dicValue }">
				                		<option value="${d.dicValue }" selected>${d.dicName }</option>
				                	</c:if>
				                	<c:if test="${userAdmin.cardType  != d.dicValue }">
				                		<option value="${d.dicValue }" >${d.dicName }</option>
				                	</c:if>
			                	</c:forEach>
			                </select>
			      		</div>
			    	</div>
			    	<div class="form-group">
			    		<label class="col-sm-2 control-label">证件号码:</label>
			      		<div class="col-sm-4">
			        		<input type="text" class="form-control" name="cardNo" value="${userAdmin.cardNo }">
			      		</div>
			      	</div>
			    	<div class="form-group">
			      		<label class="col-sm-2 control-label">联系电话:</label>
			      		<div class="col-sm-4">
			        		<input type="text" class="form-control" id="phone" value="${userAdmin.phone }">
			      		</div>
			    	</div>
			    	<div class="form-group">
			      		<label class="col-sm-2 control-label">移动电话:</label>
			      		<div class="col-sm-4">
			        		<input type="text" class="form-control" id="telephone" value="${userAdmin.telephone }">
			      		</div>
			    	</div>
			    	<div class="form-group">
			      		<label class="col-sm-2 control-label">电子邮件:</label>
			      		<div class="col-sm-4">
			        		<input type="text" class="form-control" id="email" value="${userAdmin.email }">
			      		</div>
			    	</div>
			    	<div class="form-group">
			      		<label class="col-sm-2 control-label">收货地址:</label>
			     		<div class="col-sm-7">
			        		<input type="text" class="form-control" id="address" value="${userAdmin.address }">
			      		</div>
			    	</div>
			    	<div class="form-group">
			      		<label class="col-sm-2 control-label">邮政编码:</label>
			      		<div class="col-sm-3">
			        		<input type="text" class="form-control" id="postCode" value="${userAdmin.postCode }">
			      		</div>
			    	</div>
			    	<div class="form-group">
			      		<label class="col-sm-2 control-label">收货国家(地区):</label>
			      		<div class="col-sm-4">
			        		<select class="form-control select2" style="width: 100%;" name="country" required="required" >
			                	<c:forEach items="${countryList }" var="d">
			                		<c:if test="${userAdmin.country == d.dicValue }">
				                		<option value="${d.dicValue }" selected>${d.dicName }</option>
				                	</c:if>
				                	<c:if test="${userAdmin.country  != d.dicValue }">
				                		<option value="${d.dicValue }" >${d.dicName }</option>
				                	</c:if>
			                	</c:forEach>
			                </select>
			      		</div>
			    	</div>
			    	<div class="form-group">
			      		<label class="col-sm-2 control-label">开户行:</label>
			      		<div class="col-sm-4">
			        		<select class="form-control select2" style="width: 100%;" name="bank" required="required" >
			                	<c:forEach items="${bankList }" var="d">
			                		<c:if test="${userAdmin.bank == d.dicValue }">
				                		<option value="${d.dicValue }" selected>${d.dicName }</option>
				                	</c:if>
				                	<c:if test="${userAdmin.bank  != d.dicValue }">
				                		<option value="${d.dicValue }" >${d.dicName }</option>
				                	</c:if>
			                	</c:forEach>
			                </select>
			      		</div>
			    	</div>
			    	<div class="form-group">
			      		<label class="col-sm-2 control-label">开户人:</label>
			     		<div class="col-sm-4">
			        		<input type="text" class="form-control" id="bankUser" value="${userAdmin.bankUser }">
			      		</div>
			    	</div>
			    	<div class="form-group">
			      		<label class="col-sm-2 control-label">开户卡号:</label>
			     		<div class="col-sm-4">
			        		<input type="text" class="form-control" id="bankNo" value="${userAdmin.bankNo }">
			      		</div>
			    	</div>
			    	<p>&nbsp;</p>
			    	<div class="form-group">
						<label class="col-sm-2 control-label">上传身份证图片(正反面):</label>
			     		<div class="col-sm-4">
			        		<input type="text" class="form-control" id="idcardPic" placeholder="上传身份证图片(正反面)">
			      		</div>
			      		<img src="${pageContext.request.contextPath}\statics\login\img\u132.png" >
			    		<img src="${pageContext.request.contextPath}\statics\login\img\u132.png" >
			  		</div>
			  		<div class="form-group">
			    		<label class="col-sm-2 control-label">上传银行卡图片:</label>
			   			<div class="col-sm-4">
			      			<input type="text" class="form-control" id="inputPassword3" placeholder="上传银行卡图片">
			    		</div>
			    		<img src="${pageContext.request.contextPath}\statics\login\img\u150.png" >
			  		</div>
			  		<div class="form-group">
			    		<label class="col-sm-3 control-label">推荐人用户名：(系统自动带出)</label>
			  		</div>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					<div class="col-sm-offset-2">
			  			<button type="submit" class="btn btn-info">保存</button>
					</div>
				</div>
				<!-- /.box-footer -->
			</form>
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
<!-- js -->
<script src="${pageContext.request.contextPath}/statics/localjs/mem/editselfinfo.js"></script>
</body>
<script type="text/javascript">
var update = '<%=request.getAttribute("update")%>' ;
if(update==1){
	alert("修改成功");
}
</script>
</html>