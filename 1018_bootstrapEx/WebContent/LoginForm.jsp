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
			<a class="navbar-brand" href="#">(��)�޸ռ���Ʈ</a>
			
			<!--  myNavbar�� ���� Ÿ�� : ��ġ �ؾ��� -->
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
					href="#" >ȸ��Ұ�<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">CEO �λ縻</a></li>
					<li><a href="#">���� ����</a></li>
					<li><a href="#">�濵 �̳�</a></li>
					<li><a href="#">ȸ�� ����</a></li>
					<li class="divider"></li>
					<li><a href="#">ã�ƿ��±�</a></li>
				</ul>
			</li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" 
					href="#" >��������<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">�ڿ��� ó�� �ý���</a></li>
					<li><a href="#">RPA(�κ����μ����ڵ�ȭ)</a></li>
					<li><a href="#">���̹���ƽ��</a></li>
					<li><a href="#">��������ó��</a></li>
				</ul>
			</li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" 
					href="#" >��������<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">�����Խ���</a></li>
					<li><a href="#">���ǰԽ���</a></li>
					<li><a href="#">�ڷ��</a></li>
				</ul>
			</li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" 
					href="#" >����������޹�ħ<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">���������� �������� �� �̿����</a></li>
					<li><a href="#">�������� ���� �� �̿�Ⱓ</a></li>
					<li><a href="#">���������� �ı� ���� �� ���</a></li>
					<li><a href="#">���������� ������ ����</a></li>
					<li><a href="#">�̿��� �Ǹ��� �� ��� ���</a></li>
					<li><a href="#">�������� �� ���� ��ġ�� ��ġ/� �� �źο� ���� ����</a></li>
				</ul>
			</li>
		</ul>
		
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-log-in">�α���</span></a></li>
			<li><a href="MemberForm.jsp"><span class="glyphicon glyphicon-user">ȸ������</span></a></li>
		</ul>
	  </div>
	</div>
  </nav>
	<div align="center">
		<h1 class="title"><b>�α���</b></h1>
		<br><br>
		<div class="id1">
		 	<span class="id">���̵�</span>
		 	<input type="text" name="id"/>
		</div>
		<br>
		<div class="id2">
			<span class="password">��й�ȣ</span>
			<input type="password" name="pwd"/>
		</div>
		<br><br>
		<button type="button" class="btn btn-primary">�α���</button>	
		
		<button type="button" class="btn btn-warning">���̵� ã��</button>		
		<button type="button" class="btn btn-danger">��й�ȣ ã��</button>	
	</div>
	</Form> 
</body>
</html>