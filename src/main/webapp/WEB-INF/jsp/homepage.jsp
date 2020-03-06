<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Awesome Party Planer</title>
<style>
html{
	font-family:"Lato","helvetica neue","Arial","sans-serif";
}
body{
	
	margin:0;
}
header {
	height:80px;
	background-color:white;
}
#header-container{
	width:80%;
	margin:auto;
}
.col-3{
	width:33%;
	float:left;
        }
.col-2{
    width:65%;
    float:left;
}
.getStartedBTN{
	background-color:#6dc77a;
	border-radius:28px;
	-moz-border-radius:28px;
	-webkit-border-radius:28px;
	text-decoration:none;
	color:#ffffff;
	padding:10px 26px;
	margin-top:20px;
	display:inline-block;
	font-size:17px;
	float: right;
}
.getStartedBTN1{
	background-color:#6dc77a;
	border-radius:28px;
	-moz-border-radius:28px;
	-webkit-border-radius:28px;
	text-decoration:none;
	color:#ffffff;
    margin-left: 100px;
    margin-right: 20px;
	padding:10px 26px;
	margin-top:20px;
	display:inline-block;
	font-size:17px;
	float: right;
}
#top-section-main{
	background-image: url("images//friends2.jpg");
	height:580px;
    background-position:top;
    background-size: auto;
}
#top-section-content{
	width:50%;
	margin-left:auto;
	margin-right:auto;
	margin-top:0;
}
#top-section-content h3{
	font-size: 4em;
	font-weight:300;
	color:#010101;
	text-align:center;
	margin-top:0;
	padding-top:50px;
	margin-bottom:15px;
} 
   
</style>

</head>
<body>
<header>
	<div id="header-container">
		<div class="col-3">
			<img src="images//awesome.jpg" width=180 height=80>
		</div>
		<div class="col-2">
			<a href="/login" class="getStartedBTN">Login</a>
			<a href="/register" class="getStartedBTN1">Register</a>
		</div>
	</div>
	</header>
<div class="main-container">
		<div id="top-section-main">
		<div id="top-section-content">
            <h3>"Live for today, Plan for tomorrow, Party tonight, Party tonight."</h3>
		</div>
	</div>
	</div>
</body>
</html>                                                          

