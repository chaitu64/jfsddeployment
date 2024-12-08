<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4e1d2; /* Light brown background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #6d4c41; /* Medium brown box */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h2 {
            color: #ffffff; /* White color for heading */
            font-size: 24px;
            margin-bottom: 20px;
        }

        p {
            color: #f1f1f1; /* Light text for better contrast */
            font-size: 16px;
            margin-bottom: 30px;
        }

        .link {
            text-decoration: none;
            font-size: 16px;
            color: #6d4c41; /* Medium brown for link text */
            padding: 10px 20px;
            border-radius: 5px;
            border: 1px solid #6d4c41;
            transition: background-color 0.3s;
        }

        .link:hover {
            background-color: #6d4c41; /* Medium brown hover */
            color: #fff;
        }

        .link:active {
            background-color: #5d4037; /* Darker brown on active */
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Registration Successful</h2>
        <p>Dear <c:out value="${student.name}" />, your registration was successful!</p>
        <a href="adminhome" class="link">Go to Login</a>
    </div>

</body>
</html>
