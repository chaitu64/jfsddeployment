<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Faculty Login</title>
<style>
/* Ensure the body takes the full viewport height */
body {
  background-image: url('https://images.unsplash.com/photo-1487017159836-4e23ece2e4cf?q=80&w=1771&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'); /* Unsplash image URL */
  background-size: cover;
  background-position: center; /* Center the image */
  background-repeat: no-repeat;
  background-attachment: scroll; /* Fixed background removed for better performance */
  font-family: "Open Sans", sans-serif;
  color: #333333;
  margin: 0;
  padding: 0;
  height: 100vh; /* Full viewport height */
}

/* The login container's styling with transparent blur effect */
.login-container {
    background-color: rgba(255, 255, 255, 0.4); /* Semi-transparent white for a cleaner background */
    padding: 60px 70px; /* Increased padding for larger size */
    border-radius: 15px;
    width: 480px; /* Increased width */
    margin: 80px auto 0; /* Center the form with top margin */
    backdrop-filter: blur(8px); /* Apply the blur effect */
    -webkit-backdrop-filter: blur(8px); /* Ensure compatibility for Safari */
}

/* Styling for the title in the login container */
.login-container h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #000; /* Set text color to black */
    font-size: 28px;
    font-weight: 600;
}

/* Form input and button styles */
.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #000; /* Set text color to black */
}

.form-group input {
    width: 100%;
    padding: 14px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 15px;
    color: #333;
    background-color: #fff;
}

.form-group input:focus {
    border-color: #8e6b3f; /* A darker brown */
    outline: none;
}

.btn {
    display: block;
    width: 100%;
    padding: 14px;
    background-color: #8e6b3f; /* A warm brown for the button */
    color: #fff;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 17px;
    margin-top: 15px;
    transition: background-color 0.3s ease;
}

.btn:hover {
    background-color: #5a3f29; /* A deeper brown on hover */
}

/* Error message styling */
.error {
    color: red;
    text-align: center;
    margin-top: 10px;
}

/* Optional: Adjust padding for the body to account for navbar space */
body {
    padding-top: 60px; /* Adjust this if you have a navbar */
}
</style>
</head>
<body>
    <%-- Include the navbar (if you have it in a separate file) --%>
    <%@ include file="mainnavbar.jsp" %> 

    <!-- Login Form Section -->
    <div class="login-container">
        <h2>Faculty Login</h2>
        <!-- Login form -->
        <form action="checkFacultyLogin" method="post">
            <div class="form-group">
                <label for="fusername">Username:</label>
                <input type="text" id="fusername" name="fusername" placeholder="Enter your username" required>
            </div>
            <div class="form-group">
                <label for="fpassword">Password:</label>
                <input type="password" id="fpassword" name="fpassword" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn">Login</button>
        </form>
        
        <%-- Display error message if login failed --%>
        <% 
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
            <p class="error"><%= errorMessage %></p>
        <% } %>

        
    </div>
</body>
</html>
