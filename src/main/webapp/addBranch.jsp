<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <%@ include file="component/bootStrapLink.jsp" %>
            <%@ include file="component/fontAwesome.jsp" %>
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
        <%@include file="component/commonNavBar.jsp" %>

            <%@ include file="component/adminTab.jsp" %>
                <div class="container">
                    <div class="form-container">
                        <h3 class="text-center mb-4">Add New Branch</h3>
                        <form action="processAddBranch.jsp" method="post">

                            <div class="form-group mb-3">
                                <label for="branchName"></label>
                                <input type="text" class="form-control" id="branchName" name="branchName"
                                    placeholder="Enter branch name" required>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Add Branch</button>
                            </div>
                        </form>
                    </div>
                </div>

    </body>

    </html>