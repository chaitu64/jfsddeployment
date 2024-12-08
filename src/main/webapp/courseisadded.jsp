<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Course Added Success</title>
<style>
    /* Basic reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    /* Body styles */
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f4f8;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
        margin: 0;
    }

    /* Main container */
    .container {
        text-align: center;
        background-color: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 30px;
        max-width: 500px;
        width: 100%;
    }

    /* Heading styles */
    h1 {
        font-size: 2em;
        color: #4CAF50;
        margin-bottom: 20px;
    }

    /* Message styles */
    p {
        font-size: 1.2em;
        color: #555;
        margin-bottom: 30px;
    }

    /* Button styles */
    .btn {
        display: inline-block;
        background-color: #4CAF50;
        color: white;
        font-size: 1.1em;
        padding: 12px 25px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        transition: background-color 0.3s ease;
    }

    .btn:hover {
        background-color: #45a049;
    }

    /* Responsive design for smaller screens */
    @media (max-width: 600px) {
        .container {
            padding: 20px;
        }

        h1 {
            font-size: 1.8em;
        }

        p {
            font-size: 1.1em;
        }
    }
</style>
</head>
<body>

<div class="container">
    <h1>Course Added Successfully!</h1>
    <p>Your course has been added to the system.</p>
    <a href="/" class="btn">Go to Courses List</a>
</div>

</body>
</html>
