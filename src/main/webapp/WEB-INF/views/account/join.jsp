<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/mylib/jquery-3.2.1.min.js"></script>
<script src="resources/mylib/incheck.js"></script>
<script>

	var iCheck = false;
	var pCheck = false;
	var nCheck = false;
	var bCheck = false;
	var eCheck = false;
	var sCheck = false;
	var aCheck = false;

	$(function() {
		$('#id').focus();
		$('#id').focusout(function() {
			iCheck = idCheck();
		}); //id

		$('#password').focusout(function() {
			pCheck = pwCheck();
		}); //password

		$('#password2').focusout(function() {
			pCheck = pw2Check();
		}); // password2

		$('#name').focusout(function() {
			nCheck = nmCheck();
		}); //name

		$('#birthd').focusout(function() {
			bCheck = bdCheck();
		}); //birthd

		$('#sex').focusout(function() {
			sCheck = sexCheck();
		}); //sex
		$('#address').focusout(function() {
			aCheck = addressCheck();
		}); //address

		$('#email').focusout(function() {
			eCheck = emailCheck();
		}); //email

	}); //ready

	function inCheck() {
		if (iCheck == false) {
			$('#iMessage').html(' ID 를 확인 하세요 ~~');
			$('#id').focus();
		}
		if (pCheck == false) {
			$('#pMessage').html(' Password 를 확인 하세요 ~~');
			$('#p2Message').html(' Password 재입력 확인 하세요 ~~');
			$('#password').focus();
		}
		if (nCheck == false) {
			$('#nMessage').html(' Name 을 확인 하세요 ~~');
			$('#name').focus();
		}
		if (bCheck == false) {
			$('#bMessage').html(' BirthDay 를 확인 하세요 ~~');
			$('#birthd').focus();
		}

		if (sCheck == false) {
			$('#sMessage').html(' 성별 를 확인 하세요 ~~');
			$('#sex').focus();
		}
		if (eCheck == false) {
			$('#eMessage').html(' 이메일 를 확인 하세요 ~~');
			$('#email').focus();
		}
		if (aCheck == false) {
			$('#aMessage').html(' 주소 를 확인 하세요 ~~');
			$('#address').focus();
		}
		if (iCheck == true && pCheck == true && nCheck == true
				&& bCheck == true && sCheck == true && eCheck == true
				&& aCheck == true) {
			alert('~~ 입력 성공, 전송하시겠습니까?');
		} else {
			return false; // submit 무효화 
		}
	} //inCheck
</script>
</head>
<body>
	<form action="ajoin" method="get">
		<table>
			<tr height="40">
				<td bgcolor="pink">I D</td>
				<td><input type="text" name="id" id="id" size="10"> <br>
					<span id=iMessage class="message"></span></td>
			</tr>
			<tr height="40">
				<td bgcolor="pink">Password</td>
				<td><input type="password" name="password" id="password"
					size="10"><br> <span id="pMessage" class="message"></span></td>
			</tr>
			<tr height="40">
				<td bgcolor="pink">PW 재입력</td>
				<td><input type="password" name="password2" id="password2"
					size="10"><br> <span id="p2Message" class="message"></span></td>
			</tr>
			<tr height="40">
				<td bgcolor="pink">Name</td>
				<td><input type="text" name="name" id="name" value="" size="10"><br>
					<span id="nMessage" class="message"></span></td>
			</tr>
			<tr height="40">
				<td bgcolor="pink">email</td>
				<td><input type="text" name="email" id="email" value=""
					size="10"><br> <span id="eMessage" class="message"></span></td>
			</tr>
			<tr height="40">
				<td bgcolor="pink">sex</td>
				<td><select name="sex" id="sex">
						<option value="남">남자</option>
						<option value="녀">여자</option>
				</select></td>
			</tr>
			<tr height="40">
				<td bgcolor="pink">BirthDay</td>
				<td><input type="date" name="birthd" id="birthd"><br>
					<span id="bMessage" class="message"></span></td>
			</tr>
			<tr height="40">
				<td bgcolor="pink">address</td>
				<td><input type="text" name="address" id="address" value=""
					size="10"><br> <span id="aMessage" class="message"></span></td>
			</tr>
			</tr>
			<tr height="40">
				<td></td>
				<td>
					<input type="submit" id="submit" value="전송" 
					onclick="return inCheck()"> <input type="reset" value="취소">&nbsp;&nbsp;
				</td>
			</tr>
		</table>
	</form>
</body>
</html>