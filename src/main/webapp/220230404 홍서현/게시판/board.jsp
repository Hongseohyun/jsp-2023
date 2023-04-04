<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판</title>
	<link rel="stylesheet" type="text/css" href="board.css">
</head>
<body>
		<h1>게시판</h1>
	<div class="container">
		<form action="board_ok.jsp" method="post">
			<label for="title">제목</label>
			<input type="text" id="title" name="title" required>

			<label for="writer">작성자</label>
			<input type="text" id="writer" name="writer" required>

			<label for="content">내용</label>
			<textarea id="content" name="content" rows="5" required></textarea>

			<input type="submit" value="작성">
		</form>
	</div>
</body>
</html>
