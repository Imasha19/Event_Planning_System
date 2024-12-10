<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Event Planning System - User Registration</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom Styling */
        body {
            background-color: #f4f4f9;
        }

        .navbar {
            background-color: #333;
        }

        .navbar .nav-link {
            color: #fff !important;
        }

        .navbar .nav-link:hover {
            color: #007bff !important;
        }

        .container {
            margin-top: 50px;
        }

        .card {
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            bottom: 0;
            width: 100%;
            position: fixed;
        }

        .btn-custom {
            background-color: #007bff;
            border-color: #007bff;
            color: #fff;
            transition: background-color 0.3s, border-color 0.3s;
        }

        .btn-custom:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>
<body>

    <!-- Navbar Section -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Online Event Planning System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">About</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Inquiry</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>
                <li class="nav-item"><a class="nav-link" href="customerinsert.jsp">Register</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
            </ul>
        </div>
    </nav>

    <!-- Main Container Section -->
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h2 class="text-center">Inquiry Details</h2>
                <table class="table table-bordered table-striped mt-4">
                    <thead class="thead-dark">
                        <tr>
                            <th>Field</th>
                            <th>Details</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="inq" items="${inqDetails}">
                            <tr>
                                <td>Type</td>
                                <td>${inq.type}</td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td>${inq.name}</td>
                            </tr>
                            <tr>
                                <td>Phone</td>
                                <td>${inq.phone}</td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>${inq.email}</td>
                            </tr>
                            <tr>
                                <td>NIC</td>
                                <td>${inq.nic}</td>
                            </tr>
                            <tr>
                                <td>Title</td>
                                <td>${inq.title}</td>
                            </tr>
                            <tr>
                                <td>Inquiry</td>
                                <td>${inq.inquiry}</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="text-center">
                                    <!-- Update Button -->
                                    <c:url value="inqUpdate.jsp" var="inqUpdate">
                                        <c:param name="type" value="${inq.type}"/>
                                        <c:param name="name" value="${inq.name}"/>
                                        <c:param name="phone" value="${inq.phone}"/>
                                        <c:param name="email" value="${inq.email}"/>
                                        <c:param name="nic" value="${inq.nic}"/>
                                        <c:param name="title" value="${inq.title}"/>
                                        <c:param name="inquiry" value="${inq.inquiry}"/>
                                    </c:url>
                                    <a href="${inqUpdate}" class="btn btn-custom mx-2">Update Inquiry</a>

                                    <!-- Delete Button -->
                                    <c:url value="inqDelete.jsp" var="inqDelete">
                                        <c:param name="type" value="${inq.type}"/>
                                        <c:param name="name" value="${inq.name}"/>
                                        <c:param name="phone" value="${inq.phone}"/>
                                        <c:param name="email" value="${inq.email}"/>
                                        <c:param name="nic" value="${inq.nic}"/>
                                        <c:param name="title" value="${inq.title}"/>
                                        <c:param name="inquiry" value="${inq.inquiry}"/>
                                    </c:url>
                                    <a href="${inqDelete}" class="btn btn-danger mx-2">Delete Inquiry</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
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
