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
		<h1>Update PAGE</h1>

		<form action="./add" method="post">
			<div>
				<label for="subject" class="form-label">제목</label>
				<input type="text" name="subject" class="form-control" id="subject" value="${update.subject}" readonly="readonly"><br>
			</div>
			<div class="mb-3">
				<label for="contents" class="form-label">내용</label>
				<textarea rows="" cols="" name="contents"
					class="form-control" id="contents">${update.contents}</textarea>
			</div>
			<div>
				<label for="name" class="form-label" >이름</label> 
				<input type="text" name="name" class="form-control" id="name" value="${update.name}" readonly="readonly"><br>
			</div>
			<button class="btn btn-success">수정하기</button>
			<!-- 버튼 타입을 생략하면 서브밋타입 -->
			<input type="reset" class="btn btn-danger" value="다시쓱;">
		</form>
	</section>

</body>
</html>