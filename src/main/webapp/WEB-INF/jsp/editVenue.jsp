<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
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
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<body>

	<h1 align="center">Edit venue</h1>


	<f:form action="updateVenue" method="post" modelAttribute="venue">

	 Venue ID : <div style="color:red">*</div> <f:input path="venueId" readonly="true" /><br><br>

	 Venue Name :<div style="color:red">*</div><f:input path="venueName" />
		<br>
		<br>
		Venue Address :<div style="color:red">*</div><f:input path="venueAddress" />
		<br>
		<br>
		Venue PhoneNumber :<div style="color:red">*</div><f:input path="venuePhoneNumber" />
		<br>
		<br>
		Venue RentalCost :<div style="color:red">*</div><f:input path="venueRentalCost" />
		<br>
		<br>
		Venue Contact Name :<div style="color:red">*</div><f:input path="venueContactName" />
		<br>
		<br>
		Venue Website :<div style="color:red">*</div><f:input path="venueWebsite" />
		<br>
		<br>

      Schedule :<div style="color:red">*</div><f:input path="schedule" />

		<input type="submit" value="Update">

	</f:form>




</body>
</html>