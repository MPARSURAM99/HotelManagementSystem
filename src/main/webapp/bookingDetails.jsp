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
<%@ include file="component/commonNavBar.jsp" %>
	<section style="margin-top: 80px; display: flex; flex-direction: column; align-items: center; justify-content: center;">
		<c:if test="${not empty bookingSuccesMsg }">
		<p class="text-center text-success">${bookingSuccesMsg}</p>
		<c:remove var="bookingSuccesMsg" />
	</c:if>
		<div class="card mb-3" style="max-width: 540px;">
			<div class="row g-0">
				<div class="col-md-4">
					<img src="" class="img-fluid rounded-start h-100 w-100" alt="...">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h3 class="card-title">Parsuram Maharana</h3>
						<p class="card-text">Location: Bhubaneswar</p>
						<p class="card-text">Amout : Rs/- 5000</p>
						<p class="card-text">
							<small class="text-muted">Check in : 10/11/2024, 10:00 AM</small>
							<br>
							<small class="text-muted">Check out : 10/11/2024, 11:00 PM</small>
						</p>
						<a href="#"><button class="btn btn-danger w-100">Cancel Booking</button></a>
					</div>
				</div>
			</div>
		</div>
	</section>



</body>
</html>