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
	
	<c:forEach items="${dto.fileDTOs}" var="f">
		<img alt="" src="/resources/upload/bankbook/${f.fileName}">
	</c:forEach>

	<a href="./update?bookNum=${dto.bookNum}" class="btn btn-warning">����</a>
	<a href="./delete?bookNum=${dto.bookNum}" class="btn btn-warning">����</a>

	<%-- 	<c:if test="${dto.bookSale eq 1 }">
		<h1>�Ǹ���</h1>
	</c:if>
	<c:if test="${dto.bookSale eq 0 }">
		<h1>�Ǹ�����</h1>
	</c:if>
 --%>
</body>
</html>