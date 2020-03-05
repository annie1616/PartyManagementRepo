<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h1>Venue details</h1></center>



<table border="2" align="center" cellspacing="10"  cellpadding="10">

<tr>
	<th>venueId</th>
	<th>venueName</th>
	<th>venueAddress</th>
	<th>venuePhoneNumber</th>
	<th>venueRentalCost</th>
	<th>venueContactName</th>
	<th>venueWebsite</th>
</tr>

<c:forEach var="venue" items="${venue }" >

<tr>
	<th>${venue.venueId }</th>
	
	<th>${venue.venueName }</th>
	
	<th>${venue.venueAddress }</th>
	
	<th>${venue.venuePhoneNumber }</th>
	
	<th>${venue.venueRentalCost}</th>
	
	<th>${venue.venueRentalCost}</th>
	
	<th>${venue.venueWebsite }</th>
	
	<th><a href="/editVenue?venueId=${venue.venueId }" >edit</a></th>
	<th><a href="/deleteVenue?venueId=${venue.venueId }" >delete</a></th>
</tr>







</c:forEach>

</body>
</html>