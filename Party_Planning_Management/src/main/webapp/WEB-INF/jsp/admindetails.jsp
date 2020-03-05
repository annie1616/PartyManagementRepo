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
<f:form action="addadmin" method="get" modelAttribute="sadmin">

Enter AdminId:<f:input type="text" path="adminid" required="true"/><br><br>

Enter AdminName:<f:input  path="adminusername"  required="true"/><br><br>

Enter AdminPassword:<f:input type="password" path="adminpassword"  required="true"/><br><br>

<input type="submit" value="Add"/>


<input type="reset" value="Clear"/>

</f:form>

<f:form action="viewadmin" method="get" modelAttribute="sadmin">

<input type="submit" value="view"/>

</f:form>

</body>
</html>