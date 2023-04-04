<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>seohyun's page</title>  
	<style>
		body {
		    font-family: Arial, sans-serif;
		    font-size: 16px;
		    line-height: 1.5;
		    margin: 0;
		    padding: 0;
		    background-color: #f5f5f5;
		}
		
		h1 {
		    font-size: 24px;
		    font-weight: bold;
		    margin-top: 20px;
		    margin-bottom: 10px;
		    text-align: center;
		    color: #333333;
		}
		
		h2 {
		    font-size: 20px;
		    font-weight: bold;
		    text-align: center;
		    margin-top: 30px;
		}
		
		form {
		    margin-top: 20px;
		    text-align: center;
		}
		
		input[type="text"] {
		    padding: 8px;
		    border-radius: 4px;
		    border: 1px solid #cccccc;
		    margin-bottom: 10px;
		}
		
		input[type="submit"] {
		    padding: 10px;
		    border-radius: 4px;
		    border: none;
		    background-color: #333333;
		    color: #ffffff;
		    cursor: pointer;
		}
	</style>
</head>
<body>
	<h2>성적 계산기</h2>
	
	<form name="ex01" action="form02.jsp" method="get">
	<div>이름 : <input type="text" name="ireom" placeholder="이름을 입력하세요"></div>
	<div>국어 : <input type="text" name="kor" placeholder="국어 점수를 입력하세요"></div>
	<div>영어 : <input type="text" name="eng" placeholder="영어 점수를 입력하세요"></div>
	<div>수학 : <input type="text" name="math" placeholder="수학 점수를 입력하세요"></div>
		<input type="submit" value="확인"> 
	</form>
</body>   
</html> 