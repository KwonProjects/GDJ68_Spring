<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<c:import url="../temp/bootStrap.jsp"></c:import>
</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<section class="container mt-5">
		<h1 class="my-4">Login Page</h1>
		<form action="./login.do" method="POST">
			<div class="mb-3">
				<label for="id" class="form-label">ID</label> <input type="text"
					name="id" class="form-control" id="id" placeholder="ID">
			</div>

			<div class="mb-3">
				<label for="pw" class="form-label">Password</label><input
					type="password" name="pw" class="form-control" id="Password"
					placeholder="">
			</div>
			<div class="mb-3">
				<button class="btn btn-primary">로그인</button>
			</div>
		</form>

	</section>


</body>
</html>