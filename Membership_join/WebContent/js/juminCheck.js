/**
 *  juminCheck.js 파일
 *  주민번호 체크 자바스크립트 파일
 */


function juminCheck(jumin1,jumin2) {
	var juminNum = jumin1 + jumin2;
	
	//RegExp() : 정규표현식 함수를 가지고 있음
	var jumin_pattern = new RegExp('^[0-9]{6}[1234][0-9]{6}');
	
	
	//test함수 : 자바의 pattern클래스의 matches()와 같음
//	if(jumin_pattern.test(juminNum)) {
//		alert('주민번호가 정규 표현식 패턴에 맞지 않습니다.');
//	}else{
//		alert('주민번호가 정규 표현식 패턴에 적합합니다!!');
//		
		/*
		 * 주민번호 체크 공식 적용
		 * 
		 */
		//변수 선언
		 var sum = 0;
		 var temp=0;
		 var result=0;
		 var weight = new Array(2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5); //가중치 값
		 
		//1단계 공식('-' 빠짐)
		for(i=0; i<12; i++){
			sum = sum + (juminNum.charAt(i)) * weight[i];
		}
		
		//2단계 공식
		temp = 11 - (sum%11);
		
		//3단계 공식
		result = temp % 10;
		
		if(result != juminNum.charAt(12)) {
			alert('입력된 주민번호가 정확하지 않습니다. 다시 확인하세요!!');
		}else{
			alert('주민번호가 정상입니다.!!');
		}
		
	}
