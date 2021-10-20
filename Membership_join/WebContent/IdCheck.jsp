<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!--  추가  -->
<% request.setCharacterEncoding("EUC-KR");%>    

<!--  class 속성에서는 패키지까지 들어가야한다. scope : 범위.  -->
<jsp:useBean id="mem" scope="page" class="member.DBBean" />


<%
	String mem_id = request.getParameter("mem_id");
    //클래스의 confirmID 호출
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
				if(idCheck == 1) { //ID가 중복된 경우 
					
			%>
			<br>
			<%=mem_id %>는 이미 존재하는 ID입니다.&nbsp;<br><br>
			<input type="button" value="닫기" onclick="javascript:self.close();
					opener.document.myForm.mem_id.focus();"/>
			<% 
				}else{  //ID가 사용 가능한 경우
			%>
			<br>
			<%=mem_id %> 는 사용 가능한 ID입니다.&nbsp;<br><br>
			<input type="button" value="닫기" onclick="javascript:self.close();
					opener.document.myForm.passwd.focus();"/>
			<% 
				}
			%>
			
			</td>
		</tr>
	
	</table>
</body>
</html>