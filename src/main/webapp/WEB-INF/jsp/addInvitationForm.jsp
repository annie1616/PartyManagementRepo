<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body
{
background-image: url("friends2.jpg");
}
</style>
<center>
<body background="C:\Users\839879\Pictures\Project\back"
	style="background-color: lavender">
	<center>
		<h1>Add Invitation</h1>
	</center>

	<form:form action="addInvitationSubmit" method="post" modelAttribute="invitation">

		<table align="center">

			<tr>
				<td>Invitation Id</td>
				<td><form:input path="invitationId" id="invitationId" /></td>

			</tr>

			<tr>
				<td>Invitation Name</td>
				<td><form:input path="invitationName" id="invitationName" /></td>

			</tr>


			<tr>
				<td>Invitation Venue</td>
				<td><form:input path="invitationVenue" id="invitationVenue" /></td>

			</tr>

			<tr>
				<td>Schedule</td>
				<td><form:input path="invitationSchedule" id="invitationSchedule" /></td>
			</tr>


			<tr>
				<td>Images</td>
				<td><form:input path="image" id="image" /></td>

			</tr>

			
			<tr>
				<td><input type="submit" value="Add Invitation" name="submit"></td>
				<td><input type="reset" value="Cancel"></td>
			</tr>


		</table>

	</form:form>


</center>

</body>
</html>


