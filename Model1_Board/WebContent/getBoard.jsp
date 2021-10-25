<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
<!--  자바 클래스 임포트 --> 
<%@ page import = "board.BoardDO" %>
<%@ page import = "board.BoardDAO" %>
<%@ page import = "board.BoardDO" %>


<% 
	
	String seq = request.getParameter("seq");

	BoardDO boardDO= new BoardDO();
	
	//seq setter메소드 이용해서 초기화
	//정수로 변환시키기 -> 문자로 넘어오기 때문
	boardDO.setSeq(Integer.parseInt(seq));
	
	BoardDAO boardDAO = new BoardDAO();
	BoardDO board = boardDAO.getBoard(boardDO);
	
	request.setAttribute("board", board); // 중요 
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getBoard.jsp 페이지 => 게시글 상세보기 페이지</title>
	<style>
	
	#div_box {
		position : absolute;
		top:10%;
		left:40%;
	}
	</style>
</head>
<body>
	<div id="div_box">
		<h1>게시글 상세보기</h1>
		<a href="logout_proc.jsp">로그아웃</a>
		<hr>
		<form name="getBoardFom" method="POST" action="updateBoard_proc.jsp">
		<input type="hidden" name="seq" value="${board.seq}"/>
		<table border = "1" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<td bgcolor="orange" width="70">제목 </td>
					<td align="left">
						<input name="title" type="text" value="${board.title}"/>
					</td>
			</tr>
			
			<tr>
				<td>
					<td bgcolor="orange" width="70">작성자 </td>
					<td align="left">${board.writer}</td>
			</tr>
			
			<tr>
				<td>
					<td bgcolor="orange" width="70">내용 </td>
					<td align="left">					
						<textarea name="content" rows="10" cols="40">${board.content}</textarea>
					</td>
			</tr>
			
			<tr>
				<td>
					<td bgcolor="orange" width="70">등록일 </td>
					<td align="left">${board.regdate}</td>
			</tr>
			
			<tr>
				<td>
					<td bgcolor="orange" width="70">조회수 </td>
					<td align="left">${board.cnt}</td>
			</tr>
			
			<tr>
				<td>
					<td colspan="2" align="center">조회수 
						<input type="submit" value="글 수정"/>
					</td>
			</tr>
		</table>
		</form>
		<hr>
		<a href="insertBoard.jsp">새 게시글 등록</a>
		<a href="deleteBoard_proc.jsp?seq=${board.seq}">게시글 삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.jsp">전체 게시물 보기</a>
		
	</div>
</body>
</html>