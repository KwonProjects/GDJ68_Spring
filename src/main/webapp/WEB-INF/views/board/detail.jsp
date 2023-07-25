<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css"></style>
<c:import url="../temp/bootStrap.jsp"></c:import>

</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<h1>Detail Page</h1>


	<!-- Getter 이름 : 메서드에서 get을 제외하고 첫번째글자를 소문자로 바꾼것-->
	<div class="text-center me-4">
		<table class="table table-hover mt-2">
			<thead>
				<th>제목</th>
				<th>작성자</th>
				<th>제목</th>
				<th>조회수</th>
			</thead>
			<tbody>
			<tr>
				<td>${detail.subject }</td>
				<td>${detail.name }</td>
				<td>${detail.createdate }</td>
				<td>${detail.hit }</td>
				</tr>
				<tr><td colspan="4">${detail.contents}</td></tr>
			</tbody>

		</table>
	</div>
	<a href="./update?no=${detail.no}" class="btn btn-warning">수정하기</a>
	<a href="./delete?no=${detail.no}" class="btn btn-warning">삭제하기</a>

</body>
</html>