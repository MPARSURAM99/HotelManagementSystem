<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Receptionist Dashboard</title>
    <%@ include file="component/bootStrapLink.jsp"%>
    <%@ include file="component/fontAwesome.jsp"%>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
        }

        .container {
            margin-top: 20px;
        }

        .card {
            margin: 20px 0;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .welcome-msg {
            margin: 20px 0;
        }
    </style>
</head>

<body>
    <%-- Include common navigation and tabs --%>
    <%@ include file="component/commonNavBar.jsp"%>
  

    <div class="container">
        <div class="welcome-msg">
            <h2>Welcome, <%= session.getAttribute("receptionistName") %>!</h2>
            <p>What would you like to do today?</p>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">Check-In Guest</h5>
                        <p class="card-text">Manage new arrivals and assign rooms.</p>
                        <a href="checkInGuest.jsp" class="btn btn-primary">Check-In</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">Check-Out Guest</h5>
                        <p class="card-text">Process check-out and generate invoices.</p>
                        <a href="checkOutGuest.jsp" class="btn btn-primary">Check-Out</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">Room Availability</h5>
                        <p class="card-text">View available rooms and make bookings.</p>
                        <a href="roomAvailability.jsp" class="btn btn-primary">View Rooms</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">Current Reservations</h5>
                        <p class="card-text">View and manage upcoming reservations.</p>
                        <a href="viewReservations.jsp" class="btn btn-primary">View Reservations</a>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">Billing & Payments</h5>
                        <p class="card-text">Generate bills and manage payments.</p>
                        <a href="billing.jsp" class="btn btn-primary">View Bills</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
