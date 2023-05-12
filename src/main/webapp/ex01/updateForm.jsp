<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
section {
	width: 300px;
	height: 300px; position : absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 1px solid black;
	padding: 30px 70px;
	position: absolute;
}

h2 {
	text-align: center;
}

.thum {
	margin-bottom: 20px;
}

.radio-box {
	margin: 20px 0;
}

.btns {
	cursor: pointer;
	margin: 20px;
	width: 50%;
	display: flex;
	padding: 30px;
	justify-content: space-between;
}
</style>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String number = request.getParameter("number");
%>
	<section>
		<form action="update.jsp" method="post">
			<h2>신상정보 입력폼</h2>
			<div class="thum">
				<label for="number">학번 : </label> <input readonly="readonly" type="text" id="number"
					name="number" value="<%=number%>">
			</div>
			<div class="thum">
				<label for="name">이름 : </label> <input type="text" id="name"
					name="name">
			</div>
			<div class="radio-box">
				<span>학년 : </span> <input type="radio" checked name="grade"
					value="1학년"><span>1학년</span> <input type="radio"
					name="grade" value="2학년"><span>2학년</span>
			</div>
			<label for="select">선택과목 : </label> <select id="select" name="select">
				<option>JAVA</option>
				<option>C</option>
				<option>PYTHON</option>
			</select>
			<div class="btns">
				<input id="submit-btn" type="submit" value="수정">
				<button>
			<a href="index.jsp">back</a>
		</button>
			</div>
		</form>
	</section>


</body>
</html>