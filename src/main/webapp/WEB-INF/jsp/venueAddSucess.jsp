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
	<h1>Details Added Sucessfully</h1>
	
	<table border="2" align="center" cellspacing="10"  cellpadding="10">

<tr>
	<th>venueId</th>
	<th>venueName</th>
	<th>venueAddress</th>
	<th>venuePhoneNumber</th>
	<th>venueRentalCost</th>
	<th>venueContactName</th>
	<th>venueWebsite</th>
	<th>Schedule</th>
</tr>
	
	
	<c:forEach var="venue" items="${venuedetails }" >

<tr>
	<th>${venue.venueId }</th>
	
	<th>${venue.venueName }</th>
	
	<th>${venue.venueAddress }</th>
	
	<th>${venue.venuePhoneNumber }</th>
	
	<th>${venue.venueRentalCost}</th>
	
	<th>${venue.venueContactName}</th>
	
	<th>${venue.venueWebsite}</th>
	
	<th>${venue.schedule }</th>
	
	
	
	</tr>
	
	</c:forEach>
	</table>
	<a href="/addVenueDetailsForm">Add Record</a>
<a href="/adminhome">Exit</a>
</body>
</html>