<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="/include/taglib.jsp"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<link href="${pageContext.request.contextPath }/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${pageContext.request.contextPath }/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${pageContext.request.contextPath }/static/css/medile.css" rel='stylesheet' type='text/css' />
		<link href="${pageContext.request.contextPath }/static/css/single.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/contactstyle.css" type="text/css" media="all" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/faqstyle.css" type="text/css" media="all" />
		<!-- news-css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/static/news-css/news.css" type="text/css" media="all" />
		<!-- //news-css -->
		<!-- list-css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/static/list-css/list.css" type="text/css" media="all" />
		<!-- //list-css -->
		<!-- font-awesome icons -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/font-awesome.min.css" />
		<!-- //font-awesome icons -->
		<!-- js -->
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-2.1.4.min.js"></script>
		<!-- //js -->
		<!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
		<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/move-top.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1000);
				});
				
				$("#collect").click(function(){
					var movieID = $(this).closest("div.song-grid-right").attr("movieID");
					if($(this).hasClass("collected")){
						$(this).val("收藏");
						$.ajax({
		                    data:{"type":"delete","movieID":movieID},
		                    type:"POST",
		                    dataType: 'json',
		                    url:"${pageContext.request.contextPath }/MovieUpdateCollection.do",
		                    success:function(data){
		                        if(data.result == "fail"){
		                        	alert("取消收藏失败，请重试！！！");
		                            window.location.reload();
								}
		                    },
		                    error:function(data){
		                        alert("取消收藏失败，请重试！！！");
		                        window.location.reload();
		                    }
		                });
		            }else {
		                $(this).val("取消收藏");
		                
		                $.ajax({
		                    data:{"type":"collect","movieID":movieID},
		                    type:"POST",
		                    dataType: 'json',
		                    url:"${pageContext.request.contextPath }/MovieUpdateCollection.do",
		                    success:function(data){
		                    	if(data.result == "fail"){
		                        	alert("收藏失败，请重试！！！");
		                            window.location.reload();
								}
		                    },
		                    error:function(data){
		                        alert("收藏失败，请重试！！！");
		                        window.location.reload();
		                    }
		                });
		            }
					$(this).toggleClass("collected");
					
				})
			});
		</script>
		<!-- start-smoth-scrolling -->
		<link href="${pageContext.request.contextPath }/static/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
		<script src="${pageContext.request.contextPath }/static/js/owl.carousel.js"></script>
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
		<script src="${pageContext.request.contextPath }/static/js/simplePlayer.js"></script>
		<script>
			$("document").ready(function() {
				$("#video").simplePlayer();
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

		<!-- single -->
		<div class="single-page-agile-main">
			<div class="container">
				<!-- /w3l-medile-movies-grids -->
				<div class="agileits-single-top">
					<ol class="breadcrumb">
						<li>
							<a href="index.html">首页</a>
						</li>
						<li class="active">Single</li>
					</ol>
				</div>
				<div class="single-page-agile-info">
					<!-- /movie-browse-agile -->
					<div class="show-top-grids-w3lagile">
						<div class="col-sm-8 single-left" style="width:99%;">
							<div class="song">
								<div class="song-info">
									<h3>${movieDetail.movieName} </h3>
								</div>
								<div class="video-grid-single-page-agileits">
								<video src="static/videos/${movieDetail.movieID}.mp4 " width="100%" object-fit="fill"controls="controls">
								your browser does not support the video tag
								</video>
								</div>
							</div>
							<div class="song-grid-right" movieID= ${movieDetail.movieID}>
								<div class="share">
									<h5>上传者： ${movieDetail.userName}</h5>
									<c:if test="${!empty movieDetail.collection}">
										<div class="collectionButton" style="float:right"><input id="collect" type="submit" 
										<c:if test="${movieDetail.collection == 1}">
										 value="取消收藏"  class="collected" 
										</c:if>
										<c:if test="${movieDetail.collection != 1}">
										 value="收藏"  
										</c:if>
										></div>
									</c:if>
									<h5>评分： ${movieDetail.movieScore}</h5>
									<h5>上传时间： ${movieDetail.movieUpdateDate}</h5>
									<h5>影片简介：</h5>
									<div>
										<p>${movieDetail.movieIntroduction}</p>
									</div>
								</div>
								
								<div style="float:right"><a class="btn btn-default" href="${pageContext.request.contextPath}/longCommentList.do?movieid=${movieDetail.movieID}">查看影评</a></div>
							</div>
							<div class="clearfix"> </div>

							<div class="all-comments">
								<c:if test="${!empty movieDetail.collection}">
									<div class="all-comments-info">
										<a href="#">评论</a>
										<div class="agile-info-wthree-box">
											<form action="${pageContext.request.contextPath }/commentSubmit.do" method="post">
												<input type="hidden" name="movieID" value="${movieDetail.movieID }">
												<textarea placeholder="评论" required="" name="commentDetail" ></textarea>
												<input type="submit" value="评论">
												<div class="clearfix"> </div>
											</form>
										</div>
									</div>
								</c:if>
								<div class="media-grids">
									<c:if test="${movieDetail.totalCommentCount != 0}">
									
										<c:forEach items="${movieDetail.movieComment}" var="comment" >
											<div class="media">
												<h5>${comment.userName}</h5>
												<div class="media-left">
													<a href="#">
														<img src="${pageContext.request.contextPath }/static/images/user.jpg" title="One movies" alt=" " />
													</a>
												</div>
												<div class="media-body">
													<p>${comment.commentsDetails}</p>
													<span>评论时间： ${comment.commentsTime}</span>
												</div>
											</div>
										</c:forEach>
									</c:if>
									<c:if test="${movieDetail.totalCommentCount == 0}">
										<h5>暂无评论！</h5>
									</c:if>
									
									
									

								</div>
							</div>
						</div>
						

						<div class="clearfix"> </div>
					</div>
					<!-- //movie-browse-agile -->
					<!--body wrapper start-->
					
					<!--body wrapper end-->

				</div>
				<!-- //w3l-latest-movies-grids -->
			</div>
		</div>
		<!-- //w3l-medile-movies-grids -->


		<!-- footer -->
		<%@ include file="/include/foot.jsp"%>
		<!-- //footer -->
		
		
		<!-- Bootstrap Core JavaScript -->
		<script src="${pageContext.request.contextPath }/static/js/bootstrap.min.js"></script>
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