<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 추가 -->
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="mem" scope="page" class="member.DBBean" />

<!-- DBBean class의 모든 setter 메소드 출력 => 값을 초기화 시킴-->
<jsp:setProperty name="mem" property="*" />

<%

    //action의 값을 가져와서 String action 할당
	String action = request.getParameter("action");
	
	if(action.equals("insert")){
		//DBBean 클래스 내에 있는 insertDB()호출
		if(mem.insertDB()){
			response.sendRedirect("Welcome.jsp");
			System.out.println("member 테이블에 데이터 입력 성공!");
		}else{
			System.out.println("member 테이블에 데이터 입력 실패!");
		}
	}


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member_control.jsp 파일 => MVC 패턴의 Controller</title>
</head>
<body>

</body>
</html>