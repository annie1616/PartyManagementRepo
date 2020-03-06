<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Super Admin</title>
</head>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<style>
#top-section-main{
	background-image: url("images//friends2.jpg");
	
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body id="top-section-main">
<center>

<table>

<f:form action="addadmin" method="get" modelAttribute="sadmin">
<center>
		<h1>Super Admin</h1>
	</center>

<tr>
<td>Enter AdminId</td>
<td><f:input type="text" path="adminid" required="true"/></td><br><br>
</tr>

<tr>
<td>Enter AdminName</td>
<td><f:input  path="adminusername"  required="true"/></td><br><br>
</tr>

<tr>
<td>Enter AdminPassword</td>
<td><f:input type="password" path="adminpassword"  required="true"/></td><br><br>
</td>
</tr>

<tr>
<td><input type="submit" value="Add"/ class="btn btn-primary my-1"></td>
<td><input type="reset" value="Clear"/class="btn btn-primary my-1"></td>
</tr>

</f:form>

<f:form action="viewadmin" method="get" modelAttribute="sadmin">

<tr>
<td><input type="submit" value="view" class="btn btn-primary my-1"/></td>
</tr>

</f:form>

</table>

</center>

</body>
</html>