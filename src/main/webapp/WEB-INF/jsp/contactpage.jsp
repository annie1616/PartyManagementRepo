<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Contact List</title>
<style>
#errors{
	color:red;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body style="background-image: url('images//friends2.jpg')">

<center><h1>User Contact Details</h1>

<form:form action="home" method="post" modelAttribute="contact">

<table >

<tr >
<td align="center">Name</td>
<td><form:input class="form-control" path="name" id="Name"/></td>
<td><form:errors id="errors" path="name"/></td>
</tr>

<tr >
<td align="center">E-mail</td>
<td><form:input class="form-control" path="email" id="Email"/></td>
<td><form:errors id="errors" path="email"/></td>
</tr>

<tr >
<td align="center">Contact Number</td>
<td><form:input class="form-control" path="phone" id="contactNumber"/></td>
<td><form:errors id="errors" path="phone"/></td> 
</tr>

<tr >
<td align="center">Description/Review</td>
<td><form:textarea  class="form-control" path="review" id="Review" rows='6' cols='21'/></td>
<td><form:errors id="errors" path="review"/></td>
</tr>

<tr align="center" >
<td colspan='2'><input type="submit" value="Add/Update" name="Save" class="btn btn-primary my-1"></td>
</tr>
</table>
</form:form >
</center>
</body>
</html>