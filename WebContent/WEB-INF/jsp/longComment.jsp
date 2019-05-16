<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="/include/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<title>${moviename}_全部长评</title>
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
			//下拉自动加载
			$(document).ready(function(){
				var num=5;
				var list=$("div[name='longcomment']");
				//alert(list.length);
				//初始化加载5个
				for(var i=0;i<num&&i<list.length;i++){
					list[i].style.display="block";
				}
				//$('#test').css('display','none');
				
				$(window).scroll(function(){//滚动事件
				var docHeight=$(document).height();//获取整个页面的高度
				var winHeight=$(window).height();//页面高度
				var winScrollHeight=$(window).scrollTop();//获取滚动条的距离
				//console.log(docHeight);
				//console.log(winHeight);
				//console.log(winScrollHeight);
				if(docHeight-600<=winHeight+winScrollHeight&&num<list.length){
					//下拉加载多三个
					list[num++].style.display="block";
					list[num++].style.display="block";
					list[num++].style.display="block";
				}
				});
			});
			
		
			
			//判断是否
			function showWriteLongComment(){
				console.log("showWriteLongComment");
				var movieid="<%=request.getParameter("movieid") %>";
				console.log(movieid);
				var username="<%=session.getAttribute("username") %>";
				console.log(username);
				//alert(username);
				if(username=="null"||username==""){
					alert('请先登录再操作');
				}else{
					window.location.href="longCommentList/writeLongComment.do?movieid="+movieid;
				}
				
				/*$.post("longCommentList/goWriteLongComment.do",function(result){
					console.log(result);
					if(result=="login"){
						alert('请先登录再操作');
					}else{
						window.location.href="longCommentList/writeLongComment.do?movieid="+movieid;
					}
				});*/
			}
		</script>
		
	</head>

	<body>
		<!-- header -->
		<%@ include file="/include/head.jsp"%>
		<!-- //header -->
		
		<!-- nav -->
		<jsp:include page="/include/nav.jsp">
			<jsp:param value="comment" name="tag"/>
		</jsp:include>
		<!-- //nav -->

		<!-- faq-banner -->
		<div class="faq">
			<div class="container">
				<div class="agileits-news-top">
					<ol class="breadcrumb">
						<li>
							<a href="index.html">首页</a>
						</li>
						<li class="active">影评</li>
					</ol>
				</div>
				<div class="agileinfo-news-top-grids">
					<div class="col-md-8 wthree-top-news-left">
						<div class="wthree-news-left">
							<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
								<div style="width:99%;height:80px;">
									<div class="dropdown" style="float:left;">
										<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    									默认排序
    									<span class="caret"></span>
  										</button>
  										<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    										<li><a href="#">按时间</a></li>
  										</ul>
									</div>
									<div style="float:right">
										<a class="btn btn-default" href="javascript:showWriteLongComment()">写长评</a>
									</div>
								</div>
								<div id="myTabContent" class="tab-content">
									<div role="tabpanel" class="tab-pane fade in active" id="longcommentlistParent" aria-labelledby="home1-tab">
										<c:if test="${userLongcommentList ==null}">
											<div>暂时无人评论</div>
										</c:if>
										<c:forEach items="${userLongcommentList}" var="userLongcomment">
										
										<div name="longcomment"  class="wthree-news-top-left" style="width:99%; height:250px; display:none;">
											<div class="col-md-6 w3-agileits-news-left" style="width:99%;height:99%">
												<div class="col-sm-7 wthree-news-info" style="width:99%;height:99%">
													<a href="longCommentDetail.do?longcommentsid=${userLongcomment.longcommentsid}"><h5>${userLongcomment.longcommentsheading}</h5>
													<p class="parignore">${userLongcomment.longcommentsdetails}</p></a>
													<ul>
														<li><i class="fa fa-user" aria-hidden="true"></i>&nbsp;${userLongcomment.username}</li><br/>
														<li><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;
														<fmt:formatDate value="${userLongcomment.longcommentstime}" pattern="yyyy-MM-dd HH:mm:ss"/></li><br/>
														<li><i class="fa fa-heart-o" aria-hidden="true"></i>&nbsp;${userLongcomment.longcommentslike}</li><br/>
													</ul>
												</div>
												
											</div>
											<div class="clearfix"> </div>
										</div>
										
										</c:forEach>
									</div>
								</div>
							</div>
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
										<c:if test="${!empty randomList }">
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