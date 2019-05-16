<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="/include/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<title>Single</title>
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
		<link href="<%=staticPath %>/css/context.css" rel="stylesheet" type="text/css" media="all" />
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
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1000);
				});
			});
		</script>
		<!-- start-smoth-scrolling -->
		
		
		<script type="text/javascript">
		//点赞
		function like(){
			console.log("like");
			var longcommentid="<%=request.getParameter("longcommentsid") %>";
			
			console.log(longcommentid);
			$.post("/movie/longCommentDetail/like.do",{"longcommentsid":longcommentid},function(result){
				console.log(result);
				if(result=="login"){
					alert('请先登录再操作');
				}else if(result=="add"){
					var num=parseInt($("#likeNum").html())+1;
					console.log($("#likeNum").html());
					console.log(num);
					$("#like").attr("class", "fa fa-heart");
					$("#likeNum").html(num);
				}else if(result=="delete"){
					var num=parseInt($("#likeNum").html())-1;
					console.log(num);
					$("#like").attr("class", "fa fa-heart-o");
					$("#likeNum").html(num);
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

		<!-- faq-banner -->
		<div class="faq">
			<div class="container">
				<div class="agileits-news-top">
					<ol class="breadcrumb">
						<li>
							<a href="index.html">首页</a>
						</li>
						<li>影评</li>
						<li class="active">${userLongcomment.longcommentsheading}</li>
					</ol>
				</div>
				<div class="agileinfo-news-top-grids">
					<div class="col-md-8 wthree-top-news-left">
						<div class="wthree-news-left">
							<div class="wthree-news-left-img">
								
								<h4>${userLongcomment.longcommentsheading}</h4>
								<div class="s-author">
									<p>Posted By
										<a href="#"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;${userLongcomment.username}</a> &nbsp;&nbsp; <i class="fa fa-calendar" aria-hidden="true"></i> 
										&nbsp;<fmt:formatDate value="${userLongcomment.longcommentstime}" pattern="yyyy-MM-dd HH:mm:ss"/> &nbsp;&nbsp;
										
										<c:if test="${like}" var="flag">
										<a href="javascript:like()"><i id="like" class="fa fa-heart" aria-hidden="true"></i>&nbsp;<span id="likeNum" value="${userLongcomment.longcommentslike}">${userLongcomment.longcommentslike}</span></a>
										</c:if>
										<c:if test="${not flag}">
   										<a href="javascript:like()"><i id="like" class="fa fa-heart-o" aria-hidden="true"></i>&nbsp;<span id="likeNum" value="${userLongcomment.longcommentslike}">${userLongcomment.longcommentslike}</span></a>
										</c:if>
									</p>
								</div>
								<div id="fb-root"></div>
								<div class="clearfix" style="height:50px"> </div>
								<div class="w3-agile-news-text">
									<p class="content">
									${userLongcomment.longcommentsdetails}
									</p>
								</div>
							</div>
						</div>
						<!-- agile-comments -->
						<div class="agile-news-comments">
							<div class="agile-news-comments-info">
								<h4>评论</h4>
								<div class="fb-comments" data-href="https://w3layouts.com/" data-width="100%" data-numposts="5"></div>
							</div>
						</div>
						<!-- //agile-comments -->
						<div class="news-related">

						</div>
					</div>
					<div class="col-md-4 wthree-news-right">
						<!-- news-right-top -->
						<div class="news-right-top">
							<div class="wthree-news-right-heading">
								<h3>推荐文章</h3>
							</div>
							<div class="wthree-news-right-top" style="min-height:100%">
								<div class="news-grids-bottom">
									<!-- date -->
									<div id="design" class="date">
										<div id="cycler">
										<c:if test="${empty randomList}">
											<div>暂时无其他文章</div>
										</c:if>
										<c:if test="${!empty randomList}">
											<c:forEach var="i" begin="0" end="${randomList.size()-1}">
											
											<div class="date-text">
												<a href="/movie/longCommentDetail.do?longcommentsid=${randomList[i].longcommentsid }">
													${randomList[i].longcommentsheading}
													<p class="parignore">${randomList[i].longcommentsdetails}</p>
												</a>
												<div style="height:30px">
													<div style="float:left">
													<a href="">${randomList[i].username}</a>
													评
													<a href="${pageContext.request.contextPath}/movieDetail.do?movieID=${movieList[i].movieid}">${movieList[i].moviename }</a>
													</div>
													<div style="float:right"><i class="fa fa-heart-o" aria-hidden="true"></i>&nbsp;${randomList[i].longcommentslike}</div>
												</div>

												<h5 class="page-header" style="margin-top:10px"></h5>
											</div>
											
											</c:forEach>
											</c:if>
										</div>
										
									</div>
									<!-- //date -->
								</div>
							</div>
						</div>
						<!-- //news-right-top -->
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			
		</div>
		<!-- //faq-banner -->
		
		
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