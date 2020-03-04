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
<center><h1>User Password Configuration</h1></center>

<form:form action="successForgotPasswordPage" method="get" modelAttribute="forgotpassword">


<table align="center">

<tr>
<td><p>What is your pet name?</p><form:input path="securityQuestion1" id="securityQuestion1" required="true"/></td>
<td><form:errors path="securityQuestion1"/></td>
</tr>
<tr>
<td><p>Who is your Best Friend?</p><form:input path="securityQuestion2" id="securityQuestion2" required="true"/></td>
<td><form:errors path="securityQuestion2"/></td>
</tr>
<tr>
<td><p>What is your favourite actor name?</p><form:input path="securityQuestion3" id="securityQuestion3" required="true"/></td>
<td><form:errors path="securityQuestion3"/></td>
</tr>


<tr>
<td><input type="submit" value="Submit" name="submit"></td>
<td><input type="reset" value="Cancel"></td>
</tr>

</table>

</form:form >




</body>
</html>                                                          


