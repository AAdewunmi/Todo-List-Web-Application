<%@ include file="../common/header.jspf"%>


<body>

	<nav class="navbar navbar-default">

		<a href="/" class="navbar-brand">Brand</a>

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="/list-todos.do">Todos</a></li>
			<li><a href="http://www.in28minutes.com">In28Minutes</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="/login.do">Login</a></li>
		</ul>

	</nav>

	<div class="container">
		<form action="/login.do" method="post">
			<p>
				<font color="red">${errorMessage}</font>
			</p>
			<br> Enter your name: <input type="text" name="name" /> <br>
			<br> Enter your password: <input type="password" name="password" />
			<br> <br> <input type="submit" value="Submit" />
		</form>
	</div>

	<%@ include file="../common/footer.jspf"%>

</html>