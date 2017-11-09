<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/statics/bootstrap/jquery.min.js"></script>
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
  
  
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bootstrap/bootstrap-responsive.min.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/bootstrap/bwizard.min.css">
 
  <!-- jsp5 Shim and Respond.js IE8 support of jsp5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/jsp5shiv/3.7.3/jsp5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
</head>
<script type="text/javascript">

$(document).ready(function() {	
	$("#thediv").hide()
	
	$("#middle-name").blur(function() {
		alert("再次进入")
		 $("#thediv").show();
		$("#xiayibu").hide();
	$("#preservation").click(function(){
		$("#xiayibu").show();
		})
	});
	$("#xiayibu").click(function(){
		 var num =  $('input:radio:checked').val();		
		 if(num == 1){
			 var str1 = "消费会员(消费金额:4600元,PV:300,综合服务费:690元)"
			 var otext1 = document.getElementById('grade');
			 otext1.value = str1;
			 var numeral = 4600+300+690
			 var amount = document.getElementById('amount');
			 amount.value = numeral;
		 }else if (num == 2){
			 var str2 = "VIP会员(消费金额:14600元,PV:900,综合服务费:1500元)"
				 var otext2 = document.getElementById('grade');
				 otext2.value = str2;
				 var numeral = 14600+900+1500
				 var amount = document.getElementById('amount');
				 amount.value = numeral;
		 }else{
			 var str3 = "加盟店(消费金额:28800元,PV:1500,综合服务费:2800元)"
				 var otext3 = document.getElementById('grade');
				 otext3.value = str3;
				 var numeral = 28800+1500+2800
				 var amount = document.getElementById('amount');
				 amount.value = numeral;
		 }
			var span = $("#testspan").html();
			var amount = $('#amount').val();
			var span2 = parseInt(span);
			if(span2 < amount){
				$("#update2").hide();
				alert("当前余额不足，可能无法完成交易")
			}else{
				$("#update2").show();
			}
	});	
	
	$("#update2").click(function(){
		var span = $("#testspan").html();
		var amount = $('#amount').val();
		var span2 = parseInt(span);
		
		var num1 = document.getElementById('num');
		var num2 = span - amount
		
		num1.value = num2;
		
	})
});
		
	
</script>

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
        购物管理
        <small>报单管理</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<div >
		
		
			<div>
				 <form class="form-horizontal form-label-left" action="updateDeclaForm" method="post">
							<input type="hidden" name="userCode" value="${DeclaForm.userCode }"/>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name"> 当前金额 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <!-- <input type="text" id="first-name" required class="form-control col-md-7 col-xs-12" value="${Account.totalMoney }" readonly="readonly"> -->
                            	<span id="testspan" style="color:red">${Account.totalMoney }</span><span>(元)</span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"  style=" color:blue">金额不足？马上充值</a>
                            </div>
                            
                          </div>
                         
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name"> 报单购货会员用户名： <span class="required">*</span>
                            </label>
            
                            <div class="col-md-6 col-sm-6 col-xs-12">
                            <!-- <input type="text" id="last-name" name="last-name" required class="form-control col-md-7 col-xs-12"value="${DeclaForm.userCode}" readonly="readonly"> --> 
                              <span>${DeclaForm.userCode}</span>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">收货地址：*</label>
                            <div class="col-md-6 col-sm-6 col-xs-5">
                              <input id="middle-name" class="form-control " type="text" name="address" value="${DeclaForm.address}" >
                            </div>
                          </div>
                         
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12"> 快递类型： <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                             <!-- <input id="birthday" class="date-picker form-control col-md-7 col-xs-12" required type="text" name="express" value="${DeclaForm.dicName}" > --> 
                              <select name="express">
								<option value="1">ENS</option >
								<option value="2">顺丰</option >
								<option value="3">圆通</option >
								<option value="4">韵达</option >
							</select>
                            </div>
                          </div>
                          
                          <div class="form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name"> 邮编： <span class="required">*</span>
                            </label>
            
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="last-name" name="postCode" required class="form-control col-md-7 col-xs-12" value="${DeclaForm.postCode}" >
                            </div>
                            </div>   
                            <div id="thediv" class="col-md-offset-5">
                          <button id="preservation" class="btn btnblack" type="submit">保存</button></div>
														<table align="center"  width="550px" height="15px">  
      											<tr>  
             							 <td><input type="radio" value="1" data-label="1" name="memType" checked/> 消费会员：</td>  
             							 <td><input type="radio" value="2" data-label="1" name="memType" /> VIP会员：</td> 
             							 <td><input type="radio" value="3" data-label="1" name="memType" /> 加盟店：</td> 
          									</tr>  
          									<tr>
          										<td>&nbsp;</td>
          									</tr>		
         										 <tr>  
            								<td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;消费金额：4600元</td>  
  	       									<td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;消费金额：14600元</td>
  	       									<td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;消费金额：28800元</td>
 														 </tr>  
 														  <tr>  
            								<td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;PV：300</td>  
            								<td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;PV：900</td>
            								<td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;PV：1500</td>
  	       									<td></td>  
 														 </tr>
 														  <tr>  
            								<td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;综合服务费：690元</td>  
            								<td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;综合服务费：1500元</td> 
            								<td>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;综合服务费：2800元</td>
  	       									<td></td>  
 														 </tr>
  							  </table>  
                            
                             
						 <div id="xiayibu" class="col-md-offset-9">
						 <button id="btnNextStep" class="btn btnblack" type="button"><a href="#" data-toggle="modal" data-target="#modal003">下一步</a></button></div>
						</form>
					  
       					                    	
			</div>
			
	</div>
	
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
	<div class="modal modal-success fade bs-example-modal-lg" id="modal003">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">确认报单购货信息</h4>
              </div>
              <div class="modal-body">
               <form action="${pageContext.request.contextPath}/userL/updatecreateCode" method="post">
               <input type="hidden" name="totalMoney" id="num" value=""/>
                <!-- text input -->
                <div class="form-group">
                 <label for="middle-name" >用户名：*</label>
               
                 <input class="form-control" type="text" name="userCode" value="${DeclaForm.userCode}">
                </div>
                <div class="form-group">
                  <label for="middle-name" >消费级别：*</label>
                  <input type="text" class="form-control"  id="grade" disabled>
                </div>
				<div class="form-group">
                  <label for="middle-name" >总金额：*</label>
                  <input type="text" class="form-control" name = "jine" disabled" id ="amount" style="color:red" disabled>
                </div>
                <div class="form-group">    
                  <label for="middle-name" >收货地址：*</label>
                  <input class="form-control" type="text" value="${DeclaForm.address}" disabled>
                </div>
                <!-- textarea -->
                <div class="form-group">
                  <label for="middle-name">快递类型</label>
                  <input class="form-control" type="text" value="${DeclaForm.dicName}" disabled>
                </div>
                <div class="form-group">
                  <label for="middle-name">邮编</label>
                  
                  <input class="form-control" type="text" value="${DeclaForm.postCode}"  disabled>
                </div>
                <div class="form-group">
                  <label for="middle-name">二级密码</label>
                  <input class="form-control" type="password" >
                </div>
                <div class="modal-footer">
                <button type="submit" class="btn btn-outline pull-left"  id="update2">提交</button>
                <button type="button" class="btn btn-outline" data-dismiss="modal">关闭</button>
              </div>
              </form>
              </div>
              
              
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/statics/bootstrap/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/statics/dist/js/adminlte.min.js"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath}/statics/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/statics/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/statics/dist/js/demo.js"></script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
   <script src="${pageContext.request.contextPath}/statics/bootstrap/bwizard.min.js" type="text/javascript"></script>
   <script type="text/javascript">
	   $("#ww").bwizard();
	</script>
	  <script>
      $(document).ready(function() {
	 
        $('#wizard').smartWizard();

        $('#wizard_verticle').smartWizard({
          transitionEffect: 'slide'
        });
		
		
      });
	  </script>
	
<script>

</script>
	
    
</body>
</html>