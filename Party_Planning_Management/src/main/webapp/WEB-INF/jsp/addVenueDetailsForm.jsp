<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
</style>
<body background="C:\Users\839879\Pictures\Project\back"
	style="background-color: lavender">
	<center>
		<h1>Add venue</h1>
	</center>




	<form:form action="addVenueDetailsSubmit" method="post"
		modelAttribute="venue">

		<table align="center">

			<tr>
				<td>Venue Id</td>
				<td><form:input path="venueId" id="venueId" /></td>

			</tr>

			<tr>
				<td>Venue Name</td>
				<td><form:input path="venueName" id="venueName" /></td>

			</tr>


			<tr>
				<td>venueAddress</td>
				<td><form:input path="venueAddress" id="venueAddress" /></td>

			</tr>

			<tr>
				<td>venueRentalCost</td>
				<td><form:input path="venueRentalCost" id="venueRentalCost" /></td>
			</tr>


			<tr>
				<td>venueContactName</td>
				<td><form:input path="venueContactName" id="venueContactName" /></td>

			</tr>

			<tr>
				<td>venueWebsite</td>
				<td><form:input path="venueWebsite" id="venueWebsite" /></td>

			</tr>

			<tr>
				<td>Schedule</td>
				<td><form:input path="schedule" id="schedule" /></td>

			</tr>

			<tr>
				<td><input type="submit" value="Add Venue" name="submit"></td>
				<td><input type="reset" value="Cancel"></td>
			</tr>


		</table>

	</form:form>




</body>
</html>


