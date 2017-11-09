<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>套餐添加</title>
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
  <style>
	.showss{
		display:block;
	}
  </style>
</head>

<body class="hold-transition skin-blue sidebar-mini">

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
        

<div class="modal modal-primary fade " id="modal-primary">
          <div class="modal-dialog ">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加套餐商品</h4>
              </div>
              <div class="modal-body">
               <div class="box box-primary">
					<div class="box-header with-border">
					  <h5 class="box-title">
					 <!--  <input type="checkbox" name=""/>&nbsp;&nbsp; -->
					  <span style="font-size:14px;"><b>商品名称 :</b>&nbsp;&nbsp;<input type="text" name="proName"  placeholder="请输入商品名称"  id="proNamess">&nbsp;&nbsp;<input type="submit"  class="btn btn-success btn-xs" value="查询"  id="submists"></span></h5>
					<!--以下是决定盒子的伸缩-->
					  <div class="box-tools pull-right">
						
					  </div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
					  <table class="table table-borderd " style="color:#000" id="table001">
					 
					  </table>
					</div>
					<div class="box-footer clearfix">
					<input type="hidden" id="curr"/>
					<input type="hidden" id="total"/>
						<ul class="pagination pagination-sm no-margin ">            
               			 	<li >当前:<span id="paNo"></span>页</li>
                			<li>共:<span id="paNo1"></span>页</li>
              			</ul>
						<ul class="pagination pagination-sm no-margin pull-right">
                			<li id="prev" ><a href="#"><i class="fa fa-backward "></i></a></li>
                			<li id="next"><a href="#"><i class="fa  fa-forward"></i></a></li>
             			 </ul>
					</div>
				  </div>
               <!-- 盒子结束 -->
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left"  id="update3">保存</button>
                <button type="button" class="btn btn-outline" data-dismiss="modal">关闭</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
<div class="wrapper">

  
  <jsp:include page="../include/header.jsp" />
  
  <jsp:include page="../include/left.jsp" />
  
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        后台管理
        <small>新增套餐</small>
      </h1>  
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<!--start-->
		<div class="row">
			<div class="col-md-8 col-md-offset-1">
				<div class="box box-solid">
					<div class="box-header with-border">
					  <i class="fa fa-text-width"></i>
					  <h3 class="box-title"></h3>
					   <div class="box-tools">
             
                    	<button type="button" class="btn btn-default" id="build"><i class="fa fa-plus-square" style="color:blue"></i></button>
              
             		 	</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
					<form class="form-horizonta" role="form">
	
							<div class="form-group row">
								<span class="col-md-3 text-right" >套餐名称：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入套餐名称..." id="setNames" value="套餐"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >编号：</span>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="请输入编号..." id="setIds"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >套餐类型：</span>
								<div class="col-md-5">
									<select class="form-control" style="width: 100%;" id="setTypes">
									  <option value="0">请选择</option>
									  
									 <option value="1">报单购货</option>
									  <option value="2">重消购货</option>
									  <option value="3">辅消购货</option>
									</select>
								</div>
								<span class="col-md-4" style="color:red;"></span>
							</div>
	
							<div class="form-group row">
								<span class="col-md-3 text-right" >零售价：</span>
								<div class="col-md-5"><input type="number" class="form-control" placeholder="请输入零售价..." id="markPrices"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >优惠价：</span>
								<div class="col-md-5"><input type="number" class="form-control" placeholder="请输入优惠价..." id="prePrices"></div>
								<span class="col-md-4" style="color:red;line-height:32px;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >套餐数量：</span>
								<div class="col-md-5"><input type="number" class="form-control" placeholder="请输入套餐数..." id="setNums" max="100"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >积分：</span>
								<div class="col-md-5"><input type="number" class="form-control" placeholder="请输入积分..." id="scores"></div>
								<span class="col-md-4" style="color:red;">*</span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >状态：</span>
								<div class="col-md-5"><input type="radio" name="rd" checked id="rad01">上架&nbsp;&nbsp;&nbsp; <input type="radio" name="rd" id="rad02">下架 
								<input type="hidden" name="rd" value="1" id="stutass"></div>
								<span class="col-md-4" style="color:red;"></span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >相关商品：</span>
								<div class="col-md-5" id="ulssli">
								
								</div>
								<span class="col-md-4"  ><i class="fa fa-plus-square" style="color:#3A5FCD;font-size:30px;" id="queryPro"></i></span>
							</div>
							<div class="form-group row">
								<span class="col-md-3 text-right" >说明：</span>
								<div class="col-md-8"><textarea class="form-control" rows="4" placeholder="请输入说明 ..." id="specs"></textarea></div>
								<span class="col-md-1" style="color:red;"></span>
								<input type="hidden" id="path" value="${pageContext.request.contextPath}"/>
						</div>
					  </form>
					</div>
					
			    </div>
			 
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-md-offset-4">
				<input type="button" class="btn btn-success" id="update4" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="javascript:window.history.back();" class="btn btn-primary">返回</a>
			</div>
			
		</div>
	

    </section>
    
  </div>
  
  <jsp:include page="../include/footer.jsp" />

 
 
  <div class="control-sidebar-bg"></div>
