<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>操作须知</title>
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
        信息查询
        <small> >>操作须知</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<div class="col-md-10 col-sm-6 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h4 style="color:red">1.进入商务区</h4><br/>
						a)      进入www.sl**.net 网站<br/>
						b)     输入 “用户名”、“密码”（一级密码）<br/>
 
						<h4 style="color:blue">2.     会员资格</h4><br/>
						会员分为：注册会员和正式会员（消费会员、VIP会员、加盟店），只注册个人资料的为注册会员，注册会员成为的正式会员过程为激活。正式会员有权为新会员注册、购货、激活。<br/>
						 
						<h4 style="color:yellow">3.     资料注册</h4><br/>
						每个新会员都必须由正式会员在网站上为其注册个人资料，注册资料时要明确注册会员的推荐人。会员资料一旦注册成功电脑系统都将立即为新会员开设一个商务区、一个基本帐户、一个消费帐户。以后会员的所有商务活动以及与公司的联系都将在商务区中完成。新会员资料注册时系统自动为会员生成一个9位元的用户名，用户名是唯一的，不可修改的。<br/>
						 
						<h4 style="color:#FF1493">4.     购货</h4><br/>
						注册会员第一次购货必须由正式会员完成。购货方式如下：<br/>
						   1) 购买报单产品：是指使用“基本帐户”的款为他 人第一次购买报单产品，且计入奖金计算业绩的产品的过程。<br/>
						   2) 购买重消产品：是指使用“消费帐户”的款为本人购买不计入奖金计算业绩的产品的过程。<br/>
						   3) 购买辅销产品：是指使用“基本帐户”的款为本人或他 人购买辅销产品，且不计入奖金计算业绩的产品的过程。<br/>
						 
						<h4 style="color:#FF1493">5.     确认激活</h4><br/>
						“确认激活”完成2项工作，一是确认“报单购货”的购货单有效，二是激活注册会员，即为新会员安排左、右区域位置。购货单一旦确认、区域位置一旦安排是不许更改的，所以要认真填写。注册会员的“激活”必须由正式会员完成。“确认激活”前要检查“基本帐户”的余额是否大于等于购货款，如果不足要及时向公司汇款（见“电子银行”中的“汇款充值”）。<br/>
						 
						<h4 style="color:#FF1493">6.     会员加入流程</h4><br/>
						会员加入流程分为三步：<br/>
						第一步  注册  注册会员的个人资料；<br/>
						第二步  购货  购买报单产品；<br/>
						第三步  激活  确认购货单有效，为会员安排区域位置 ；<br/>
						 
						<h4 style="color:#FF1493">7.     留言板</h4><br/>
						留言板是会员与公司联系的通讯工具，会员进入会员商务区可通过留言板给公司留言，公司客服人员将以最快时间给与答复。<br/>
						 
						<h4 style="color:#FF1493">8.     会员商务区密码</h4><br/>
						在公司电子商务系统中，为了公司资讯的安全，为了会员资讯的安全，对密码进行如下规定：<br/>             
						1)     长度<br/>
						密码长度最低4位元，最高16位。<br/>
						2)     分类<br/>
						会员使用的密码分为“一级密码”和“二级密码”，“一级密码”用于登陆“会员商务区”使用，“二级密码”用于会员在“会员商务区”查询修改重要资讯时使用，如：提取现金、转账等操作，需要时电脑系统会自动提示输入。<br/>
						3)     初值<br/>
						密码的初始设置值是在会员注册登记时电脑系统自动将两级密码均设置为会员证件号码的后6位。<br/>
						4)     修改<br/>
						修改密码进入“会员商务区”，选择“修改密码”项，输入原“一级密码”和“二级密码”，然会输入新密码即可。<br/>
						5)     丢失<br/>
						密码任何人是看不到的，如果会员忘记了本人密码，会员提供用户名、姓名、电话、有效证件、银行帐户等资讯，客服人员要与会员个人资料核对，证实其身份。身份核实后客服人员将“一级密码”设置为“1111”，“二级密码”，设置为“2222”。<br/>
						6)     安全<br/>
						密码是使用电子商务系统的钥匙，因此，安全非常重要，在日常使用时应注意以下问题：<br/>
							o 密码设置的长度最好6位元以上，密码设置不要使用个人的公用资讯如：姓名、生日、手机号码、电话号码等。<br/>
							o 对于初始电脑系统自动设置的密码要及时修改；<br/>
							o 丢失密码后，客服人员设置的密码要立即修改；<br/>
							o 密码使用一段时间，要根据具体情况及时修改；<br/>
							o 使用密码时不要让其他人员看到；<br/>
							o 在电脑上使用密码时不要让电脑记忆密码，特别是使用公用电脑时；<br/>
							o 如果笔录密码必须保存在别人不易发现的地方。<br/>
						 
						<h4 style="color:#FF1493">9.     资金管理</h4><br/>
						为了充分发挥电子商务的优势，减少资金的流动，在公司的电子商务系统中，对资金管理的相关事宜规定如下：<br/>
						1)     帐户<br/>
						会员资料注册成功时在管理系统中为会员开设两个帐户“基本帐户”、“消费帐户”，用以处理会员在网上进行商务活动所产生的所有帐务和资金。会员使用这两个帐户可以实现汇款充值、购买产品、转账、提取现金等功能。<br/>
						o 基本帐户：会员的汇款、其他会员的转入款都将进入“基本帐户”。使用此帐户的款额可以购买公司的报单产品，可以从此帐户上申请提取现金，可以进行信任转帐操作。<br/>
						o 消费帐户：会员的只可购货的款（重复消费款）项转入此帐户，使用此帐户只可以购买指定产品。<br/>
						2)     汇款充值<br/>
						汇款充值指的是会员向公司汇款，由公司向会员的“基本帐户”充值。当会员的基本帐户资金不足需要汇款充值时，必须先在会员商务区“填汇款单”，选择银付通标志进入银行网银汇款。充值成功“基本帐户”会增加款项，如果出现问题及时给公司留言。<br/>
						3)     信任转帐
						信任转帐是将本人“基本帐户”上的款转入到你所信任的会员的“基本帐户”上。信任转帐操作一定要慎重，对方的会员“用户名”一定书写正确。一旦操作错误只能由操作者负责。<br/>
						4)     提取现金
						提取现金即将会员“基本帐户”上的款发放到会员的银行帐户上的过程。会员要提取现金只要在会员商务区进行申请即可。公司将按规定时间将申请提现的款项汇到会员个人在注册时登记的银行卡上。提取现金最低额度1000元。提取现金时要扣手续费5%。<br/>
						 
						<h4 style="color:#FF1493">10.     结算时间规定</h4><br/>
						每日00：00至24：00<br/>
						 
						<h4style="color:#FF1493">11.     奖金发放</h4><br/>
						日奖金次日12点前奖结算后奖金直接充值到“基本帐户”。<br/>
						月奖金次月5日奖结算后奖金直接充值到“基本帐户”。<br/>
						 
						<h4 style="color:#FF1493">12.     工作时间</h4><br/>
						公司会计工作时间：9：00至18：00<br/>
						公司客服工作时间：9：00至18：00<br/>

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
	$(function(){
		
	});
</script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>