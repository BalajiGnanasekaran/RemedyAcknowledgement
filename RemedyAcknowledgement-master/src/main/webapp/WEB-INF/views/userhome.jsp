<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<head>
<title>Userhome</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			welcome
			<sec:authentication property="name" />
			<sec:authentication property="principal.authorities" />
			<a href="/logout">logout</a>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<a href="/ticket" class="btn btn-info" role="button">Raise Ticket</a>
		</div>
	</div>
	<br>

	<c:if test="${not empty message}">

		<div class="alert alert-success alert-dismissible">
			<button type="button" class="close" data-dismiss="alert">×</button>
			<strong>${message}</strong>
		</div>

	</c:if>
	<div class="container">
		<div class="table-responsive">
			<table class="table" id="ticketTable">
				<thead>
					<tr>
						<th>Ticket Type</th>
						<th>Ticket Descripiton</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="ticket" items="${ticketList}">
						<tr>
							<td><c:out value="${ticket.ticketType}"></c:out></td>
							<td><c:out value="${ticket.ticketDescription}"></c:out></td>
							<td><c:out value="${ticket.ticketStatus}"></c:out></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>