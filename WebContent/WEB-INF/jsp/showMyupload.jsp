<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>MyUpload</title>
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

<style>

	.col-md-2{
		width: auto;
	}



</style>

</head>

<body>
	<!-- header -->
	<%@ include file="/include/head.jsp"%>
	<!-- //header -->

	<!-- nav -->
	<jsp:include page="/include/nav.jsp">
		<jsp:param value="upload" name="tag"/>
	</jsp:include>
	<!-- //nav -->

	<div class="general-agileits-w3l">
		<div class="w3l-medile-movies-grids">

			<!-- /movie-browse-agile -->

			<div class="movie-browse-agile">
				<!--/browse-agile-w3ls -->
				<div class="browse-agile-w3ls general-w3ls">
					<div class="tittle-head">
						<div class="container">
							<div class="row breadcrumb">
								<div class="col-md-2 pull-left">
									<ol class="collectionBread">
										<li><a href="index.do">首页</a></li>
										<li class="active">我的投稿</li>
									</ol>
								</div>

							</div>
						</div>
					</div>
					<div class="container">
						<div class="browse-inner">

							<div class="col-lg-2 selectBar">
								<ul class="list-group">
									<a href="${pageContext.request.contextPath}/upload.do"><li class="list-group-item ">上传</li></a>
									<a href="${pageContext.request.contextPath}/showMyupload.do"><li class="list-group-item active" >我的视频</li></a>

								</ul>
							</div>

							<div class="col-lg-10">
								<c:choose>
									<c:when test="${!empty myUploads}">
										<c:forEach items="${myUploads}" var="myUpload">
											<div class="col-md-2 w3l-movie-gride-agile">
												<a href="movieDetail.do?movieID=${myUpload.movieid}"
													class="hvr-shutter-out-horizontal"><img
													src="<%=staticPath%>/images/${myUpload.movieid}.jpg"
													title="${myUpload.moviename}" class="img-responsive"
													alt=" " />
													<div class="w3l-action-icon">
														<i class="fa fa-play-circle" aria-hidden="true"></i>
													</div> </a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6>
															<a href="movieDetail.do?movieID=${myUpload.movieid}">${myUpload.moviename}</a>
														</h6>
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>${fn:split(myUpload.movieupdatedate, "-")[0]}</p>
														<div class="block-stars">
															<span>${myUpload.moviescore}</span>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>

											</div>
										</c:forEach>
									</c:when>

									<c:otherwise>
                     暂无数据
        </c:otherwise>
								</c:choose>
								<div class="clearfix"></div>
							</div>


						</div>
					</div>
				</div>
				<!--//browse-agile-w3ls -->

			</div>

		</div>
		<!-- //w3l-medile-movies-grids -->
	</div>



	<!-- flexSlider -->
	<link rel="stylesheet" href="<%=staticPath%>/css/flexslider.css" type="text/css" media="screen" property="" />
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