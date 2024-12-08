<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Courses</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #FFD9CC; /* Light background */
            color: #4E2A1C; /* Dark brown text color */
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        h2 {
            text-align: center;
            color: #4E2A1C; /* Dark brown header color */
            font-size: 2.5rem; /* Larger font size for the header */
            margin-top: 30px;
        }

        /* Navbar Styles */
        nav {
            background-color: #D28A8C; /* Navbar color */
            padding: 15px;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        nav a {
            color: #FFD9CC; /* Light color for navbar links */
            text-decoration: none;
            margin: 0 25px;
            font-size: 1.2rem; /* Larger font size for navigation */
            font-weight: 600;
            transition: color 0.3s ease;
        }

        nav a:hover {
            color: #4E2A1C; /* Dark brown hover color for links */
        }

        /* Table Styles */
        table {
            width: 100%;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: #FFD9CC; /* Light background for the table */
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        table thead {
            background-color: #D28A8C; /* Header color for table */
            color: #FFD9CC; /* Light text color for table header */
        }

        table th, table td {
            padding: 12px 20px; /* Smaller field size (padding) */
            text-align: center;
            font-size: 1.2rem; /* Increased text size */
        }

        table th {
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        table td {
            color: #4E2A1C; /* Dark brown color for table data */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table th, table td {
                font-size: 1.1rem; /* Adjust font size on smaller screens */
                padding: 10px 15px; /* Reduce padding for smaller screens */
            }

            h2 {
                font-size: 2rem; /* Smaller font size for mobile */
            }

            nav a {
                font-size: 1.1rem; /* Adjust navbar font size for small screens */
            }
        }
    </style>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %>

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

</body>
</html>
