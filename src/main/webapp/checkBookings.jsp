<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="component/jstlTag.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="component/bootStrapLink.jsp"%>
<%@ include file="component/fontAwesome.jsp"%>

<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f0f0f0;
}

.form-container {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
}

.container {
	margin-top: 170px;
}

.container h3 {
	margin-bottom: 20px;
	color: #0d6efd;
}
</style>
</head>
<body>
	<%@ include file="component/commonNavBar.jsp" %>
	<div class="container">
		<div class="form-container">
			<h3 class="text-center mb-4">Booking Details</h3>

			<c:if test="${not empty addRoomFailMsg }">
				<p class="text-center text-success">${addRoomFailMsg}</p>
				<c:remove var="addRoomFailMsg" />
			</c:if>
			<form action="bookingInformation" method="post">

				<div class="form-group mb-3">
					<input type="tel" class="form-control" id="branchName"
						name="mobNumber" placeholder="Enter mobile number" required>
				</div>

				<div class="text-center">
					<button type="submit" class="btn btn-primary">Add Branch</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>