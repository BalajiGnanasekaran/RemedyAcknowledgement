<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exception Page</title>
</head>
<body>
	<form action="/home">
		<c:if test="${error ne null}">
			<h1>Exception Occured!</h1>
			<h3>Status: ${error.status}</h3>
			<h3>Message: ${error.message}</h3>
		</c:if>
		<button>Home</button>
	</form>
</body>
</html>