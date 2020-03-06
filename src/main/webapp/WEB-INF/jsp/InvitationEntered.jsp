<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body
{
background-image: url("friends2.jpg");
}
</style>
</head>
<body>
<h1>Invitation Uploaded</h1>


<table border="2" align="center" cellspacing="10"  cellpadding="10">

<tr>
	<th>invitationId</th>
	<th>invitationName</th>
	<th>invitationVenue</th>
	<th>invitationSchedule</th>
	<th>image</th>
	
</tr>
	
	
	<c:forEach var="venue" items="${venue }" >

<tr>
	<th>${venue.invitationId }</th>
	
	<th>${venue.invitationName }</th>
	
	<th>${venue.invitationVenue }</th>
	
	<th>${venue.invitationSchedule }</th>
	
	<th>${venue.image}</th>
	
	
	
	
	
	</tr>
	
	</c:forEach>

<a href="/adminhome">Exit</a>
</body>
</html>