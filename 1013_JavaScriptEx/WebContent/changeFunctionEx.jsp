<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ڹٽ�ũ��Ʈ change() �Լ� ���θ� ����</title>
<!-- jQuery cdn �߰�  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script>
	function hideOption() {
		$('#select2, #select3').hide();
		itemChange(); //�Լ� ȣ��
	}
	
	function itemChange() {
		
		//change�� �Ͼ�� -> select2 ��ü �������
		$('select[name="option1"]').change(function(){
			$('#select2').show();
		});
		
		$('select[name="option2"]').change(function(){
			$('#select3').show();
		});
	}
</script>
</head>
<body onload="hideOption();">
	<form name="shoppingForm">
		<h1>�Ե� ��ȭ�� ����</h1>
		<b>���̼��� ��ǰ ���� �� �ɼ� ����</b> <br>
		<br> <select id="select1" name="option1">
			<option selected>��ǰ�� ����</option>
			<option value="����NB ����">����NB ����</option>
			<option value="����ST���� ����">����ST���� ����</option>
			<option value="����ī�콺 ����">����ī�콺 ����</option>
			<option value="�缱 ��� ����">�缱 ��� ����</option>
		</select> <br>
		<br> <select id="select2" name="option2">
			<option selected>���� ����</option>
			<option value="White">White</option>
			<option value="Black">Black</option>
			<option value="Dark red">Dark red</option>
			<option value="Maroon">Maroon</option>
			<option value="Darkcyan">Darkcyan</option>
		</select> <br>
		<br> <select id="select3" name="option3">
			<option selected>������ ����</option>
			<option value="L">L|50,000��|10�� ����</option>
			<option value="M">M|60,000��|10�� ����</option>
			<option value="XL">XL|100,000��|10�� ����</option>
		</select>
	</form>
</body>
</html>