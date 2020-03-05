<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback</title>
</head>
<body>
<h1>User's Feedback</h1>
<form:form action="register" method="get" modelAttribute="register">
<table>
<tr>
<td>How was the Party?</td>
<td><form:radiobutton path="question" id="question" value="Good"/>Good
<form:radiobutton path="question" id="question" value="Better"/>Better
<form:radiobutton path="question" id="question" value="Not Satisfied"/>Not Satisfied</td>
<td></td>
</tr>

<tr>
<td>How was the experience with Awesome Party Planer? </td>
<td><form:radiobutton path="question" id="question" value="Good"/>Good
<form:radiobutton path="question" id="question" value="Better"/>Better
<form:radiobutton path="question" id="question" value="Not Satisfied"/>Not Satisfied</td>
<td></td>
</tr>

<tr>
<td>How was guide's performance?</td>
<td><form:radiobutton path="question" id="question" value="Good"/>Good
<form:radiobutton path="question" id="question" value="Better"/>Better
<form:radiobutton path="question" id="question" value="Not Satisfied"/>Not Satisfied</td>
<td></td>
</tr>

<tr>
<td>Dj Stage</td>
<td><form:radiobutton path="question" id="question" value="Good"/>Good
<form:radiobutton path="question" id="question" value="Better"/>Better
<form:radiobutton path="question" id="question" value="Not Satisfied"/>Not Satisfied</td>
<td></td>
</tr>

<tr>
<td>Food</td>
<td><form:radiobutton path="question" id="question" value="Good"/>Good
<form:radiobutton path="question" id="question" value="Better"/>Better
<form:radiobutton path="question" id="question" value="Not Satisfied"/>Not Satisfied</td>
<td></td>
</tr>

<tr>
<td>Drinks</td>
<td><form:radiobutton path="question" id="question" value="Good"/>Good
<form:radiobutton path="question" id="question" value="Better"/>Better
<form:radiobutton path="question" id="question" value="Not Satisfied"/>Not Satisfied</td>
<td></td>
</tr>


<%-- <tr>
<td>Any Remarks?</td>
<td><form:textarea ></form:textarea></td>
<td></td>
</tr> --%>
</table>
</form:form>
</body>
</html>