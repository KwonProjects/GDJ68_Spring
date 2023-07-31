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
		<h1 class="text-center">Q&A List</h1>


		<table class="table table-dark table-hover mt-3">
			<thead>
				<th>글번호</th>
				<th>글제목</th>
				<th>작성일</th>
				<th>작성자</th>
				<th>조회수</th>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="d" varStatus="i">
					<!--list를 items에 넣고 하나씩 d에 대입하며 출력반복-->
					<tr>
						<td>${d.qnaNum}</td>
						<td><a href="./detail?qnaNum=${d.qnaNum}"> ${d.subject}</td>
						<td>${d.createDate}</td>
						<td>${d.name}</td>
						<td>${d.hit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<nav aria-label="Page navigation example" class="text-center">
			<ul class="pagination">
				<c:if test="${pager.pre}">
					<li class="page-item"><a class="page-link"
						href="./list?page=${pager.startNum-1}&kind=${param.kind}&search=${param.search}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
				</c:if>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<li class="page-item"><a class="page-link"
						href="./list?page=${i}&kind=${param.kind}&search=${param.search}">${i}</a></li>
				</c:forEach>
				<c:if test="${pager.next}">
					<li class="page-item"><a class="page-link"
						href="./list?page=${pager.lastNum+1}&kind=${param.kind}&search=${param.search}"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
				</c:if>
			</ul>
		</nav>


		<div class="input-group mb-3">
			<form action="./list" method="get">
				<select name="kind" class="form-select"
					aria-label="Default select example">
					<option value="name">Name</option>
					<option value="contents">Contents</option>
				</select> <input type="text" name="search" class="form-control"
					aria-label="Amount (to the nearest dollar)">
				<div class="col-auto">
					<button type="submit" class="btn btn-primary" ms-2>검색</button>
				</div>
			</form>
		</div>

		<br> <br> <br> <a class="btn btn-success" href="./add">상품등록</a>
	</section>
	<%-- <c:forEach begin="1" end="10" step="2" var="num"> <!--begin = 시작값 end = 끝값 step= 증가단위 var= 변수  -->
		<h1>${num}</h1>
	</c:forEach> --%>

</body>
</html>