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

<form:form action="successlogin" method="get" modelAttribute="login">

<table align="center">

<tr>
<td>Username</td>
<td><form:input path="userName" id="userName"/></td>
<td><form:errors path="userName"/></td>
</tr>

<tr>
<td>Password</td>
<td><form:input path="userPassword" id="userPassword"/></td>
<td><form:errors path="userPassword"/></td>
</tr>



<tr>
<td><input type="submit" value="Login"></td>
</tr>
<tr>
<td><p>Do you have an account?</p><a href="\register">SignUp</a></td>

</tr>

</table>

</form:form >




</body>
</html>                                                          


