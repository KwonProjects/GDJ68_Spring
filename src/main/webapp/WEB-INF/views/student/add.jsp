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
		<h1>Add PAGE</h1>

		<form action="./add" method="post">
			<div>
				<label for="formName" class="form-label">학생이름</label> <input
					type="text" name="bookName" class="form-control" id="formName"><br>
			</div>
			<label for="formRate" class="form-label">국어</label> <input
				type="number" name="bookRate" id="formRate" class="form-control"><br>
			<label for="formRate" class="form-label">영어</label> <input
				type="number" name="bookRate" id="formRate" class="form-control"><br>
			<label for="formRate" class="form-label">수학</label> <input
				type="number" name="bookRate" id="formRate" class="form-control"><br>

			<!-- <select name="bookSale">     2번째방법
				<option value="1" selected>판매가능</option>     
				<option value="0">판매중지</option>
			</select> -->

			<button class="btn btn-success">등록</button>
			<!-- 버튼 타입을 생략하면 서브밋타입 -->
			<input type="reset" class="btn btn-danger">

		</form>
	</section>

</body>
</html>