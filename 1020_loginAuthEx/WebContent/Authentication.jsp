<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 추가  -->
<% //자바 코드 기술 
   // 인증 가능 사용자 및 패스워드 목록 생성
   String[] users =  {"park1234","kim1677","hong777"};
   String[] passwords = {"p456","k7788","h1234"};
   
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   
   //인증 처리
   int i;
   for(i=0; i<users.length; i++){
	   if(users[i].equals(id) && passwords[i].equals(pw)){
		   //30분동안 세션 유지
		   //세션 값 등록
		   session.setAttribute("signedUser",id);
		   response.sendRedirect("welcome.jsp");
	   }
   }
   
   if(i == users.length){
	   //history.go(-1) : history 이전 페이지로 이동
	   out.println("<script>alert('아이디가 일치하지 않습니다.');history.go(-1);</script>");
   }
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증 페이지</title>
</head>
<body>

</body>
</html>