<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session ���� ��ü ����</title>
</head>
<body>
	<h2>session ���� ��ü</h2>
	<hr>
	<% //�ڹ� �ڵ� ���
	
		if(session.isNew()){
			out.println("<script> alert('������ �����Ǿ� �ٽ� �����մϴ�.')</script> ");
			session.setAttribute("login", "ok");
		}
	%>
	
	1. ���� ID : <%= session.getId() %><br>
	2. ���� �����Ⱓ : <%= session.getMaxInactiveInterval() %><br>
	3. login ������ ������ : <%= session.getAttribute("login") %>
	
</body>
</html>