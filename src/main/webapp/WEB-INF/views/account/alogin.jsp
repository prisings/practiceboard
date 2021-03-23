<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="resources/mylib/jquery-3.2.1.min.js"></script>
<script src="resources/mylib/incheck.js"></script>
<script>
	var iCheck = false;
	var pCheck = false;
	$(function() {
		$('#id').focus();
		$('#id').focusout(function() {
			iCheck = idCheck();
		});//id
		$('#password').focusout(function() {
			pCheck = pwCheck();

		})

	});//ready
	
	function inCheck() {
		if (iCheck==false) {
			$('#iMessage').html(' ID 를 확인 하세요 ~~');
			$('#id').focus();
		}
		if (pCheck==false) {
			$('#pMessage').html(' Password 를 확인 하세요 ~~');
			$('#password').focus();
		}
		if (iCheck==true && pCheck==true) {
			return true;    // submit 실행
		}else {
			$('#id').focus();
	        return false;   // submit 무효화 
		}
	} //inCheck
</script>
<meta charset="UTF-8">
<title>로그인 페이지 및 테스트</title>
</head>
<body>
<c:if test="${message!=null}">
	<script>
		alert('${message}');
	</script>
</c:if>
	<form action="alogin" method="get">
		<table>
			<tr>
				<td><label for="id">I D :</label></td>
				<td><input type="text" name="id" id="id"><br> <span
					id="iMessage" class="message"></span></td>
			</tr>
			<tr>
				<td><label for="pw">Password:</label></td>
				<td><input type="password" name="password" id="password"><br>
					<span id="pMessage" class="message"></span></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Login"
					onclick="return inCheck()"> <input type="reset"
					value="Reset">&nbsp;
			</tr>
		</table>
	</form>

</body>
</html>