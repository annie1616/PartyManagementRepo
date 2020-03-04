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
<center><h1>Set your New Password</h1></center>

<form:form action="successNewPassword" method="get" modelAttribute="newpasswordset">


<table align="center">

<tr>
<td>New Password</td>
<td><form:input path="newPassword" id="newPassword" required="true"/></td>
<td><form:errors path="newPassword"/></td>
</tr>
<tr>
<td>Confirm Password</td>
<td><form:input path="confirmPassword" id="confirmPassword" required="true"/></td>
<td><form:errors path="confirmPassword"/></td>
</tr>



<tr>
<td><input type="submit" value="Submit" name="submit"></td>
<td><input type="reset" value="Cancel"></td>
</tr>

</table>

</form:form >




</body>
</html>                                                          
