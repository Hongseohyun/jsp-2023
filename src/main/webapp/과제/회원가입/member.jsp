<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>

<form action="member_ok.jsp" method="post">
    <table>
        <tr>
            <td>아이디</td>
            <td><input name="id" type="text"></td>
        </tr>

        <tr>
            <td>비밀번호</td>
            <td><input name="pwd" type="password"></td>
        </tr>
        <tr>
            <td>성별</td>
            <td>
                <input name="gender" type="radio" value="남" checked>남
                <input name="gender" type="radio" value="여">여
            </td>
        </tr>
        <tr>
            <td>가입경로</td>
            <td>
                <select name="path">
                    <option value="웹검색" selected>웹검색</option>
                    <option value="지인소개">지인소개</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>주소지</td>
            <td>
                <select name="add"size="4">
                    <option selected>서울</option>
                    <option value="김해">김해</option>
                    <option>김해</option>
                    <option value="김해">김해</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>메모</td>
            <td>
                <textarea name="memo" rows="4" ></textarea>
            </td>
        </tr>
    </table>
    <input type="submit" value="가입">
</form>

</body>
</html>