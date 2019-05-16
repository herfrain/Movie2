<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Home</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	
	
	
	
	
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		





</script>
<!-- //for-mobile-apps -->
<link href="<%=staticPath%>/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="<%=staticPath%>/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel="stylesheet" href="<%=staticPath%>/css/contactstyle.css"
	type="text/css" media="all" />
<link rel="stylesheet" href="<%=staticPath%>/css/faqstyle.css"
	type="text/css" media="all" />
<link href="<%=staticPath%>/css/single.css" rel='stylesheet'
	type='text/css' />
<link href="<%=staticPath%>/css/medile.css" rel='stylesheet'
	type='text/css' />
<!-- banner-slider -->
<link href="<%=staticPath%>/css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="<%=staticPath%>/css/popuo-box.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="<%=staticPath%>/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript"
	src="<%=staticPath%>/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- banner-bottom-plugin -->
<link href="<%=staticPath%>/css/owl.carousel.css" rel="stylesheet"
	type="text/css" media="all">
<script src="<%=staticPath%>/js/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel({

			autoPlay : 3000, //Set AutoPlay to 3 seconds

			items : 5,
			itemsDesktop : [ 640, 4 ],
			itemsDesktopSmall : [ 414, 3 ]

		});

	});
</script>
<!-- //banner-bottom-plugin -->
<!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="<%=staticPath%>/js/move-top.js"></script>
<script type="text/javascript" src="<%=staticPath%>/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>

