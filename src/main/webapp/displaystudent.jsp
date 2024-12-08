<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        
        table {
            width: 60%;
            border-collapse: collapse;
            margin: 0 auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        tr:hover {
            background-color: #e0f7fa;
        }

        td {
            font-size: 16px;
            color: #333;
        }

        .btn-go-back {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
        }

        .btn-go-back:hover {
            background-color: #45a049;
        }

        .container {
            width: 100%;
            max-width: 900px;
            margin: 0 auto;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Student Details</h2>

        <table>
            <tr>
                <th>ID</th>
                <td>${student.id}</td>
            </tr>
            <tr>
                <th>Name</th>
                <td>${student.name}</td>
            </tr>
            <tr>
                <th>Gender</th>
                <td>${student.gender}</td>
            </tr>
            <tr>
                <th>Date of Birth</th>
                <td>${student.dateOfBirth}</td>
            </tr>
            <tr>
                <th>Department</th>
                <td>${student.department}</td>
            </tr>
            <tr>
                <th>Email</th>
                <td>${student.email}</td>
            </tr>
            <tr>
                <th>Contact</th>
                <td>${student.contact}</td>
            </tr>
            <tr>
                <th>Location</th>
                <td>${student.location}</td>
            </tr>
        </table>

        <a href="javascript:history.back()" class="btn-go-back">Go Back</a>
    </div>

</body>
</html>
