<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<title>智趣行 | 亲子教育从这里开始</title>
<%@ include file="top.jsp"%>
<script src="${pageContext.request.contextPath}/js/main/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main/scroll.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main/amazeui.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main/index.css">

<!-- a链接hover时存在下划线6问题
		top 导航栏下划线不能切换
 -->
</head>


<body>
	<div class="rollpic">
		<div data-am-widget="slider" class="am-slider am-slider-default"
			data-am-slider='{}'>
			<ul class="am-slides">
				<li><img src="${pageContext.request.contextPath}/img/main/cycle/index03.jpg" style="height: 600px;" /></li>
				<li><img src="${pageContext.request.contextPath}/img/main/cycle/index01.jpg" style="height: 600px;" /></li>
				
				<li><img src="${pageContext.request.contextPath}/img/main/cycle/index02.jpg" style="height: 600px;" /></li>
				<li><img src="${pageContext.request.contextPath}/img/main/cycle/index04.jpg" style="height: 600px;" /></li>
				<li><img src="${pageContext.request.contextPath}/img/main/cycle/index05.jpg" style="height: 600px;" /></li>
			</ul>
		</div>
	</div>
	<!--  
	该隐藏部分轮播图的箭头图示，未实现
	<ul class="am-direction-nav">
		<li class="am-nav-prev"><a class="am-prev" href="#" > </a></li>
		<li class="am-nav-next"><a class="am-next" href="#"> </a></li>
	</ul>
-->
	 
	 
	 <div class="w_1920 Advantage">
    <div class="w_1200 index_title">
    </div>
    <div class="w_1200 Advantage_list">
        <a href="javascript:;">
			<span>健康发展</span>
            <span>从脑科学出发，我们根据不同年龄阶段的成长需求，
						提供最适合孩子的亲子游戏学习内容，以满足孩子成长的需要，让孩子健康成功</span>
        </a>
        <a href="javascript:;">
			<span>益智成长</span>
            <span><p>我们的亲子游戏是根据朱智贤、林崇德等教授提出的多元智力理论，
						针对注意力、观察力、记忆力、想象创造能力、思维能力、语言能力、实践活动能力所研发</p></span>
        </a>
        <a href="javascript:;">
			<span>亲子关系</span>
            <span><p>我们打破了以往以孩子为主体的个体游戏模式，转变为以父母和孩子为中心的亲子游戏模式。</p></span>
        </a>
        <a href="javascript:;">
			<span>亲子游戏</span>
            <span><p>我们不遗余力、不断改进、注重创新、敬业诚信、求实创优，
					只为创造益智儿童、培养高雅情趣的游戏，为了这个目标，我们一直在路上。</p></span>
        </a>
    </div>
