<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** ID 중복 확인 **</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/inCheck.js"></script>
<script>
function idOK() {
	opener.$('#id').val('${newID}');
	opener.document.getElementById('submit').disabled='';
	opener.document.getElementById('idDup').disabled='disabled';
	opener.$('#id').prop('readonly',true);
	opener.$('#password').focus();
	self.close();
}
</script>
<style>
	body {
		background: #E6E6FA;
		font-family: 맑은고딕;
	}
	#wrap {
		margin-left: 0;
		text-align: center;
	}
	h3 {
		font-size: 30px;
		color: #00008B; 
		font-weight: normal;
	}
</style>

</head>
<body>
<div id="wrap">
	<h3>** ID 중복 확인 **</h3>
	<form action="idCheck" method="post">
	UserID :
	<input type="text" id="id" name="id" value="">
	<input type="submit" value="ID중복확인" onclick="return idCheck()">
	<span id="iMessage" class="message"></span>			
	</form>
	<br><br><hr><br>
	<div id="msgBlock">
	<c:if test="${idUse=='T'}">
		${newID} 는 사용 가능 합니다 ~~
		<input type="button" value="idOK" onclick="idOK()">
	</c:if>
	<c:if test="${idUse=='F'}">
		${newID} 는 이미 사용중 입니다 ~~<br>
		다시 입력 하세요 ~~
		<script>
			$('#id').focus();
			opener.document.getElementById('id').value='';
		</script>     
	</c:if>
	</div>
</div>

</body>
</html>