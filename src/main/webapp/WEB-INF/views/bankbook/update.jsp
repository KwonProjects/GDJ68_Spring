<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<c:import url="../temp/bootStrap.jsp"></c:import>
</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	
	<h1>update page</h1>
	<section class="mt-3 text-center">
		<h1>Update Page</h1>
		
		<form action="./update" method="post">
			상품번호<input type="hidden" class="form-control" id="formGroupExampleInput" name="bookNum" value="${dto.bookNum}">
			상품명<input type="text" class="form-control" id="formGroupExampleInput" name="bookName" value="${dto.bookName}"><br>
			이자율<input type="text" class="form-control" id="formGroupExampleInput" name="bookRate" value="${dto.bookRate}"><br>
			상세설명<textarea class="form-control" rows="5" id="comment" name="bookContents">${dto.bookContents}</textarea><br>
			
			<p>
				판매가능<input type="radio" class="form-check-input" value="1" checked name="bookSale"><br>
				판매중지<input type="radio" class="form-check-input" value="0" name="bookSale"><br>
			</p>
			
			<!-- <p>
				<select name="bookSale">
					<option value="1">판매가능</option>
					<option value="0" selected>판매중지</option>
				</select>	
			</p> -->
			
			<button type="submit" class="btn btn-primary">수정</button>
			<input type="submit" class="btn btn-primary" value="수정">
			<input type="reset" class="btn btn-primary" value="수정">
			<input type="button" class="btn btn-primary" value="수정">
			
		</form>
	</section>
	
</body>
</html>