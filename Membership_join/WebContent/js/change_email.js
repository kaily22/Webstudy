/**
 *  change_email.js 파일 => 이메일 도메인 '직접입력'처리
 */


	function change_email(){
		
		//ID에 의해서 element를 가져오겠다. set 설정 / get 가져오기 text객체 id 얻어서 변수에 할당
		// var email_add : text객체를 가진다.
		var email_add = document.getElementById("email_add");
		var email_sel  = document.getElementById("email_sel");
		
		//사용자가 선택한 옵션의 순서와 값 구하기
		var idx = email_sel.options.selectedIndex;
		var val = email_sel.options[idx].value;
		
		email_add.value = val;
		
		
	}

