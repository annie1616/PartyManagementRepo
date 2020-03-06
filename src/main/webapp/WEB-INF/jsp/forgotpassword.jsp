<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style>
#errors {
	color: red;
}

#header-container {
	width: 80%;
	margin: auto;
}
</style>
</head>
<body style="background-image: url('images//friends2.jpg')">
	<center>
		<h1>Password Configuration</h1>
	</center>

	<c:if test="${flag==1}">

		<center>
			<h3>Answers must be same as when you gave in for sign up</h3>
		</center>

	</c:if>
	<form:form action="successForgotPasswordPage" method="post"
		modelAttribute="forgotpassword">


		<table align="center">
			<tr>
				<td><p>Your User_ID</p> <form:input
						class="form-control" path="userId"
						id="usrId" /></td>
				<td><form:errors id="errors" path="userId" /></td>
			</tr>
			<tr>
				<td><p>What is your pet name?</p> <form:input
						class="form-control" path="securityQuestion1"
						id="securityQuestion1" /></td>
				<td><form:errors id="errors" path="securityQuestion1" /></td>
			</tr>
			<tr>
				<td><p>Who is your Best Friend?</p> <form:input
						class="form-control" path="securityQuestion2"
						id="securityQuestion2" /></td>
				<td><form:errors id="errors" path="securityQuestion2" /></td>
			</tr>
			<tr>
				<td><p>What is your favourite actor name?</p> <form:input
						class="form-control" path="securityQuestion3"
						id="securityQuestion3" /></td>
				<td><form:errors id="errors" path="securityQuestion3" /></td>
			</tr>


			<tr>
				<td><input class="btn btn-primary" type="submit" value="Submit"
					name="submit"></td>
				<td><input class="btn btn-primary" type="reset" value="Clear"></td>
			</tr>

		</table>

	</form:form>




</body>
</html>


