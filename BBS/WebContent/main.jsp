<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
<style>	
	.navbar {
	margin-bottom: 0;
	}
	.jsp-main {
		background-image: url("images/City_Landscape_Background.jpg"); 
		background-size: cover;
		background-repeat: no-repeat; 
		padding-bottom: 100px; 
		height: 90vh; 
		width: 100%; 
		position: relative;
		top: 0;
	}
	.main-title {
		align-self: center;
		text-align: center;
		max-width: 100%;
		color: #ffffff;
		margin: auto;
	}
	.jumbotron {
		padding-top: 100px;
		background-color: transparent;
	}
	.main-button {
		text-align: center;
		width: 200px;
		height: 40px;
		padding: 10px;
	}
</style>

</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" 
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" 
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				if (userID == null) {
			%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" 
							data-toggle="dropdown" role="button" aria-haspopup="true" 
							aria-expanded="false">접속하기 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="join.jsp">회원가입</a></li>
						</ul>
					</li>
				</ul>
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" 
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">회원관리 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="logoutAction.jsp">로그아웃</a></li>
						</ul>
					</li>
				</ul>
				<%
					}
				%>
		</div>
	</nav>
	<div class="jsp-main">
		<section class="container">
			<div class="jumbotron main-title">
				<h1>커뮤니티 게시판</h1>
				<p>JSP, MySQL, Bootstrap를 이용하여 간단한 게시판을 구현하였습니다.</p>
				<a class="btn btn-default btn-pull main-button" href="bbs.jsp" role="button">게시판</a>
			</div>
		</section>

	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>