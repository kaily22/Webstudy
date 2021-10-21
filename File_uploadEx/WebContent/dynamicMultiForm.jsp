<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동적 파일 업로드 폼</title>
<script>
	var count = 1; //전역변수 
	
	//행 추가 함수
	function addRow(){
		var dynamicTable = document.getElementById('dynamic_table');
		//insertRow() -> tr 하나 추가
		var newRow = dynamicTable.insertRow();
		var cell1 = newRow.insertCell();
		var cell2 = newRow.insertCell();
		
		//checkbox 객체 이름을 checkboxObj로 줌
		cell1.innerHTML = '<input type="checkbox" name="checkboxObj"/>';
		//fileupload 객체 이름 => 객체 이름이 다 달라야함(여러개 올리기 때문)-> 처음 올리면 1.그 다음 2
		cell2.innerHTML = '<input type="file" name="fileupload'+count+'"size="70" onchange="checkSize(this)">';
		count++;
	}
	
	//size 20MB 넘길시 alert
	function checkSize(input){
		if(input.files && input.files[0].size > (20*1024*1024)){
			alert("파일 사이즈가 20MB 초과되었습니다.");
			input.value = null;
			
		}
	}
	
	//checkbox에 선택된 행 삭제
	function deleteRow(){
		var table = document.getElementById('dynamic_table');
		var checkboxArray = document.getElementsByName('checkboxObj');
		
		//하나씩 빼가면서 checkbox
		for(var i=checkboxArray.length-1; i>=0; i--){
			//check가 되어있으면 true/ 아니면 false
			var check = checkboxArray[i].checked;
			
			if(check){
				table.deleteRow(i);
			}
		}
	}
</script> 
</head>
<body>
	<h2>동적 다중 파일 업로드 구현하기</h2>
	<form name="dynamicForm" method="POST" enctype="multipart/form-data" action="register.jsp">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>제  목</td>
				<td><input type="text" name="subject"/></td>
			</tr>
		</table>
		<br>
		<input type="button" value="행추가" onClick="addRow();"/>&nbsp;&nbsp;&nbsp;
		<input type="button" value="행삭제" onClick="deleteRow();"/><br><br>
		Check&nbsp;&nbsp;&nbsp;&nbsp;업로드 파일 이름
		<br>
		<table id="dynamic_table" border="1" cellpadding="0" cellspacing="0"></table>
			<h4><font color="red">업로드 파일은 최대 20MB까지 업로드 가능합니다.!!</font></h4>
			<input type="submit" value="파일 올리기" />
	</form>
</body>
</html>