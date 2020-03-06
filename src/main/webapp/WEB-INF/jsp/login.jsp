<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style>
.row{
	padding-top:20px;
	padding-left:20px;
}
#errors{
	color:red;
}
#header-container{
	width:80%;
	margin:auto;
}
</style>
</head>
<body  style="background-image: url('images//friends2.jpg')" >
<center><h1>Log In</h1></center>
<c:if test="${flag==1 }">

<center><h2>Invalid Username or Password</h2></center>

</c:if>

<form:form action="successlogin" method="post" modelAttribute="login">

<table align="center">

<tr>
<td>Username</td>
</tr>
<tr>
<td><img src="Person.svg" alt="" width="32" height="32" title="person">
        <form:input class="form-control" path="userName" id="userName"/></td>
<td><form:errors id="errors" path="userName"/></td>
 
</tr>

<tr>
<td>Password</td>
</tr>
<tr>
<td><form:input class="form-control" type="password" path="userPassword" id="userPassword" /></td>
<td><form:errors id="errors" path="userPassword"/></td>
</tr>

<tr class="row">
<td><input class="btn btn-primary" type="submit" value="Login"></td>
<td><input class="btn btn-primary" type="reset" value="Clear"></td>
</tr>
<tr>
<td><a href="\forgotpassword">Forgot Password</a></td>
</tr>
<tr>
<td>Do you have an account?
</td>
<td><a href="\register" class="btn btn-primary">SignUp</a></td>
</tr>

</table>

</form:form >




</body>
</html>                                                          


