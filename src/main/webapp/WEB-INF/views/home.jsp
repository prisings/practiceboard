<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>로그인 페이지 및 테스트</title>
</head>
<body>
<c:if test="${message!=null}">
	<script>
		alert('${message}');
	</script>
		${message}
</c:if>
<a href="aloginp">alogin</a>
<a href="checkterm">join</a>
<a href="ajoinp">ajoin</a>
<a href="alist">alist</a>
</body>
</html>