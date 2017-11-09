
<%@page import="com.sl.sys.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
 User user =(User) session.getAttribute("userAdmin");
 String msg ="<script>alert('游客你尚未登录，所以无法访问，请登录！系统将为你跳转到登陆页面！');location='http://localhost:8080/sl/jsp/login.jsp'</script>";
 if(user==null){
 	out.print(msg);
 }
%>