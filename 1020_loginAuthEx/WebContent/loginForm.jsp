<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 페이지</title>
</head>
<body>
	<form name="loginForm" method= "POST" action="Authentication.jsp">
		<label for="id">아이디</label>
		<input type="text" name="id"/>
		<br>
		<label for="pw">패스워드</label>
		<input type="password" name="pw"/>
		<br><br>
		<input type="submit" value="로그인"/>
	</form>
</body>
</html>