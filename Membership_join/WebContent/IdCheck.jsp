<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!--  �߰�  -->
<% request.setCharacterEncoding("EUC-KR");%>    

<!--  class �Ӽ������� ��Ű������ �����Ѵ�. scope : ����.  -->
<jsp:useBean id="mem" scope="page" class="member.DBBean" />


<%
	String mem_id = request.getParameter("mem_id");
    //Ŭ������ confirmID ȣ��
	int idCheck = mem.confirmID(mem_id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border = "0" align ="center">
		<tr>
			<td align="center">
			<%
				if(idCheck == 1) { //ID�� �ߺ��� ��� 
					
			%>
			<br>
			<%=mem_id %>�� �̹� �����ϴ� ID�Դϴ�.&nbsp;<br><br>
			<input type="button" value="�ݱ�" onclick="javascript:self.close();
					opener.document.myForm.mem_id.focus();"/>
			<% 
				}else{  //ID�� ��� ������ ���
			%>
			<br>
			<%=mem_id %> �� ��� ������ ID�Դϴ�.&nbsp;<br><br>
			<input type="button" value="�ݱ�" onclick="javascript:self.close();
					opener.document.myForm.passwd.focus();"/>
			<% 
				}
			%>
			
			</td>
		</tr>
	
	</table>
</body>
</html>