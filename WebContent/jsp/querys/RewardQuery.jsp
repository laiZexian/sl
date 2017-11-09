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
  <title>AdminLTE 2 | Starter</title>
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
        <small> >>奖励查询</small>
      </h1>  
    </section>
	
    <!-- Main content -->
    <section class="content container-fluid">
		<div class="row">
		<div class="col-md-10 col-md-offset-1" >
			<div class="box box-solid">
			<div class="box-body">
				<table class="table table-bordered" >
					<tr>
						<td align="center">级别</td>
						<td align="center">加盟店</td>
						<td align="center">本人直推会员</td>
						<td align="center">2</td>
					</tr>
				</table>
			</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab">十日内结算明细</a></li>
              <li><a href="#tab_2" data-toggle="tab">奖金明细表</a></li>
              <li><a href="#tab_3" data-toggle="tab">月结算</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
               <!--第一个-------------------------->
                <div class="box box-info">
            <div class="box-header with-border">
              <div class="box-tools pull-right"> 
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="table-responsive">
                <table class="table no-margin table-bordered">
                  <thead>
                  <tr>
                    <td rowspan="2" align="center" valign="middle">日期</td>
                    <td rowspan="2" align="center" valign="middle">新推荐人数</td>
                    <td rowspan="2" align="center" valign="middle">总碰局数</td>
                    <td colspan="3" align="center">区域网左区</td>
					<td colspan="3" align="center">区域网右区</td>
                  </tr>
				  <tr>
                    
                    <td >总人数</td>
                    <td >新安置人数</td>
					<td >剩余碰数</td>
					<td >总人数</td>
                    <td >新安置人数</td>
					<td >剩余碰数</td>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>2017/10/29</td>
                    <td>0</td>
                    <td>2</td>
					<td>2</td>
					<td>2</td>
                    <td>0</td>
					<td>0</td>
					 <td>0</td>
					<td>11</td>
                  </tr>
                  <tr>
                    <td>2017/10/30</td>
                    <td>0</td>
                    <td>2</td>
					<td>2</td>
					<td>2</td>
                    <td>0</td>
					<td>0</td>
					 <td>0</td>
					<td>11</td>
                  </tr>
                  <tr>
                    <td>2017/10/31</td>
                    <td>0</td>
                    <td>2</td>
					<td>2</td>
					<td>2</td>
                    <td>0</td>
					<td>0</td>
					 <td>0</td>
					<td>11</td>
                  </tr>
                  <tr>
                    <td>2017/11/01</td>
                    <td>0</td>
                    <td>3</td>
					<td>2</td>
					<td>0</td>
                    <td>0</td>
					<td>0</td>
					 <td>0</td>
					<td>11</td>
                  </tr>
                  <tr>
                    <td>2017/11/02</td>
                    <td>0</td>
                    <td>3</td>
					<td>2</td>
					<td>0</td>
                    <td>0</td>
					<td>0</td>
					 <td>0</td>
					<td>11</td>
                  </tr>
                  <tr>
                    <td>2017/11/03</td>
                    <td>0</td>
                    <td>3</td>
					<td>2</td>
					<td>0</td>
                    <td>0</td>
					<td>0</td>
					 <td>0</td>
					<td>11</td>
                  </tr>
				  <tr>
                    <td>2017/11/04</td>
                    <td>0</td>
                    <td>3</td>
					<td>2</td>
					<td>0</td>
                    <td>0</td>
					<td>0</td>
					 <td>0</td>
					<td>11</td>
                  </tr>
                  <tr>
                    <td>2017/11/05</td>
                    <td>0</td>
                    <td>3</td>
					<td>2</td>
					<td>0</td>
                    <td>0</td>
					<td>0</td>
					 <td>0</td>
					<td>11</td>
                  </tr>
                  <tr>
                    <td>2017/11/06</td>
                    <td>0</td>
                    <td>3</td>
					<td>2</td>
					<td>0</td>
                    <td>0</td>
					<td>0</td>
					 <td>0</td>
					<td>11</td>
                  </tr>
                  <tr>
                    <td>2017/11/07</td>
                    <td>0</td>
                    <td>3</td>
					<td>2</td>
					<td>0</td>
                    <td>0</td>
					<td>0</td>
					 <td>0</td>
					<td>11</td>
                  </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            <!-- /.box-footer -->
          </div>
              </div>
             
              <div class="tab-pane" id="tab_2">
               <!--第二个----------------------------->
			   <div class="box box-info">
            <div class="box-header with-border"> 
              <div class="box-tools pull-right"> 
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="table-responsive">
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>日期</th>
                    <th>推荐奖</th>
                    <th>安置奖</th>
                    <th>对碰奖</th>
					<th>积分消费奖</th>
					<th>实发合计</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>2017/10/13</td>
                    <td>5000</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>5000</td>
                  </tr>
                  <tr>
                    <td>2017/10/13</td>
                    <td>5000</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>5000</td>
                  </tr>
                   <tr>
                    <td>2017/10/14</td>
                    <td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
                  </tr>
                  <tr>
                    <td>2017/10/15</td>
                    <td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
                  </tr>
                  <tr>
                    <td>2017/10/16</td>
                    <td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
                  </tr>
                  <tr>
                    <td>2017/10/17</td>
                    <td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
                  </tr>
                  <tr>
                    <td>2017/10/18</td>
                    <td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
                  </tr>
				  <tr>
                    <td>合计</td>
                    <td>10000</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
                  </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            <!-- /.box-footer -->
          </div>
              </div>
              
              <div class="tab-pane" id="tab_3">
               <!--第三个-------------------->
			   <div class="box box-info">
            <div class="box-header with-border"> 
              <div class="box-tools pull-right"> 
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="table-responsive">
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>序号</th>
                    <th>月份</th>
                    <th>重复消费奖</th>
					<th>重复消费款</th>
                    <th>实发合计</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>1</td>
                    <td>2017-10</td>
                    <td><span class="label label-success">0</span></td>
                    <td>
                      <div class="sparkbar" data-color="#00a65a" data-height="20">0</div>
                    </td>
					<td>10000</td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>2017-11</td>
                    <td><span class="label label-success">0</span></td>
                    <td>
                      <div class="sparkbar" data-color="#00a65a" data-height="20">0</div>
                    </td>
					<td>0</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>2017-12</td>
                    <td><span class="label label-success">0</span></td>
                    <td>
                      <div class="sparkbar" data-color="#00a65a" data-height="20">0</div>
                    </td>
					<td>0</td>
                  </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            <!-- /.box-footer -->
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
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>