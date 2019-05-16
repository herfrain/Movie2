<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<body>
	<!-- nav -->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right"
					id="bs-example-navbar-collapse-1">
					<nav>
						<ul id="navbar-nav" class="nav navbar-nav">
							<li><a href="${pageContext.request.contextPath}/index.do">首页</a></li>
							<li><a href="${pageContext.request.contextPath}/rankingList.do">排行榜</a></li>
							<li><a href="${pageContext.request.contextPath}/MovieCollection.do">收藏</a></li>
							<li><a href="${pageContext.request.contextPath}/upload.do">投稿</a></li>
							<li><a href="${pageContext.request.contextPath}/personalDetail.do">个人主页</a></li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>
	<!-- //nav -->

	<script>
		switch ("${param.tag }") {
		case "index":
			$(".navbar-nav").children("li").eq(0).addClass("active");
			break;
		case "rank":
			$(".navbar-nav").children("li").eq(1).addClass("active");
			break;
		case "collection":
			$(".navbar-nav").children("li").eq(2).addClass("active");
			break;
		case "upload":
			$(".navbar-nav").children("li").eq(3).addClass("active");
			break;
		case "personDetail":
			$(".navbar-nav").children("li").eq(4).addClass("active");
			break;
		
		}

		$.get("getType.do", function(data, state) {
			if (state === "success") {
				if (data != null) {
					var length = data.length;
					var fragment = document.createDocumentFragment();
					for (let i = 0; i < length; i++) {
						var a = $("<li><a href='${pageContext.request.contextPath}/sortList.do?movieType="
								+ data[i] + "'>" + data[i] + "</a></li>");
						$(".multi-column-dropdown").append(a);
					}

				}
			}
		})
		
		$(function(){
			
			$("#navbar-nav").click(function(e){
				
				var target = e.target;
				var pattern = /收藏|投稿|个人主页/;
				if(pattern.test(target.text)){
					if("${sessionScope.userid}" == ""){
						alert("请先登录！");
						location.reload();
						return;
					}else{
						switch(target.text){
						
						case "收藏":
							location.href = "${pageContext.request.contextPath}/MovieCollection.do";
							break;
						case "投稿":
							location.href = "${pageContext.request.contextPath}/upload.do";
							break;
						case "个人主页":
							location.href = "${pageContext.request.contextPath}/personalDetail.do";
							break;
						
						}
					}
				}
				
			});			
		});
	</script>

</body>

</html>