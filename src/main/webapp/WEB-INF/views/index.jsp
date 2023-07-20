<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<c:import url="./temp/bootStrap.jsp"></c:import>

</head>
<body>
	
	<!-- Latest compiled JavaScript -->
	<c:import url="./temp/header.jsp"></c:import>
	<c:if test="${not empty sessionScope.member}">
		<h1>로그인 상태</h1><br>	
	</c:if>
	<c:if test="${empty member}">
	<h1>비로그인 상태</h1>	
	</c:if>
	

</body>
</html>