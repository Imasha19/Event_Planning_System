<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Event Planning System - User Registration</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
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
            margin: 80px auto; /* Increased margin to avoid overlapping with the fixed navbar */
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            color: #4a90e2;
            font-size: 2.2em;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin: 10px 0 5px;
            font-size: 1em;
            color: #333;
        }

        input[type="text"], input[type="password"] {
            padding: 12px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1em;
            width: calc(100% - 26px); /* Adjusted for padding and border */
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
            position: relative; /* Changed to avoid overlapping with content */
            bottom: 0;
            width: 100%;
            margin-top: 50px;
        }
    </style>
</head>
<body>

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

    <!-- Registration Form Container -->
    <div class="container">
        <h1>User Registration</h1>
        <form action="insert" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email</label>
            <input type="text" id="email" name="email" required>

            <label for="phone">Phone Number</label>
            <input type="text" id="phone" name="phone" required>

            <label for="uid">User Name</label>
            <input type="text" id="uid" name="uid" required>

            <label for="psw">Password</label>
            <input type="password" id="psw" name="psw" required>

            <input type="submit" name="submit" value="Create Customer">
        </form>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Online Event Planning System. All rights reserved.
    </div>

</body>
</html>
