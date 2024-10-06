<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Add New Room</title>
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
</style>

</head>

<body>
	<%@ include file="component/commonNavBar.jsp"%>
	<%@ include file="component/adminTab.jsp"%>

	<div class="container">
		<div class="form-container">
			<h3 class="text-center mb-4">Add New Room</h3>
			<form action="processAddRoom.jsp" method="post">

				<div class="form-group mb-3">
					<label for="location">Location</label> <select class="form-select"
						aria-label="Default select example" id="lovation" name="location">
						<option selected>Open this select menu</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>
				</div>


				<div class="form-group mb-3">
					<label for="roomNumber">Room Id</label> <input type="text"
						class="form-control" id="roomNumber" name="roomNumber"
						placeholder="Enter room number" required>
				</div>


				<div class="form-group mb-3">
					<label for="roomType">Category</label> <select class="form-select"
						aria-label="Default select example" id="roomType" name="roomType"
						required>
						<option value="">Select room type</option>
						<option value="Deluxe">Deluxe</option>
						<option value="Double">Double</option>
						<option value="Suite">Suite</option>
						<option value="Normal">Normal</option>
					</select>
				</div>


				<div class="form-group mb-3">
					<label for="capacity">Capacity</label> <input type="number"
						class="form-control" id="capacity" name="capacity"
						placeholder="Enter room capacity" required>
				</div>


				<div class="form-group mb-3">
					<label for="pricePerNight">Price Per Night</label> <input
						type="number" class="form-control" id="pricePerNight"
						name="pricePerNight" placeholder="Enter price per night" required>
				</div>
				<div class="form-group mb-3">
					<label for="AC">AC</label> <select class="form-select"
						aria-label="Default select example" id="AC" name="AC">
						<option selected>Open this select menu</option>
						<option value="1">Available</option>
						<option value="2">NA</option>
					</select>
				</div>


				<div class="form-group mb-3">
					<label for="Meal">Meal</label> <select class="form-select"
						aria-label="Default select example" id="Meal" name="Meal">
						<option selected>Open this select menu</option>
						<option value="1">Available</option>
						<option value="2">NA</option>
					</select>
				</div>
				
				<div class="form-group mb-3">
					<label for="Wifi">Wifi</label> <select class="form-select"
						aria-label="Default select example" id="Wifi" name="Wifi">
						<option selected>Open this select menu</option>
						<option value="1">Available</option>
						<option value="2">NA</option>
					</select>
				</div>
				
				<div class="form-group mb-3">
					<label for="Couple">Couple</label> <select class="form-select"
						aria-label="Default select example" id="Couple" name="Couple">
						<option selected>Open this select menu</option>
						<option value="1">Allow</option>
						<option value="2">NA</option>
					</select>
				</div>
				
				<div class="form-group mb-3">
					<label for="Parking">Parking</label> <select class="form-select"
						aria-label="Default select example" id="Parking" name="Parking">
						<option selected>Open this select menu</option>
						<option value="1">Available</option>
						<option value="2">NA</option>
					</select>
				</div>
				
				<div class="form-group mb-3">
					<label for="status">Status</label> <input type="text"
						class="form-control" id="status" name="status" value="Available"
						required>
				</div>

				<div class="text-center">
					<button type="submit" class="btn btn-primary">Add Room</button>
				</div>
			</form>
		</div>
	</div>

</body>

</html>