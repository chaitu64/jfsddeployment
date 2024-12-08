<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <!-- Link to Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <!-- Add some basic CSS for layout -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
        }

        /* Style for the side navbar */
        .sidenav {
            width: 250px;
            background-color: #6F4F1F; /* Coffee brown background color */
            color: white;
            padding-top: 20px;
            position: fixed;
            height: 100%;
            display: flex;
            flex-direction: column;
        }

        .sidenav a {
            text-decoration: none;
            color: white;
            padding: 15px 20px;
            display: flex;
            align-items: center;
            transition: background-color 0.3s;
        }

        .sidenav a:hover {
            background-color: #5a3e23; /* Slightly darker shade of brown for hover effect */
        }

        .sidenav i {
            margin-right: 10px;
        }

        /* Main content area */
        .main-content {
            margin-left: 250px; /* Make space for the sidebar */
            padding: 20px;
            flex: 1;
            background-color: #f4f4f4;
            height: 100%;
        }

        .main-content h1 {
            margin-top: 0;
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

    <!-- Main Content -->
    
</body>
</html>
