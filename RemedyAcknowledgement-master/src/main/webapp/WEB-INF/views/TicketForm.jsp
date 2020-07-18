<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Create Ticket</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
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
	<h2>Create Ticket</h2>
	<form:form method="POST" modelAttribute="ticket" class="ticketForm"
		action="ticket">

		<div class="container">
			<c:if test="${not empty message}">

				<div class="alert alert-success alert-dismissible">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<strong>${message}</strong>
				</div>

			</c:if>
			<%-- <div class="form-group">
				<label for="TicketId">TicketId</label>
				<form:input type="text" class="form-control" path="ticketId"
					id="ticketId" aria-describedby="TicketId" readonly="true" />
				<form:errors path="ticketId"></form:errors>
			</div> --%>

			<div class="form-group">
				<label for="TicketDescription">TicketDescription</label>
				<form:input type="text" class="form-control"
					path="ticketDescription" id="ticketDescription"
					aria-describedby="TicketDescription"
					placeholder="Enter Ticket Description" />
				<form:errors path="ticketDescription"></form:errors>
			</div>

			<div class="form-group">
				<label for="TicketType">TicketType</label>
				<form:select class="form-control" id="ticketType" path="ticketType">
					<form:option value="HARDWARE">HARDWARE</form:option>
					<form:option value="SOFTWARE">SOFTWARE</form:option>
					<form:option value="NETWORK">NETWORK</form:option>
				</form:select>
				<form:errors path="ticketType"></form:errors>
			</div>

			<div class="form-group">
				<label for="TicketStatus">TicketStatus</label>
				<form:select class="form-control" id="ticketStatus"
					path="ticketStatus">
					<form:option value="PENDING">PENDING</form:option>
				</form:select>
				<form:errors path="ticketStatus"></form:errors>
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>

		</div>

	</form:form>
</body>
</html>
