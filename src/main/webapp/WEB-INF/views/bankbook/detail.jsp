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


	<!-- Getter �̸� : �޼��忡�� get�� �����ϰ� ù��°���ڸ� �ҹ��ڷ� �ٲ۰�-->
	<h1>${requestScope.dto.bookName}</h1>
	<div>${dto.bookContents }</div>
	<h1>${dto.bookRate }</h1>
	<c:choose>
		<c:when test="${dto.bookSale eq 1 }">
			<h1>�Ǹ���</h1>
		</c:when>
		<c:otherwise>
			<h1>�Ǹ�����</h1>
		</c:otherwise>
	</c:choose>

	<a href="./update.do?bookNum=${dto.bookNum}">����</a><br>
	<a href="./delete.do?bookNum=${dto.bookNum}">����</a>

	<%-- 	<c:if test="${dto.bookSale eq 1 }">
		<h1>�Ǹ���</h1>
	</c:if>
	<c:if test="${dto.bookSale eq 0 }">
		<h1>�Ǹ�����</h1>
	</c:if>
 --%>
</body>
</html>