<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ElJstl_view</title>
</head>
<body>
	<%-- [문제] 먼저 스크립트릿  <% %>과 표현식( <%= %>), request 객체, out객체를 적용하여
		  코딩한다. 폼에서 넘어온 이름과 선택한 과목들을 크롬 브라우저에 출력한다.
	--%>
	
	<%-- <% String name=request.getParameter("name"); 
		이름은 <%= name %>입니다. <br>
		
		선택한 과목은 <br>
		
	<% 
	
		String[] result = request.getParameterValues("lang");
	
		for(int i=0; i<result.length; i++) {
			out.println(result[i]+"<br>");
		}
	%>
	--%>
	
	<%-- [문제] jstl을 이용하여 코딩한다. 
	폼에서 넘어온 이름과 선택한 과목들을 크롬 브라우저에 출력한다.
	--%>
	이름은  ${param.name}" 입니다.<br><br>
	
	선택한 과목은<br>
	<c:forEach var="item" items="${paramValues.lang}">
		${item}<br>
	</c:forEach>	
	
</body>
</html>