<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<title>General</title>
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
		<link href="<%=staticPath %>/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="<%=staticPath %>/css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="<%=staticPath %>/css/medile.css" rel='stylesheet' type='text/css' />
		<link href="<%=staticPath %>/css/single.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" href="<%=staticPath %>/css/contactstyle.css" type="text/css" media="all" />
		<link rel="stylesheet" href="<%=staticPath %>/css/faqstyle.css" type="text/css" media="all" />
		<!-- font-awesome icons -->
		<link rel="stylesheet" href="<%=staticPath %>/css/font-awesome.min.css" />
		<!-- //font-awesome icons -->
		<!-- news-css -->
		<link rel="stylesheet" href="<%=staticPath %>/news-css/news.css" type="text/css" media="all" />
		<!-- //news-css -->
		<!-- list-css -->
		<link rel="stylesheet" href="<%=staticPath %>/list-css/list.css" type="text/css" media="all" />
		<!-- //list-css -->
		<!-- js -->
		<script type="text/javascript" src="<%=staticPath %>/js/jquery-2.1.4.min.js"></script>
		<!-- //js -->
		<!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
		<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="<%=staticPath %>/js/move-top.js"></script>
		<script type="text/javascript" src="<%=staticPath %>/js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1000);
				});
			});
		</script>
		<!-- start-smoth-scrolling -->
		<link href="<%=staticPath %>/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
		<script src="<%=staticPath %>/js/owl.carousel.js"></script>
		<script>
			$(document).ready(function() {
				$("#owl-demo").owlCarousel({

					autoPlay: 3000, //Set AutoPlay to 3 seconds

					items: 5,
					itemsDesktop: [640, 5],
					itemsDesktopSmall: [414, 4]

				});

			});
		</script>
	</head>

	<body>
		<!-- header -->
		<%@ include file="/include/head.jsp"%>
		<!-- //header -->
		
		<!-- nav -->
		<%@ include file="/include/nav.jsp"%>
		<!-- //nav -->

		<!-- /w3l-medile-movies-grids -->
		<div class="general-agileits-w3l">
			<div class="w3l-medile-movies-grids">

				<!-- /movie-browse-agile -->

				<div class="movie-browse-agile">
					<!--/browse-agile-w3ls -->
					<div class="browse-agile-w3ls general-w3ls">
						<div class="tittle-head">
							<div class="container">
								<div class="agileits-single-top">
									<ol class="breadcrumb">
										<li>
											<a href="index.html">首页</a>
										</li>
										<li class="active">搜索结果</li>
									</ol>
								</div>
							</div>
						</div>
						<div class="container">
							<div class="browse-inner">
								
								<c:if test="${!empty searchResults}">
									<c:forEach begin="0" end="23" items="${searchResults}" var="searchResult">
										<div class="col-md-2 w3l-movie-gride-agile">
											<a href="movieDetail.do?movieID=${searchResult.movieid}" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/${searchResult.movieid}.jpg" title="album-name" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1">
												<div class="w3l-movie-text">
													<h6><a href="movieDetail.do?movieID=${searchResult.movieid}">${searchResult.moviename}</a></h6>
												</div>
												<div class="mid-2">
		
													<p>${fn:split(searchResult.movieupdatedate,"-")[0]}</p>
													<div class="block-stars">
														<span>${searchResult.moviescore}</span>
													</div>
													<div class="clearfix"></div>
												</div>
		
											</div>
											<div class="ribben two">
												<p>NEW</p>
											</div>
										</div>
									</c:forEach>
								</c:if>

								<div class="clearfix"> </div>
							</div>
							<!-- /latest-movies1 -->
						</div>
					</div>
					<!--//browse-agile-w3ls -->
					<!-- <div class="blog-pagenat-wthree">
						<ul>
							<li>
								<a class="frist" href="#">上一页</a>
							</li>
							<li>
								<a href="#">1</a>
							</li>
							<li>
								<a href="#">2</a>
							</li>
							<li>
								<a href="#">3</a>
							</li>
							<li>
								<a href="#">4</a>
							</li>
							<li>
								<a href="#">5</a>
							</li>
							<li>
								<a class="last" href="#">下一页</a>
							</li>
						</ul>
					</div> -->
				</div>
			</div>
			<!-- //w3l-medile-movies-grids -->
		</div>
		<!-- //comedy-w3l-agileits -->
		
		<!-- footer -->
		<%@ include file="/include/foot.jsp"%>
		<!-- //footer -->
		
		<!-- Bootstrap Core JavaScript -->
		<script src="<%=staticPath %>/js/bootstrap.min.js"></script>
		<script>
			$(document).ready(function() {
				$(".dropdown").hover(
					function() {
						$('.dropdown-menu', this).stop(true, true).slideDown("fast");
						$(this).toggleClass('open');
					},
					function() {
						$('.dropdown-menu', this).stop(true, true).slideUp("fast");
						$(this).toggleClass('open');
					}
				);
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
					easingType: 'easeOutQuart'
				});

			});
		</script>
		<!-- //here ends scrolling icon -->
	</body>

</html>