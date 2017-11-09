<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>SL会员商城系统登录页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/login/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/login/css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/login/css/component.css" />
<script src="${pageContext.request.contextPath}/statics/login/js/jquery-1.12.4.js"></script>
<script >
	$(function(){
		$("#btnn").click(function(){
			$("#forms").submit();
		});
	});
</script>
<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3>SL会员商城系统</h3>
						<form action="${pageContext.request.contextPath}/user/login" name="f" method="post" id="forms" autocomplete="off">
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="userCode" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入用户名..." value="">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="logPwd" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码...">
							</div>
							<div class="mb2">
								<a class="act-but submit" href="#" style="color: #FFFFFF" id="btnn">登录</a>
							</div>
							<div  >
								<div style="color:#fff;padding-left:130px;line-height:45px;">${message }</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script src="${pageContext.request.contextPath}/statics/login/js/TweenLite.min.js"></script>
		<script src="${pageContext.request.contextPath}/statics/login/js/EasePack.min.js"></script>
		<script src="${pageContext.request.contextPath}/statics/login/js/rAF.js"></script>
		<script src="${pageContext.request.contextPath}/statics/login/js/demo-1.js"></script>
		<div style="text-align:center;">
</div>
	</body>
</html>