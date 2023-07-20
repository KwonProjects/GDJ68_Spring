<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Detail Page</h1>


	<!-- Getter 이름 : 메서드에서 get을 제외하고 첫번째글자를 소문자로 바꾼것-->
	<h1>${requestScope.dto.bookName}</h1>
	<div>${dto.bookContents }</div>
	<h1>${dto.bookRate }</h1>
	<c:choose>
		<c:when test="${dto.bookSale eq 1 }">
			<h1>판매중</h1>
		</c:when>
		<c:otherwise>
			<h1>판매종료</h1>
		</c:otherwise>
	</c:choose>

	<a href="./update.do?bookNum=${dto.bookNum}">수정</a><br>
	<a href="./delete.do?bookNum=${dto.bookNum}">삭제</a>

	<%-- 	<c:if test="${dto.bookSale eq 1 }">
		<h1>판매중</h1>
	</c:if>
	<c:if test="${dto.bookSale eq 0 }">
		<h1>판매종료</h1>
	</c:if>
 --%>
</body>
</html>