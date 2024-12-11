<%@ page import="com.klef.jfsd.springboot.model.Student" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
Student s = (Student) session.getAttribute("student");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>My Profile</title>

<!-- Google Fonts Integration for Better Typography -->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">

<!-- CSS Styling -->
<style>
    /* Global Styles */
    body {
        font-family: 'Roboto', sans-serif;
        background-color: #121212;
        margin: 0;
        padding: 0;
        color: #fff;
    }

    /* Navigation Bar */
    nav {
        background-color: #1c1c1c;
        padding: 15px 25px;
        text-align: center;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
    }

    nav a {
        color: #fff;
        font-size: 18px;
        text-decoration: none;
        padding: 10px 20px;
        margin: 0 15px;
        transition: background-color 0.3s ease;
    }

    nav a:hover {
        background-color: #00bcd4;
        border-radius: 5px;
    }

    /* Main Content */
    .main-content {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 80vh;
        flex-direction: column;
        margin-top: 50px;
        animation: fadeIn 1s ease-in-out;
        width: 100%;
    }

    /* Heading Styles */
    h1, h2 {
        color: #00bcd4;
        margin-bottom: 20px;
    }

    h1 {
        font-size: 48px;
    }

    h2 {
        font-size: 36px;
    }

    /* Profile Information Box */
    .profile-info {
        background-color: #1c1c1c;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
        width: 80%;
        max-width: 800px;
        color: #aaa;
    }

    .profile-info p {
        font-size: 20px;
        margin-bottom: 15px;
    }

    .profile-info span {
        font-weight: bold;
        color: #00bcd4;
    }

    /* Button Styling */
    button {
        background-color: #00bcd4;
        color: white;
        font-size: 18px;
        padding: 12px 25px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        margin-top: 20px;
    }

    button:hover {
        background-color: #007c92;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .main-content {
            padding: 20px;
        }

        h1 {
            font-size: 36px;
        }

        h2 {
            font-size: 28px;
        }

        .profile-info p {
            font-size: 18px;
        }
    }

    /* Animations */
    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }
</style>

</head>
<body>

    <!-- Navigation Bar (Include File) -->
    <%@ include file="studentnavbar.jsp" %>

    <!-- Main Content Section -->
    <div class="main-content">
        <h1>Welcome to Your Profile</h1>
        <h2>Profile Overview</h2>

        <!-- Profile Information Box -->
        <div class="profile-info">
            <p><span>ID:</span> <%= s.getId() %></p>
            <p><span>Name:</span> <%= s.getName() %></p>
            <p><span>Gender:</span> <%= s.getGender() %></p>
            <p><span>DOB:</span> <%= s.getDateOfBirth() %></p>
            <p><span>Department:</span> <%= s.getDepartment() %></p>
            <p><span>Email:</span> <%= s.getEmail() %></p>
            <p><span>Location:</span> <%= s.getLocation() %></p>
            <p><span>Contact:</span> <%= s.getContact() %></p>
        </div>

        <!-- Update Profile Button -->
    </div>

</body>
</html>
