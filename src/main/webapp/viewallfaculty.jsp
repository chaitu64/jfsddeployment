<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Faculty</title>
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

        h3 {
            text-align: center;
            color: #3e2723; /* Dark brown header text */
            margin-top: 30px;
            font-size: 2em;
            font-weight: bold;
        }

        /* Navbar styling */
        nav {
            background-color: #5d4037; /* Medium brown for navbar */
            padding: 15px;
            text-align: center;
        }

        nav a {
            color: #f5f0e1; /* Light beige text color */
            font-size: 1.1em;
            text-decoration: none;
            margin: 0 15px;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        nav a:hover {
            background-color: #3e2723; /* Dark brown hover effect */
            color: #f5f0e1; /* Light beige text color on hover */
        }

        /* Table Styling */
        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: #3e2723; /* Dark brown table background */
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: center;
            font-size: 1.2em;
        }

        th {
            background-color: #5d4037; /* Medium brown header */
            color: #f5f0e1; /* Light beige text for table header */
        }

        td {
            background-color: #3e2723; /* Dark brown for table rows */
            color: #e0e0e0; /* Light grey text for table cells */
        }

        tr:hover {
            background-color: #5d4037; /* Hover effect with medium brown */
        }

        /* Popup Modal */
        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(62, 39, 35, 0.7); /* Dark brown semi-transparent background */
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }

        .popup-content {
            background-color: #5d4037; /* Medium brown */
            color: #f5f0e1; /* Light beige */
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            width: 400px;
            max-width: 90%;
        }

        .popup button {
            background-color: #f5f0e1; /* Light beige button */
            color: #3e2723; /* Dark brown text */
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.2em;
            transition: background-color 0.3s ease;
        }

        .popup button:hover {
            background-color: #e08900; /* Darker brown on hover */
        }

        /* Responsive Styling */
        @media (max-width: 768px) {
            table {
                width: 95%;
            }

            h3 {
                font-size: 1.8em;
            }

            nav a {
                font-size: 1em;
            }

            .popup-content {
                width: 80%;
            }
        }
    </style>
</head>
<body>

    <!-- Include Admin Navbar -->
    <%@ include file="adminnavbar.jsp" %>

    <h3>All Faculty</h3>
    
    <!-- Table to display faculty data -->
    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Password</th>
            </tr>
        </thead>
        <tbody>
            <!-- Loop through the facultyList -->
            <c:forEach items="${facultyList}" var="faculty">
                <tr>
                    <td><c:out value="${faculty.fusername}" /></td>
                    <td><c:out value="${faculty.fpassword}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Popup Modal -->
    <div id="facultyPopup" class="popup">
        <div class="popup-content">
            <h4>New Faculty Details</h4>
            <!-- Content for adding new faculty (this can be extended) -->
            <form>
                <!-- Form fields go here -->
                <button type="button" onclick="closePopup()">Close</button>
            </form>
        </div>
    </div>

    <script>
        function openPopup() {
            document.getElementById('facultyPopup').style.display = 'flex';
        }

        function closePopup() {
            document.getElementById('facultyPopup').style.display = 'none';
        }
    </script>

</body>
</html>
