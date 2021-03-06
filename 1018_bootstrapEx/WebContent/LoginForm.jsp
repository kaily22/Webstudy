<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	.navbar-default { background : #fece10; }
	.navbar-default .navbar-nav > .active > a{ background : orange; }
 .title {margin : 200px 30px 30px 30px; }
 .id2 {margin-right:10px;}
</style>
</head>
<body>
	<Form name="LoginForm" method="post" action="">
	<input type="hidden" name="action" value="">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
		   <div class="navbar-header">
			<a class="navbar-brand" href="#">(주)휴먼소프트</a>
			
			<!--  myNavbar에 대한 타겟 : 일치 해야함 -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" 
			data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		
	<div class="collapse navbar-collapse" id="myNavbar">
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" 
					href="#" >회사소개<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">CEO 인사말</a></li>
					<li><a href="#">설립 목적</a></li>
					<li><a href="#">경영 이념</a></li>
					<li><a href="#">회사 연혁</a></li>
					<li class="divider"></li>
					<li><a href="#">찾아오는길</a></li>
				</ul>
			</li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" 
					href="#" >연구개발<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">자연어 처리 시스템</a></li>
					<li><a href="#">RPA(로봇프로세스자동화)</a></li>
					<li><a href="#">사이버네틱스</a></li>
					<li><a href="#">감성정보처리</a></li>
				</ul>
			</li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" 
					href="#" >고객지원<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">공지게시판</a></li>
					<li><a href="#">문의게시판</a></li>
					<li><a href="#">자료실</a></li>
				</ul>
			</li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" 
					href="#" >개인정보취급방침<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">개인정보의 수집목적 및 이용목적</a></li>
					<li><a href="#">개인정보 보유 및 이용기간</a></li>
					<li><a href="#">개인정보의 파기 절차 및 방법</a></li>
					<li><a href="#">개인정보의 공유와 제공</a></li>
					<li><a href="#">이용자 권리와 그 행사 방법</a></li>
					<li><a href="#">개인정보 잘 수집 장치의 설치/운영 및 거부에 대한 사항</a></li>
				</ul>
			</li>
		</ul>
		
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-log-in">로그인</span></a></li>
			<li><a href="MemberForm.jsp"><span class="glyphicon glyphicon-user">회원가입</span></a></li>
		</ul>
	  </div>
	</div>
  </nav>
	<div align="center">
		<h1 class="title"><b>로그인</b></h1>
		<br><br>
		<div class="id1">
		 	<span class="id">아이디</span>
		 	<input type="text" name="id"/>
		</div>
		<br>
		<div class="id2">
			<span class="password">비밀번호</span>
			<input type="password" name="pwd"/>
		</div>
		<br><br>
		<button type="button" class="btn btn-primary">로그인</button>	
		
		<button type="button" class="btn btn-warning">아이디 찾기</button>		
		<button type="button" class="btn btn-danger">비밀번호 찾기</button>	
	</div>
	</Form> 
</body>
</html>