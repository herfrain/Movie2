<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<link href="<%=staticPath%>/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="<%=staticPath%>/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="<%=staticPath%>/css/medile.css" rel='stylesheet'
	type='text/css' />
<link href="<%=staticPath%>/css/single.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" href="<%=staticPath%>/css/contactstyle.css"
	type="text/css" media="all" />
<link rel="stylesheet" href="<%=staticPath%>/css/faqstyle.css"
	type="text/css" media="all" />
<!-- font-awesome icons -->
<link rel="stylesheet" href="<%=staticPath%>/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- news-css -->
<link rel="stylesheet" href="<%=staticPath%>/news-css/news.css"
	type="text/css" media="all" />
<!-- //news-css -->
<!-- list-css -->
<link rel="stylesheet" href="<%=staticPath%>/list-css/list.css"
	type="text/css" media="all" />
<!-- //list-css -->

<!--<style type="text/css">     
        a[class="button-selectimg"]{color:#00A2D4;padding:4px 6px;border:1px dashed #00A2D4;border-radius:2px;}
        .input-file{margin:200px 300px;}
        input[id="uploadpics"]{padding:3px 6px;padding-left:10px;border:1px solid #E7EAEC;width:230px;height:25px;line-height:25px;border-left:3px solid #3FB7EB;background:#FAFAFB;border-radius:2px;}
        input[type='file']{border:0px;display:none;}
   		</style>-->


<!-- js -->
<script type="text/javascript"
	src="<%=staticPath%>/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
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

		$(".list-group").click(function(e) {
			e.stopPropagation();
			var elem = $(e.target);
			console.log($(".list-group li"))
			$(".list-group li").removeClass("active");
			if (elem.is("li")) {
				if (elem.html() === "上传") {
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

	function check() {

		if ("${sessionScope.userid}" == "") {
			alert("请先登录！")
			return false;
		}

		var name = $("#videoname").val();
		var intro = $("#videointro").val();
		var pic = $("#videoimage").val();
		var video = $("#videofile").val();
		var type = $("#videotype").val();

		if (name == null || name == "") {
			alert("视频名称不能为空！")
			return false;
		} else if (intro == null || intro == "") {
			alert("视频简介不能为空！")
			return false;
		}

		else if (pic == null || pic == "") {
			alert("请选择视频封面图！")
			return false;
		}

		else if (video == null || video == "") {
			alert("请选择视频！")
			return false;
		}

		else if (type == null || type == "") {
			alert("请选择视频种类！")
			return false;
		}

		return true;
	};
</script>
<!-- start-smoth-scrolling -->
<link href="<%=staticPath%>/css/owl.carousel.css" rel="stylesheet"
	type="text/css" media="all">
<script src="<%=staticPath%>/js/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel({

			autoPlay : 3000, //Set AutoPlay to 3 seconds

			items : 5,
			itemsDesktop : [ 640, 5 ],
			itemsDesktopSmall : [ 414, 4 ]

		});

	});
</script>

</head>

<body>
	<!-- header -->
	<%@ include file="/include/head.jsp"%>
	<!-- //header -->

	<!-- nav -->
	<jsp:include page="/include/nav.jsp">
		<jsp:param value="upload" name="tag" />
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
									<a href="${pageContext.request.contextPath}/upload.do"><li class="list-group-item active">上传</li></a>
									<a href="${pageContext.request.contextPath}/showMyupload.do"><li class="list-group-item" >我的视频</li></a>

								</ul>
							</div>
							<div class="col-lg-10 detailInfo">
								<form id="movieupload" method="post" action="addmovie.do"
									onsubmit="return check()" enctype="multipart/form-data">

									<div class="row">
										<div class="col-lg-6 detailItem">
											<label class="col-lg-4 text-right" for="location">视频名称：</label>
											<div class="col-lg-10 pull-right">
												<input id="videoname" name="videoname" type="text"
													class="form-control">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-6 detailItem">
											<label class="col-lg-4 text-right" for="uploadpic">封面图片：</label>

											<div class="col-lg-10 pull-right">
												<input id="videoimage" name="videoimage" type="file"
													class="form-control">
											</div>

										</div>
									</div>

									<div class="row">
										<div class="col-lg-6 detailItem">
											<label class="col-lg-4 text-right" for="location">视频：</label>
											<div class="col-lg-10 pull-right">
												<input id="videofile" name="videofile" type="file"
													class="form-control">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-6 detailItem">
											<label class="col-lg-4 text-right" for="location">类别：</label>
											<div class="col-lg-10 pull-right">
												<input id="videotype" name="videotype" type="text"
													class="form-control">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-6 detailItem">
											<label class="col-lg-4 text-right" for="intro">视频简介：</label>
											<div class="col-lg-10">
												<div class="input-group">
													<textarea id="videointro" name="videointro" type="text"
														class="form-control" rows="3" cols="100"></textarea>
												</div>
											</div>
										</div>
									</div>

									<input id="commit" type="submit" value="立即投稿">
								</form>
							</div>

						</div>
					</div>
				</div>
				<!--//browse-agile-w3ls -->

			</div>

		</div>
		<!-- //w3l-medile-movies-grids -->
	</div>


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

		/* function uploadImg(){
			var formdata=new FormData($("#movieupload")[0]);
			$.ajax({
				asyn:false,
				cache:false,
				url:"addmovie.do"
				data:formdata,
				type:"POST"
				contentType:false,
				processData:false,
				success:function(data){
					if(data.code=='1'){
						$.message.alert('提示信息','上传失败','show');
					}else{
						$('#dg').dialog('close');
						$('#dg').datagrid('reload');
						$.message.alert('提示信息','上传成功','show');
					}
					
				}
				
				
			});
		} */
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