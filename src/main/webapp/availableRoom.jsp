<%@page import="in.cutm.dao.SearchRoomDao"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.InputStream"%>
<%@page import="in.cutm.model.Room"%>
<%@page import="java.util.List"%>
<%@page import="in.cutm.dbConnection.ConnectDB"%>
<%@page import="in.cutm.dao.RoomDao"%>
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
	<%@ include file="component/searchRoomForm.jsp"%>

	<section>
		<h1 class="text-center">Available Rooms</h1>
		<div class="row row-cols-1 row-cols-md-3 g-4 p-4">

			<%
			SearchRoomDao srhRmDao = new SearchRoomDao(ConnectDB.dbconnect());
			List<Room> rmList = srhRmDao.displayAvailableRoom();

			for (Room rm : rmList) {
			%>
			<div class="col">
				<div class="card h-100">
					<div style="display: flex; align-items: center; justify-content: center;">
						<img
						src="data:image/jpg;base64,<%=new String(java.util.Base64.getEncoder().encode(rm.getPhoto()))%>"
						class="rounded float-start img-thumbnail p-2" alt="Room Image"
						style="object-fit: contain; height: 200px; width: 100%; text-align: center;" />
					</div>
					<div class="card-body">
						<h1 class="text-primary">
							<i class="fa-solid fa-indian-rupee-sign"></i> <span><%=rm.getPrice()%></span>
							/Night
						</h1>
						<h6>
							Location : <span><%=rm.getLocation()%></span>
						</h6>
						<h6>
							Room id : <span><%=rm.getRoomId()%></span>
						</h6>
						<h6>
							Category : <span><%=rm.getCategory()%></span>
						</h6>
						<h6>
							Capacity : <span><%=rm.getCapacity()%></span>
						</h6>
						<h6>
							AC : <span><%=rm.getAc()%></span>
						</h6>
						<h6>
							Meal : <span><%=rm.getMeal()%></span>
						</h6>
						<h6>
							Wifi : <span><%=rm.getWifi()%></span>
						</h6>
						<h6>
							couple : <span><%=rm.getCouple()%></span>
						</h6>
						<h6>
							Parking : <span><%=rm.getParking()%></span>
						</h6>
					</div>
					<div class="card-footer">
						<a href="bookingForm.jsp?id=<%=rm.getRoomId() %>"><button class="btn btn-primary w-100">Book now</button></a>
					</div>
				</div>
			</div>
			<%
			}
			%>




		</div>
	</section>

</body>
</html>