<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<c:import url="../temp/bootStrap.jsp"></c:import>

</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<h1>Update Page</h1>

	<form action="./update.do" method="post">
		<input type="hidden" name="bookNum" value="${dto.bookNum}" readonly="readonly">
		상품명 : <input type="text" name="bookName" value="${dto.bookName}"><br>
		상세설명 : <textarea rows="" cols="" name="bookContents">${dto.bookContents}</textarea><br>
		이자율 : <input type="text" name="bookRate"	value="${dto.bookRate}"><br>

		<p>
			판매가능 <input type="radio" name="bookSale" value="1" checked="checked"><br>
			판매중지 <input type="radio" name="bookSale" value="0"><br>
		</p>
		<p>
			<!-- 			<select name="boo">
				<option>판매가능</option>
				<option selected>판매중지</option>
			</select> -->
		</p>

		<button>수정</button>
		<input type="submit" value="ADD"> <input type="reset"
			value="ADD"> <input type="button" value="ADD">
	</form>
</body>
</html>