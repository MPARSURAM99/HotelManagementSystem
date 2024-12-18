<%@page import="in.cutm.model.Location"%>
<%@page import="java.util.List"%>
<%@page import="in.cutm.dbConnection.ConnectDB"%>
<%@page import="in.cutm.dao.LocationDao"%>
<%@ include file="component/jstlTag.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="component/bootStrapLink.jsp" %>
<style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #fff;
            color: #000;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .login-container {
            background-color: #f8f9fa;
            padding: 40px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 20px;
            color: #0d6efd;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            background: #fff;
            border: 1px solid #0d6efd;
            border-radius: 5px;
            color: #000;
        }

        .login-container input[type="text"]::placeholder,
        .login-container input[type="password"]::placeholder {
            color: #6c757d;
        }

        .login-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: #0d6efd;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            color: #fff;
            cursor: pointer;
        }

        .login-container input[type="submit"]:hover {
            background: #0056b3;
        }

        .login-container a {
            display: block;
            margin-top: 15px;
            color: #0d6efd;
            text-decoration: none;
        }

        .login-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%@include file="component/commonNavBar.jsp" %>
<div class="login-container">


        <h2>Reception Login</h2>
        <c:if test="${not empty loginFailMsg }">
			<p class="text-center text-danger">${loginFailMsg}</p>
			<c:remove var="loginFailMsg" />
		</c:if>
        <form action="receptionLogin" method="post">
          <select class="form-select"
						aria-label="Default select example" id="location" name="receptionLocation">
						<option value="" selected disabled>Please select a
							location</option>

						<%
						LocationDao daoLoc = new LocationDao(ConnectDB.dbconnect());
						List<Location> list = daoLoc.displayLocation();

						for (Location l1 : list) {
						%>
						<option><%=l1.getBranchName()%></option>
						<%
						}
						%>
						
		 </select>
            <input type="password" name="receptionPassword" class="form-control" placeholder="Password" required><br><br>
            <input type="submit" class="btn btn-primary" value="Login">
        </form>
        <a href="#">Forgot Password?</a>
    </div>

</body>
</html>