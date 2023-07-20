<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<header>
		<nav
			class="navbar navbar navbar-expand-lg bg-dark border-bottom border-bottom-dark"
			data-bs-theme="dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Navbar</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/index">Home</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="/bankbook/list.do">금융상품</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link active dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Dropdown </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link disabled">Disabled</a>
						</li>
					</ul>
					<form class="d-flex" role="search">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
		</nav>
	</header>
	<h1>Add Page</h1>
	<form action="./add" method="post">
	<div></div>
		상품명<input type="text" name="bookName"><br> 상세설명
		<textarea rows="" cols="" name="bookContents"></textarea>
		<br> 이자율<input type="text" name="bookRate"><br>

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

		<button>등록</button>
		<input type="submit" value="ADD"> <input type="reset"
			value="ADD"> <input type="button" value="ADD">
	</form>
	
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>