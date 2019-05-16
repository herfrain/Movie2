<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<title>${moviename}_撰写长评</title>
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
		
		<!-- 评星 -->
		<link href="<%=staticPath %>/css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
		<script src="<%=staticPath %>/js/star-rating.js" type="text/javascript"></script>
		
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

				$(".list-group").click(function(e) {
					e.stopPropagation();
					var elem = $(e.target);
					console.log($(".list-group li"))
					$(".list-group li").removeClass("active");
					if(elem.is("li")) {
						if(elem.html() === "个人信息") {
							elem.addClass("active");
							$(".detailInfo").show();
							$(".resetPsw").hide();
						} else {
							elem.addClass("active");
							$(".resetPsw").show();
							$(".detailInfo").hide();
						}
					}
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
		
		<script type="text/javascript">
			//提交长评
			function submit(){
				console.log("submit");
				var movieid="<%=request.getParameter("movieid") %>";
				var title=document.getElementById("title").value;
				var detail=document.getElementById("detail").value;
				var score=$('#score').val();
				console.log(score);
				console.log(movieid);
				if(title==""||detail==""){
					alert('标题或正文不能为空');
					return ;
				}
				$.post("writeLongComment/write.do",{"movieid":movieid,"title":title,"detail":detail,"score":score},function(result){
					console.log(result);
					if(result=="true"){
						window.location.href="/movie/longCommentList.do?movieid="+movieid;
					}else{
						alter('出现错误');
					}
				});
			}
		</script>
	</head>

	<body>
		<!-- header -->
		<%@ include file="/include/head.jsp"%>
		<!-- //header -->
		
		<!-- nav -->
		<%@ include file="/include/nav.jsp"%>
		<!-- //nav -->

		<div class="container" style="margin-top:50px;margin-bottom:50px">
			<form action="javascript:submit()" method="post">
  				<div class="form-group">
    				<label for="title">标题</label>
    				<input id="title" type="text" class="form-control" placeholder="标题">
  				</div>
  				<div class="form-group">
    				<label for="detail">正文</label>
    				<textarea id="detail" class="form-control" rows="20"></textarea>
  				</div>
  				
  				<div style="float:left">
  					<input id="score" value="5" type="text">
  					<button  type="submit" class="btn btn-default">提交</button>
  				</div>
			</form>
		</div>


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
				
				$('#score').rating({
	                'showCaption': false,
	                'showClear':false,
	                'min': '0',
	                'max': '5',
	                'step': '1',
	                'size': 'xs',
	                'starCaptions': {}
	            });

			});
		</script>
		<!-- //here ends scrolling icon -->
	</body>

</html>