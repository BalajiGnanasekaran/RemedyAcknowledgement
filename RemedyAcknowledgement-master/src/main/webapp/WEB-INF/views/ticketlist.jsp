<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory List</title>
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
	<h3>Ticket list</h3>
	welcome
	<sec:authentication property="name" />
	<sec:authentication property="principal.authorities" />
	<a href="/logout">logout</a>


	<c:if test="${not empty message}">

		<div class="alert alert-success alert-dismissible">
			<button type="button" class="close" data-dismiss="alert">×</button>
			<strong>${message}</strong>
		</div>

	</c:if>
	<div class="container">

		<table class="tg" border="1">
			<tr>

				<th width="120">TicketType</th>
				<th width="120">TicketDescription</th>
				<th width="120">TicketStatus</th>
				<th width="120">Action</th>


			</tr>
			<c:if test="${!empty ticketlist}">
				<c:forEach items="${ticketlist}" var="ticketlist">
					<tr>
						<td>${ticketlist.ticketType}</td>
						<td>${ticketlist.ticketDescription}</td>
						<td>${ticketlist.ticketStatus}</td>
						<td><a
							href="${pageContext.request.contextPath}/editticket?getId=${ticketlist.ticketId}">edit</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>


</body>

</html>