<%@page import="in.cutm.model.BookRoom"%>
<%@page import="java.util.List"%>
<%@page import="in.cutm.dbConnection.ConnectDB"%>
<%@page import="in.cutm.dao.BookRoomDao"%>
<%@ include file="component/jstlTag.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file="component/bootStrapLink.jsp"%>
<%@ include file="component/fontAwesome.jsp"%>
</head>
<body>
	<%@ include file="component/commonNavBar.jsp"%>
	<section
		style="margin-top: 80px; display: flex; flex-direction: column; align-items: center; justify-content: center;">
		<c:if test="${not empty bookingSuccesMsg }">
			<p class="text-center text-success">${bookingSuccesMsg}</p>
			<c:remove var="bookingSuccesMsg" />
		</c:if>

		<%
		String contact = (String) session.getAttribute("contact");
		BookRoomDao brDao = new BookRoomDao(ConnectDB.dbconnect());
		List<BookRoom> booking = brDao.showBookingByContact(contact);

		for (BookRoom br : booking) {
		%>

		<div class="card mb-3" style="max-width: 540px;">
			<div class="row g-0">
				<div class="col-md-4">
					<img
						src="data:image/jpeg;base64,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"
						class="img-fluid rounded-start h-100 w-100" alt="...">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h3 class="card-title"><%=br.getName()%></h3>
						<p class="card-text">
							Location:
							<%=br.getLocation()%></p>
						<p class="card-text">
							Amout : Rs/-
							<%=br.getRoomPrice()%></p>
						<p class="card-text">
							<small class="text-muted">Check in : <%=br.getFromDate()%></small>
							<br> <small class="text-muted">Check out : <%=br.getToDate()%></small>
						</p>
						<a href="bookingDetails.jsp?id=<%= br.getRoomId() %>"><button class="btn btn-danger w-100">Cancel
								Booking</button></a>
					</div>
				</div>
			</div>
		</div>
		<%
		}
		%>

	</section>



</body>
</html>