<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Account - Online Event Planning System</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            overflow-x: hidden;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #4a90e2;
            color: #fff;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar .logo a {
            font-size: 1.8em;
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
            font-size: 1.1em;
            transition: color 0.3s;
        }

        .navbar .nav-links a:hover {
            color: #ffde59;
        }

        /* Container Styling */
        .container {
            max-width: 600px;
            margin: 80px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            width: calc(100% - 40px); /* Ensure it fits on smaller screens */
        }

        h1 {
            text-align: center;
            color: #4a90e2;
            font-size: 2.2em;
            margin-bottom: 20px;
        }

        /* Table Styling */
        table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            border-bottom: 1px solid #e0e0e0;
            color: #333;
        }

        input[type="text"] {
            padding: 12px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: calc(100% - 26px); /* Adjusted for padding and border */
            background-color: #f9f9f9;
            color: #333;
        }

        input[readonly] {
            background-color: #f1f1f1;
            cursor: not-allowed;
        }

        input[type="submit"] {
            background-color: #e74c3c;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
            font-size: 1rem;
            display: block;
            text-align: center;
        }

        input[type="submit"]:hover {
            background-color: #c0392b;
        }

        /* Footer Styling */
        .footer {
            background-color: #333;
            color: white;
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
    <%
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String userName = request.getParameter("uname");
        String password = request.getParameter("pass");
    %>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">
            <a href="home.jsp">Online Event Planning System</a>
        </div>
        <div class="nav-links">
            <a href="home.jsp">Home</a>
            <a href="#">Services</a>
            <a href="InqInsert.jsp">Inquiry</a>
            <a href="#">About Us</a>
            <a href="#">Contact</a>
            <a href="customerinsert.jsp">Register</a>
            <a href="login.jsp">Login</a>
        </div>
    </div>

    <!-- Container -->
    <div class="container">
        <h1>Customer Account Delete</h1>
        <form action="delete" method="post">
            <table>
                <tr>
                    <td>Customer ID</td>
                    <td><input type="text" name="cusid" value="<%= id %>" readonly></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="<%= name %>" readonly></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" value="<%= email %>" readonly></td>
                </tr>
                <tr>
                    <td>Phone Number</td>
                    <td><input type="text" name="phone" value="<%= phone %>" readonly></td>
                </tr>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="uname" value="<%= userName %>" readonly></td>
                </tr>
            </table>
            <br>
            <input type="submit" name="submit" value="Delete My Account">
        </form>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Online Event Planning System. All rights reserved.
    </div>
</body>
</html>
