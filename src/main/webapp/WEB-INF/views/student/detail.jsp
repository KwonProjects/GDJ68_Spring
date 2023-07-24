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
	<h1>Detail Page</h1>


	<!-- Getter 이름 : 메서드에서 get을 제외하고 첫번째글자를 소문자로 바꾼것-->
	<h1>${dto.studentName}</h1>
	<h3>${dto.studentKor }</div>
	<h3>${dto.studentEng }</h1>
	<h3>${dto.studentMath }</h1>


	<a href="./update?stdNum=${dto.studentNum}" class="btn btn-warning">수정</a>
	<a href="./delete?stdNum=${dto.studentNum}" class="btn btn-warning">삭제</a>

	<%-- 	<c:if test="${dto.bookSale eq 1 }">
		<h1>판매중</h1>
	</c:if>
	<c:if test="${dto.bookSale eq 0 }">
		<h1>판매종료</h1>
	</c:if>
 --%>
</body>
</html>