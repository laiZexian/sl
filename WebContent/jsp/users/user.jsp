<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>用户管理</title>
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
  <style type="text/css">
  	table tr{
  		margin-bottom:5px;
  	}
  	.showss{
		display:block;
	}
  </style>
  
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
      <h1>
        后台管理
        <small>用户管理</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<!--begin-->
	<div class="row">
        <div class="col-md-12">
         <div class="box">
            <div class="box-header with-border">
				<button  class="btn btn-primary btn-sm " data-toggle="modal" data-target="#modal-primary">新增</button>&nbsp;&nbsp;
				<button  class="btn btn-success btn-sm " id="update4" />修改</button>&nbsp;&nbsp;
				<button  class="btn btn-danger btn-sm " data-toggle="modal" data-target="#modal-danger" >删除</button>&nbsp;
			   
			  <!--选择框-->
              <div class="box-tools">
              <form action="${pageContext.request.contextPath}/user/all" method="post" id="formss">
                <div class="input-group input-group-sm" style="width: 250px;">
                  <input type="text" name="userCode" class="form-control pull-right" placeholder="请输入用户名（支持模糊查询）...." value="${userCode }">

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
                  <th>用户名</th>
                  <th>角色</th>
				  <th>会员类型</th>
				  <th>推荐人用户名</th>
				  <th>状态（启用/禁用）</th>
				  <th>最后修改时间</th>
                </tr>
                <c:forEach items="${pages.list }" var="u" varStatus="uss">
				<tr>
                  <td align="center" ><input type="radio" name="r1" class="minimal" value="${u.userCode }" <c:if test="${uss.index eq 0 }">checked</c:if> ></td>
                  <td><b>${u.userCode }</b></td>
                  <td>
                  	<c:if test="${u.roleId eq 'sl_role02' }">管理员</c:if>
                  	<c:if test="${u.roleId eq 'sl_role01' }">会员</c:if>
                  </td>
				  <td>
					<c:if test="${u.member eq 0 }">-</c:if>
					<c:if test="${u.member eq 1 }">注册会员</c:if>
					<c:if test="${u.member eq 2 }">消费会员</c:if>
					<c:if test="${u.member eq 3 }">vip会员</c:if>
					<c:if test="${u.member eq 4 }">加盟店</c:if>
				  </td>
				  <td style="color:blue;">${u.createCode }</td>
				  <td><input type="checkbox" class="min" <c:if test="${u.userStutas eq 1 }">checked</c:if>></td>
				  <td><span class="label label-success"><fmt:formatDate value="${u.modifyDate }" pattern="yyyy-MM-dd HH:mm:ss"/></span> </td>
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
                <li ><a href="${pageContext.request.contextPath}/user/all?pageNo=${pages.currentPageNo-1 lt 1? 1:pages.currentPageNo-1}">上一页</a></li>
                <li ><a href="${pageContext.request.contextPath}/user/all">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/user/all?pageNo=${pages.totalPageCount}">末页</a></li>
                <li id="two"><a href="${pageContext.request.contextPath}/user/all?pageNo=${pages.currentPageNo+1 gt pages.totalPageCount ? pages.totalPageCount:pages.currentPageNo+1}">下一页</a></li>
              </ul>
            </div>
        </div>
          
        </div>
        <!-- 下拉显示 -->
       <!--用户添加框-->
        <div class="modal modal-default fade " id="modal-primary" >
        <form action="${pageContext.request.contextPath}/user/addu"  method="post" enctype="multipart/form-data"> 
          <div class="modal-dialog ">
            <div class="modal-content" style="background:#eee;">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加用户</h4>
              </div>
              <div class="modal-body">
               <table class=" " style="color:#000;">
               	<tr>
               		<td>角色：</td>
               		<td><select name="roleId">
               		
	               		 	<option>请选择</option>
	               		 	<c:forEach items="${rolelist }" var="r">
	               		 	<option value="${r.roleId }">${r.roleName}</option>
	               		 	
	               		 	</c:forEach>
	            		 	<!-- <option value="sl_role01">会员</option>
	               		 	<option value="sl_role02">管理员</option> -->
	               		 	
	               		</select></td>
               		<td>会员类型：</td>
               		<td>
	               		 <select name="member">
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
               		<td><input type="text" name="userCode" required="required"/></td>
               		<td>姓名:</td>
               		<td><input type="text" name="realName" required/></td>
               	</tr>
               	<tr>
               		<td>证件类型:</td>
               		<td><select name="cardType">
	               		 	<option>请选择</option>
	               		 	<option value="1">二代身份证</option>
	               		 	<option value="2">护照</option>
	               		 	<option value="3">军官证</option>
	               		</select></td>
               		<td>证件号码:</td>
               		<td><input type="text" name="cardNo"  required/></td>
               		<!-- pattern="/^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/" -->
               	</tr>
               	<tr>
               		<td>收货国家（地区）</td>
               		<td><select name="country">
	               		 	<option value="0">请选择</option>
	               		 	<option value="1">中国</option>
	               		 	<option value="2">美国</option>
	               		 	<option value="3">日本</option>
	               		</select></td>
	
               		<td>移动电话</td>
               		<td><input type="text" name="telephone" pattern="^(13[0-9]{9})|(15[89][0-9]{8})$" required/></td>
               	</tr>
               	<tr>
               		<td>电子邮件：</td>
               		<td><input type="email" name="email"  required/></td>
               		<td>邮件编码：</td>
               		<td><input type="text" name="postCode" pattern="^[1-9][0-9]{5}$" required/></td>
               	</tr>
               	<tr>
               		<td>联系电话：</td>
               		<td colspan="2"><input type="text" name="phone" pattern="^((0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$" required/></td>
               		<td>&nbsp;</td>
               	</tr>
               	<tr>
               		<td>收货地址：</td>
               		<td colspan="3"><textarea rows="3" cols="60" name="address" required></textarea> </td>
               	</tr>
               		<tr>
               		<td>开户行:</td>
               		<td><select name="bank">
	               		 	<option value="0">请选择</option>
	               		 	<c:forEach items="${banklist }" var="b">
	               		 	<option value="${b.dicValue }">${b.dicName }</option>
	               		 	</c:forEach>
	               		 	<!-- <option value="1">中国银行</option>
	               		 	<option value="2">中国工商银行</option>
	               		 	<option value="3">中国农业银行</option> -->
	               		</select></td>
               		<td>开户卡号:</td>
               		<td><input type="text" name="bankNo" pattern="^[0-9]{19}$" required/></td>
               	</tr>
              
               	<tr>
               		<td>开户人:</td>
               		<td colspan="3"><input type="text" name="bankUser" required/>
               		<input type="hidden" name="createCode" value="${userAdmin.userCode }"/>
               		<input type="hidden" name="userStutas" value="0" /></td>
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
              	<span class="pull-left" style="color:red;">注： 1.用户名需验证唯一性
              	2.推荐人为选填项，默认为当前登录用户。</span>
                <button type="submit" class="btn btn-success " >保存</button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">关闭</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          </form>
          <!-- /.modal-dialog -->
        </div>
		<!--修改的弹框-->
		
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
                <h4 class="modal-title">温馨提示：</h4>
              </div>
              <div class="modal-body">
                <p>你确定删除吗？</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-outline" id="delUser">确定</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
	<!--提示框  -->
	 
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
<script >
	var path="http://localhost:8080/sl";
	function sub(){
		$("#formss").submit();
	}
	$(function(){
		//固定
		$(".treeview").eq(0).addClass("menu-open");
		$(".treeview-menu").eq(0).addClass("open").addClass("showss");
		//删除
		$("#delUser").click(function(){
			var userCodes =$(".minimal:checked").val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/user/del",//请求的url
				data:{userCode:userCodes},//请求参数
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
		//点击确定（提示框）
		$("#sure").click(function(){
			$("#modal-alert").modal("hide");
			setTimeout("sub()",1000);
		});
		$("#update4").click(function(){
			var usercode =$(".minimal:checked").val();
			$.ajax({
				type:"post",//请求类型
				url:path+"/user/get",//请求的url
				data:{userCode:usercode},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){
					$("#userCodes").val(data.userCode);
					$("#realNames").val(data.realName);
					$("#cardNos").val(data.cardNo);
					$("#emails").val(data.email);
					$("#telephones").val(data.telephone);
					$("#bankNos").val(data.bankNo);
					$("#phones").val(data.phone);
					$("#cardNos").val(data.cardNo);
					$("#bankUsers").val(data.bankUser);
					$("#userStutas").val(data.userStutas);
					$("#addresss").val(data.address);
					$("#postCodes").val(data.postCode);
					
					//角色：
					var roles=$("#roleIds").find("option");
					roles.removeAttr("selected");
					for (var i = 0; i < roles.length; i++) {
						if (roles.eq(i).val()==data.roleId) {
							roles.eq(i).attr("selected","selected");
						}
					}
					//会员类型
					var members=$("#members").find("option");
					members.removeAttr("selected");
					for (var i = 0; i < members.length; i++) {
						if (members.eq(i).val()==data.member) {
							members.eq(i).attr("selected","selected");
						}
					}
					//收货国家
					var countrys=$("#countrys").find("option");
					countrys.removeAttr("selected");
					for (var i = 0; i < countrys.length; i++) {
						if (countrys.eq(i).val()==data.country) {
							countrys.eq(i).attr("selected","selected");
						}
					}
					//证件类型
					var cardTypes=$("#cardTypes").find("option");
					cardTypes.removeAttr("selected");
					for (var i = 0; i < cardTypes.length; i++) {
						if (cardTypes.eq(i).val()==data.cardType) {
							cardTypes.eq(i).attr("selected","selected");
						}
					}
					//开户行
					var banks=$("#banks").find("option");
					banks.removeAttr("selected");
					for (var i = 0; i < banks.length; i++) {
						if (banks.eq(i).val()==data.bank) {
							banks.eq(i).attr("selected","selected");
						}
					}
					$("#modal-success").modal();
					
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("获取数据出现异常！");
				}
			});  		
				
			
			
		});
	});
</script>

</body>
</html>