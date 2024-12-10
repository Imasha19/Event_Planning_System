<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Event Planning System - Inquiry Deletion</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* General Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            color: #333;
            overflow-x: hidden;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #4a90e2;
        }

        .navbar .nav-link {
            color: #fff !important;
            transition: color 0.3s;
        }

        .navbar .nav-link:hover {
            color: #ffde59 !important;
        }

        /* Container Styling */
        .container {
            margin-top: 80px;
            max-width: 600px;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            background-color: #fff;
        }

        .card h2 {
            color: #4a90e2;
            margin-bottom: 20px;
        }

        .inputs p {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .inputs input {
            background-color: #f8f9fa;
            border: 1px solid #ced4da;
            border-radius: 4px;
            padding: 10px;
            width: 100%;
            display: inline-block;
            color: #333;
            cursor: not-allowed;
        }

        /* Button Styling */
        .btn-custom {
            background-color: #e74c3c;
            border-color: #e74c3c;
            color: #fff;
            transition: background-color 0.3s, border-color 0.3s;
        }

        .btn-custom:hover {
            background-color: #c0392b;
            border-color: #c0392b;
        }

        /* Footer Styling */
        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            position: relative;
            bottom: 0;
            width: 100%;
            margin-top: 50px;
        }
    </style>
</head>
<body>

    <!-- Navbar Section -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="home.jsp">Online Event Planning System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">About</a></li>
                <li class="nav-item"><a class="nav-link" href="InqInsert.jsp">Inquiry</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>
                <li class="nav-item"><a class="nav-link" href="customerinsert.jsp">Register</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
            </ul>
        </div>
    </nav>

    <!-- Inquiry Deletion Container -->
    <div class="container">
        <div class="card mt-4">
            <h2 class="text-center">Inquiry Form Details</h2>
            <form action="deleteInq" method="post">
                <!-- Retrieve values from the previous page and display them in the form -->
                <% 
                    String name = request.getParameter("name");
                    String phone = request.getParameter("phone");
                    String email = request.getParameter("email");
                    String nic = request.getParameter("nic");
                    String title = request.getParameter("title");
                    String inquiry = request.getParameter("inquiry");
                %>
                
                <div class="inputs">
                    <p>Full Name</p>
                    <input type="text" name="name" value="<%= name %>" readonly>
                </div> 
                <div class="inputs">
                    <p>Phone</p>
                    <input type="text" name="phone" value="<%= phone %>" readonly>
                </div>
                <div class="inputs">
                    <p>Email</p>
                    <input type="email" name="email" value="<%= email %>" readonly>
                </div>
                <div class="inputs">
                    <p>NIC</p>
                    <input type="text" name="nic" value="<%= nic %>" readonly>
                </div>
                <div class="inputs">
                    <p>Title</p>
                    <input type="text" name="title" value="<%= title %>" readonly>
                </div>
                <div class="inputs">
                    <p>Inquiry</p>
                    <input type="text" name="inquiry" value="<%= inquiry %>" readonly>
                </div>
                <div class="text-center mt-4">
                    <button type="submit" class="btn btn-custom" onclick="return confirm('Are you sure you want to delete this inquiry?');">Delete Inquiry</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        &copy; 2024 Online Event Planning System. All rights reserved.
    </div>

    <!-- Bootstrap JS CDN and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