</div>

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
<script src="${pageContext.request.contextPath}/statics/localjs/user/code.js"></script>
<script type="text/javascript">
var path1 =document.getElementById("path").value;
var path="http://localhost:8080/sl";

function del(dom){
	var trs =dom.parentNode;
	var par =dom.parentNode.parentNode;
	par.removeChild(trs);
}
$(function(){
	//自动生成编码：
	$("#build").click(function(){
		var timeCode =addCode("V")+"_T";
		$("#setIds").val(timeCode);
	});
	//固定
	$(".treeview").eq(0).addClass("menu-open");
	$(".treeview-menu").eq(0).addClass("open").addClass("showss");
	//alert(path1);
	//获得数据
	function json(name,page){
		$.ajax({
			type:"post",//请求类型
			url:path1+"/sets/pro",//请求的url
			data:{proName:name,pageNo:page},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){
				var str="<tr class='active'><td>选择</td><td>商品标题</td><td>库存</td><td align='center'>数量</td></tr>";
				for (var i = 0; i < data.list.length; i++) {
					str+="<tr ><td><input type='checkbox' name='pro' value='"+data.list[i].proId+"' ></td>"+
					"<td>"+data.list[i].proName+"</td><td>"+data.list[i].proCount+"</td>"+
					"<td align='center'><input type='hidden' value='"+data.list[i].unit+"' >"+
					"<input type='number' name='proNum' max='250' min='1' value='1' ></td></tr>";
				}
				$("#curr").val(data.currentPageNo);//当前页
				$("#total").val(data.totalPageCount);//共几页
				$("#paNo").text("当前:"+data.currentPageNo+"页");//显示当前页
				$("#paNo1").text("共:"+data.totalPageCount+"页");//显示共几页
				$("#table001").empty().append(str);
				$("#modal-primary").modal();
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				alert("加载数据失败！");
			}
		});  
	}
	//添加订单
	function addset(setIds,setNames,markPrices,prePrices,setTypes,stutass,specs,setNums,scores){
		$.ajax({
			type:"post",//请求类型
			url:path+"/sets/add",//请求的url
			data:{setId:setIds,markPrice:markPrices,prePrice:prePrices,setType:setTypes
	        	,stutas:stutass,spec:specs,setNum:setNums,score:scores,setName:setNames},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){
				if (data=="1") {
					var ulss =$("ul.list-inline");
					for (var i = 0; i < ulss.length; i++) {
						var proId= ulss.eq(i).find("li").eq(0).attr("value");
						var nums =ulss.eq(i).find("li").eq(1).text();
						addInfo(setIds,proId,nums);
						
					}
					$("#mess").html("点单添加成功！");
					
				}else{
					$("#mess").html("点单添加成功！");
				}
				$("#modal-alert").modal();
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				alert("添加订单请求失败！");
			}
		});          
		
	}
	//添加点单订单详情
	function addInfo(setIds,proIds,nums){
		$.ajax({
			type:"post",//请求类型
			url:path+"/sets/addinfo",//请求的url
			data:{proId:proIds,setId:setIds,proNum:nums},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){
				
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				alert("添加订单详情失败！");
			}
		});  
	}
	//点击获得数据
	$("#queryPro").click(function(){
		var $proName =$("#proNamess").val();
		var pages=1;
		json($proName,pages);
	});
	
	$("#prev").click(function(){
		var $proName =$("#proNamess").val();
		var pages=$("#curr").val()-1;
		
		if (pages==0) {
			pages=1;
		}
		json($proName,pages);
	});
	
	$("#next").click(function(){
		var $proName =$("#proNamess").val();
		var pages=parseInt($("#curr").val())+1;
		
		var total=$("#total").val();
		if (pages>total) {
			pages=total;
		}
		json($proName,pages);
	});
	//获得数据
	$("#submists").click(function(){
		var $proName =$("#proNamess").val();
		var pages=1;
		json($proName,pages);
	});
	//往页面添加商品的信息
	$("#update3").click(function(){
		/*var str="";
		var checks=$("input[name='pro']:checked");
		for (var i = 0; i < checks.length; i++) {
				var proId= checks.eq(i).val();
				var $proName =checks.eq(i).parent().next();//商品名称
				//alert($proName.text());
				var $proNums =$proName.next();//库存
				//alert($proNums.text());
				var $nums =$proNums.next().find("input").eq(1);//选择的数字
				var unit =$proNums.next().find("input").eq(0);
				//alert($nums.val());
				str+="<ul class='list-inline'><li value='"+proId+"'>"+$proName.text()+"</li><li>"+$nums.val()+"</li><li>"+unit.val()+"</li><li style='color:red;' onclick='del(this)'><i class='fa  fa-times'></i></li></ul>";
				
				
		}*/
		var str="";
		var checks=$("input[name='pro']:checked");
		
		//其实在这里应该要同时页面上已经有的商品信息和数量也读取到这里进行汇总
		var ulss =$("ul.list-inline");
			
		
		for (var i = 0; i < checks.length; i++) {
				
				var proId= checks.eq(i).val();
				var $proName =checks.eq(i).parent().next();//商品名称节点
				
				var $proNums =$proName.next();//库存节点
				
				var $nums =$proNums.next().find("input").eq(1);//选择的商品数量节点
				
				var unit =$proNums.next().find("input").eq(0);//单位节点
				
				var proNumss =parseInt($nums.val()); //需要添加的商品数量
				
				var kucun =parseInt($proNums.text());
				if (proNumss>kucun) {
					alert("【"+$proName.text()+"】  库存不足，请重新添加！");
					return;
					
				}
				
				
				//应该是这里去验证页面的商品数量是有重复的地方
				for (var j = 0; j < ulss.length; j++) {
					var proId2= ulss.eq(j).find("li").eq(0).attr("value");
					var nums =parseInt(ulss.eq(j).find("li").eq(1).text());
					
					if (proId==proId2) {
						proNumss+=nums;
						ulss.eq(j).remove();//把重复的节点删除
						break;
					}
					
				
				}
				
				str+="<ul class='list-inline'><li value='"+proId+"'>"+$proName.text()+"</li><li>"+proNumss+"</li><li>"+unit.val()+"</li><li style='color:red;' onclick='del(this)'><i class='fa  fa-times'></i></li></ul>";
		}
		$("#modal-primary").modal("hide");
		$("#ulssli").append(str);
	});
	
	$("#rad02").click(function(){
		$("#stutass").val("0");
	});
	$("#rad01").click(function(){
		$("#stutass").val("1");
	});
	//提交套餐信息
	$("#update4").click(function(){
		
		var setIds =$("#setIds").val();
		var setNames =$("#setNames").val();
		var markPrices =$("#markPrices").val();
		var prePrices =$("#prePrices").val();
		var setTypes =$("#setTypes").find("option:selected").val();
		
		var stutass =$("#stutass").val();
		var specs =$("#specs").val();
		var setNums =$("#setNums").val();
		var scores =$("#scores").val();
		
		var str ="(1)"+setIds+" (2)"+setNames+" (3)"+markPrices+" (4)"+prePrices+" (5)"+setTypes
		+" (6)"+stutass+" (7)"+specs+" (8)"+setNums+" (9)"+scores;
		//alert(str);
		addset(setIds,setNames,markPrices,prePrices,setTypes,stutass,specs,setNums,scores);
	});
	
	//点击确定后回到主页面
	$("#sure").click(function(){
		location.href=path+"/sets/all?setName="+$("#setNames").val();
	});
});
</script>
</body>
</html>