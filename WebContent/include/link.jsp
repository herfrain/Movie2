<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="/include/taglib.jsp"%>


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
		<link href="<%=staticPath %>/css/contactstyle.css" rel="stylesheet" type="text/css" media="all" />
		<link href="<%=staticPath %>/css/faqstyle.css" rel="stylesheet" type="text/css" media="all" />
		<link href="<%=staticPath %>/css/single.css" rel='stylesheet' type='text/css' />
		<link href="<%=staticPath %>/css/medile.css" rel='stylesheet' type='text/css' />
		<!-- banner-slider -->
		<link href="<%=staticPath %>/css/jquery.slidey.min.css" rel="stylesheet">
		<!-- //banner-slider -->
		<!-- pop-up -->
		<link href="<%=staticPath %>/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
		<!-- //pop-up -->
		<!-- font-awesome icons -->
		<link rel="stylesheet" href="<%=staticPath %>/css/font-awesome.min.css" />
		<!-- //font-awesome icons -->
		<!-- js -->
		<script type="text/javascript" src="<%=staticPath %>/js/jquery-2.1.4.min.js"></script>
		<!-- //js -->
		<!-- banner-bottom-plugin -->
		<link href="<%=staticPath %>/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
		<script src="<%=staticPath %>/js/owl.carousel.js"></script>
		<script>
			$(document).ready(function() {
				$("#owl-demo").owlCarousel({

					autoPlay: 3000, //Set AutoPlay to 3 seconds

					items: 5,
					itemsDesktop: [640, 4],
					itemsDesktopSmall: [414, 3]

				});

			});
		</script>
		<!-- //banner-bottom-plugin -->
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
