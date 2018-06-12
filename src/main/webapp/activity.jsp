<%@ page import="java.util.Map" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>活动区</title>

		<!--清除默认样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset-min.css" />
		<!--关于我们页面样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/activity.css" />
		<!--公共样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
		<!--框架css-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
	</head>

<script type="text/javascript">
	var basePath = "${pageContext.request.contextPath}";
</script>

<body>
		<!--导航栏开始-->
		<%@ include file="top.jsp"%>
		<!--导航栏结束-->
		
		<!--轮播图开始-->
		<div class="layui-carousel" id="carousel">
  			<div carousel-item>
			    <div><img src="${pageContext.request.contextPath}/img/lunbotu/lunbo6.jpg" class="img-size"></div>
			    <div><img src="${pageContext.request.contextPath}/img/lunbotu/lunbo7.jpg" class="img-size"></div>
			    <div><img src="${pageContext.request.contextPath}/img/lunbotu/lunbo8.jpg" class="img-size"></div>
			    <div><img src="${pageContext.request.contextPath}/img/lunbotu/lunbo9.jpg" class="img-size"></div>
			</div>
		</div>
		<!--轮播图结束-->
		
		<!--分类tab开始-->
		<div class="nav-tab">
			<div class="nav-item on">
				<a href="#"  target="_self">
					<i class="nav-icon lesson" ></i>
					<span class="nav-text" >课程</span>	
					
				</a>
			</div>
			<div class="nav-item">
				<a href="#"  target="_self">
					<i class="nav-icon test"></i>
					<span class="nav-text">测试</span>	
				</a>
			</div>
			<div class="nav-item"  >
				<a href="#" target="_self">
					<i class="nav-icon vote"></i>
					<span class="nav-text">投票</span>	
				</a>
			</div>
			<div class="nav-item">
				<a href="#" target="_self">
					<i class="nav-icon hotarea"></i>
					<span class="nav-text">热门活动</span>	
				</a>
			</div>
			<div class="nav-item">
				<a href="#" target="_self">
					<i class="nav-icon noname"></i>
					<span class="nav-text">待命名</span>	
				</a>
			</div>
			<div class="nav-item">
				<a href="#" target="_self">
					<i class="nav-icon noname"></i>
					<span class="nav-text">第一选项</span>	
				</a>
			</div>
		</div>
		<!--分类tab结束-->
		
		<div class="content clearfix">
			<!--<div class="sort">
				<ul>
					<li><a href="#">最新</a></li>
					<li><a href="#">最热</a></li>
				</ul>
			</div>-->
			<!--<div class="list-item">
				<a href="activity_video.jsp">
					<div class="item-img"><img src="img/list/list1.jpg"></div></a>
				<div class="item-text">
					<p class="item-title">宝宝哭了怎么办？</p>
					<p class="item-desc">具综合案例、系统性学习基础语法
						、面对对象、常用工具</p>
				</div>
			</div>
			-->

			<!--分页开始-->
			<div class="fenye clearfix">
				<div id="fenye"></div>
			</div>
			<!--分页开始-->
			
			
		</div>
		

		<!--轮播图js-->
		<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
		<!--页面js-->
		<script src="${pageContext.request.contextPath}/js/activity/activity.js"></script>
		
</body>
</html>