
<%@page import="in.cutm.model.Location"%>
<%@page import="java.util.List"%>
<%@page import="in.cutm.dbConnection.ConnectDB"%>
<%@page import="in.cutm.dao.LocationDao"%>
<style>
/* This only works for WebKit browsers (like Chrome, Safari) */
input[type="date"]::-webkit-calendar-picker-indicator {
	filter: invert(25%) sepia(100%) saturate(2152%) hue-rotate(192deg)
		brightness(96%) contrast(101%);
}

input[id="fromDate"]:before {
	content: attr(placeholder);
	color: blue;
	position: absolute;
	margin-left: 45%;
}

input[id="fromDate"]:focus:before, input[id="fromDate"]:valid:before {
	content: "From Date";
}

input[id="toDate"]:before {
	content: attr(placeholder);
	color: blue;
	position: absolute;
	margin-left: 45%;
}

input[id="toDate"]:focus:before, input[id="toDate"]:valid:before {
	content: "To Date";
}
</style>



<form action="searchRoom" method="post" class="p-4"
	style="margin-top: 80px;">
	<div class="input-group mb-3">
		<div class="input-group-text">
			<i class="fa-solid fa-calendar-days text-primary"></i>
		</div>
		<input type="date" class="form-control"
			aria-label="Text input with checkbox" id="fromDate" name="fromDate" />
	</div>

	<div class="input-group mb-3">
		<div class="input-group-text">
			<i class="fa-solid fa-calendar-days text-primary"></i>
		</div>
		<input type="date" class="form-control"
			aria-label="Text input with checkbox" id="toDate" name="toDate" />
	</div>

	<div class="input-group mb-3">
		<div class="input-group-text">
			<i class="fa-solid fa-location-dot text-primary"></i>
		</div>

		<select class="form-select" id="inputGroupSelect02" name="location">
			<option selected>Choose...</option>
			<%
			LocationDao daoLoc = new LocationDao(ConnectDB.dbconnect());
			List<Location> list = daoLoc.displayLocation();

			for (Location l1 : list) {
			%>
			<option><%=l1.getBranchName()%></option>
			<%
			}
			%>
		</select> <label class="input-group-text text-primary" for="inputGroupSelect02">Location</label>
	</div>

	<div class="input-group mb-3">
		<input type="submit" value="Search" class="btn btn-primary w-100" />
	</div>
</form>