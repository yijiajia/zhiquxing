<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>关于我们</title>
		<%@ include file="top.jsp"%>
		
		<!--清除默认样式-->
		<link rel="stylesheet" href="css/reset-min.css" />
		<!--关于我们页面样式-->
		<link rel="stylesheet" href="css/aboutus.css" />
	
</head>
<body>

		<!--导航栏结束-->

		<!--主要内容开始-->
		<div class="w">
			<img class="banner" src="img/banner.jpg"/>
		</div>
		<div style="">
			<div class="about_left">
				<ul id="proleft">
					<li class="on"><a href="#" target="_self">关于我们</a></li>
					<li><a href="#" target="_self">内容合作</a></li>
					<li><a href="#" target="_self">联系智趣行</a></li>
					<li><a href="#" target="_self">加入我们</a></li>
					<li><a href="#" target="_self">商务服务</a></li>
					<li><a href="#" target="_self">用户协议</a></li>
					<li><a href="#" target="_self">隐私条款</a></li>
				</ul>
			</div>
			<div class="about_right">
				<div class="about_right_content" id="about_right_content">
					<div class="show" >
						<h1>关于我们</h1>
						<p>智趣行旨在为广大父母和孩子提供专业化的亲子产品和相关服务。</p>
						<p>婴幼儿时期是大脑迅速发育的关键时期。利用这个关键时期，进行早期教育，会有事半功倍的效果。亲子游戏是幼儿学习的重要途径，然而，许多家庭在开展游戏的过程中，仍存在许多问题。如何更好地开展亲子游戏已成为我们不容忽视的问题。</p>
						<p>我们公司是融合了心理学，学前教育学及数字媒体技术的亲子游戏产品研发公司，旨在为广大父母提供科学系统的亲子游戏产品,解决亲子游戏中存在的问题。我们打破了以往以孩子为主体的个体游戏模式，转变为以父母和孩子为中心的亲子游戏模式。从脑科学出发，我们根据不同年龄阶段的孩子提供不同层次的亲子游戏产品，以满足孩子成长的需要，促进亲子关系的发展</p>
						<p>我们公司旨在为广大父母提供科学系统的亲子游戏产品，我们根据朱智贤，林崇德等教授提出的多元智力理论，设计一系列亲子游戏，克服现有亲子游戏存在的问题，在发展关键期中占得先机，开创亲子游戏的新天地，我们公司不但是为了让孩子健康成长，更是为了让家长和孩子共同成长，感受成长带来的快乐与幸福。</p>
					</div>
					<div>
						<h1>内容合作</h1>
						<p>联系：小智<br/>邮箱：czq.woodpecker@gmail.com </p>
					</div>
					<div>
						<h1>联系智趣行</h1>
						<p>投稿： czq.woodpecker@gmail.com</p>
						<P>品牌合作：czq.woodpecker@gmail.com</P>
						<P>商务合作：czq.woodpecker@gmail.com</P>
						<P>意见反馈：czq.woodpecker@gmail.com</P>
					</div>
					<div>
						<h1>加入我们</h1>
						<p>邮箱：czq.woodpecker@gmail.com</p>
					</div>
					<div>
						<h1>用户协议</h1>
						<p>test</p>
					</div>
					<div>
						<h1>内容合作</h1>
						<p>test</p>
					</div>
					<div>
						<h1>隐私条款</h1>
						<p>智趣行网以此声明对本站用户隐私保护的许诺。智趣行网的隐私声明正在不断改进中，随着智趣行网服务范围的扩大，会随时更新隐私声明。我 们欢迎您随时查看隐私声明。</p>
						<p>智趣行网非常重视对用户隐私权的保护，承诺不会在未获得用户许可的情况下擅自将用户的个人资料信息出租或出售给任何第三方，但以下情况除外：</p>
						<p>1.您同意让第三方共享资料；</p>
						<p>2.您同意公开你的个人资料，享受为您提供的产品和服务；</p>
						<p>3.本站需要听从法庭传票、法律命令或遵循法律程序；</p>
						<p>4.本站发现您违反了本站服务条款或本站其它使用规定。</p>
					</div>
				</div>
			</div>
		</div>
		<!--主要内容结束-->
	
		<!--底栏开始-->
		 
		<!--底栏结束-->
	
		<!--关于我们页面js文件-->
		<script src="js/aboutus.js"></script>
		<!--导航栏top页面js-->
		<script>
			$(function() {
				$('.icon-search_yi').on('click', function() {
					$(this).parent().parent().submit();
					//$('form').submit();
				})
			})
		</script>
	
	</body>
</html>