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
  <title>留言管理</title>
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

  <!-- Google Font
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
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
        留言管理
        <small></small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
	
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab">会员留言管理</a></li>
              <li><a href="#tab_2" data-toggle="tab">管理员留言管理</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
						<!--start-->
							<div class="row">
								<div class="col-md-12 ">
								  <!-- DIRECT CHAT -->
								  <div class="box box-warning direct-chat direct-chat-warning">
									<div class="box-header with-border">
									  <h3 class="box-title">会员留言</h3>

									  <div class="box-tools pull-right">
										<span data-toggle="tooltip" title="3 New Messages" class="badge bg-yellow">3</span>
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
										</button>
										<button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Contacts"
												data-widget="chat-pane-toggle">
										  <i class="fa fa-comments"></i></button>
										</button>
									  </div>
									</div>
									<!-- /.box-header -->
									<div class="box-body">
									  <!-- Conversations are loaded here -->
									  <div class="direct-chat-messages">
										<!-- Message. Default to the left -->
										<div class="direct-chat-msg">
										  <div class="direct-chat-info clearfix">
											<span class="direct-chat-name pull-left">Alexander Pierce</span>
											<span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
										  </div>
										  <!-- /.direct-chat-info -->
										  <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image">
										  <!-- /.direct-chat-img -->
										  <div class="${pageContext.request.contextPath}/statics/direct-chat-text">
											Is this template really for free? That's unbelievable!
										  </div>
										  <!-- /.direct-chat-text -->
										</div>
										<!-- /.direct-chat-msg -->

										<!-- Message to the right -->
										<div class="direct-chat-msg right">
										  <div class="direct-chat-info clearfix">
											<span class="direct-chat-name pull-right">Sarah Bullock</span>
											<span class="direct-chat-timestamp pull-left">23 Jan 2:05 pm</span>
										  </div>
										  <!-- /.direct-chat-info -->
										  <img class="${pageContext.request.contextPath}/statics/direct-chat-img" src="${pageContext.request.contextPath}/statics/dist/img/user3-128x128.jpg" alt="message user image">
										  <!-- /.direct-chat-img -->
										  <div class="direct-chat-text">
											You better believe it!
										  </div>
										  <!-- /.direct-chat-text -->
										</div>
										<!-- /.direct-chat-msg -->

										<!-- Message. Default to the left -->
										<div class="direct-chat-msg">
										  <div class="direct-chat-info clearfix">
											<span class="direct-chat-name pull-left">Alexander Pierce</span>
											<span class="direct-chat-timestamp pull-right">23 Jan 5:37 pm</span>
										  </div>
										  <!-- /.direct-chat-info -->
										  <img class="${pageContext.request.contextPath}/statics/direct-chat-img" src="${pageContext.request.contextPath}/statics/dist/img/user1-128x128.jpg" alt="message user image">
										  <!-- /.direct-chat-img -->
										  <div class="direct-chat-text">
											Working with AdminLTE on a great new app! Wanna join?
										  </div>
										  <!-- /.direct-chat-text -->
										</div>
										<!-- /.direct-chat-msg -->

										<!-- Message to the right -->
										<div class="direct-chat-msg right">
										  <div class="direct-chat-info clearfix">
											<span class="direct-chat-name pull-right">Sarah Bullock</span>
											<span class="direct-chat-timestamp pull-left">23 Jan 6:10 pm</span>
										  </div>
										  <!-- /.direct-chat-info -->
										  <img class="${pageContext.request.contextPath}/statics/direct-chat-img" src="${pageContext.request.contextPath}/statics/dist/img/user3-128x128.jpg" alt="message user image">
										  <!-- /.direct-chat-img -->
										  <div class="direct-chat-text">
											I would love to.
										  </div>
										  <!-- /.direct-chat-text -->
										</div>
										<!-- /.direct-chat-msg -->

									  </div>
									  <!--/.direct-chat-messages-->

									  <!-- Contacts are loaded here -->
									  <div class="direct-chat-contacts">
										<ul class="contacts-list">
										  <li>
											<a href="#">
											  <img class="contacts-list-img" src="${pageContext.request.contextPath}/statics/dist/img/user1-128x128.jpg" alt="User Image">

											  <div class="contacts-list-info">
													<span class="contacts-list-name">
													  Count Dracula
													  <small class="contacts-list-date pull-right">2/28/2015</small>
													</span>
												<span class="contacts-list-msg">How have you been? I was...</span>
											  </div>
											  <!-- /.contacts-list-info -->
											</a>
										  </li>
										  <!-- End Contact Item -->
										  <li>
											<a href="#">
											  <img class="contacts-list-img" src="${pageContext.request.contextPath}/statics/dist/img/user7-128x128.jpg" alt="User Image">

											  <div class="contacts-list-info">
													<span class="contacts-list-name">
													  Sarah Doe
													  <small class="contacts-list-date pull-right">2/23/2015</small>
													</span>
												<span class="contacts-list-msg">I will be waiting for...</span>
											  </div>
											  <!-- /.contacts-list-info -->
											</a>
										  </li>
										  <!-- End Contact Item -->
										  <li>
											<a href="#">
											  <img class="contacts-list-img" src="${pageContext.request.contextPath}/statics/dist/img/user3-128x128.jpg" alt="User Image">

											  <div class="contacts-list-info">
													<span class="contacts-list-name">
													  Nadia Jolie
													  <small class="contacts-list-date pull-right">2/20/2015</small>
													</span>
												<span class="contacts-list-msg">I'll call you back at...</span>
											  </div>
											  <!-- /.contacts-list-info -->
											</a>
										  </li>
										  <!-- End Contact Item -->
										  <li>
											<a href="#">
											  <img class="contacts-list-img" src="${pageContext.request.contextPath}/statics/dist/img/user5-128x128.jpg" alt="User Image">

											  <div class="contacts-list-info">
													<span class="contacts-list-name">
													  Nora S. Vans
													  <small class="contacts-list-date pull-right">2/10/2015</small>
													</span>
												<span class="contacts-list-msg">Where is your new...</span>
											  </div>
											  <!-- /.contacts-list-info -->
											</a>
										  </li>
										  <!-- End Contact Item -->
										  <li>
											<a href="#">
											  <img class="contacts-list-img" src="${pageContext.request.contextPath}/statics/dist/img/user6-128x128.jpg" alt="User Image">

											  <div class="contacts-list-info">
													<span class="contacts-list-name">
													  John K.
													  <small class="contacts-list-date pull-right">1/27/2015</small>
													</span>
												<span class="contacts-list-msg">Can I take a look at...</span>
											  </div>
											  <!-- /.contacts-list-info -->
											</a>
										  </li>
										  <!-- End Contact Item -->
										  <li>
											<a href="#">
											  <img class="contacts-list-img" src="${pageContext.request.contextPath}/statics/dist/img/user8-128x128.jpg" alt="User Image">

											  <div class="contacts-list-info">
													<span class="contacts-list-name">
													  Kenneth M.
													  <small class="contacts-list-date pull-right">1/4/2015</small>
													</span>
												<span class="contacts-list-msg">Never mind I found...</span>
											  </div>
											  <!-- /.contacts-list-info -->
											</a>
										  </li>
										  <!-- End Contact Item -->
										</ul>
										<!-- /.contatcts-list -->
									  </div>
									  <!-- /.direct-chat-pane -->
									</div>
									<!-- /.box-body -->
									<div class="box-footer">
									  <form action="#" method="post">
										<div class="input-group">
										  <input type="text" name="message" placeholder="Type Message ..." class="form-control">
										  <span class="input-group-btn">
												<button type="button" class="btn btn-warning btn-flat">Send</button>
											  </span>
										</div>
									  </form>
									</div>
								  </div>
								</div>
							</div>	
              </div>
             
              <div class="tab-pane" id="tab_2">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">
							<div class="box-body">
							<button class="btn btn-primary "  id="showsdd">
							查看
							</button>
							<button class="btn btn-success " id="showstt" >
							回复
							</button>
							<button class="btn btn-danger " data-toggle="modal" data-target="#modal001">
							删除
							</button>
							</div>
						</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
						<i class="fa fa-minus"></i></button>
						</div>
				</div>
				
				
				<table  class="table table-bordered">
					<tr class="active">
						<th>选择</th>
						<th>留言会员账号</th>
						<th>留言内容</th>
						<th>状态（已回复/未回复）</th>
						<th>留言时间</th>
					</tr>
					<c:forEach items="${noList}" var="vip">
					<tr>
						<td align="center"><input type="radio" class="min"  name="rd" value="${vip.cmId }" checked></td>
						<td>${vip.createCode}</td>
						<td>${vip.cmContent}</td>
						<td >
						<c:if test="${vip.stutas eq 0}"><span style="color:red;">未回复</span></c:if>
						<c:if test="${vip.stutas eq 1}">回复</c:if>
						</td>
						<td><fmt:formatDate value="${vip.replyDate }"/></td>
					</tr>
				</c:forEach>
				</table>
				</div>

				<div class="box-footer">
					<p style="color:red">注：回复留言后状态自动改为 “已回复”；</p>
				<ul class="pagination pull-right">
					<!--disabled禁用状态-->
					<li clss="disabled"><a href="#">&laquo;</a></li>
					<!--active当前页-->
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
				</div>
        		<div class="modal modal-default fade bs-example-modal-sm" id="modal001">
        		<div class="modal-dialog modal-sm">
            	<div class="modal-content">
              	<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><i class="fa fa-bell-o"></i>提示：</h4>
              </div>
              <div class="modal-body">
                <p>确定删除该留言吗?</p>
              </div>
              <div class="modal-footer ">
                <button type="button" class="btn btn-success " id="delss">确定</button>
                <button type="button" class="btn btn-success " data-dismiss="modal">取消</button>
			              </div>
			            </div>
			        </div>
			    </div>
		<div class="modal modal-default fade bs-example-modal-sm" id="modal002">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><i class="fa fa-bell-o"></i>回复留言查看</h4>
              </div>
              <div class="modal-body1">
              		<p id="userName1"></p>
              		<p id="content1"></p>
              		<p id="times1"></p>
              		<p>-----------------------------------------------------</p>
              		<p id="reply1"></p>
              		<p id="datetime1"></p>
              </div>
              <div class="modal-footer ">
                <button type="button" class="btn btn-success " data-dismiss="modal">关闭</button>
              </div>
	            </div>
	        </div>
	    </div>	  
	    	  
    		  	<div class="modal modal-default fade bs-example-modal-sm" id="modal003">
        		<div class="modal-dialog modal-sm">
            	<div class="modal-content">
              	<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><i class="fa fa-bell-o"></i>回复留言:</h4>
              </div>
              <div class="modal-body">
                <p id="userName"></p>
              		<p id="content"></p>
              		<p id="times"></p>
              		<p>-----------------------------------------------------</p>
              		<p id="reply"></p>
              </div>
              <div class="modal-footer ">
                <button type="button" class="btn btn-success " >保存</button>
                <button type="button" class="btn btn-success " data-dismiss="modal">关闭</button>
			              </div>
			            </div>
			        </div>
			    </div>	
					</div>               
	              </div>
	            </div>
	          </div>  
	        </div>		
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
<script type="text/javascript">
	var path="http://localhost:8080/sl";
	$(function(){
		$("#delss").click(function(){
			alert("删除成功!");
			var id=$(".min:checked").val();
			location.href=path+"/Commentsz/deleteComments?cmId="+id;
		});
				
		$("#showsdd").click(function(){
			var ids=$(".min:checked").val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/Commentsz/getOne",//请求的url
				data:{cmId:ids},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){//data：返回数据（json对象）
					$("#userName1").html("留言人:"+data.createCode);
					$("#content1").html("留言内容:"+data.cmContent);
					$("#times1").html("留言时间:"+data.createDate);
					$("#reply1").html("回复:"+data.replyContent);
					$("#datetime1").html("回复时间:"+data.replyDate);
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("加载数据失败！");
				}
			});  
			$("#modal002").modal();
		});
		$("#showstt").click(function(){
			var ids=$(".min:checked").val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/Commentsz/getOne",//请求的url
				data:{cmId:ids},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){//data：返回数据（json对象）
					$("#userName").html("留言人:"+data.createCode);
					$("#content").html("留言内容:"+data.cmContent);
					$("#times").html("留言时间:"+data.createDate);
					$("#reply").html("回复:"+data.replyContent);
					
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("加载数据失败！");
				}
			});  
			$("#modal003").modal();
		});
	});
	
	
</script>
</body>
</html>