<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include_test 페이지 => 홈 페이지라고 가정한다.</title>
</head>
<body>
	<center>
	<h2>include 지시어 테스트</h2>
	<hr>
	<%@ include file="menu.jsp"%>
	<p>
	<table border = "0" cellpadding="5" cellspacing="1">
		<tr>
			<td><font size="2"><%@ include file="news.jsp" %></font></td>
			<td width="30">&nbsp;</td>
			<td><font size="2"><%@ include file="shopping.jsp" %></font></td>
		</tr>
	</table>
	</center>
</body>
</html>