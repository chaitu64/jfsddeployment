<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Faculties</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e8eaf6; /* Light purple background */
            color: #333; /* Dark text color for readability */
            margin: 0;
            padding: 0;
            transition: background-color 0.3s ease;
        }

        h3 {
            text-align: center;
            color: #fff;
            padding: 20px;
            background-color: #303f9f; /* Navy blue header */
            margin: 0;
            font-size: 26px;
            text-transform: uppercase;
        }

        /* Navbar */
        nav {
            background-color: #303f9f; /* Navy blue */
            overflow: hidden;
            transition: background-color 0.3s ease;
        }
        nav a {
            float: left;
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        nav a:hover {
            background-color: #536dfe; /* Light purple hover effect */
            color: #fff;
        }

        /* Container */
        .container {
            width: 90%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        .container:hover {
            transform: translateY(-10px);
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #303f9f; /* Navy blue */
            color: #fff;
        }

        td {
            background-color: #f3f4f7; /* Light grey background for data cells */
        }

        tr:hover {
            background-color: #e1e2e6; /* Light hover effect on table rows */
        }

        /* Action Button */
        a {
            color: white;
            background-color: #ff4d4d;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #e60000;
        }

        /* Success/Error message styles */
        .message {
            padding: 10px;
            background-color: #dff0d8;
            color: #3c763d;
            border: 1px solid #d6e9c6;
            margin: 20px 0;
            border-radius: 5px;
        }

        .error {
            background-color: #f2dede;
            color: #a94442;
            border: 1px solid #ebccd1;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                font-size: 14px;
            }
            th, td {
                padding: 8px;
            }
        }
    </style>
</head>
<body>

    <!-- Include admin navbar -->
    <%@ include file="adminnavbar.jsp" %>

    <!-- Title Section -->
    <h3>All Faculty</h3>

    <!-- Optional Success/Error Message -->
    <c:if test="${not empty message}">
        <div class="message ${messageType}">
            <c:out value="${message}" />
        </div>
    </c:if>

    <!-- Table to display faculty data -->
    <div class="container">
        <table>
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Action</th> <!-- Add an Action column for Delete button -->
                </tr>
            </thead>
            <tbody>
                <!-- Loop through the facultyList -->
               <c:forEach items="${facultyList}" var="faculty">
    <tr>
        <td><c:out value="${faculty.fusername}" /></td>
        <td><c:out value="${faculty.fpassword}" /></td>
        <td>
            <a href="/deletefaculty/${faculty.fusername}" onclick="return confirm('Are you sure you want to delete this faculty?')">Delete</a>
        </td>
    </tr>
</c:forEach>

            </tbody>
        </table>
    </div>

</body>
</html>

















