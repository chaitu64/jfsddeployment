<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Portal</title>
    <style>
        /* Basic Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #FFF5E1; /* Cream background color */
            color: #3E1F1B; /* Chocolate brown text */
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        /* Navbar Styles */
        .navbar {
            background-color: #6F4F1F; /* Coffee brown background color */
            color: white;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
            position: sticky;
            top: 0;
            width: 100%;
            z-index: 100;
        }

        .navbar h1 {
            margin: 0;
            font-size: 2.5em;
            color: #fff;
        }

        .navbar ul {
            list-style-type: none;
            padding: 0;
            margin: 10px 0 0;
        }

        .navbar ul li {
            display: inline;
            margin: 0 20px;
        }

        .navbar ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2em;
            transition: color 0.3s ease;
        }

        .navbar ul li a:hover {
            color: #FFD9CC; /* Light peach hover color */
        }

        /* Main Content Section */
        .content {
            padding: 50px;
            background-color: #D7B29E; /* Light brown background color */
            margin-top: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            max-width: 1200px;
            margin: 30px auto;
        }

        .content h2 {
            font-size: 2.5em;
            color: #3E1F1B; /* Chocolate brown heading */
            text-align: center;
        }

        .content p {
            font-size: 1.3em;
            color: #3E1F1B; /* Chocolate brown text */
            text-align: center;
        }

        /* Button Container */
        .button-container {
            margin-top: 40px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .button-container a {
            background-color: #FFD9CC; /* Light peach button color */
            color: #3E1F1B; /* Chocolate brown text */
            padding: 15px 30px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 1.2em;
            transition: background-color 0.3s ease, transform 0.3s ease;
            position: relative;
            margin: 10px;
            width: 250px;
            text-align: center;
        }

        .button-container a:hover {
            background-color: #cc5200; /* Darker shade of peach when hovered */
            transform: scale(1.05);
        }

        /* Dropdown Container */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #333;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.3);
            z-index: 1;
            border-radius: 8px;
        }

        .dropdown-content a {
            color: white;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            font-size: 1.1em;
        }

        .dropdown-content a:hover {
            background-color: #555;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Pop-up Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8);
            overflow: auto;
            padding-top: 60px;
        }

        .modal-content {
            background-color: #333;
            color: #ddd;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #FFD9CC; /* Light peach border */
            width: 80%;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.5);
        }

        .modal-content h2 {
            color: #FFD9CC; /* Light peach for modal heading */
            font-size: 2em;
            margin-bottom: 20px;
        }

        .close {
            color: #FFD9CC;
            float: right;
            font-size: 1.5em;
            font-weight: bold;
            cursor: pointer;
        }

        .close:hover {
            color: white;
        }

        /* Footer Styles */
        .footer {
            background-color: #6F4F1F; /* Coffee brown footer */
            color: #fff;
            text-align: center;
            padding: 20px;
            position: fixed;
            width: 100%;
            bottom: 0;
            font-size: 1.2em;
        }

        .footer p {
            margin: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .content {
                padding: 20px;
            }

            .button-container {
                flex-direction: column;
                align-items: center;
            }

            .button-container a {
                width: 80%;
                margin: 10px 0;
            }

            .navbar h1 {
                font-size: 2em;
            }

            .content h2 {
                font-size: 2em;
            }

            .content p {
                font-size: 1.1em;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <h1>Faculty Portal</h1>
        <ul>
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="facultylogin">Logout</a></li>
        </ul>
    </div>

    <!-- Main Content Section -->
    <div class="content">
        <h2>Welcome, Faculty Member!</h2>
        <p>Here you can manage your courses, view student progress, and customize your profile settings.</p>

        <!-- Buttons Section -->
        <div class="button-container">
            <!-- Manage Courses Dropdown -->
            <div class="dropdown">
                <a href="#">Manage Courses</a>
                <div class="dropdown-content">
                    <a href="/addcourse">Add Courses</a>
                    <a href="/viewallcourse">View Courses</a>
                </div>
            </div>

            <!-- Student Progress Dropdown -->
            <div class="dropdown">
                <a href="#">Student Progress</a>
                <div class="dropdown-content">
                    <a href="/viewallstudents">View Students</a>
                    <a href="/studentReg">Add Student</a>
                </div>
            </div>

            <!-- Student Timetable Dropdown -->
            <div class="dropdown">
                <a href="#">Student Timetable</a>
                <div class="dropdown-content">
                    <a href="/viewTimetableById?id=123">View Timetable (ID: 123)</a> <!-- Example for student with ID 123 -->
                    <a href="/viewTimetableById?id=456">View Timetable (ID: 456)</a> <!-- Another example -->
                </div>
            </div>
        </div>
    </div>

    <!-- Pop-up Modal -->
    <div class="modal" id="myModal">
        <div class="modal-content">
            <span class="close" id="closeModal">&times;</span>
            <h2>Important Notification</h2>
            <p>Here is a notification about your portal activities!</p>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Faculty Portal | All Rights Reserved</p>
    </div>

    <!-- JavaScript for Pop-up -->
    <script>
        // Open the modal on page load
        window.onload = function() {
            setTimeout(function() {
                document.getElementById("myModal").style.display = "block";
            }, 2000); // Pop-up appears after 2 seconds
        }

        // Close the modal
        document.getElementById("closeModal").onclick = function() {
            document.getElementById("myModal").style.display = "none";
        }

        // Close the modal if clicked outside
        window.onclick = function(event) {
            if (event.target == document.getElementById("myModal")) {
                document.getElementById("myModal").style.display = "none";
            }
        }
    </script>

</body>
</html>
