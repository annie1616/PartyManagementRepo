<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<body>

	<h1 align="center">Edit venue</h1>

	<th>venueId</th>
	<th>venueName</th>
	<th>venueAddress</th>
	<th>venuePhoneNumber</th>
	<th>venueRentalCost</th>
	<th>venueContactName</th>
	<th>venueWebsite</th>

	<f:form action="updateVenue" method="post" modelAttribute="venue">

	 Venue ID : <f:input path="venueId" readonly="true" /><br><br>

	 Venue Name :<f:input path="venueName" />
		<br>
		<br>
		Venue Address :<f:input path="venueAddress" />
		<br>
		<br>
		Venue PhoneNumber :<f:input path="venuePhoneNumber" />
		<br>
		<br>
		Venue RentalCost :<f:input path="venueRentalCost" />
		<br>
		<br>
		Venue Contact Name :<f:input path="venueContactName" />
		<br>
		<br>
		Venue Website :<f:input path="venueWebsite" />
		<br>
		<br>


		<input type="submit" value="Update">

	</f:form>




</body>
</html>