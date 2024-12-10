<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success - Online Event Planning System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        .navbar {
            background-color: #333;
            color: #fff;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        .navbar .logo a {
            font-size: 1.5em;
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }
        .navbar .nav-links {
            display: flex;
        }
        .navbar .nav-links a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 1.2em;
            transition: color 0.3s;
        }
        .navbar .nav-links a:hover {
            color: #007bff;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }
        h1 {
            color: #28a745; /* Green color for success */
        }
        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <div class="logo">
            <a href="#">Online Event Planning System</a>
        </div>
        <div class="nav-links">
            <a href="#">Home</a>
            <a href="#">About</a>
            <a href="InqInsert.jsp">Inquiry</a>
            <a href="#">Contact Us</a>
            <a href="customerinsert.jsp">Register</a>
            <a href="login.jsp">Login</a>
        </div>
    </div>

    <div class="container">
        <h1>Success</h1>
        <p>Your operation was completed successfully!</p>
        <p>Thank you for using our service.</p>
    </div>

    <div class="footer">
        &copy; 2024 Event Planning System. All rights reserved.
    </div>

</body>
</html>
