<%@page import="in.cutm.model.Room"%>
<%@page import="in.cutm.dbConnection.ConnectDB"%>
<%@page import="in.cutm.dao.SearchRoomDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="component/bootStrapLink.jsp"%>
<%@ include file="component/fontAwesome.jsp"%>
<style>
.container {
	margin-top: 80px;
}

.card {
	transition: box-shadow 0.3s ease;
}

.card:hover {
	box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.2);
}

.form-group.row {
	display: flex;
	align-items: center;
}

.form-group.row label {
	margin-right: 10px;
}

h1 {
	text-align: center;
	color: #007bff;
	font-weight: bold;
}
</style>
</head>
<body class="bg-light"">
	<%@include file="component/commonNavBar.jsp"%>
	
	<%
		int roomId = Integer.parseInt(request.getParameter("id"));
		SearchRoomDao srhRmDao = new SearchRoomDao(ConnectDB.dbconnect());
		Room rm = srhRmDao.getRoomById(roomId);
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<form action="bookingForm" method="post">
							<h1>Book a Room</h1>
							<br>
							<div class="form-group form-inline">
								<label>location</label> <input type="text" name="location" value="<%= rm.getLocation() %>"
									class="form-control">
							</div>
							<br>
							<div class="form-group form-inline">
								<label>RoomId</label> <input type="text" name="roomid"
									class="form-control" value="<%= rm.getRoomId()%>">
							</div>
							<br> <label>category</label><input type="text" name="roomCategory"
									class="form-control" value="<%= rm.getCategory()%>"> <br>
							<div class="form-group form-inline">
								<label>Date from</label> <input type="date" name="location"
									class="form-control">
							</div>
							<br>
							<div class="form-group form-inline">
								<label>Date To</label> <input type="date" name="location"
									class="form-control">
							</div>
							<br>


							<div class="form-group form-inline">
								<label>Name</label> <input type="text" name="name"
									class="form-control">
							</div>
							<br>


							<div class="form-group form-inline">
								<label>Contact</label> <input type="text" name="contact"
									class="form-control">
							</div>
							
							<br>
							<div class="d-flex justify-content-center mt-4">
								<button type="submit" class="btn btn-primary w-100">Book</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>