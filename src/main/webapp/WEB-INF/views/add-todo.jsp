<%@ include file="../common/header.jspf"%>

</head>

<body>

	<nav class="navbar navbar-default">

		<a href="/" class="navbar-brand">Brand</a>

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="/list-todos.do">Todos</a></li>
			<li><a href="http://www.in28minutes.com">In28Minutes</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="/logout.do">Logout</a></li>
		</ul>

	</nav>

	<div class="container">
		<br>
		<p>Your New Todo's Action Item: </p>
		<form action="/add-todo.do" method="post">
		<fieldset class="form-group">
			<label>Description:</label> &nbsp; <input type="text" name="todo" class="form-control"/> 
		</fieldset>
		<fieldset class="form-group">
			<label>Category:</label> &nbsp; <input type="text" name="category" class="form-control"/> 
		</fieldset>
			<input type="submit" value="Submit" class="btn btn-success"/>
		</form>
	</div>

	<footer class="footer">
		<p>footer content</p>
	</footer>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>