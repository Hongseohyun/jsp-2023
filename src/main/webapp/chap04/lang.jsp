<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>

<form action="lang_ok.jsp" method="post">
    <table>
        <tr>
            <td>관심언어</td>
            <td>
                <input name="lang" type="checkbox" value="PHP" >PHP
                <input name="lang" type="checkbox" value="JSP">JSP
                <input name="lang" type="checkbox" value="ASP.NET">ASP.NET        
            </td>
        </tr>
        
        <tr>
            <td>취미</td>
            <td>
                <select name="hobby" multiple="multiple">
                    <option value="영화">영화</option>
                    <option value="운동">운동</option>
                    <option value="독서">독서</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
    </table>    
    <input type="submit" value="전송"> 
</form>
  
</body>
</html>