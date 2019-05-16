<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
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
		function changePwd(){
			if ("${sessionScope.userid}" == "") {
				alert("请先登录！")
				return;
			}
			console.log("changePwd");
			var oldPwd=$('#oldPwd').val();
			var newPwd=$('#newPwd').val();
			var confirmPwd=$('#confirmPwd').val();
			if(oldPwd==""||newPwd==""||confirmPwd==""){
				alert('密码不能为空');
				return;
			}
			if(newPwd!=confirmPwd){
				alert('两次密码不相同');
				return;
			}
			$.post("/movie/personalDetail/changePassword.do",{"oldPwd":oldPwd,"newPwd":newPwd,"confirmPwd":confirmPwd},function(result){
				console.log(result);
				if(result=="true"){
					alert('密码修改成功');
				}else if(result=="false"){
					alert('两次密码不相同');
				}else if(result=="login"){
					alert('请先登录！');
				}else{
					alert('原密码错误');
				}
			});
		}
		
		function changeInfo(){
			if ("${sessionScope.userid}" == "") {
				alert("请先登录！")
				return;
			}
			console.log("changeInfo");
			var info=$('#info').val();
			$.post("/movie/personalDetail/changeInfo.do",{"info":info},function(result){
				console.log(result);
				if(result=="true"){
					alert('个人简介更新成功');
				}else if(result=="login"){
					alert('请先登录！');
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
		<jsp:include page="/include/nav.jsp">
			<jsp:param value="personDetail" name="tag"/>
		</jsp:include>
		<!-- //nav -->

		<div class="personalInfo">
			<div class="container">
				<div class="tittle-head">
					<div class="container">
						<div class="agileits-single-top">
							<ol class="breadcrumb">
								<li>
									<a href="index.html">首页</a>
								</li>
								<li class="active">个人信息</li>
							</ol>
						</div>
					</div>
				</div>
				<div class="col-lg-2 selectBar">
					<ul class="list-group">
						<li class="list-group-item active">个人信息</li>
						<li class="list-group-item">密码修改</li>
						
					</ul>
				</div>
				<div class="col-lg-10 detailInfo">
					<form action="javascript:changeInfo()" method="post">
						<div class="row">
							<div class="col-lg-6 detailItem">
								<label class="col-lg-4 text-right" for="nickName">用户名：</label>
								<div class="col-lg-10 pull-right">
									<input id="nickName" type="text" class="form-control" value="${user.username}" disabled="disabled">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6 detailItem">
								<label class="col-lg-4 text-right" for="intro">个人简介：</label>
								<div class="col-lg-10">
									<div class="input-group">
										<textarea id="info" type="text" class="form-control" rows="4" cols="60">${user.userinfo}</textarea>
									</div>
								</div>
							</div>
						</div>
						<input type="submit">
					</form>
				</div>
				<div class="col-lg-10 resetPsw">
					<form action="javascript:changePwd()" method="post">
						<div class="row">
							<div class="col-lg-6 detailItem">
								<label class="col-lg-4 text-right" for="originPsw">原密码：</label>
								<div class="col-lg-10">
									<input id="oldPwd" type="password" class="form-control" value="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6 detailItem">
								<label class="col-lg-4 text-right" for="resetPsw">新密码：</label>
								<div class="col-lg-10">
									<input id="newPwd" type="password" class="form-control" value="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6 detailItem">
								<label class="col-lg-4 text-right" for="confirmResetPsw">确认密码：</label>
								<div class="col-lg-10">
									<input id="confirmPwd" type="password" class="form-control" value="">
								</div>
							</div>
						</div>
						<input type="submit">
					</form>
				</div>
				
				
				
				
			</div>
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

			});
		</script>
		<!-- //here ends scrolling icon -->
	</body>

</html>