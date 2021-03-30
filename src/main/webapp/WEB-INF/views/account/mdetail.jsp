<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Spring MemberDetail **</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
</head>
<body>
<h2>** Spring Mybatis MemberDetail **</h2>
<h2><pre>
=> Mybatis 에서는 memberVO 적용안됨 

* I     D : ${vo.id}
* Password: ${vo.password}
* N a m e : ${vo.name}
* BirthDay: ${vo.birthday}
* email   : ${vo.email}
* sex  : ${vo.sex}
* address   : ${vo.address}
</pre></h2>
<c:if test="${message!=null}">
<hr>
=> ${message}
</c:if>
<hr>
<c:if test="${vo.id==loginID}">
	<a href="mdetail?id=${vo.id}&jcode=U">Updatef</a>&nbsp;
	<a href="mdelete">Delete</a>&nbsp;
	<a href="mlogout">Logout</a>&nbsp;
</c:if>
<br><hr>
<a href="mlist">mList</a>&nbsp;
<a href="home">Home</a>&nbsp;
</body>
</html>