<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Event Planning System</title>
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

        /* Hero Section */
        .hero {
            background-image: url('event-hero.jpg'); /* Replace with your image */
            background-size: cover;
            background-position: center;
            height: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            position: relative;
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.4);
        }

        .hero h1 {
            font-size: 3.5em;
            margin: 0;
            animation: fadeIn 2s ease-in-out;
        }

        .hero p {
            font-size: 1.3em;
            margin-top: 10px;
            animation: fadeIn 3s ease-in-out;
        }

        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        .hero button {
            background-color: #ffde59;
            color: #333;
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            font-size: 1em;
            transition: background-color 0.3s;
        }

        .hero button:hover {
            background-color: #e6c700;
        }

        /* Container Styling */
        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
        }

        .section-title {
            text-align: center;
            font-size: 2.5em;
            margin-bottom: 30px;
            color: #333;
            position: relative;
        }

        .section-title::after {
            content: '';
            width: 60px;
            height: 4px;
            background-color: #ffde59;
            display: block;
            margin: 10px auto;
        }

        /* Features Section */
        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .feature {
            text-align: center;
            padding: 20px;
            flex: 1;
            margin: 10px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .feature:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 30px rgba(0, 0, 0, 0.2);
        }

        .feature h3 {
            color: #4a90e2;
        }

        .feature p {
            color: #777;
        }

        /* Contact Section */
        .contact-form {
            display: flex;
            flex-direction: column;
            max-width: 600px;
            margin: 0 auto;
        }

        .contact-form input, .contact-form textarea {
            padding: 15px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: calc(100% - 32px); /* Adjust for padding and border */
            font-size: 1em;
        }

        .contact-form input[type="submit"] {
            background-color: #4a90e2;
            color: #fff;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s;
        }

        .contact-form input[type="submit"]:hover {
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

    <!-- Hero Section -->
    <div class="hero">
        <div>
            <h1>Make Your Event Memorable</h1>
            <p>Your one-stop solution for all event planning needs.</p>
            <button onclick="location.href='customerinsert.jsp'">Get Started</button>
        </div>
    </div>

    <!-- Services Section -->
    <div class="container">
        <h2 class="section-title">Our Services</h2>
        <div class="features">
            <div class="feature">
                <h3>Wedding Planning</h3>
                <p>We make your wedding unforgettable with personalized planning and decor.</p>
            </div>
            <div class="feature">
                <h3>Corporate Events</h3>
                <p>From conferences to team-building events, we handle everything professionally.</p>
            </div>
            <div class="feature">
                <h3>Birthday Parties</h3>
                <p>Celebrate your special day with unique themes and fun activities.</p>
            </div>
        </div>
    </div>

    <!-- Contact Section -->
    <div class="container">
        <h2 class="section-title">Contact Us</h2>
        <form class="contact-form" action="contact" method="post">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
            <input type="submit" value="Send Message">
        </form>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Online Event Planning System. All rights reserved.
    </div>

</body>
</html>
