<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP �������� �ڹٽ�ũ��Ʈ ���</title>
</head>
<body>
	<h2>����, ��ũ��Ʈ��, ǥ���� ��� ����</h2>
	<%!
		String str1="���� ���� �Դϴ�.";
	%>

	<%! //���� => �޼ҵ� ����� ���
		String getStr(){
		  return str1;
	}
	%>	
	
	<%
	 	//��ũ��Ʈ�� => �ڹ� �ڵ� ����� ���
		String str2 = "���� ���� �Դϴ�.";
	%>
	
	��ũ��Ʈ������ ������ ���� str2�� <%= str2 %><br>
	���𹮿��� ������ ���� str1�� <%= getStr() %>

</body>
</html>