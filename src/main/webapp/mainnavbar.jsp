<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Boot SDP Project</title>
    <style>
        /* General body styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        /* Navigation bar styles */
        nav {
            background-color: #3e2723; /* Dark brown */
            overflow: hidden;
            position: sticky;
            top: 0;
            width: 100%;
        }

        /* Logo styling */
        .logo {
            float: left;
            color: white;
            font-size: 24px;
            font-weight: bold;
            padding: 14px 20px;
        }

        /* Navigation links container */
        .links {
            float: right;
        }

        /* Styling individual links */
        .links a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            text-align: center;
            display: inline-block;
            font-size: 18px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        /* Hover effect for links */
        .links a:hover {
            background-color: #ddd;
            color: #333;
        }

        /* Responsive layout for small screens */
        @media screen and (max-width: 768px) {
            .links {
                float: none;
                width: 100%;
                text-align: center;
            }

            .links a {
                display: block;
                width: 100%;
                padding: 12px;
            }
        }
    </style>
</head>
<body>

    <nav>
        <div class="logo">ERP System</div>
        <div class="links">
            <a href="/">Home</a>
            <a href="/studentlogin">Student Login</a>
            <a href="/facultylogin">Faculty Login</a>
            <a href="/adminLogin">Admin Login</a>
            <a href="/contact">Contact</a>
        </div>
    </nav>

</body>
</html>
