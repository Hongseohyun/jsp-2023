<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Registration Form</title>
	<link rel="stylesheet" type="text/css" href="join_style.css">
</head>
<body>
	<h1>Registration Form</h1>
	<form action="member_ok.jsp" method="post">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" required>

		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required>

		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required>

		<label for="confirm_password">Confirm Password:</label>
		<input type="password" id="confirm_password" name="confirm_password" required>

		<label for="gender">Gender:</label>
		<select id="gender" name="gender">
			<option value="">Select Gender</option>
			<option value="male">Male</option>
			<option value="female">Female</option>
			<option value="other">Other</option>
		</select>

		<label for="phone">휴대폰 번호</label>
		<input type="tel" name="phone" pattern="[0-9]{3}-[0-9]{3,4}-[0-9]{4}" placeholder="010-1234-5678" required><br>
		

		<label for="newsletter" class="newsLable">Subscribe to Newsletter:</label>
		<input type="checkbox" id="newsletter" name="newsletter" value="yes">


		<input type="submit" value="Register">
	</form>
</body>
</html>

