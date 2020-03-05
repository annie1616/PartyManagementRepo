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
.buttons {
	padding-top: 30px;
	padding-left: 45px;
}

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
		<h1>Set your New Password</h1>
	</center>

	<form:form action="successNewPassword" method="post"
		modelAttribute="newpasswordset">
		<c:if test="${flag==1 }">

			<center>
				<h2>New Password and Confirm password should be same</h2>
			</center>

		</c:if>
		
			<table align="center">

				<tr>
					<td>New Password</td>
					<td><form:input class="form-control" path="newPassword"
							id="newPassword" /></td>
					<td><form:errors id="errors" path="newPassword" /></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><form:input class="form-control" type="password"
							path="confirmPassword" id="confirmPassword" /></td>
					<td><form:errors id="errors" path="confirmPassword" /></td>
				</tr>



				<tr class="buttons">
					<td><input class="btn btn-primary" type="submit"
						value="Submit" name="submit"></td>
					<td><input class="btn btn-primary" type="reset" value="Clear"></td>
				</tr>

			</table>
	</form:form>




</body>
</html>
