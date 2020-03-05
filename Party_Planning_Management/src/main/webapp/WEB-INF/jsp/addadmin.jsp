<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



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