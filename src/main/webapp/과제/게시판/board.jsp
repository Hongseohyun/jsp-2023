<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale"="1">
<link rel="stylesheet" href="css/bootstrap.css"> -->
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<div>
		<div>
			<form action="board_ok.jsp" method="post">
				<table>
					<thead>
						<tr>
							<th>
								게시판 글 쓰기
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input name="title" type="text" placeholder="글 제목"></td>
							<td><input name="writer" type="text" placeholder="작성자"></td>
						</tr>
						<tr>
							<td><textarea name="content" placeholder="글 내용"></textarea></td>
						</tr>
					</tbody>				
				</table>
				<input type="submit" value="완료">
			</form>
		</div>
	</div>

</body>
</html>