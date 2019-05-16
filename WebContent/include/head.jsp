<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		
		<script type="text/javascript">
			
			//登出后，刷新本页面
			function logout(){
				console.log("logout");
				$.post("/movie/login/logout.do",function(result){
					console.log(result);
					if(result=="true"){
						window.location.reload();
					}else if(result=="login"){
						alert("请先登录!");
					}
				});
			}
			
			
			//登陆方法
			function login(){
				console.log("login");
				var username=document.getElementById("username").value;
				var password=document.getElementById("userpassword").value;
				console.log(username);
				$.post("/movie/login/login2.do",{"username":username,"userpassword":password},function(result){
					console.log(result);
					if(result=="true"){
						window.location.reload();//刷新本页面
					}else{
						alert('用户名或密码错误');
					}
				});
			}
			
			//注册方法
			function register(){
				console.log("register");
				var username=document.getElementById("rusername").value;
				var password=document.getElementById("ruserpassword").value;
				console.log(username);
				$.post("/movie/register/register2.do",{"username":username,"userpassword":password},function(result){
					console.log(result);
					if(result=="true"){
						alert('成功注册');
						window.location.reload();//刷新本页面
					}else{
						alert('用户名已存在');
					}
				});
			}
		
			function ajaxRequest() {
		        $.ajax({
		          url: "http://localhost:8080/movie/login/logout.do",
		          type: "POST",
		          dataType: "json",
		          data: {
		            "a": 1,
		            "b": 2,
		            "c": 3
		          },
		          async: false,
		          success: function(data) {
		            alert("success");
		            window.location.reload();
		          },
		          error: function() {
		            alert("error");
		            window.location.reload();
		          }
		        });
		      }
			
		</script>
		
	</head>
	<body>
		<!-- header -->
		<div class="header">
			<div class="container">
				<div class="w3layouts_logo">
					<a href="index.html">
						<h1>One<span>Movies</span></h1></a>
				</div>
				<div class="w3_search">
					<form action="search.do" method="get">
						<input type="text" name="keyword" placeholder="请输入关键字" required="">
						<input type="submit" value="搜索">
					</form>
				</div>
				<div class="w3l_sign_in_register">
					<ul>
						
						<c:choose>
						<c:when test="${sessionScope.username != null}">
							<li>${sessionScope.username}</li>
							<li>
								<a href="javascript:logout()" onclick="logout()" data-toggle="modal">注销</a>
							</li>
						</c:when>
						<c:otherwise>
							<li>
								<a href="#" data-toggle="modal" data-target="#myModal">登录</a>
							</li>
						</c:otherwise>
						</c:choose>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- //header -->
		<!-- bootstrap-pop-up -->
		<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						登录和注册
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</div>
					<section>
						<div class="modal-body">
							<div class="w3_login_module">
								<div class="module form-module">
									<div class="toggle"><i class="fa fa-times fa-pencil"></i>
										<div class="tooltip">点我注册</div>
									</div>
									<div class="form">
										<h3>请登录</h3>
										<form action="javascript:login()" method="post">
											<input type="text" id="username" name="username" placeholder="用户名" required="">
											<input type="password" id="userpassword" name="userpassword" placeholder="密码" required="">
											<input type="submit" value="登录">
										</form>
									</div>
									<div class="form">
										<h3>创建一个新账号</h3>
										<form action="javascript:register()" method="post">
											<input type="text" id="rusername" name="username" placeholder="用户名" required="">
											<input type="password" id="ruserpassword" name="userpassword" placeholder="密码" required="">
											<input type="submit" value="注册">
										</form>
									</div>
									<div class="cta">
										<a href="#">忘记密码?</a>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		<script>
			$('.toggle').click(function() {
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

	</body>

</html>