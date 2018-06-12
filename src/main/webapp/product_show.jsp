<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<title>产品展示 | 智趣行</title>
<%@ include file="top.jsp"%>	

  <link rel="stylesheet" href="css/main/amazeui.css"/>
  <link rel="stylesheet" href="css/main/style.css"/>
</head>
<body>

<div class="toppic" style="	background: url(./img/product/bg_01.jpg) no-repeat;
    background-size: 1520px 300px; margin-top:20px;">
	 <div class="am-container-1">
	 <div class="toppic-title left">
			<i class="am-icon-dropbox toppic-title-i"></i>
			<span class="toppic-title-span">产品展示</span>
			<p>Product Show</p>
		</div>
		<div class="right toppic-progress">
			<span><a href="index.jsp" class="w-white">首页</a></span>
			<i class=" am-icon-arrow-circle-right w-white"></i>
			<span><a href="product_introduce.jsp" class="w-white">产品理念</a></span>
		</div>
	</div>
</div>

<div >
	<ul class=" product-show-ul">
	    <li >
	    	<div class="product-content">
			    	<div class="left am-u-sm-12 am-u-md-6 am-u-lg-6 product-content-left">
			    		<div class="product-show-title">
			    			<h3>智趣魔法箱</h3>
			    			<span>专注注意力培养</span>
			    		</div>
			    	
			    	<div class="product-show-content">
			    	
			    		<div class="product-add">
			    			<span style="font-size:18px">适用阶段：</span>
			    			<div style="font-size:16px">3-6岁</div>
			    			<i class="am-icon-dribbble"></i>
			    		</div>
			    		
			    		<div class="product-intro">
			    			<span style="font-size:18px">产品介绍：</span>
			    			<div><p>这是一款针对3-6岁儿童注意力的游戏产品，包含三个系列，
			    			分别针对3-4岁、4-5岁、5-6岁阶段的孩子。同时产品主要有三个部分，
			    			分别为迷宫、华容道等传统游戏，目的是让孩子在与父母玩乐中提高注意力。</p></div>
			    		  <i class="am-icon-tasks"></i>
			    		</div>
			    	</div>
			    	</div>
			    	<div class="right am-u-sm-12 am-u-md-6 am-u-lg-6 product-content-right">
			    		<img class="product-img" src="img/product/pro_test.jpg" />
			    	</div>	
			    	<div class="clear"></div>
	    	</div>
	    </li>	
	    <li class="gray-li">
	    	<div class="product-content">
			    	<div class="left am-u-sm-12 am-u-md-6 am-u-lg-6 product-content-left">
			    		<img class="product-img" src="img/product/product01.png" />
			    		
			    	</div>
			    	<div class="right am-u-sm-12 am-u-md-6 am-u-lg-6 product-content-right">
			    		  <div class="product-show-title">
			    			<h3>智创西游</h3>
			    			<span >专注创造力培养</span>
			    		</div>
			    	
			    	<div class="product-show-content">
			    		<div class="product-add">
			    			<span style="font-size:18px">适龄阶段：</span>
			    			<div style="font-size:16px">xxx</div>
			    			<i class="am-icon-dribbble"></i>
			    		</div>
			    		<div class="product-intro">
			    			<span style="font-size:18px">产品介绍：</span>
			    			<div><p>来玩吧，智创西游很有趣！！</p></div>
			    		  <i class="am-icon-tasks"></i>
			    		</div>
			    	</div>
			    	</div>	
			    	<div class="clear"></div>
	    	</div>
	    </li>
	    <li >
	    	<div class="product-content">
			    	<div class="left am-u-sm-12 am-u-md-6 am-u-lg-6 product-content-left">
			    		<div class="product-show-title">
			    			<h3>我也是智趣的</h3>
			    			<span>我觉得我也得专注些什么力</span>
			    		</div>
			    	
			    	<div class="product-show-content">
			    		<div class="product-add">
			    			<span style="font-size:18px">适龄阶段：</span>
			    			<div style="font-size:16px">xxx</div>
			    			<i class="am-icon-dribbble"></i>
			    		</div>
			    		<div class="product-intro">
			    			<span style="font-size:18px">产品介绍：</span>
			    			<div><p>既然我智趣的，同时也是专注某力的，你肯定得来玩啊！！！</p></div>
			    		  <i class="am-icon-tasks"></i>
			    		</div>
			    	</div>
			    	</div>
			    	<div class="right am-u-sm-12 am-u-md-6 am-u-lg-6 product-content-right">
			    		<img class="product-img" src="img/product/pro_test.jpg" />
			    	</div>	
			    	<div class="clear"></div>
	    	</div>
	    </li>
	    <div class="clear"></div>
	</ul>
</div>

</div>

	<!-- 底部开始 -->
	<%@ include file="footer.jsp"%>
	<!-- 底部结束 -->

</body>

</html>
