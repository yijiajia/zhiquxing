<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
		<title>活动视频</title>
		<!--清除默认样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset-min.css" />
		<!--页面样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/activity-video.css"/>
	<script type="text/javascript">
        var courseId = ${requestScope.course.id};
        var basePath = "${pageContext.request.contextPath}";
        var userId = "${sessionScope.user.id}";

	</script>

</head>
<%
	String div_comment = "none";
	String div_default = "block";
	int num = (int)request.getAttribute("num");

	if(num!=0){
		div_comment = "block";
		div_default = "none";
	}
%>

<body>

		<!--导航栏开始-->
		<%@ include file="top.jsp"%>
		<!--导航栏结束-->
		
		<div class="w">
			<div class="player">
				<video src="${pageContext.request.contextPath}/${course.videoUrl}" controls="controls" preload="auto"></video>
			</div>
			<div class="share">
				<a href="#" class="wechat"></a>
				<a href="#" class="qq"></a>
				<a href="#" class="sina"></a>
				<p>分享到：</p>
			</div>

			<div class="comment-page" >
				<div class="comment">
					<form class="comment-form" action="" method="post">
						<div class="head">评论（<span class="comment-num">${num}</span>）</div>
						<span style="color:red;" id="comment-tip"></span>
						<div class="body">
							<!--<input type="hidden" name="" value=""/>-->
							<!--<input type="hidden" name="" value=""/>-->
							<textarea id="comment" name="comment" rows cols></textarea>
						</div>
						<div class="foot">
							<button id="btn-submit" type="button">发布</button>
						</div>
					</form>
				</div>

				<%--<div class="comment-list" style="display: <%=div_default%>">
				<p style="text-align: center;"> 暂时还没有评论，赶紧来做第一个吧！</p>
				</div>--%>

				<%--<div class="comment-list" style="display: <%=div_comment%>">
					<ul>
						<c:forEach items="${requestScope.commentList }" var="courseComment" varStatus="st">
						<li >
							<div class="img">
								<a href="#">
									<img src="${pageContext.request.contextPath}/iconfont/user-icon.jpg"/>
								</a>
							</div>
							<div class="text">
								<h2>天空之翼</h2>
								<p>${courseComment.comment}</p>
								<div class="meta">
									<dl class="info">
										<dd>
											<fmt:formatDate value="${courseComment.createTime}" pattern="YYYY-MM-dd"/>
											&nbsp;
										</dd>
										<dd><span class="line"></span></dd>
										<dd>
											<a href="#" class="ico-jubao">&nbsp;举报</a>
										</dd>
									</dl>
									<dl class="acts">
										<dd>
											<a class="ico-zan" data-id="${courseComment.id}" >
												&nbsp;<span id="praiseNum" data-index="${st.index}">${courseComment.praiseNum}</span>赞
											</a>
										</dd>
										<dd>
											<span class="line"></span>
										</dd>
										<dd>
											<a href="#" class="ico-com">&nbsp;</a>
										</dd>
									</dl>
								</div>
							</div>
						</li>
						</c:forEach>
					</ul>
				</div>--%>
			</div>
		</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/activity/activity_video.js"></script>

</body>

</html>