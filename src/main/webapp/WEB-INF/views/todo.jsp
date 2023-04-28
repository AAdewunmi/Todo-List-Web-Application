<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<p>Welcome ${name} !!!, your Todo's are:</p>
	<ol>
		<c:forEach items="${todos}" var="todo">
			<li>${todo.name}</li>
		</c:forEach>
	</ol>
	<br>
	<br>
	<form action="/todo.do" method="post">
	<input type="text" name="todo"/>   <input type="submit" value="Add"/>
	</form>
</body>
</html>