<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
    /* Global Styles */
    body {
        background-color: #f5f5dc; /* Soft cream background */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        font-family: 'Roboto', sans-serif;
        color: #333;
        margin: 0;
        padding: 0;
        height: 100vh;
    }

    h1, h2 {
        font-family: 'Merriweather', serif;
        color: #333;
    }

    /* Navbar Styles */
    .navbar {
        width: 100%;
        background-color: #3e2723; /* Deep brown color */
        color: #fff;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px 40px;
        position: fixed;
        top: 0;
        left: 0;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        z-index: 1000;
    }

    .navbar h1 {
        font-size: 24px;
        margin: 0;
    }

    .navbar ul {
        list-style: none;
        margin: 0;
        padding: 0;
        display: flex;
        gap: 20px;
    }

    .navbar ul li {
        display: inline;
    }

    .navbar ul li a {
        text-decoration: none;
        color: #fff;
        font-size: 18px;
        font-weight: 600;
        transition: color 0.3s;
    }

    .navbar ul li a:hover {
        color: #ff7043; /* Soft orange hover effect */
    }

    /* Login Container Styles */
    .login-container {
        background-color: #d8c8a7; /* Light brown background for the box */
        padding: 40px 50px;
        border-radius: 15px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        width: 350px;
        margin: 100px auto;
    }

    .login-container h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #6F4F37; /* Light brown color for the title */
        font-size: 30px;
    }

    .form-group {
        margin-bottom: 25px;
    }

    .form-group label {
        display: block;
        margin-bottom: 10px;
        font-weight: 500;
        font-size: 18px;
        color: #333;
    }

    .form-group input {
        width: 100%;
        padding: 15px;
        border: 1px solid #ccc;
        border-radius: 10px;
        font-size: 16px;
        color: #333;
        background-color: #fff;
        transition: all 0.3s ease;
    }

    .form-group input:focus {
        border: 2px solid #ff7043; /* Soft orange focus border */
        outline: none;
    }

    .btn {
        width: 100%;
        padding: 15px;
        background-color: #6F4F37; /* Soft brown */
        color: white;
        border: none;
        border-radius: 10px;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .btn:hover {
        background-color: #ff7043; /* Soft orange on hover */
    }

    .error {
        color: #ff5a36; /* Red for errors */
        text-align: center;
        font-size: 18px;
        margin-top: 20px;
    }

    /* Media Queries */
    @media (max-width: 768px) {
        .navbar {
            padding: 15px 20px;
        }

        .login-container {
            width: 90%;
            padding: 30px;
        }

        .navbar h1 {
            font-size: 20px;
        }

        .navbar ul li a {
            font-size: 16px;
        }

        .login-container h2 {
            font-size: 26px;
        }
    }

</style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %> 

    <div class="login-container">
        <h2>Admin Login</h2>
        <form action="checkadminlogin" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="auname" name="auname" placeholder="Enter your username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="apwd" name="apwd" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn">Login</button>
        </form>
        <% 
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
            <p class="error"><%= errorMessage %></p>
        <% } %>
    </div>
</body>
</html>