<body>
	<!-- header -->
	<%@ include file="/include/head.jsp"%>
	<!-- //header -->

	<!-- nav -->
	<jsp:include page="/include/nav.jsp">
		<jsp:param value="index" name="tag"/>
	</jsp:include>
	<!-- //nav -->
	<!-- banner -->
	<div id="slidey" style="display: none;">
		<ul>
			<c:if test="${!empty moviesInSlidey}">
				<c:forEach items="${moviesInSlidey}" var="movieInSlidey">
					<li><img
						src="<%=staticPath %>/images/${movieInSlidey.movieid}.jpg"
						alt=" ">
						<p class='title'>${movieInSlidey.moviename }</p>
						<p class='description'>${movieInSlidey.movieintroduction }</p></li>
				</c:forEach>
			</c:if>
		</ul>
	</div>
	<script src="<%=staticPath%>/js/jquery.slidey.js"></script>
	<script src="<%=staticPath%>/js/jquery.dotdotdot.min.js"></script>
	<script type="text/javascript">
		$("#slidey").slidey({
			interval : 8000,
			listCount : 5,
			autoplay : false,
			showList : true
		});
		$(".slidey-list-description").dotdotdot();
	</script>
	<!-- //banner -->
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="w3_agile_banner_bottom_grid">
				<div id="owl-demo" class="owl-carousel owl-theme">


					<c:if test="${!empty moviesInOwl}">
						<c:forEach items="${moviesInOwl}" var="movieInOwl">
							<div class="item">
								<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
									<a href="movieDetail.do?movieID=${movieInOwl.movieid}" class="hvr-shutter-out-horizontal"><img
										src="<%=staticPath %>/images/${movieInOwl.movieid}.jpg"
										title="${movieInOwl.moviename}" class="img-responsive" alt=" " />
										<div class="w3l-action-icon">
											<i class="fa fa-play-circle" aria-hidden="true"></i>
										</div> </a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6>
												<a href="movieDetail.do?movieID=${movieInOwl.movieid}">${movieInOwl.moviename}</a>
											</h6>
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>${fn:split(movieInOwl.movieupdatedate, "-")[0]}</p>
											<div class="block-stars">
												<span>${movieInOwl.moviescore}</span>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="ribben">
										<p>NEW</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<div class="tlinks">
		Collect from <a href="http://www.cssmoban.com/">手机网站模板</a>
	</div>
	<!-- //banner-bottom -->

	<!-- general -->
	<div class="general">
		<h4 class="latest-text w3_latest_text">特色电影</h4>
		<div class="container">
			<div class="bs-example bs-example-tabs" role="tabpanel"
				data-example-id="togglable-tabs">
				<ul id="myTab" class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home"
						id="home-tab" role="tab" data-toggle="tab" aria-controls="home"
						aria-expanded="true">特色</a></li>
					<li role="presentation"><a href="#profile" role="tab"
						id="profile-tab" data-toggle="tab" aria-controls="profile"
						aria-expanded="false">高收视</a></li>
					<li role="presentation"><a href="#rating" id="rating-tab"
						role="tab" data-toggle="tab" aria-controls="rating"
						aria-expanded="true">高评分</a></li>
					<li role="presentation"><a href="#imdb" role="tab"
						id="imdb-tab" data-toggle="tab" aria-controls="imdb"
						aria-expanded="false">最新</a></li>
					
						
				</ul>
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="home"
						aria-labelledby="home-tab">
						<div class="w3_agile_featured_movies">

							<c:if test="${!empty specialMovies}">
								<c:forEach begin="0" end="11" items="${specialMovies}"
									var="specialMovie">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="movieDetail.do?movieID=${specialMovie.movieid}" class="hvr-shutter-out-horizontal"><img
											src="<%=staticPath%>/images/${specialMovie.movieid}.jpg"
											title="${specialMovie.moviename}" class="img-responsive" alt=" " />
											<div class="w3l-action-icon">
												<i class="fa fa-play-circle" aria-hidden="true"></i>
											</div> </a>
										<div class="mid-1 agileits_w3layouts_mid_1_home">
											<div class="w3l-movie-text">
												<h6>
													<a href="movieDetail.do?movieID=${specialMovie.movieid}">${specialMovie.moviename}</a>
												</h6>
											</div>
											<div class="mid-2 agile_mid_2_home">
												<p>${fn:split(specialMovie.movieupdatedate, "-")[0]}</p>
												<div class="block-stars">
													<span>${specialMovie.moviescore}</span>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
										<div class="ribben">
											<p>NEW</p>
										</div>
									</div>
								</c:forEach>
							</c:if>
							<div class="clearfix"></div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="profile"
						aria-labelledby="profile-tab">
						<c:if test="${!empty highRatingsMovies}">
							<c:forEach items="${highRatingsMovies}" begin="0" end="11"
								var="highRatingsMovie">
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="movieDetail.do?movieID=${highRatingsMovie.movieid}" class="hvr-shutter-out-horizontal"><img
										src="<%=staticPath%>/images/${highRatingsMovie.movieid}.jpg"
										title="${highRatingsMovie.moviename}" class="img-responsive" alt=" " />
										<div class="w3l-action-icon">
											<i class="fa fa-play-circle" aria-hidden="true"></i>
										</div> </a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6>
												<a href="movieDetail.do?movieID=${highRatingsMovie.movieid}">${highRatingsMovie.moviename}</a>
											</h6>
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>${fn:split(highRatingsMovie.movieupdatedate, "-")[0]}</p>
											<div class="block-stars">
												<span>${highRatingsMovie.moviescore}</span>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="ribben">
										<p>NEW</p>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<div class="clearfix"></div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="rating"
						aria-labelledby="rating-tab">
						<c:if test="${!empty highScoreMovies}">
							<c:forEach items="${highScoreMovies}" begin="0" end="11"
								var="highScoreMovie">
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="movieDetail.do?movieID=${highScoreMovie.movieid}" class="hvr-shutter-out-horizontal"><img
										src="<%=staticPath%>/images/${highScoreMovie.movieid}.jpg"
										title="${highScoreMovie.moviename}" class="img-responsive" alt=" " />
										<div class="w3l-action-icon">
											<i class="fa fa-play-circle" aria-hidden="true"></i>
										</div> </a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6>
												<a href="movieDetail.do?movieID=${highScoreMovie.movieid}">${highScoreMovie.moviename}</a>
											</h6>
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>${fn:split(highScoreMovie.movieupdatedate, "-")[0]}</p>
											<div class="block-stars">
												<span>${highScoreMovie.moviescore}</span>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="ribben">
										<p>NEW</p>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<div class="clearfix"></div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="imdb"
						aria-labelledby="imdb-tab">
						<c:if test="${!empty newestMovies}">
							<c:forEach items="${newestMovies}" begin="0" end="11"
								var="newestMovie">
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="movieDetail.do?movieID=${newestMovie.movieid}" class="hvr-shutter-out-horizontal"><img
										src="<%=staticPath%>/images/${newestMovie.movieid}.jpg"
										title="${newestMovie.moviename}" class="img-responsive" alt=" " />
										<div class="w3l-action-icon">
											<i class="fa fa-play-circle" aria-hidden="true"></i>
										</div> </a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6>
												<a href="movieDetail.do?movieID=${newestMovie.movieid}">${newestMovie.moviename}</a>
											</h6>
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>${fn:split(newestMovie.movieupdatedate, "-")[0]}</p>
											<div class="block-stars">
												<span>${newestMovie.moviescore}</span>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="ribben">
										<p>NEW</p>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<div class="clearfix"></div>
					</div>
		
				</div>
			</div>
		</div>
	</div>
	<!-- //general -->
	<!-- Latest-tv-series -->
	<div class="Latest-tv-series">
		<h4 class="latest-text w3_latest_text w3_home_popular">最受欢迎的电影</h4>
		<div class="container">
			<section class="slider">
				<div class="flexslider">
					<div class="agile_tv_series_grid">
						<div class="col-md-6 agile_tv_series_grid_left">
							<div class="w3ls_market_video_grid1">
								<a href="movieDetail.do?movieID=${popularMovies[0].movieid}" ><img src="<%=staticPath%>/images/${popularMovies[0].movieid}.jpg" alt=" "
									class="img-responsive" /><a class="w3_play_icon"><span
									class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
								</a></a> 
							</div>
						</div>
						<div class="col-md-6 agile_tv_series_grid_right">
							<p class="fexi_header">${popularMovies[0].moviename}</p>
							<p class="fexi_header_para">
								<span class="conjuring_w3">简述<label>:</label></span>
								${fn:substring(popularMovies[0].movieintroduction,0,60)}...
							</p>
							<p class="fexi_header_para">
								<span>上映时间<label>:</label>
								</span> ${popularMovies[0].movieupdatedate}
							</p>
							<p class="fexi_header_para">
								<span>类型<label>:</label>
								</span> ${popularMovies[0].movietype}
							</p>
							<p class="fexi_header_para fexi_header_para1">
								<span>评分<label>:</label></span> ${popularMovies[0].moviescore}
							</p>
						</div>
						<div class="clearfix"></div>
						<div class="agileinfo_flexislider_grids">
							<c:if test="${!empty popularMovies}">
								<c:forEach begin="1" end="6" items="${popularMovies}"
									var="popularMovie">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="movieDetail.do?movieID=${popularMovie.movieid}" class="hvr-shutter-out-horizontal"><img
											src="<%=staticPath%>/images/${popularMovie.movieid}.jpg"
											title="${popularMovie.moviename}" class="img-responsive" alt=" " />
											<div class="w3l-action-icon">
												<i class="fa fa-play-circle" aria-hidden="true"></i>
											</div> </a>
										<div class="mid-1 agileits_w3layouts_mid_1_home">
											<div class="w3l-movie-text">
												<h6>
													<a href="movieDetail.do?movieID=${popularMovie.movieid}">${popularMovie.moviename}</a>
												</h6>
											</div>
											<div class="mid-2 agile_mid_2_home">
												<p>${fn:split(popularMovie.movieupdatedate,"-")[0]}</p>
												<div class="block-stars">
													<span>${popularMovie.moviescore}</span>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
										<div class="ribben">
											<p>NEW</p>
										</div>
									</div>
								</c:forEach>
							</c:if>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</section>
			<!-- flexSlider -->
			<link rel="stylesheet" href="<%=staticPath%>/css/flexslider.css"
				type="text/css" media="screen" property="" />
			<script defer src="<%=staticPath%>/js/jquery.flexslider.js"></script>
			
			<!-- //flexSlider -->
		</div>
	</div>
	<!-- pop-up-box -->
	<script src="<%=staticPath%>/js/jquery.magnific-popup.js"
		type="text/javascript"></script>
	<!--//pop-up-box -->
	<div id="small-dialog" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/164819130?title=0&byline=0"></iframe>--->
	</div>
	<div id="small-dialog1" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/148284736"></iframe>--->
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0"></iframe>--->
	</div>
	<script>
		$(document).ready(function() {
			$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
				type : 'inline',
				fixedContentPos : false,
				fixedBgPos : true,
				overflowY : 'auto',
				closeBtnInside : true,
				preloader : false,
				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //Latest-tv-series -->


	<!-- footer -->
	<%@ include file="/include/foot.jsp"%>
	<!-- //footer -->


	<!-- Bootstrap Core JavaScript -->
	<script src="<%=staticPath%>/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {
			$(".dropdown").hover(function() {
				$('.dropdown-menu', this).stop(true, true).slideDown("fast");
				$(this).toggleClass('open');
			}, function() {
				$('.dropdown-menu', this).stop(true, true).slideUp("fast");
				$(this).toggleClass('open');
			});
		});
	</script>
	<!-- //Bootstrap Core JavaScript -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
</body>

</html>