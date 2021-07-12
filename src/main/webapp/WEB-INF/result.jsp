<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style>
	body {
		text-align: center;
	}
	table {
		display: flex;
		justify-content: center;
		padding: 20px;
		font-size: 20px;
	}

</style>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>

</head>
<body>
	<h2><b>Submitted Info</b></h2><br>
	
<table>
  <tr>
    <td>Name:</td>
    <td><c:out value="${name}"/></td>
  </tr>
  <tr>
    <td>Dojo Location:</td>
    <td><c:out value="${loc}"/></td>
  </tr>
    <tr>
    <td>Favorite Language:</td>
    <td><c:out value="${lang}"/></td>
  </tr>
    <tr>
    <td>Comment:</td>
    <td><c:out value="${com}"/></td>
  </tr>
</table>
	
	<a href="/">Back</a>
</body>
</html>