<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>표현식 응용 예제</title>
</head>
<body>
	<% 
		String[] str = {"자바","HTML","CSS","JavaScript","React","Node.js"};
	
		Random rnd = new Random();
		int i = rnd.nextInt(6); //난수를 0~5까지 발생
	%>
	
	<!--  표현식 안에 배열도 올 수 있음  -->
	<%= str[i] %> 과목을 선택했습니다.
</body>
</html>