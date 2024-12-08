<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Failed</title>
    <style>
        /* General Reset and Body Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            font-size: 2.5rem;
            color: #ff4d4d;
            margin-bottom: 10px;
        }

        /* Container to center content */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
        }

        /* Error Box Styling */
        .error-box {
            background-color: white;
            border-radius: 8px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            transition: transform 0.3s ease, opacity 0.3s ease;
        }

        .error-box h1 {
            color: #ff4d4d;
            margin-bottom: 20px;
        }

        .message {
            font-size: 1.1rem;
            margin-bottom: 30px;
            color: #555;
        }

        .btn-try-again {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1.1rem;
            transition: background-color 0.3s ease;
        }

        .btn-try-again:hover {
            background-color: #0056b3;
        }

        /* Add media query for responsiveness */
        @media (max-width: 480px) {
            .error-box {
                padding: 20px;
            }

            .btn-try-again {
                font-size: 1rem;
                padding: 8px 15px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="error-box">
            <h1>Login Failed</h1>
            <p class="message"><c:out value="${msgs}"/></p>
            <a href="facultylogin" class="btn-try-again">Try Again</a>
        </div>
    </div>
</body>
</html>
