<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ǥ���� ���� ����</title>
</head>
<body>
	<% 
		String[] str = {"�ڹ�","HTML","CSS","JavaScript","React","Node.js"};
	
		Random rnd = new Random();
		int i = rnd.nextInt(6); //������ 0~5���� �߻�
	%>
	
	<!--  ǥ���� �ȿ� �迭�� �� �� ����  -->
	<%= str[i] %> ������ �����߽��ϴ�.
</body>
</html>