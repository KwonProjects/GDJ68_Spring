<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/bootStrap.jsp"></c:import>
</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>

	<section class="container mt-5">
		<h1 class="text-center">Contents List</h1>


		<table class="table table-dark table-hover mt-3">
			<thead>
				<th>글번호</th>
				<th>글제목</th>
				<th>작성자</th>
				<th>날짜</th>
				<th>조회수</th>

			</thead>
			<tbody>
				<c:forEach items="${list}" var="d" varStatus="i">
					<tr>
						<td>${d.no}</td>
						<td><a href="./detail?no=${d.no}">${d.subject}</td>
						<td>${d.name}</td>
						<td>${d.createdate}</td>
						<td>${d.hit}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>

		<nav aria-label="Page navigation example" class="text-center">
			<ul class="pagination">
			<c:if test="${pager.pre}">
					<li class="page-item"><a class="page-link"
						href="./list?page=${pager.startNum-1}" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span></a>
					</li>
					</c:if>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<li class="page-item"><a class="page-link"
						href="./list?page=${i}">${i}</a></li>
				</c:forEach>
				<li class="page-item"><a class="page-link"
					href="./list?page=${pager.lastNum+1}" aria-label="Next"> <span
						aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>

		<a class="btn btn-success" href="./add">글작성</a>
	</section>
</body>
</html>