<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 10px;
}
</style>
</head>
<body>
<section style="border: 1px solid black; position: absolute; padding: 30px; top:30%; left: 50%; transform: translate(-50%, -50%);;">
	<h2>신상정보 입력폼</h2>
	<form action="ex01_1_submit.jsp" method="post">
		<div>
		학번 : <input type="text"  name="num">
		</div>
		<div>
		이름 : <input type="text"  name="name">
		</div>
		<div>
		학년 : <input type="radio" value="1" name="grade">1학년
					<input type="radio" value="2" name="grade">2학년
		</div>
		<div>
		선택과목: <select name="subject">
						<option>JAVA</option>
						<option>C</option>
						<option>PYTHON</option>
					</select>
					<input style="display: block" type="submit" value="입력완료">
		</div>
	</form>
</section>
</body>
</html>