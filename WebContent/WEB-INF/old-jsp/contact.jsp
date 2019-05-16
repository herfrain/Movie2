<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="<%=staticPath %>/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=staticPath %>/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="<%=staticPath %>/css/faqstyle.css" type="text/css" media="all" />
<link href="<%=staticPath %>/css/medile.css" rel='stylesheet' type='text/css' />
<link href="<%=staticPath %>/css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="<%=staticPath %>/css/contactstyle.css" type="text/css" media="all" />
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
<!-- contact -->
	<div class="contact-agile">
		<div id="map"></div>
		<div class="faq">
			<h4 class="latest-text w3_latest_text">Contact Us</h4>
			<div class="container">
				<div class="col-md-3 location-agileinfo">
					<div class="icon-w3">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					</div>
					<h3>Address</h3>
					<h4>345 Setwant natrer,</h4>
					<h4>Washington,</h4>
					<h4>United States.</h4>
				</div>
				<div class="col-md-3 call-agileits">
					<div class="icon-w3">
						<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
					</div>
					<h3>Call</h3>
					<h4>+18044126235</h4>
					<h4>+14056489808</h4>
					<h4>+16789339049</h4>
				</div>
				<div class="col-md-3 mail-wthree">
					<div class="icon-w3">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
					</div>
					<h3>Email</h3>
					<h4><a href="mailto:info@example.com">example1@mail.com</a></h4>
					<h4><a href="mailto:info@example.com">example2@mail.com</a></h4>
					<h4><a href="mailto:info@example.com">example3@mail.com</a></h4>
				</div>
				<div class="col-md-3 social-w3l">
					<div class="icon-w3">
						<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
					</div>
					<h3>Social media</h3>
					<ul>
						<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i><span class="text">Facebook</span></a></li>
						<li class="twt"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i><span class="text">Twitter</span></a></li>
						<li class="ggp"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i><span class="text">Google+</span></a></li>	
					</ul>
				</div>
				<div class="clearfix"></div>
				<form action="#" method="post">
					<input type="text" name="your name" placeholder="FIRST NAME" required="">
					<input type="text" name="your name" placeholder="LAST NAME" required="">
					<input type="text" name="your email" placeholder="EMAIL" required="">
					<input type="text" name="subject" placeholder="SUBJECT" required="">
					<textarea  name="your message" placeholder="YOUR MESSAGE" required=""></textarea>
					<input type="submit" value="SEND MESSAGE">
				</form>
			</div>
		</div>
	</div>
				<!-- Map-JavaScript -->
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>        
			<script type="text/javascript">
				google.maps.event.addDomListener(window, 'load', init);
				function init() {
					var mapOptions = {
						zoom: 11,
						center: new google.maps.LatLng(40.6700, -73.9400),
						styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]
					};
					var mapElement = document.getElementById('map');
					var map = new google.maps.Map(mapElement, mapOptions);
					var marker = new google.maps.Marker({
						position: new google.maps.LatLng(40.6700, -73.9400),
						map: map,
					});
				}
			</script>
		<!-- //Map-JavaScript -->
<!-- //contact -->
<!-- footer -->
	<div class="footerpage"><%@ include file="./foot.jsp"%></div>
<!-- //footer -->
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
<script src="<%=staticPath %>/js/bootstrap.min.js"></script>
</body>
</html>