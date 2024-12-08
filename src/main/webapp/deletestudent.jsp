<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Students</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4e1c1; /* Light brown background */
            color: #3e2723; /* Dark brown text */
            margin: 0;
            padding: 0;
            transition: background-color 0.3s ease;
        }

        h3 {
            text-align: center;
            color: #fff;
            padding: 20px;
            background-color: #3e2723; /* Dark brown header */
            margin: 0;
            font-size: 26px;
            text-transform: uppercase;
        }

        /* Navbar */
        nav {
            background-color: #3e2723; /* Dark brown */
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
            background-color: #5d4037; /* Medium brown hover effect */
            color: #fff;
        }

        /* Container */
        .container {
            width: 90%;
            margin: 20px auto;
            padding: 20px;
            background-color: #d7ccc8; /* Light brown for container */
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(62, 39, 35, 0.2); /* Soft brown shadow */
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
            background-color: #5d4037; /* Medium brown */
            color: #fff;
        }

        td {
            background-color: #fbe9e7; /* Light brown for table cells */
        }

        tr:hover {
            background-color: #efebe9; /* Slightly darker brown hover effect */
        }

        /* Button Styles */
        .action-btn {
            color: #fff;
            background-color: #8d6e63; /* Medium brown button */
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .action-btn:hover {
            background-color: #5d4037; /* Darker brown on hover */
        }

        /* Popup Styles */
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(62, 39, 35, 0.8); /* Semi-transparent dark brown */
            padding: 30px;
            border-radius: 8px;
            color: #fff;
            width: 80%;
            max-width: 500px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            animation: popup-animation 0.5s ease;
        }

        .popup.active {
            display: block;
        }

        .popup .popup-content {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .popup .close-btn {
            background-color: #f4e1c1; /* Light brown button */
            color: #3e2723; /* Dark brown text */
            padding: 10px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        @keyframes popup-animation {
            0% {
                opacity: 0;
                transform: translate(-50%, -50%) scale(0.5);
            }
            100% {
                opacity: 1;
                transform: translate(-50%, -50%) scale(1);
            }
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
    <h3>All Students</h3>

    <!-- Table Container -->
    <div class="container">
        <!-- Table to display student data -->
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>DATE OF BIRTH</th>
                    <th>DEPARTMENT</th>
                    <th>EMAIL</th>
                    <th>CONTACT</th>
                    <th>LOCATION</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through the studentList -->
                <c:forEach items="${studentList}" var="student">
                    <tr>
                        <td><c:out value="${student.id}" /></td>
                        <td><c:out value="${student.name}" /></td>
                        <td><c:out value="${student.gender}" /></td>
                        <td><c:out value="${student.dateOfBirth}" /></td>
                        <td><c:out value="${student.department}" /></td>
                        <td><c:out value="${student.email}" /></td>
                        <td><c:out value="${student.contact}" /></td>
                        <td><c:out value="${student.location}" /></td>
                        <td>
                            <a href="<c:url value='delete?id=${student.id}'/>" class="action-btn">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Popup Modal -->
    <div class="popup" id="popup">
        <div class="popup-content">
            <h2>Action Successful</h2>
            <p>Your action has been successfully completed.</p>
            <button class="close-btn" onclick="closePopup()">Close</button>
        </div>
    </div>

    <!-- JS to handle popup -->
    <script>
        function openPopup() {
            document.getElementById('popup').classList.add('active');
        }

        function closePopup() {
            document.getElementById('popup').classList.remove('active');
        }
    </script>

</body>
</html>
