<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<title>Todo Page</title>
</head>
<body>
	<br>
	<p>Welcome ${name} !!!, your Todo's are:</p>
	<ol>
		<c:forEach items="${todos}" var="todo">
			<li>${todo.name} &nbsp; &nbsp; <a href="/delete-todo.do?todo=${todo.name}">Delete</a></li>
		</c:forEach>
	</ol>
	<br>
	<br>
	<form action="/todo.do" method="post">
	<input type="text" name="todo"/> &nbsp; <input type="submit" value="Add"/>
	</form>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>