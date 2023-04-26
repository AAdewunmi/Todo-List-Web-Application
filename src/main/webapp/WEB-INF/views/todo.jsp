<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo Page</title>
</head>
<body>
<br>
<br>
Welcome ${name} !!!, your Todo's are:
<br>
<br>
<ol>
	<c:forEach items="${todos}" var="todo">
		<li>${todo.name}</li>
	</c:forEach>
</ol>
</body>
</html>