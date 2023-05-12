<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
a {
	text-decoration: none;
}

section {
	width: 300px;
	height: 300px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 1px solid black;
	padding: 30px 70px;
	text-align: center;
}

h2 {
	text-align: center;
	margin-bottom: 100px;
}

button {
	text-align: center;
}
</style>
</head>
<body>
	<section>
		<h2>사용자 관리</h2>
		<button>
			<a href="join.jsp">등록</a>
		</button>
		<button>
			<a href="select.jsp">조회</a>
		</button>
	</section>
</body>
</html>