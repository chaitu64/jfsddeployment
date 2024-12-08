<%@ page import="com.klef.jfsd.springboot.model.Student" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% 
Student s=(Student)session.getAttribute("student");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* General Styles */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #1e1e2f;
            color: #eaeaea;
            overflow: hidden; /* Prevent scrolling */
        }

        body {
            font-family: 'Arial', sans-serif;
        }

        /* Sidebar (Sidenav) */
        .sidenav {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #252539;
            padding-top: 20px;
            overflow-y: auto; /* Allow sidebar to scroll if necessary */
        }

        .sidenav a {
            padding: 15px 20px;
            text-decoration: none;
            font-size: 18px;
            color: #eaeaea;
            display: block;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .sidenav a:hover {
            background-color: #3a3a5f;
            color: #00d9ff;
        }

        .sidenav a.active {
            background-color: #00d9ff;
            color: #252539;
            font-weight: bold;
        }

        /* Header Section */
        .header {
            background: linear-gradient(135deg, #00d9ff, #0054ff);
            color: white;
            text-align: center;
            padding: 50px 0;
            margin-left: 250px;
            animation: fadeIn 2s ease-in;
        }

        .header h1 {
            margin: 0;
            font-size: 48px;
            font-weight: bold;
            animation: slideIn 1s ease-out;
        }

        .header p {
            font-size: 18px;
            font-weight: normal;
        }

        /* Main Content Section */
        .section {
            display: flex;
            justify-content: space-around;
            margin: 50px 0;
            flex-wrap: wrap;
            margin-left: 250px;
            height: calc(100vh - 150px); /* Ensure the section takes the remaining screen height */
            overflow-y: auto;
        }

        .card {
            perspective: 1000px;
            margin: 15px;
            width: 250px;
        }

        .card-inner {
            position: relative;
            width: 100%;
            height: 300px;
            transform-style: preserve-3d;
            transition: transform 0.6s ease;
        }

        .card:hover .card-inner {
            transform: rotateY(180deg);
        }

        .card-front,
        .card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        .card-front {
            background: linear-gradient(135deg, #252539, #3a3a5f);
            color: #00d9ff;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .card-front i {
            font-size: 40px;
            margin-bottom: 15px;
        }

        .card-back {
            background: #252539;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            transform: rotateY(180deg);
        }

        .card h3 {
            margin: 15px 0;
            font-size: 22px;
        }

        .card p {
            font-size: 16px;
            padding: 10px;
            text-align: center;
        }

        /* Footer Section */
        .footer {
            background-color: #252539;
            color: #eaeaea;
            text-align: center;
            padding: 20px 0;
            position: relative;
            width: 100%;
            bottom: 0;
            margin-left: 250px;
        }

        /* Animations */
        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        @keyframes slideIn {
            0% {
                transform: translateY(-30px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .sidenav {
                width: 200px;
            }

            .header {
                margin-left: 0;
            }

            .section {
                margin-left: 0;
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 80%;
            }

            .footer {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>

    <div class="sidenav">
        <a href="studentprofile"> <i class="fas fa-user"></i> MyProfile</a>
        <a href="studenthome" class="active"><i class="fas fa-home"></i> Home</a>
        <a href="/Timetable"><i class="fas fa-calendar-alt"></i> Timetable</a>
        <a href="/studentseeallcourses"><i class="fas fa-book"></i> Courses</a>
        <a href="/studentregistration"><i class="fas fa-clipboard-list"></i> Registration</a>
        <a href="#"><i class="fas fa-users"></i> Attendance</a>
        <a href="spagefeedback"><i class="fas fa-comment-dots"></i> Feedback</a>
        <a href="#"><i class="fas fa-cogs"></i> Exam Section</a>
        <a href="/studentlogin"> <i class="fas fa-sign-out-alt"></i> LogOut</a>
    </div>

    <!-- Header Section -->
    <div class="header">
        <h1>Welcome <%=s.getName() %></h1>
        <p>Manage your courses, view your timetable, check attendance, and more.</p>
    </div>

    <!-- Main Content Section -->
    <div class="section">
        <div class="card">
            <div class="card-inner">
                <div class="card-front">
                    <i class="fas fa-calendar-alt"></i>
                    <h3>Timetable</h3>
                </div>
                <div class="card-back">
                    <p>View your class schedule and make sure you're always on time.</p>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-inner">
                <div class="card-front">
                    <i class="fas fa-book"></i>
                    <h3>Courses</h3>
                </div>
                <div class="card-back">
                    <p>Explore the courses you're enrolled in and stay updated with assignments.</p>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-inner">
                <div class="card-front">
                    <i class="fas fa-clipboard-list"></i>
                    <h3>Registration</h3>
                </div>
                <div class="card-back">
                    <p>Register for new courses and manage your academic journey.</p>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-inner">
                <div class="card-front">
                    <i class="fas fa-users"></i>
                    <h3>Attendance</h3>
                </div>
                <div class="card-back">
                    <p>Track your attendance and ensure you're on top of your classes.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 Student Portal | All Rights Reserved</p>
    </div>
</body>
</html>
