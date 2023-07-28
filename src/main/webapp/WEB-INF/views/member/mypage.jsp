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
	<h1>My Page</h1>

	<section class="container mt-5">
		<div>
		<p>
			<img alt="" src="../resources/upload/member/${member.memberFileDTO.fileName}">
		</p>
			<p>${member.id } : ${sessionScope.member.name}</p>
			<p>${member.email}</p>
			<p>${member.birth}</p>
		</div>

		<a class="btn btn-primary" href="./memberUpdate">회원수정</a>
	</section>



</body>
</html>