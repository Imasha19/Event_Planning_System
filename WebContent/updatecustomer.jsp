<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Customer - Online Event Planning System</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
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
            max-width: 1000px;
            margin: 80px auto 50px;
            padding: 30px;
            background-color: #fff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            color: #4a90e2;
            font-size: 2em;
            margin-bottom: 20px;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }

        th {
            background-color: #4a90e2;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* Input Styling */
        input[type="text"], input[type="password"] {
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: calc(100% - 26px);
            font-size: 1em;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #4a90e2;
            outline: none;
        }

        input[type="submit"] {
            background-color: #4a90e2;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s;
            width: 100%;
            text-align: center;
        }

        input[type="submit"]:hover {
            background-color: #357abd;
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

    <!-- Main Container -->
    <div class="container">
        <h1>Update Customer Information</h1>

        <form action="update" method="post">
            <table>
                <tr>
                    <th>Customer ID</th>
                    <td><input type="text" name="cusid" value="<%= id %>" readonly></td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td><input type="text" name="name" value="<%= name %>" required></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><input type="text" name="email" value="<%= email %>" required></td>
                </tr>
                <tr>
                    <th>Phone Number</th>
                    <td><input type="text" name="phone" value="<%= phone %>" required></td>
                </tr>
                <tr>
                    <th>User Name</th>
                    <td><input type="text" name="uname" value="<%= userName %>" required></td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td><input type="password" name="pass" value="<%= password %>" required></td>
                </tr>
            </table>
            <br>
            <input type="submit" name="submit" value="Update My Data">
        </form>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Online Event Planning System. All rights reserved.
    </div>

</body>
</html>
