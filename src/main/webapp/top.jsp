<%@ page import="cn.edu.gpnu.bean.User" %>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<base target="_self">
<title>智趣行 - 亲子教育从这里开始</title>
<meta name="keywords" content="智趣行，幼儿教育，亲子游戏">
<meta name="description" content="智趣行 - 亲子教育从这里开始">
<!--
        	作者：me
        	时间：2017-10-14
        	描述：QQ云平台相关的验证机制代码 
        -->
<meta property="qc:admins" content="21604337436016410016375" />


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/community/zixun_website.build_1a18e7760c.css">
<link rel="stylesheet"
	  href="${pageContext.request.contextPath}/css/Base/top.css"/>
	<style>
.logo {
	position: absolute;
	top: 0;
	left: 50px;
	font-size: 90px;
	color: #fff;
	cursor: pointer;
	box-sizing: content-box;
	display: block;
	float: none;
	line-height: 135px;
	position: absolute;
	width: 68px;
	height: 68px;
}

</style>

</head>
<%

	String div_style = "block";
	String user_login = "none";

	User user = (User)request.getSession().getAttribute("user");
	String nickname="";

	if(user!=null){
		div_style = "none";
		nickname = user.getNickname();
		user_login = "block";
	}
%>
<body>
	<!-- 三级以上页面头部 -->
	<div class="header-PC second" id="top">
		<div class="header-cont" id="header-cont">
			<img src="${pageContext.request.contextPath}/img/logo3.png" class="logo"
				style="right: 1082px; bottom: 0px; height: 68px;">
			<ul class="navbar">

				<a href="${pageContext.request.contextPath}/index.jsp">
					<li class="navbar-item ">首页</li>
				</a>

				<a href="${pageContext.request.contextPath}/product_introduce.jsp">
					<li class="navbar-item ">产品介绍</li>
				</a>

				<a href="${pageContext.request.contextPath}/bbsToshare.jsp">
					<li class="navbar-item ">论坛分享</li>
				</a>
				<a href="${pageContext.request.contextPath}/news.jsp">
					<li class="navbar-item ">新闻动态</li>
				</a>
				<!--<a href="#">
					<li class="navbar-item ">微课分享</li>
				</a>
				-->
				<a href="${pageContext.request.contextPath}/activity/course">
					<li class="navbar-item ">活动区</li>
				</a>
				<a href="${pageContext.request.contextPath}/about.jsp">
				<li class="navbar-item more">
				 关于我们
				 <%--<span class="triangle"></span>
					<ul class="sub-navbar">
						<a href="${pageContext.request.contextPath}/about.jsp">
							<li class="sub-navbar-item">公司介绍</li>
						</a>
						<a href="${pageContext.request.contextPath}/about.jsp">
							<li class="sub-navbar-item">内容合作</li>
						</a>
						<a href="${pageContext.request.contextPath}/about.jsp">
							<li class="sub-navbar-item">联系我们</li>
						</a>
						<a href="${pageContext.request.contextPath}/about.jsp">
							<li class="sub-navbar-item">商务服务</li>
						</a>
						<a href="${pageContext.request.contextPath}/about.jsp">
							<li class="sub-navbar-item">加入我们</li>
						</a>
					</ul>--%>
				</li>
				</a>
			</ul>
		 	

			<div id="header-auth-user-div">
				<div class="login-bar" style="display: <%=div_style%>">
					<i class="iconfont icon-user_login"></i>
					<a href="${pageContext.request.contextPath}/login.jsp"> <span class="txt">登录</span></a>
				</div>
				<div class="login-bar user" style="display: <%=user_login%>;">
					<ul class="navbar">
						<a>
							<li class="navbar-item "><%=nickname%></li>
						</a>
						<a href="${pageContext.request.contextPath}/user/loginOut">
							<li class="navbar-item ">退出</li>
						</a>
					</ul>

				</div>
			</div>

			<%--<div class="search">--%>
				<%--<form target="_blank" action="#" method="get">--%>
					<%--<input type="text" class="search-input" name="q" placeholder="搜索" />--%>
					<%--<a href="javascript:;"> <i class="iconfont icon-search_yi"></i>--%>
					<%--</a> <input type="submit" class="submit" value="" />--%>

				<%--</form>--%>
			<%--</div>--%>
		</div>
	</div>

</body>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/base/top.js"></script>
