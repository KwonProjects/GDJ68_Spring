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
		<h1 class="text-center">Student List</h1>


		<table class="table table-dark table-hover mt-3">
			<thead>
				<th>학생이름</th>
				<th>국어</th>
				<th>영어</th>
				<th>수학</th>
				<th>총점</th>
				<th>평균</th>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="d" varStatus="i">
					<!--list를 items에 넣고 하나씩 d에 대입하며 출력반복-->
					<tr>
						<td><a href="./detail?studentNum=${d.studentNum }">${d.studentName}</a></td>
						<td>${d.studentKor}</td>
						<td>${d.studentEng}</td>
						<td>${d.studentMath}</td>
						<td>${d.studentTotal}</td>
						<td>${d.studentAvg}</td>

					</tr>
				</c:forEach>

			</tbody>

		</table>

		<a class="btn btn-success" href="./add">학생 등록</a>
	</section>

	
</body>
</html>