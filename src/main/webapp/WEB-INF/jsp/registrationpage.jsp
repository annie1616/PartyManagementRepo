<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function validateUser(){

	var firstName=document.getElementByName("firstName").value;
	var lastName=document.getElementByName("lastName").value;
	if(firstName=="")
		{
		alert("hi");
		}
	return false;
}

</script>
</head>
<body background="C:\Users\839879\Pictures\Project\back" style="background-color:lavender" >
<center><h1>User Registration Page</h1></center>

<form:form action="register"  method="post" modelAttribute="register">

<table align="center">

<tr>
<td>First Name</td>
<td><form:input path="firstName" name="firstName" /></td>
<td><form:errors path="firstName"/></td>
</tr>

<tr>
<td>Last Name</td>
<td><form:input path="lastName" name="lastName"/></td>
<td><form:errors path="lastName"/></td>
</tr>


<tr>
<td>DOB</td>
<td><form:input type="date" path="dob" name="dob" /></td>
<td><form:errors path="dob"/></td>
</tr>

<tr>
<td>Gender</td>
<td><form:radiobutton path="gender" name="gender" value="M" />Male</td>
<td><form:radiobutton path="gender" name="gender" value="F"/>Female</td>
<td><form:errors path="gender"/></td>
</tr>


<tr>
<td>Contact Number</td>
<td><form:input path="contactNumber" name="contactNumber" /></td>
<td><form:errors path="contactNumber"/></td> 
</tr>

<tr>
<td>User Id</td>
<td><form:input path="userId" name="userId" /></td>
<td><form:errors path="userId"/></td>
</tr>

<tr>
<td>Password</td>
<td><form:input type="password" path="password" name="password"/></td>
<td><form:errors path="password"/></td>
</tr>
<tr>
<td>Security Question 1</td>
<td><p>What is your pet name?</p><form:input path="securityQuestion1" name="securityQuestion1" /></td>
<td><form:errors path="securityQuestion1"/></td>
</tr>
<tr>
<td>Security Question 2</td>
<td><p>Who is your Best Friend?</p><form:input path="securityQuestion2" name="securityQuestion2" /></td>
<td><form:errors path="securityQuestion2"/></td>
</tr>
<tr>
<td>Security Question 3</td>
<td><p>What is your favourite actor name?</p><form:input path="securityQuestion3" name="securityQuestion3" /></td>
<td><form:errors path="securityQuestion3"/></td>
</tr>
<tr>
<td><input type="submit" value="Register" name="submit" onclick="validateUser()"></td>
<td><input type="reset" value="Cancel"></td>
</tr>


</table>

</form:form >




</body>
</html>                                                          


