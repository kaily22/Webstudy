<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!--  �߰�  -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>error_page.jsp ������</title>
</head>
<!--  �߰�  -->
<jsp:useBean id="now" class="java.util.Date"/>
<body>
	<div>
		<h2>error_page.jsp ������</h2>
		<hr>
		<table>
			<tr width=100% bgcolor="orange">
				<td>
					�����ڿ��� ������ �ּ���.
					<br>
					���� ���ϳ��� �ذ��ϰڽ��ϴ�.
				</td>
			</tr>
			<tr>
				<td>
				${now}<p>
				��û ���г� URI : ${pageContext.errorData.requestURI}<br>
				�����ڵ� : ${pageContext.errorData.statusCode}<br>
				�������� : ${pageContext.errorData.throwable}<br>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>