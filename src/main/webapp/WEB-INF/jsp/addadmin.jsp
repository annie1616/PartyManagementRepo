<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Details</title>
</head>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<style>
#top-section-main
{
	background-image: url("images//friends2.jpg");
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body id="top-section-main">

<h1><center>Admin details</center></h1>

<table border="2" align="center" cellspacing="10"  cellpadding="10">

<tr>
	<th>adminid</th>
	<th>adminusername</th>
	<th>adminpassword</th>
	
</tr>

<c:forEach var="cr" items="${data}" >

<tr>

	<th>${cr.adminid }</th>

	<th>${cr.adminusername }</th>
	
	<th>${cr.adminpassword }</th>
	
	<th><a href=/admindetails>Edit</a>
	
	<th><a href="/deletedetails?adminid=${cr.adminid}">Delete</a>
</tr>

</c:forEach>


</table>

</body>
</html>