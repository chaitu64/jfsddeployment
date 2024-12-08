<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Faculty</title>
    <style>
        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f0e1; /* Light brown background */
            color: #3e2723; /* Dark brown text */
            margin: 0;
            padding: 0;
            height: 100%;
        }

        h1 {
            text-align: center;
            color: #3e2723; /* Dark brown header */
            margin-top: 50px;
            font-size: 2.5em;
            font-weight: bold;
        }

        /* Form container */
        .form-container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff; /* White background for the form */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border: 1px solid #3e2723; /* Dark brown border */
        }

        /* Form elements */
        label {
            font-size: 1.1em;
            color: #3e2723;
            margin-bottom: 5px;
            display: block;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #3e2723; /* Dark brown border */
            border-radius: 5px;
            background-color: #f5f0e1; /* Light brown background */
            color: #3e2723; /* Dark brown text */
            font-size: 1.1em;
        }

        input[type="submit"] {
            background-color: #5d4037; /* Medium brown background */
            color: #f5f0e1; /* Light beige text */
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #3e2723; /* Dark brown on hover */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                width: 80%;
            }

            h1 {
                font-size: 2em;
            }
        }
    </style>
</head>
<body>

    <h1>Add Faculty</h1>
    
    <!-- Form Container -->
    <div class="form-container">
        <form action="addfaculty" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>

            <input type="submit" value="Add Faculty">
        </form>
    </div>

</body>
</html>
