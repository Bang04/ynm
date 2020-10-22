<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Please login in</title>
<link href="<c:url value='/resources/css/main.css' />" rel="stylesheet">
</head>
<body>
	<section id="main">
		<header>
			<span class="avatar"><img src="<c:url value='/resources/images/avatar.jpg' />" alt=""></span>
			<h1>Beam Us UP</h1>
			<p>Project management Board</p>
		</header>
		<hr>
		<h2>Right now!</h2>
		<form class="form-signin" method="post" action="auth">
			<div class="fields">
				<div class="field">
					<input type="text" id="username" name="username" placeholder="Username" required="" autofocus="">
				</div>
				<div class="field">
					<input type="password" id="password" name="password" class="form-control" placeholder="Password" required="">
				</div>
				
				<div class="field">
					<input type="checkbox" id="remember-me" name="remember-me" class="form-control">
					<label for="remember-me">remember-me?</label>
				</div>
			</div>
			<ul class="actions special">
				<li><button type="submit">LOGIN</button></li>
			</ul>
		</form>
	</section>
</body>
</html>