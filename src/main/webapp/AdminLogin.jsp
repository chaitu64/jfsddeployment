<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
    /* General body styles */
    body {
        background-image: linear-gradient(135deg, #4E2C2B 10%, #6F4F37 100%); /* Brown family colors */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        font-family: "Open Sans", sans-serif;
        color: #333333;
        padding-top: 60px; 
    }

    /* Navbar styles */
    .navbar {git add origin "https://github.com/Adarsh-0411/JfsdSdp.git"
        width: 100%;
        background-color: #3E2723; /* Dark brown */
        color: white;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 20px;
        position: fixed; /* Fixed at the top */
        top: 0;
        left: 0;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        z-index: 1000;
    }

    .navbar h1 {
        margin: 0;
        font-size: 20px;
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
        color: white;
        font-size: 16px;
        transition: color 0.3s;
    }

    .navbar ul li a:hover {
        color: #FF7043; /* Light brown */
    }

    /* Login container styles */
    .login-container {
        background-color: #fff;
        padding: 20px 30px;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 300px;
        margin: 100px auto 0; /* Push it below the navbar */
    }

    .login-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #6F4F37; /* Light brown color for the title */
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .form-group input:focus {
        border-color: #6F4F37; /* Light brown for focus border */
    }

    .btn {
        display: block;
        width: 100%;
        padding: 10px;
        background-color: #6F4F37; /* Light brown */
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 10px;
    }

    .btn:hover {
        background-color: #4E2C2B; /* Darker brown for hover effect */
    }

    .error {
        color: red;
        text-align: center;
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
