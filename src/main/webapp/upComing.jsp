<%@page import="java.util.ArrayList"%>
<%@page import="in.cutm.dbConnection.ConnectDB"%>
<%@page import="in.cutm.dao.BookRoomDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="in.cutm.model.BookRoom"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Upcoming Bookings</title>
<%@ include file="component/bootStrapLink.jsp"%>
<style>
body {
	background-color: #f8f9fa;
}

.container {
	max-width: 90%;
}

.table-container {
	padding: 20px;
	background-color: #ffffff;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.table thead th {
	background-color: #007bff;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
	font-size: 1rem;
}

.table td, .table th {
	padding: 10px;
	text-align: center;
	font-size: 0.9rem;
}

.table tbody tr {
	border-bottom: 1px solid #dee2e6;
}

.table tbody tr:last-child {
	border-bottom: none;
}

.btn-group .btn {
	margin-right: 5px;
	padding: 5px 10px;
	font-size: 0.85rem;
}

@media ( max-width : 992px) {
	.container {
		max-width: 100%;
	}
	.table-container {
		padding: 15px;
	}
}

@media ( max-width : 768px) {
	.table thead {
		display: none;
	}
	.table, .table tbody, .table tr, .table td {
		display: block;
		width: 100%;
	}
	.table td {
		padding: 10px;
		position: relative;
		text-align: left;
		border: none;
		border-bottom: 1px solid #dee2e6;
		font-size: 0.9rem;
	}
	.table td::before {
		content: attr(data-label);
		font-weight: bold;
		display: block;
		margin-bottom: 5px;
		color: #495057;
		font-size: 0.85rem;
	}
	.table tr {
		margin-bottom: 15px;
		background-color: #ffffff;
		border-radius: 10px;
		box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
	}
}
</style>
</head>
<body>
	<div class="container mt-5">
		<h2 class="text-center mb-4">Upcoming Bookings</h2>

		<!-- Display error message if any -->
		<%
		String errorMessage = (String) request.getAttribute("errorMessage");
		if (errorMessage != null) {
		%>
		<div class="alert alert-danger text-center"><%=errorMessage%></div>
		<%
		}
		%>

		<div class="table-container">
			<table class="table table-striped table-borderless">
				<thead>
					<tr>
						<th>Room Id</th>
						<th>Customer Name</th>
						<th>Phone Number</th>
						<th>Location</th>
						<th>From</th>
						<th>To</th>
						<th>Amount</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<%
					String receptionLocation = (String) session.getAttribute("receptionLocation");
					BookRoomDao brDao = new BookRoomDao(ConnectDB.dbconnect());
					List<BookRoom> newBookings = brDao.displayTodayBooking(receptionLocation);

					for (BookRoom booking : newBookings) {
					%>
					<tr>
						<td data-label="Room Id"><%=booking.getRoomId()%></td>
						<td data-label="Customer Name"><%=booking.getName()%></td>
						<td data-label="Phone Number"><%=booking.getContact()%></td>
						<td data-label="Location"><%=booking.getLocation()%></td>
						<td data-label="From"><%=booking.getFromDate()%></td>
						<td data-label="To"><%=booking.getToDate()%></td>
						<td data-label="Amount"><%=booking.getRoomPrice()%></td>
						<td data-label="Actions">
							<div class="btn-group" role="group">
								<a href="upComming.jsp/?roomId"><button type="button"
										class="btn btn-success btn-sm">Check-in</button></a>
								<button type="button" class="btn btn-danger btn-sm">Cancel</button>
							</div>
						</td>
					</tr>
					<%
					}
					%>


				</tbody>
			</table>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