</div>
	
	
	<!-- 以下部分为产品特色区，分为8个模块 -->
	<div class="gray-li">
		<div class="customer-case part-all ">
			<div class="part-title">
			<i class=" am-icon-briefcase part-title-i"></i> 
			<span class="part-title-span">产品特色</span>
			<p>Product features</p>
	  </div>


			<ul data-am-widget="gallery"
				class=" am-avg-sm-1
  am-avg-md-4 am-avg-lg-4 am-gallery-bordered customer-case-content" style="margin-left:50px;margin-right:50px">
				<li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3" >
					<div class="am-gallery-item case-img1">
						<a href="#"> <img src="${pageContext.request.contextPath}/img/product/work-1.jpg"  /></a>
					</div>
					<div class="case-li-mengban">
						<div class=" case-word">
							<h3 class="am-gallery-title">智趣魔法箱</h3>
							<p>2017-10-20</p>
							<a href="${pageContext.request.contextPath}/product_introduce.jsp"><span><i class="am-icon-eye"></i>查看更多</span></a>
						</div>
					</div>
				</li>
				
				<!-- 间隔区域 -->
				<li style="width:200px;height:304px">
					<div >
					</div>
				</li>
					
					
				<li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
					<div class="am-gallery-item case-img1">
						<a href="#"> <img src="${pageContext.request.contextPath}/img/product/product01.png" />
						</a>
					</div>
					<div class="case-li-mengban">
						<div class=" case-word">
							<h3 class="am-gallery-title">智创西游</h3>
							<p>2017-09-26</p>
							<a href="${pageContext.request.contextPath}/product_introduce.jsp"><span><i class="am-icon-eye"></i>查看更多</span></a>
						</div>
					</div>
				</li>
				
			
				
				<li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
					<div class="am-gallery-item case-img1">
						<a href="#"> <img src="${pageContext.request.contextPath}/img/product/work-3.jpg"/>
						</a>
					</div>
					<div class="case-li-mengban">
						<div class=" case-word">
							<h3 class="am-gallery-title">智趣x</h3>
							<p>2017-10-30</p>
							<a href="${pageContext.request.contextPath}/product_introduce.jsp"><span><i class="am-icon-eye"></i>查看更多</span></a>
						</div>
					</div>
				</li>
			
			</ul>
			<div class="lan-bott">
				<div class="left">
					<span>全方位解决孩子健康成长问题</span>
					<p>To solve the problem of healthy growth</p>
				</div>
				<div class="right">
					<a href="${pageContext.request.contextPath}/product_introduce.jsp"> <span class="see-more">查看更多<i
							class="am-icon-angle-double-right"></i></span>
					</a>
				</div>
				<div class="clear"></div>
			</div>
			<div class="part-title"></div>
		</div>
	</div>

	<div class=" news-all">
		<div class="am-container-1">
			<div class="news part-all">
				<div class="part-title">
					 <i
						class="am-icon-newspaper-o part-title-i"></i> <span
						class="part-title-span">新闻动态</span>
						<p> Dynamics News </p>
				
				</div>
				<div class="news-content ">
					<ul class="news-content-ul">
						<li class="am-u-sm-12 am-u-md-6 am-u-lg-6"><a href="#" target="_self">
								<div class=" am-u-sm-12 am-u-md-12 am-u-lg-5">
									<div class="news-img">
										<img src="${pageContext.request.contextPath}/img/news/news1.jpg"></img>
									</div>
								</div>
								<div class=" am-u-sm-12 am-u-md-12 am-u-lg-7">
									<span class="news-right-title">让你大开眼界 亲子产品背后的高科技</span>
									<p class="news-right-time">2015-01-29</p>
									<p class="news-right-words">现在，80后的潮妈潮爸使用的育儿产品，已经完全颠覆了父辈的老传统，
									各种高科技的育儿产品受到年轻一代父母的热捧，催眠玩具、无线婴儿看护器、甚至还有“踢被提醒器”等等，它们大大超出了老一辈人的想象。
									科技改变成年人的生活，同时也在改变我们孩子的童年...</p>
									<a href="${pageContext.request.contextPath}/news.jsp"><span class="see-more2">查看更多<i
											class="am-icon-angle-double-right"></i></span></a>
								</div>
								<div class="clear"></div>
						</a></li>
						<li class="am-u-sm-12 am-u-md-6 am-u-lg-6"><a href="#" target="_self">
								<div class=" am-u-sm-12 am-u-md-12 am-u-lg-5">
									<div class="news-img">
										<img src="${pageContext.request.contextPath}/img/news/news2.jpg"></img>
									</div>
								</div>
								<div class=" am-u-sm-12 am-u-md-12 am-u-lg-7">
									<span class="news-right-title">智趣行：打造最有趣的亲子产品，让家长回归陪伴</span>
									<p class="news-right-time">2017-10-21</p>
									<p class="news-right-words">当所有的早教产品都在解放家长，
									智趣行有限公司负责人却想让更多的家长回归陪伴，智趣西游产品设计师小黄说，
									智趣行的理念是"让孩子更聪明一些"，我们希望把亲子游戏这件事做得有趣，有爱，有用，
									帮助孩子的关键时期健康益智成长...</p>
									<a href="${pageContext.request.contextPath}/news.jsp">
									<span class="see-more2">查看更多
									<i class="am-icon-angle-double-right"></i>
									</span>
									</a>
								</div>
								<div class="clear"></div>
						</a></li>
						<div class="clear"></div>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="part-all gray-li">
		<div class="customer  am-container-1">
			<div class="part-title">
				<i class="am-icon-users part-title-i"></i> <span
					class="part-title-span">服务客户</span>
				<p>Serve Customers</p>
			</div>

			<div class="am-slider am-slider-default am-slider-carousel part-all"
				data-am-flexslider="{itemWidth:150, itemMargin: 5, slideshow: false}"
				style="background-color: #f0eeed; box-shadow: none;">
				<!-- 服务客户对象图标，可更改 -->
				<ul class="am-slides">
					<li><img src="${pageContext.request.contextPath}/img/main/cus/ptn4.png" /></li>
					<li><img src="${pageContext.request.contextPath}/img/main/cus/ptn5.png" /></li>
					<li><img src="${pageContext.request.contextPath}/img/main/cus/ptn6.png" /></li>
					<li><img src="${pageContext.request.contextPath}/img/main/cus/ptn7.png" /></li>
					<li><img src="${pageContext.request.contextPath}/img/main/cus/ptn8.png" /></li>
					<li><img src="${pageContext.request.contextPath}/img/main/cus/ptn5.png" /></li>
					<li><img src="${pageContext.request.contextPath}/img/main/cus/ptn4.png" /></li>
					<li><img src="${pageContext.request.contextPath}/img/main/cus/ptn5.png" /></li>
					<li><img src="${pageContext.request.contextPath}/img/main/cus/ptn6.png" /></li>
					<li><img src="${pageContext.request.contextPath}/img/main/cus/ptn7.png" /></li>
					<li><img src="${pageContext.request.contextPath}/img/main/cus/ptn8.png" /></li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- 该div应有display属性，目的为显示与隐藏之间的切换 -->
	<div id="aside-tools" class="aside-tools"
		style="position: fixed; z-index: 2147483647; ">
		<ul>
			<li class="item2"><a href="#" target="_self"></a></li>
			<li class="item3"><a href="#top" target="_self"></a></li>
		</ul>
	</div>

	<!-- 底部开始 -->
	<%@ include file="footer.jsp"%>
	<!-- 底部结束 -->
	
</body>
</html>
