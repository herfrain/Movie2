<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>FAQ</title>
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
<!-- faq-banner -->
	<div class="faq">
		<h4 class="latest-text w3_faq_latest_text w3_latest_text">FAQ</h4>
			<div class="container">
				<div class="panel-group w3l_panel_group_faq" id="accordion" role="tablist" aria-multiselectable="true">
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
					  <h4 class="panel-title asd">
						<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>assumenda est cliche reprehenderit?
						</a>
					  </h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
					  <div class="panel-body panel_text">
						Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
					  </div>
					</div>
				  </div>
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Itaque earum rerum?
						</a>
					  </h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
					   <div class="panel-body panel_text">
						Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
					  </div>
					</div>
				  </div>
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>autem accusamus terry quibusdam?
						</a>
					  </h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
					   <div class="panel-body panel_text">
						Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
					  </div>
					</div>
				  </div>
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFour">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>excepturi sint cliche reprehenderit?
						</a>
					  </h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
					   <div class="panel-body panel_text">
						Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
					  </div>
					</div>
				  </div>
				   <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFive">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>dolorem eum fugiat quo voluptas nulla pariatur?
						</a>
					  </h4>
					</div>
					<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
					   <div class="panel-body panel_text">
						Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
					  </div>
					</div>
				  </div>
				   <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingSix">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>terry eiusmod high life accusamus?
						</a>
					  </h4>
					</div>
					<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
					   <div class="panel-body panel_text">
						Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
					  </div>
					</div>
				  </div>
				   <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingSeven">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>quasi architecto beatae vitae dicta?
						</a>
					  </h4>
					</div>
					<div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
					   <div class="panel-body panel_text">
						Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
					  </div>
					</div>
				  </div>
				   <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingEight">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>iure reprehenderit qui in ea voluptate velit esse?
						</a>
					  </h4>
					</div>
					<div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
					   <div class="panel-body panel_text">
						Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
					  </div>
					</div>
				  </div>
				   <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingNine">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>reprehenderit qui in ea voluptate velit esse quam nihil?
						</a>
					  </h4>
					</div>
					<div id="collapseNine" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingNine">
					   <div class="panel-body panel_text">
						Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
					  </div>
					</div>
				  </div>
				</div>
			</div>
	</div>
<!-- //faq-banner -->
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