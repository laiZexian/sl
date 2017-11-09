<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--左侧控制栏--%>
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="${pageContext.request.contextPath}/statics/dist/img/30A58PICQcF_1024.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>${userAdmin.userCode }</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> 角色:${userAdmin.role.roleName }</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="${pageContext.request.contextPath}/fmt/ser" method="post" class="sidebar-form">
        <div class="input-group">
        
        <datalist id="dataLists">
        	<option value="用户管理"></option>
        	<option value="角色管理"></option>
        	<option value="权限管理"></option>
        	<option value="商品管理"></option>
        	<option value="商品套餐管理"></option>
        	<option value="基础信息"></option>
        	<option value="数据字典"></option>
        	<option value="注册会员"></option>
        	<option value="新会员管理"></option>
        	<option value="修改本人资料"></option>
        	<option value="修改本人密码"></option>
        	<option value="汇款充值"></option>
        	<option value="基本账户"></option>
        	<option value="消费账户"></option>
        	<option value="内部转账"></option>
        	<option value="申请提现"></option>
        	<option value="提现明细"></option>
        	<option value="保单购货"></option>
        	<option value="确认激活"></option>
        	<option value="重消购物"></option>
        	<option value="辅消购货"></option>
        	<option value="购货管理"></option>
        	<option value="奖励查询"></option>
        	<option value="推荐查询"></option>
        	<option value="区域查询"></option>
        	<option value="操作须知"></option>
        	<option value="公告管理"></option>
        	<option value="资讯管理"></option>
        	<option value="下载中心"></option>
        	<option value="留言管理"></option>
        </datalist>
          <input type="text" name="fmtName" class="form-control" placeholder="输入关键字..." list="dataLists"  value="${names }">
          <span class="input-group-btn">
              <button type="submit"  id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">菜单</li>
        <!-- Optionally, you can add icons to the links -->
		<li class="treeview">
          <a href="#"><i class="fa fa-chrome"></i> <span>后台管理</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
         <c:if test="${userAdmin.role.roleInfo['1'].stutas eq 1 }" >
         	<li><a href="${pageContext.request.contextPath}/user/all"><i class="fa fa-circle-o"></i>用户管理</a></li>
         </c:if> 
          <c:if test="${userAdmin.role.roleInfo['2'].stutas eq 1 }" >
         	<li><a href="${pageContext.request.contextPath}/role/queryalls"><i class="fa fa-circle-o"></i>角色管理</a></li>
         </c:if>
          <c:if test="${userAdmin.role.roleInfo['3'].stutas eq 1 }" >
         	<li><a href="${pageContext.request.contextPath}/power/all"><i class="fa fa-circle-o"></i>权限管理</a></li>
         </c:if>
          <c:if test="${userAdmin.role.roleInfo['4'].stutas eq 1 }" >
         	<li><a href="${pageContext.request.contextPath}/pro/queryall"><i class="fa fa-circle-o"></i>商品管理</a></li>
         </c:if>
          <c:if test="${userAdmin.role.roleInfo['5'].stutas eq 1 }" >
         <li><a href="${pageContext.request.contextPath}/sets/all"><i class="fa fa-circle-o"></i>商品套餐管理</a></li>
         </c:if>
          <c:if test="${userAdmin.role.roleInfo['6'].stutas eq 1 }" >
         <li><a href="${pageContext.request.contextPath}/para/queryall"><i class="fa fa-circle-o"></i>基础信息</a></li>
         </c:if>
           <c:if test="${userAdmin.role.roleInfo['7'].stutas eq 1 }" >
         <li><a href="${pageContext.request.contextPath}/dictionary/queryDics"><i class="fa fa-circle-o"></i>数据字典</a></li>
         </c:if>
          </ul>
        </li>
		<li class="treeview">
          <a href="#"><i class="fa  fa-male"></i> <span>会员管理</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
          	<c:if test="${userAdmin.role.roleInfo['8'].stutas eq 1 }" >
            <li><a href="${pageContext.request.contextPath}/jsp/mems/signinmember.jsp"><i class="fa fa-circle-o"></i>注册新会员</a></li>
            </c:if>
            <c:if test="${userAdmin.role.roleInfo['9'].stutas eq 1 }" >
            <li><a href="${pageContext.request.contextPath}/memsq/showUserList"><i class="fa fa-circle-o"></i>新会员管理</a></li>
            </c:if>
            <c:if test="${userAdmin.role.roleInfo['10'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/memsq/updateUser"><i class="fa fa-circle-o"></i>修改本人资料</a></li>
			</c:if>
			<c:if test="${userAdmin.role.roleInfo['11'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/jsp/mems/editselfpwd.jsp"><i class="fa fa-circle-o"></i>修改本人密码</a></li>
			</c:if>
          </ul>
        </li>
		<li class="treeview"> 
          <a href="#"><i class="fa fa-bank"></i> <span>电子银行</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
          	<c:if test="${userAdmin.role.roleInfo['12'].stutas eq 1 }" >
            <li><a href="${pageContext.request.contextPath}/jsp/banks/send.jsp"><i class="fa fa-circle-o"></i>汇款充值</a></li>
            </c:if>
             <c:if test="${userAdmin.role.roleInfo['13'].stutas eq 1 }" >
            <li><a href="${pageContext.request.contextPath}/banksq/showCostInfoList"><i class="fa fa-circle-o"></i>基本账户</a></li>
            </c:if>
             <c:if test="${userAdmin.role.roleInfo['14'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/banksq/showCostInfoList2"><i class="fa fa-circle-o"></i>消费账户</a></li>
			</c:if>
			 <c:if test="${userAdmin.role.roleInfo['15'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/jsp/banks/toMoney.jsp"><i class="fa fa-circle-o"></i>内部转账</a></li>
			</c:if>
			 <c:if test="${userAdmin.role.roleInfo['16'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/jsp/banks/cash.jsp"><i class="fa fa-circle-o"></i>申请提现</a></li>
			</c:if>
			 <c:if test="${userAdmin.role.roleInfo['17'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/banksq/showCashInfoList"><i class="fa fa-circle-o"></i>提现明细</a></li>
			</c:if>			
          </ul>
        </li>
		<li class="treeview">
          <a href="#"><i class="fa fa-briefcase"></i> <span>购物管理</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
          	<c:if test="${userAdmin.role.roleInfo['18'].stutas eq 1 }" >
            <li><a href="${pageContext.request.contextPath}/jsp/shops/DeclarationForPurchase.jsp"><i class="fa fa-circle-o"></i>保单购货</a></li>
            </c:if>
            <c:if test="${userAdmin.role.roleInfo['19'].stutas eq 1 }" >
            <li><a href="${pageContext.request.contextPath}/show"><i class="fa fa-circle-o"></i>确认激活</a></li>
            </c:if>
            <c:if test="${userAdmin.role.roleInfo['20'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/showProSet"><i class="fa fa-circle-o"></i>重消购物</a></li>
			</c:if>
			<c:if test="${userAdmin.role.roleInfo['21'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/jsp/shops/AssistPurchase.jsp"><i class="fa fa-circle-o"></i>辅消购货</a></li>
			</c:if>
			<c:if test="${userAdmin.role.roleInfo['22'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/showOrder"><i class="fa fa-circle-o"></i>购货管理</a></li>
			</c:if>
          </ul>
        </li>
		<li class="treeview">
          <a href="#"><i class="fa fa-calendar"></i> <span>信息查询</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
          	<c:if test="${userAdmin.role.roleInfo['23'].stutas eq 1 }" >
            <li><a href="${pageContext.request.contextPath}/jsp/querys/RewardQuery.jsp"><i class="fa fa-circle-o"></i>奖励查询</a></li>
            </c:if>
            <c:if test="${userAdmin.role.roleInfo['24'].stutas eq 1 }" >
            <li><a href="${pageContext.request.contextPath}/jsp/querys/RecommendQuery.jsp"><i class="fa fa-circle-o"></i>推荐查询</a></li>
            </c:if>
            <c:if test="${userAdmin.role.roleInfo['25'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/jsp/querys/"><i class="fa fa-circle-o"></i>区域查询</a></li>
			</c:if>
			<c:if test="${userAdmin.role.roleInfo['26'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/jsp/querys/AreaQuery.jsp"><i class="fa fa-circle-o"></i>操作须知</a></li>
			</c:if>
          </ul>
        </li>
		<li class="treeview">
          <a href="#"><i class="fa fa-cog"></i> <span>资讯管理</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
          	<c:if test="${userAdmin.role.roleInfo['27'].stutas eq 1 }" >
            <li><a href="${pageContext.request.contextPath}/noticez/showNotices"><i class="fa fa-circle-o"></i>公告管理</a></li>
            </c:if>
            <c:if test="${userAdmin.role.roleInfo['28'].stutas eq 1 }" >
            <li><a href="${pageContext.request.contextPath}/informationz/showInformations"><i class="fa fa-circle-o"></i>资讯管理</a></li>
            </c:if>
            <c:if test="${userAdmin.role.roleInfo['29'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/informationz/showInfor"><i class="fa fa-circle-o"></i>下载中心</a></li>
			</c:if>
			
			<c:if test="${userAdmin.role.roleInfo['30'].stutas eq 1 }" >
			<li><a href="${pageContext.request.contextPath}/Commentsz/showCommentss"><i class="fa fa-circle-o"></i>留言管理</a></li>
			</c:if>
			
			
          </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>