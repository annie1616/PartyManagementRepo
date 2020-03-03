<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>

</style>
<body background="C:\Users\839879\Pictures\Project\back" style="background-color:lavender" >
<center><h1>Welcome to Springer</h1></center>

<form:form action="register" method="post" modelAttribute="register">

<table align="center">

<tr>
<td>First Name</td>
<td><form:input path="firstName" id="firstName"/></td>
<td><form:errors path="firstName"/></td>
</tr>

<tr>
<td>Last Name</td>
<td><form:input path="lastName" id="lastName"/></td>
<td><form:errors path="lastName"/></td>
</tr>


<tr>
<td>DOB</td>
<td><form:input type="date" path="dob" id="dob"/></td>
<td><form:errors path="dob"/></td>
</tr>

<tr>
<td>Gender</td>
<td><form:radiobutton path="gender" id="gender" value="M"/>Male</td>
<td><form:radiobutton path="gender" id="gender" value="F"/>Female</td>
<td><form:errors path="gender"/></td>
</tr>


<tr>
<td>Contact Number</td>
<td><form:input path="contactNumber" id="contactNumber"/></td>
<td><form:errors path="contactNumber"/></td> 
</tr>

<tr>
<td>User Id</td>
<td><form:input path="userId" id="userId"/></td>
<td><form:errors path="userId"/></td>
</tr>

<tr>
<td>Password</td>
<td><form:input path="password" id="password"/></td>
<td><form:errors path="password"/></td>
</tr>



<tr>
<td><input type="submit" value="Register" name="submit"></td>
<td><input type="reset" value="Cancel"></td>
</tr>


</table>

</form:form >




</body>
</html>                                                          


