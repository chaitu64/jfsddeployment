<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Course</title>
    <style>
        /* Global Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Body Styling */
        body {
            background: linear-gradient(135deg, #6d4c41, #3e2723); /* Brown gradient background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
            font-size: 1.1em;
            overflow: hidden;
        }

        /* Main Container for the Form */
        .form-container {
            background: rgba(109, 76, 65, 0.9); /* Medium brown with opacity */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 600px;
            text-align: center;
            transform: scale(1);
            transition: all 0.3s ease-in-out;
        }

        /* Form Container Hover Effect */
        .form-container:hover {
            transform: scale(1.05);
        }

        /* Form Heading */
        h1 {
            color: #ffffff; /* White heading text */
            margin-bottom: 25px;
            font-size: 2.5em;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        /* Label Styling */
        label {
            font-size: 1.2em;
            color: #f1f1f1; /* Light color for labels */
            display: block;
            margin-bottom: 10px;
            text-align: left;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Input and Textarea Styling */
        input[type="text"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 2px solid #8d6e63; /* Brown border for text boxes */
            border-radius: 8px;
            font-size: 1em;
            background-color: #f4e1c1; /* Light brown background for text boxes */
            color: #3e2723; /* Dark brown text */
            transition: border-color 0.3s ease, transform 0.2s ease;
        }

        /* Focus Effect */
        input[type="text"]:focus,
        input[type="number"]:focus,
        textarea:focus {
            border-color: #f57c00; /* Focus border with a bright brown */
            outline: none;
            transform: scale(1.05);
        }

        /* Submit Button Styling */
        input[type="submit"] {
            background: linear-gradient(135deg, #6d4c41, #3e2723); /* Dark brown button gradient */
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 1.2em;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        /* Submit Button Hover Effect */
        input[type="submit"]:hover {
            background: linear-gradient(135deg, #3e2723, #6d4c41); /* Darker brown gradient on hover */
            transform: translateY(-5px);
        }

        /* Small Text for Instructions or Notes */
        small {
            font-size: 0.9em;
            color: #f1f1f1;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
                width: 85%;
            }

            h1 {
                font-size: 2em;
            }

            input[type="submit"] {
                padding: 10px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Add a New Course</h1>
        <!-- Form to collect course data -->
        <form action="/insertcourse" method="POST">
            <label for="name">Course Name:</label>
            <input type="text" id="name" name="name" required><br>
            
            <label for="description">Course Description:</label>
            <textarea id="description" name="description" required></textarea><br>
            
            <label for="credits">Credits:</label>
            <input type="number" id="credits" name="credits" required><br>

            <!-- Submit button -->
            <input type="submit" value="Add Course">
        </form>
    </div>
</body>
</html>
