<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
<form action="/login.do" method="post">
<p><font color="red">${errorMessage}</font></p>
<br>
Enter your name: <input type="text" name="name"/>
<br>
<br>
Enter your password: <input type="password" name="password"/>
<br>
<br>
<input type="submit" value="Submit"/>
</form>
</body>
</html>