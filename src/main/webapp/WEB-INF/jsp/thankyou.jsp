<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<html>
<head>
<style>
#header-container {
	width: 80%;
	margin: auto;
}
</style>
</head>
<body bgcolor="lavender"
	style="background-image: url('images//friends2.jpg')">

	<center>
		<h1>User Details</h1>
	</center>
	<h2>New user created successfully</h2>

	<h3>Hello ${register.firstName}</h3>
	<h3>Your User Id is ${register.userId}</h3>
	<a href="/login" class="btn btn-primary">Login</a>
</body>
</html>
