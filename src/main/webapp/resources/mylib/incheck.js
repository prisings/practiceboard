function idCheck() {
	// $(this).val() : this 적용 안됨
	var id=$("#id").val();
	if (id.length < 4) {
		$('#iMessage').html(' ID는 4글자 이상 입력하세요 ~~');
		return false;
	}else if (id.replace(/[a-z.0-9]/gi,'').length > 0 ) {
		$('#iMessage').html(' ID는 영문과 숫자로만 입력하세요 ~~ ');
		return false;
	}else {
		$('#iMessage').html('');
		return true;
	}
} //idCheck

function pwCheck(){
	var password=$("#password").val();
	var pLength = password.length;
	if(pLength <4){
		$('#pMessage').html(' password는 4글자 이상 입력하세요 ~~');
	    //$('#password').focus();
	    return false;
	}else if(password.replace(/[!-*]/gi,'').length>=pLength){
		$('#pMessage').html(' Password는 특수문자를 반드시 1개 이상 포함해야 됩니다 ~~');
	    //$('#password').focus();
	    return false;
	}else if (password.replace(/[0-9.!-*]/gi,'').length>0){
		$('#pMessage').html(' Password는 숫자와 특수문자로만 입력하세요 ~~');
	    //$('#password').focus();
	    return false;
	}else {
		$('#pMessage').html('');
		return true;
	}
} //pwCheck

//  password 재입력 동일성 확인
function pw2Check(){
	var password=$('#password').val();
	var password2=$('#password2').val();
	if (password != password2) {
		$('#p2Message').html('~~ password 가  다릅니다. 확인하세요  ~~');
		//$('#password').focus();
		return false;
	}else {
		$('#p2Message').html('');
		return true;
	}
}
//***********************

function nmCheck() {
	var name=$("#name").val();
	if(name.length < 2){
		$('#nMessage').html(' Name 2글자 이상 입력하세요 ~~');
	    return false;
	}else if(name.replace(/[a-z.가-힇]/gi,'').length > 0 ){ //다음 확인
	   	$('#nMessage').html(' Name은 한글과 영문으로만 입력하세요 ~~');	
	    return false;
	}else {
	 	$('#nMessage').html('');
	   	return true;
	}
} //nmCheck

function bdCheck() {
	var birthd=$("#birthd").val();
	if(birthd.length != 10){
		$('#bMessage').html(' 생일은 YYYY-MM-DD 정확하게 입력하세요 ~~');
	    return false;
	}else {
	 	$('#bMessage').html('');
	   	return true;
	}
} //bdCheck 

function sexCheck() {
	// $(this).val() : this 적용 안됨
	var sex=$("#sex").val();
	if (sex.length > 2) {
		$('#sMessage').html('남성 , 여성으로 입력해주세요 ');
		return false;
	}else {
		$('#sMessage').html('');
		return true;
	}
} //idCheck

function addressCheck() {
	// $(this).val() : this 적용 안됨
	var address=$("#address").val();
	if (address.length < 10) {
		$('#aMessage').html(' 10글자 이상 입력해주세요 ');
		return false;
	}else {
		$('#aMessage').html('');
		return true;
	}
} //idCheck
function emailCheck() {
	// $(this).val() : this 적용 안됨
	var email=$("#email").val();
	if (email.length < 7) {
		$('#eMessage').html(' 7글자 이상 입력해주세요 ');
		return false;
	}else {
		$('#eMessage').html('');
		return true;
	}
} //idCheck