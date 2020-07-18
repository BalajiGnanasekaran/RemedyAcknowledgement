<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page session="true"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Log in with your account</title>

<link href="/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</head>

<body>

	<form method="POST" action="/login" class="form-signin">
		<h2 class="form-heading">Log in</h2>

		<%-- <div class="form-group ${error != null ? 'has-error' : ''}"> --%>
			<div class="form-group ${param.error ne null ? 'has-error' : ''}">
			<c:if test="${not empty message}">
				
					<div class="alert alert-success">
						<strong>${message}</strong>
					</div>
			</c:if>
			
			
			
			<%-- <c:if test="${not empty error}">
					<div class="alert alert-danger">
						<strong>${error}</strong>
					</div>
			</c:if> --%>
			
			
			<c:if test="${param.error ne null}">
					<div class="alert alert-danger">
						<strong>Your username or password is invalid.</strong>
					</div>
			</c:if>
			
			<%-- <c:if test="${param.logout ne null}">
					<div class="alert alert-danger">
						<strong>You have successfully logged off from application !</strong>
					</div>
			</c:if> --%>

			<input type="text" name="username" class="form-control"
				placeholder="username" /> <input type="password" name="password"
				class="form-control" placeholder="Password" /> <input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Log
				In</button>
			<h4 class="text-center">
				<a href="${contextPath}/registration">Create an account</a>
			</h4>
		</div>
	</form>


</body>
</html>
