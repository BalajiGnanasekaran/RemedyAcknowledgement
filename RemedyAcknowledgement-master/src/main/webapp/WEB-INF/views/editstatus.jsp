<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ticket View</title>
</head>
<body>
	<form:form method="POST" commandName="ticket"
		action="updateticket">

		<div align="center">
			<table border="0">
				<form:input path="ticketId" type="hidden"/>
				<tr>
					<td>Ticket:</td>
					<td>${ticket.ticketType}</td>
				</tr>
				<tr>
					<td>ticketDescription:</td>
					<td>${ticket.ticketDescription}</td>
				</tr>
				
				<tr>
					<td>ticketStatus :</td>
					<td><form:select path="ticketStatus">
							<form:option value="PENDING" label="PENDING" />
							<form:option value="INPROGRESS" label="INPROGRESS" />
							<form:option value="CLOSED" label="CLOSED" />
						</form:select></td>
				</tr>
				<tr>
					<td><button type="submit" >Update</button></td>
				</tr>
			</table>
		</div>

	</form:form>
</body>
</html>