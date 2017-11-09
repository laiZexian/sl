<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="power.jsp" %>
<%--头部控制栏--%>
<header class="main-header">

    <!-- Logo -->
    <a href="#" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>SL</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>SL会员商城</b></span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
		  <li>
            <a href="${pageContext.request.contextPath}/jsp/index.jsp" ><i class="fa fa-envelope-o"></i>&nbsp;&nbsp;首页</a>
          </li>
		   <li>
            <a href="#" ><i class="fa fa-bell-o"></i>&nbsp;&nbsp;留言板</a>
          </li>
		  <li>
            <a href="${pageContext.request.contextPath}/user/loginout" ><i class="fa fa-flag-o"></i>&nbsp;&nbsp;退出</a>
          </li>
          <li>
            <a href="${pageContext.request.contextPath}/jsp/shops/ShoppingCart.jsp" ><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;购物车</a>
          </li>
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="${pageContext.request.contextPath}/statics/dist/img/30A58PICQcF_1024.jpg" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs">${userAdmin.userCode }</span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="${pageContext.request.contextPath}/statics/dist/img/30A58PICQcF_1024.jpg" class="img-circle" alt="User Image">

                <p>
                 ${userAdmin.userCode } - 欢迎登录SL会员商城
                  <small>2017年 10月 12日 </small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">留言板</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="${pageContext.request.contextPath}/jsp/mems/editselfpwd.jsp">修改密码</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="${pageContext.request.contextPath}/jsp/shops/ShoppingCart.jsp">购物车</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="${pageContext.request.contextPath}/user/loginout" class="btn btn-default btn-flat">重新登录</a>
                </div>
                <div class="pull-right">
                  <a href="${pageContext.request.contextPath}/user/loginout" class="btn btn-default btn-flat">注销</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <!--<li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>-->
		 
        </ul>
      </div>
    </nav>
  </header>