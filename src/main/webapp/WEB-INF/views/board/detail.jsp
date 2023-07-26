<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<c:import url="../temp/bootStrap.jsp"></c:import>
<body>
<c:import url="../temp/header.jsp"></c:import>
	<section class="container mt-5">
		<h1 class="mb-5 text-center">Detail Page</h1> 	
	
	<%-- ${} --%>
	<!-- Getter 이름 : 메서드에서 get을 제외하고 첫번째글자를 소문자로 바꾼것 -->
	
	<%-- <h1>이름 : ${dto.name}</h1>
	<h1>국어점수 : ${dto.korean}</h1>
	<h1>영어점수 : ${dto.eng}</h1>
	<h1>수학점수 : ${dto.math}</h1>	

	<h1>총점 : ${dto.math+dto.korean+dto.eng}</h1>
	<h1>평균 : ${(dto.math+dto.korean+dto.eng)/3}</h1> --%>

	<table class="mb-3 table ">
			<thead>
				<th class>NO</th><th>SUBJECT</th><th>NAME</th><th>DATE</th><th>HIT</th>
			</thead>
			<tbody>				
					<tr>
						<td>${dto.no} </td>										
						<td>${dto.subject}</td>				
						<td>${dto.name}</td>
						<td>${dto.createdate}</td>
						<td>${dto.hit}</td>		
					</tr>
					<tr>
						<th colspan='5'>CONTENTS</th>
					</tr>
					<tr>					
						<td colspan='5'>${dto.contents}</td>
					</tr>				
			</tbody>
		</table>
	<div align="center">
		<a class="btn btn-outline-warning" href="./update?no=${dto.no}">수정</a>
		<a class="btn btn-outline-danger" href="./delete?no=${dto.no}">삭제</a>	
	</div>
</section>


</body>
</html>