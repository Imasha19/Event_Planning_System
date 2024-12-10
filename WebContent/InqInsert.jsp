<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Event Planning System - Inquiry Insert</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
            max-width: 800px;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            background-color: #fff;
        }

        .card h1 {
            color: #4a90e2;
            margin-bottom: 20px;
        }

        /* Form Styles */
        .form-group label {
            font-weight: bold;
            color: #333;
        }

        .form-control {
            border-radius: 4px;
            transition: border-color 0.3s;
        }

        .form-control:focus {
            border-color: #4a90e2;
            box-shadow: none;
        }

        .btn-primary {
            background-color: #4a90e2;
            border-color: #4a90e2;
            transition: background-color 0.3s, border-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #357abd;
            border-color: #357abd;
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

    <!-- Main Container Section -->
    <div class="container">
        <div class="card">
            <div class="card-body">
                <h1 class="text-center">Inquiry Form</h1>
                <form action="InsertInq" method="post">
                    <div class="form-group">
                        <label for="inquiryType">Select Inquiry type:</label>
                        <select id="inquiryType" class="form-control" name="type" required>
                            <option disabled selected value="">Select Inquiry type</option>
                            <option value="Normal Inquiry">Normal Inquiry</option>
                            <option value="Urgent Inquiry">Urgent Inquiry</option>
                            <option value="Complain">Complain</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="fullName">Full Name</label>
                        <input type="text" class="form-control" id="fullName" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <input type="tel" class="form-control" id="phone" name="phone" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="nic">NIC</label>
                        <input type="text" class="form-control" id="nic" name="nic" placeholder="can't update again" required>
                    </div>
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" required>
                    </div>
                    <div class="form-group">
                        <label for="inquiryText">Enter Inquiry</label>
                        <textarea class="form-control" id="inquiryText" name="inquiry" rows="3" required></textarea>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Submit Inquiry</button>
                    </div>
                </form>
            </div>
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
