<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<jsp:useBean id="pro" scope="page" class="Product.ProductTest"/>
	<center>
		<h1>제품 선택</h1>
		<hr>
		
		<!--  request.getParameter("xxx"로 얻을 수 있는 값들 사용-->
		1. 선택한 제품은 ${param.sel}<br>
		2. 연산문 사용 예 : num1 + num2 = ${pro.num1+pro.num2}<br>
	</center>
</body>
</html>