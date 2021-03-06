<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="/include/taglib.jsp"%>
<!DOCTYPE html>

<html lang="en">
<head>
<title>Comedy</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->

<link href="<%=staticPath %>/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=staticPath %>/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=staticPath %>/css/medile.css" rel='stylesheet' type='text/css' />
<link href="<%=staticPath %>/css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="<%=staticPath %>/css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="<%=staticPath %>/css/faqstyle.css" type="text/css" media="all" />
<!-- news-css -->
<link rel="stylesheet" href="<%=staticPath %>/news-css/news.css" type="text/css" media="all" />
<!-- //news-css -->
<!-- list-css -->
<link rel="stylesheet" href="<%=staticPath %>/list-css/list.css" type="text/css" media="all" />
<!-- //list-css -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="<%=staticPath %>/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="<%=staticPath %>/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="<%=staticPath %>/js/move-top.js"></script>
<script type="text/javascript" src="<%=staticPath %>/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
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
	 
		  items : 5,
		  itemsDesktop : [640,5],
		  itemsDesktopSmall : [414,4]
	 
		});
	 
	}); 
</script> 
</head>
	
<body>
<!-- header -->
	<div class="headerpage"><%@ include file="./head.jsp"%></div>
	
<!-- //header -->

<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">Click Me</div>
							  </div>
							  <div class="form">
								<h3>Login to your account</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="submit" value="Login">
								</form>
							  </div>
							  <div class="form">
								<h3>Create an account</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="email" name="Email" placeholder="Email Address" required="">
								  <input type="text" name="Phone" placeholder="Phone Number" required="">
								  <input type="submit" value="Register">
								</form>
							  </div>
							  <div class="cta"><a href="#">Forgot your password?</a></div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		$('.toggle').click(function(){
		  // Switches the Icon
		  $(this).children('i').toggleClass('fa-pencil');
		  // Switches the forms  
		  $('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		  }, "slow");
		});
	</script>
<!-- //bootstrap-pop-up -->
<!-- nav -->
	<%@ include file="./nav.jsp"%>
<!-- //nav -->
<div class="general_social_icons">
	<nav class="social">
		<ul>
			<li class="w3_twitter"><a href="#">Twitter <i class="fa fa-twitter"></i></a></li>
			<li class="w3_facebook"><a href="#">Facebook <i class="fa fa-facebook"></i></a></li>
			<li class="w3_dribbble"><a href="#">Dribbble <i class="fa fa-dribbble"></i></a></li>
			<li class="w3_g_plus"><a href="#">Google+ <i class="fa fa-google-plus"></i></a></li>				  
		</ul>
  </nav>
</div>
<!-- comedy-w3l-agileits -->
	<div class="wthree-comedy">
	    <!-- /w3l-medile-movies-grids -->
			<div class="w3l-medile-movies-grids">
				<!-- /movie-browse-agile -->
				      <div class="movie-browse-agile">
					     <!--/browse-agile-w3ls -->
						<div class="browse-agile-w3ls general-w3ls">
								<div class="tittle-head">
									<h4 class="latest-text">Comedy Movies </h4>
									<div class="container">
										<div class="agileits-single-top">
											<ol class="breadcrumb">
											  <li><a href="index.html">Home</a></li>
											  <li class="active">Comedy Movies</li>
											</ol>
										</div>
									</div>
								</div>
							<div class="container">
									<!-- /latest-movies1 -->
							    <div class="browse-inner-come-agile-w3">
							   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c1.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Moana</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
								   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c2.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Dirty Grandpa</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
								    <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c3.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Ride Along</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														   <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										  <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c4.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">The Boss</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
										<div class="col-md-2 w3l-movie-gride-agile">
										<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c5.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Keanu</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														   <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c6.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Ice Age</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>

								<div class="clearfix"> </div>
								</div>
							
							<!-- //latest-movies1 -->
								<!-- /latest-movies1 -->
							    <div class="browse-inner-come-agile-w3">
							   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c7.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Mike-Dave</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														   <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
								   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c8.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Bad Moms</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
								    <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c9.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Barber Shop</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										  <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c10.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Nine Leaves</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
										<div class="col-md-2 w3l-movie-gride-agile">
										<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c11.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Billy Lynnâs </a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c12.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">War on Everyone</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>

								<div class="clearfix"> </div>
								</div>
							<!-- //latest-movies1 -->
							<div class="browse-inner-come-agile-w3">
							   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c1.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Moana</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
								   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c2.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Dirty Grandpa</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
								    <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c3.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Ride Along</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										  <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c4.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">The Boss</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
										<div class="col-md-2 w3l-movie-gride-agile">
										<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c5.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Keanu</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/c6.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Ice Age</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	     <div class="ribben two">
										<p>NEW</p>
									</div>	
									</div>

								<div class="clearfix"> </div>
								</div>
								</div>
						</div>
				<!--//browse-agile-w3ls -->
						<div class="blog-pagenat-wthree">
							<ul>
								<li><a class="frist" href="#">Prev</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a class="last" href="#">Next</a></li>
							</ul>
						</div>
					</div>
				<!-- //movie-browse-agile -->
				<!--body wrapper start-->
					<div class="review-slider">
						 <h4 class="latest-text">Movie Reviews</h4>
						       <div class="container">
						 		<div class="w3_agile_banner_bottom_grid">
									<div id="owl-demo" class="owl-carousel owl-theme">
										<div class="item">
											<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
												<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/m13.jpg" title="album-name" class="img-responsive" alt=" " />
													<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.html">Citizen Soldier</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
												<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/m11.jpg" title="album-name" class="img-responsive" alt=" " />
													<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.html">X-Men</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
												<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/m12.jpg" title="album-name" class="img-responsive" alt=" " />
													<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.html">Greater</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
												<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/m7.jpg" title="album-name" class="img-responsive" alt=" " />
													<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.html">Light B/t Oceans</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
												<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/m8.jpg" title="album-name" class="img-responsive" alt=" " />
													<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.html">The BFG</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
												<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/m9.jpg" title="album-name" class="img-responsive" alt=" " />
													<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.html">Central Intelligence</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
												<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/m10.jpg" title="album-name" class="img-responsive" alt=" " />
													<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.html">Don't Think Twice</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
												<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/m17.jpg" title="album-name" class="img-responsive" alt=" " />
													<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.html">Peter</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
												<a href="single.html" class="hvr-shutter-out-horizontal"><img src="<%=staticPath %>/images/m15.jpg" title="album-name" class="img-responsive" alt=" " />
													<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.html">Godâs Compass</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
										</div>
									</div>
								</div>
						<!--body wrapper end-->
					</div>	
			</div>	
		</div>
	<!-- //w3l-medile-movies-grids -->
	</div>
	<!-- //comedy-w3l-agileits -->
<!-- footer -->
	<div class="footerpage"><%@ include file="./foot.jsp"%></div>
	
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="<%=staticPath %>/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
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
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>