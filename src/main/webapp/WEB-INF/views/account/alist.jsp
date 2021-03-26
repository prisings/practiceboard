<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width=800 border="1" >
	<tr align="center" height="30" bgcolor="pink">
	<td>I D</td><td>Password</td><td>Name</td><td>Birthday</td>
	<td>email</td><td>sex</td><td>address</td>
	</tr>
  <c:forEach var="row" items="${list}">
	<tr>
	<td><a href="mdetail?id=${row.id}">${row.id}</a></td>
	<td>${row.password}</td><td>${row.name}</td><td>${row.birthday}</td>
	<td>${row.email}</td><td>${row.sex}</td><td>${row.address}</td>
	</tr>
  </c:forEach>
</table>
</body>
</html>