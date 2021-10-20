/**
 *  id Check.js 파일 => 아이디 중복 체크 자바스크립트 파일
 *  
 */


	function idCheck(id) {
		
		//사용자가 id를 입력하지 않고 버튼을 누른 경우
		if(id == ""){
			alert('아이디를 입력해주세요!!');
		}else{ //아이디 값이 넘어온 경우
			//get 방식으로 (넘어온 id값)
			url = "IdCheck.jsp?mem_id="+id; //페이지 이용 시 get 방식으로 데이터를 넘긴다.
			//작은 창 open
			window.open(url,"get", "width=350, height=150"); 
			
		}
		
	}