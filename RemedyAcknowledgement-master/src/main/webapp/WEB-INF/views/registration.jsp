<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Create an account</title>
<style type="text/css">
body {
	font-family: verdana;
	font-size: 12px;
	margin: 40px;
}

.customerTable, .customerTable td {
	border-collapse: collapse;
	border: 1px solid #aaa;
	margin: 2px;
	padding: 2px 2px 2px 10px;
	font-size: 12px;
}

.CustomerTable th {
	font-weight: bold;
	font-size: 12px;
	background-color: #5C82FF;
	color: white;
}

.label {
	font-family: verdana;
	font-size: 12px;
	font-weight: bold;
}

a, a:AFTER {
	color: blue;
}

.error {
	color: red;
	font-style: italic;
}
</style>


<script>
	$(function() {
		$("#datepicker").datepicker({
			format : 'dd-mm-yyyy',
			autoHide : true
		});
	});
</script>
</head>

<body>
	<h2>Create your account</h2>
	<form:form method="POST" modelAttribute="user" class="registrationForm"
		action="registration">

		<table>
			<tr>
				<td><form:label path="userName" cssClass="label">
						UserName
					</form:label></td>
				<td><form:input path="userName" /> <form:errors
						path="userName" cssClass="error"></form:errors> <c:if
						test="${error != null}">
						<span class="error">${error}</span>
					</c:if></td>
			</tr>
			<tr>
				<td><form:label path="userPassword" cssClass="label">
						Password
					</form:label></td>
				<td><form:input type="password" path="userPassword" /> <form:errors
						path="userPassword" cssClass="error"></form:errors></td>
			</tr>

			<tr>
				<td><form:label path="role" cssClass="label">
				Role
					</form:label></td>
				<td><form:select path="role">
						<form:option value="user" label="User" />
						<form:option value="admin" label="Admin" />
					</form:select> <form:errors path="role"></form:errors></td>
			</tr>

			<tr>
				<td></td>
				<td><button type="submit">Submit</button></td>
			</tr>
		</table>


	</form:form>
</body>
</html>
