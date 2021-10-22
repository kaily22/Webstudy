<%@page import="javax.naming.directory.SearchControls"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "error.jsp"%>
<!--추가 -->
<%@ page import = "board.BoardDO" %>
<%@ page import = "board.BoardDAO" %>
<%@ page import = "java.util.List" %>

<% request.setCharacterEncoding("UTF-8"); 

	String searchField = "";  	//검색 대상 즉 "제목" or "작성자"
	String searchText = "";		//검색 내용
	
	if(request.getParameter("searchCondition") != "" && request.getParameter("searchKeyword") != "") {
		
		searchField = request.getParameter("searchCondition");
		searchText = request.getParameter("searchKeyword");
		
	}
	
	BoardDAO boardDAO = new BoardDAO();
	//호출해서 결과 받아옴
	List<BoardDO> boardList = boardDAO.getBoardList(searchField, searchText);
	
	//request 내장 객체
	request.setAttribute("boardList", boardList);
	
	//총 게시글 갯수 구하기
	int totalList = boardList.size();
	request.setAttribute("totalList", totalList);
	

%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getBoardList 페이지</title>
<style>
	#div_box {
		position : absolute;
		top: 10%;
		left:20%;
	}

</style>
</head>
<body>
	<div id="div_box">
		<h1>전체 게시글 목록 보기</h1>
		<h3>${IdKey}님 환영합니다. &nbsp;&nbsp;&nbsp;<a href="logout_proc.jsp">로그아웃</a></h3>
		<form name="" method="POST" action="getBoardList.jsp">
			<p>총 게시글 : ${totalList}</p>
			<table border = "1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td align = "right">
						<select name="searchCondition">
							<option value="TITLE">제목</option>
							<option value="WRITER">작성자</option>
						</select>
						<input name="searchKeyword" type="text"/>
						<input type="submit" value="검색"/>
					</td>
				</tr>
			</table >
		</form>
		<table border = "1" cellpadding="0" cellspacing="0" width="700">
		 	<tr>
		 		<th bgcolor = "orange" width="100">번호</th>
		 		<th bgcolor = "orange" width="200">제목</th>
		 		<th bgcolor = "orange" width="150">작성자</th>
		 		<th bgcolor = "orange" width="150">등록일</th>
		 		<th bgcolor = "orange" width="100">조회수</th>
		 	</tr>
		 	
		 	<%
		 		for(BoardDO board: boardList) {
		 	%>
		 			<tr>
		 			 	<td align = "center"><%= board.getSeq() %></td>
		 			 	<td align = "left"><a href="getBoard.jsp?seq=<%=board.getSeq() %>"><%= board.getTitle() %></a></td>
		 			 	<td align = "center"><%= board.getWriter() %></td>
		 			 	<td align = "center"><%= board.getRegdate() %></td>
		 			 	<td align = "center"><%= board.getCnt() %></td>
		 			</tr>
		 	<% } %>
		</table>
		<br>
		<a href="insertBoard.jsp">새 게시글 등록</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.jsp">전체 게시물 목록 보기</a>
	</div>
</body>
</html>