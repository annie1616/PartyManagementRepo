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
html {
	font-family: "Lato", "helvetica neue", "Arial", "sans-serif";
}

#errors {
	color: red;
}

#header-container {
	width: 80%;
	margin: auto;
}

#required {
	color: red;
	text-align: left;
}
</style>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

</head>

<body style="background-image: url('images//friends2.jpg')">

	<center>

		<h1>Sign Up</h1>

	</center>

	<form:form action="register" method="post" modelAttribute="register">


		<table align="center">



			<tr>

				<td>First Name</td>

				<td><form:input class="form-control" path="firstName"
						name="firstName" pattern="[A-Za-z]+"
						title="Name must be in characters only" /></td>

				<td><form:errors id="errors" path="firstName" /></td>

				<td id="required">*</td>

			</tr>



			<tr>

				<td>Last Name</td>

				<td><form:input class="form-control" path="lastName"
						name="lastName" pattern="[A-Za-z]+"
						title="Name must be in characters only" /></td>

				<td><form:errors id="errors" path="lastName" /></td>

				<td id="required">*</td>

			</tr>





			<tr>

				<td>DOB</td>

				<td><form:input class="form-control" type="date" path="dob"
						name="dob" /></td>

				<td><form:errors id="errors" path="dob" /></td>

				<td id="required">*</td>

			</tr>



			<tr>

				<td>Gender</td>

				<td><form:radiobutton path="gender" name="gender" value="M" />Male

					<form:radiobutton path="gender" name="gender" value="F" />Female</td>

				<td><form:errors id="errors" path="gender" /></td>



			</tr>





			<tr>

				<td>Contact Number</td>

				<td><form:input class="form-control" path="contactNumber"
						name="contactNumber" pattern="[0-9]{10}"
						title="Contact number should be only in numeric/10 digits" /></td>

				<td><form:errors id="errors" path="contactNumber" /></td>

				<td id="required">*</td>

			</tr>



			<tr>

				<td>User Id</td>

				<td><form:input class="form-control" path="userId"
						name="userId" /></td>

				<td><form:errors id="errors" path="userId" /></td>

				<td id="required">*</td>

			</tr>



			<tr>

				<td>Password</td>

				<td><form:input class="form-control" type="password"
						path="password" name="password" pattern=".{8,16}"
						title="Password should contain atleast 8 characters and atmost 16 characters" /></td>

				<td><form:errors id="errors" path="password" /></td>

				<td id="required">*</td>

			</tr>

			<tr>

				<td>Security Question 1</td>

				<td><p>What is your pet name?</p> <form:input
						class="form-control" path="securityQuestion1"
						name="securityQuestion1" /></td>

				<td><form:errors id="errors" path="securityQuestion1" /></td>

				<td id="required">*</td>

			</tr>

			<tr>

				<td>Security Question 2</td>

				<td><p>Who is your Best Friend?</p> <form:input
						class="form-control" path="securityQuestion2"
						name="securityQuestion2" /></td>

				<td><form:errors id="errors" path="securityQuestion2" /></td>

				<td id="required">*</td>

			</tr>

			<tr>

				<td>Security Question 3</td>

				<td><p>What is your favourite actor name?</p> <form:input
						class="form-control" path="securityQuestion3"
						name="securityQuestion3" /></td>

				<td><form:errors id="errors" path="securityQuestion3" /></td>

				<td id="required">*</td>

			</tr>

			<tr>

				<td><input class="btn btn-primary" type="submit"
					value="Register" name="submit" onclick="validateUser()"></td>

				<td><input class="btn btn-primary" type="reset" value="Cancel"></td>

			</tr>





		</table>



	</form:form>



</body>

</html>

