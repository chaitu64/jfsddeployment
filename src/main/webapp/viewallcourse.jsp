<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Courses</title>
    <style>
        /* Basic Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #F4E1C1; /* Light brown background for the body */
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2 {
            text-align: center;
            font-size: 2.5em;
            color: #fff;
            background-color: #8B4513; /* Brown Color */
            padding: 20px;
            margin: 0;
            border-radius: 8px;
        }

        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            background-color: #FFF8E1; /* Lighter beige color for table */
        }

        th, td {
            padding: 12px;
            text-align: center;
            font-size: 1.2em;
        }

        thead {
            background-color: #6F4F28; /* Darker brown color for header */
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #F4E1C1; /* Light brown color for even rows */
        }

        tr:nth-child(odd) {
            background-color: #FFF8E1; /* Lighter beige color for odd rows */
        }

        tr:hover {
            background-color: #A0522D; /* Brown on hover */
            color: white;
        }

        /* Styling for table rows when hovered */
        td {
            transition: background-color 0.3s ease;
        }

        /* Styling the table header */
        th {
            background-color: #8B4513; /* Brown header color */
            color: #fff;
        }

        /* Add subtle hover effect for rows */
        tr:hover td {
            background-color: #A0522D; /* Brown hover effect */
            color: #fff;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            background-color: #6F4F28; /* Darker brown footer */
            color: white;
            font-size: 1.1em;
            position: fixed;
            width: 100%;
            bottom: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                width: 100%;
            }

            h2 {
                font-size: 2em;
                padding: 15px;
            }

            th, td {
                font-size: 1em;
            }
        }
    </style>
</head>

<body>

    <h2>Courses List</h2>

    <table>
        <thead>
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Credits</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <!-- Iterate through the courseList -->
            <c:forEach var="course" items="${courseList}">
                <tr>
                    <td>${course.id}</td> <!-- Display Course ID -->
                    <td>${course.name}</td>
                    <td>${course.credits}</td>
                    <td>${course.description}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Faculty Portal | All Rights Reserved</p>
    </footer>

</body>

</html>
