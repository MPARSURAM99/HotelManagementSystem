<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Reception Page</title>
        <%@ include file="component/bootStrapLink.jsp" %> 
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
        
        @media (max-width: 992px) {
            .container {
                max-width: 100%;
            }
            .table-container {
                padding: 15px;
            }
        }
        @media (max-width: 768px) {
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
    <h2 class="text-center mb-4">Hotel Reception Page</h2>
    <div class="table-container">
        <table class="table table-striped table-borderless">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Customer Name</th>
                    <th>Phone Number</th>
                    <th>Location</th>
                    <th>From</th>
                    <th>To</th>
                    <th>Amount</th>
                    <th>Payment Status</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td data-label="ID">1</td>
                    <td data-label="Customer Name">John Doe</td>
                    <td data-label="Phone Number">123-456-7890</td>
                    <td data-label="Location">New York</td>
                    <td data-label="From">2024-11-01</td>
                    <td data-label="To">2024-11-05</td>
                    <td data-label="Amount">$500</td>
                    <td data-label="Payment Status">Paid</td>
                    <td data-label="Status">
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-success btn-sm">Check-in</button>
                            <button type="button" class="btn btn-primary btn-sm">Check-out</button>
                            <button type="button" class="btn btn-danger btn-sm">Cancel</button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td data-label="ID">2</td>
                    <td data-label="Customer Name">Jane Smith</td>
                    <td data-label="Phone Number">234-567-8901</td>
                    <td data-label="Location">Los Angeles</td>
                    <td data-label="From">2024-11-02</td>
                    <td data-label="To">2024-11-06</td>
                    <td data-label="Amount">$700</td>
                    <td data-label="Payment Status">Pending</td>
                    <td data-label="Status">
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-success btn-sm">Check-in</button>
                            <button type="button" class="btn btn-primary btn-sm">Check-out</button>
                            <button type="button" class="btn btn-danger btn-sm">Cancel</button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td data-label="ID">3</td>
                    <td data-label="Customer Name">Robert Brown</td>
                    <td data-label="Phone Number">345-678-9012</td>
                    <td data-label="Location">Chicago</td>
                    <td data-label="From">2024-11-03</td>
                    <td data-label="To">2024-11-07</td>
                    <td data-label="Amount">$450</td>
                    <td data-label="Payment Status">Paid</td>
                    <td data-label="Status">
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-success btn-sm">Check-in</button>
                            <button type="button" class="btn btn-primary btn-sm">Check-out</button>
                            <button type="button" class="btn btn-danger btn-sm">Cancel</button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
