<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>专享零食 | 食零食，享生活！</title>

	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="css/main.css" />
	<script type="text/javascript" src="js/main.js" ></script>
	<link rel="shortcut icon" type="image/x-icon" href="http://css.bkjia.com/bkjia/images/favicon.ico">
	
	<script type="application/javascript">
		$(function(){
			new mainConfig();
		});
	</script>
	
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
			<div id="line"></div>
			<div id="nav_content">
				<div id="logo">
					<img src="img/logo.png" width="85" height="40"/>
				</div>
				<div id="menu">
					<ul>
						<li style="color: #E50000;font-weight: bold;"><a>休闲零食</a></li>
						<li><a>特色零食</a></li>
						<li><a>进口零食</a></li>
						<li><a>饼干糕点</a></li>
						<li><a>生鲜果蔬</a></li>
						<li><a>茶水饮料</a></li>
					</ul>
				</div>
				<div id="loginAndShoppingCare">
					<a id="loginBtn">登录</a>
					<a>购物车</a>
				</div>
				<div id="search">
					<input type="text" class="form-control" placeholder="请输入您要查询的零食名称..." id="searchBox">
					<button type="button" class="btn btn-info" id="searchBtn">查询</button>
				</div>
			</div>
		</nav>
		<!--<div style="clear: both;margin-bottom: 90px;"></div>-->
		<div id="body_content">
			<div id="myCarousel" class="carousel slide">
			   <!-- 轮播（Carousel）指标 -->
			   <ol class="carousel-indicators">
			      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			      <li data-target="#myCarousel" data-slide-to="1"></li>
			      <li data-target="#myCarousel" data-slide-to="2"></li>
			   </ol>  
			   <!-- 轮播（Carousel）项目 -->
			   <div class="carousel-inner">
			      <div class="item active">
			         <img src="http://img1.liwuyou.com/data/afficheimg/20161212hwmeom.jpg" alt="First slide">
			         <div class="carousel-caption">活动名称活动名称活动名称。。。</div>
			      </div>
			      <div class="item">
			         <img src="http://www.liwuyou.com/data/afficheimg/20160908cdrswo.jpg" alt="Second slide">
			         <div class="carousel-caption">活动名称活动名称活动名称。。。</div>
			      </div>
			      <div class="item">
			         <img src="http://www.liwuyou.com/data/afficheimg/20160908vlyhsc.jpg" alt="Third slide">
			         <div class="carousel-caption">活动名称活动名称活动名称。。。</div>
			      </div>
			   </div>
			</div>
			<div id="menu_category">
				<ul>
					<li><img src="img/cate0.png" width="50" height="50" /><span>热论话题</span></li>
					<li><img src="img/cate0.png" width="50" height="50" /><span>文章精选</span></li>
					<li><img src="img/cate1.png" width="50" height="50" /><span>精品包装</span></li>
					<li><img src="img/cate2.png" width="50" height="50" /><span>童年回忆</span></li>
					<li><img src="img/cate4.png" width="50" height="50" /><span>宠物零食</span></li>
				</ul>
			</div>
			<div id="new_goods_recommend">
				<div class="new_goods_title" >
					<span class="new_reco" >热门话题</span>
					<span style="color: lightpink;font-size: 8px;">&nbsp;&nbsp;♫ ♬ ♩ ♭ ♪♫♫ ♬ ♩ ♭  ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫&nbsp;&nbsp;</span>
					<span class="new_reco">查看更多</span>
				</div>
				<div class="new_goods_list">
					<ul class="new_goods_first">
						<li>
							<img src="img/goods.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods4.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods2.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
					</ul>
				</div>
				<div class="new_goods_title" >
					<span class="new_reco" >文章精选</span>
					<span style="color: lightpink;font-size: 8px;">&nbsp;&nbsp;♫ ♬ ♩ ♭ ♪♫♫ ♬ ♩ ♭  ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫&nbsp;&nbsp;</span>
					<span class="new_reco">查看更多</span>
				</div>
				<div class="new_goods_list">
					<ul class="new_goods_first">
						<li>
							<img src="img/goods.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods4.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods2.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
							</span>
						</li>
					</ul>
				</div>
				<div class="new_goods_title" >
					<span class="new_reco" >新品推荐</span>
					<span style="color: lightpink;font-size: 8px;">&nbsp;&nbsp;♫ ♬ ♩ ♭ ♪♫♫ ♬ ♩ ♭  ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫&nbsp;&nbsp;</span>
					<span class="new_reco">查看更多</span>
				</div>
				<div class="new_goods_list">
					<ul class="new_goods_first">
						<li>
							<img src="img/goods.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods4.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods2.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
					</ul>
				</div>
				<div class="new_goods_title" >
					<span class="new_reco">特色零食</span>
					<span style="color: lightpink;font-size: 8px;">&nbsp;&nbsp;♫ ♬ ♩ ♭ ♪♫♫ ♬ ♩ ♭  ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫&nbsp;&nbsp;</span>
					<span class="new_reco">查看更多</span>
				</div>
				<div class="new_goods_list">
					<ul class="new_goods_first">
						<li>
							<img src="img/goods4.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods2.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods4.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods2.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
					</ul>
				</div>
				<div class="new_goods_title" >
					<span class="new_reco">进口零食</span>
					<span style="color: lightpink;font-size: 8px;">&nbsp;&nbsp;♫ ♬ ♩ ♭ ♪♫♫ ♬ ♩ ♭  ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫&nbsp;&nbsp;</span>
					<span class="new_reco">查看更多</span>
				</div>
				<div class="new_goods_list">
					<ul class="new_goods_first">
						<li>
							<img src="img/goods4.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods2.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods4.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods2.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
					</ul>
				</div>
				<div class="new_goods_title" >
					<span class="new_reco">饼干糕点</span>
					<span style="color: lightpink;font-size: 8px;">&nbsp;&nbsp;♫ ♬ ♩ ♭ ♪♫♫ ♬ ♩ ♭  ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫ ♬ ♩ ♭ ♪♫&nbsp;&nbsp;</span>
					<span class="new_reco">查看更多</span>
				</div>
				<div class="new_goods_list">
					<ul class="new_goods_first">
						<li>
							<img src="img/goods4.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods2.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods5.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods4.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods3.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods2.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
						<li>
							<img src="img/goods1.jpg" width="275" height="140"/>
							<h4>零食名称零食名称零食名称</h4>
							<h5>大哥大哥大法官的股份大股东股份大哥发的广泛地胜多负少水电费水电费是的冯绍峰的...</h5>
							<span class="info-item">
								<img src="img/heart.png" /><span>25</span>
								<img src="img/pl.png" /><span>8</span>
								<img src="img/ll.png" /><span>357</span>
								<img src="img/money.png" /><span>86</span>
							</span>
						</li>
					</ul>
				</div>
			</div>
			<div id="more">查看更多</div>
			<div id="footer">
					footer
			</div>
		</div>

		<!--登录对话框-->
		<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		  	<div class="modal-dialog" role="document">
			    <div class="modal-content">
				    <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="exampleModalLabel">选择登录方式</h4>
				    </div>
			      	<div class="modal-body" style="height: 300px;">
			      		<br /><br /><br />
						<span id="weiboLogin"><img src="img/weibo_logo.png" width="90" height="90"/></span>
						<span id="qqLogin"><img src="img/qq_logo.png" width="90" height="90"/></span>
						<span id="weixinLogin"><img src="img/qq_logo.png" width="90" height="90"/></span>			        	
			      	</div>
			    </div>
		  	</div>
		</div>
</body>
</html>