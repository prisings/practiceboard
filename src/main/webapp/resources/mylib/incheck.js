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