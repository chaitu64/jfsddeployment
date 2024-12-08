<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Students</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #FFF5E1; /* Cream background color */
            color: #3E1F1B; /* Chocolate brown text */
            padding: 0;
            margin: 0;
        }

        /* Header Styling */
        h3 {
            font-size: 2rem;
            margin: 30px 0;
            text-align: center;
            color: #6F4F1F; /* Coffee brown */
            animation: fadeIn 2s ease-out;
        }

        /* Navbar Styling */
        nav {
            background-color: #6F4F1F; /* Coffee brown */
            padding: 15px;
            text-align: center;
            font-family: 'Arial', sans-serif;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.5);
            position: sticky;
            top: 0;
            z-index: 1000;
            transition: background-color 0.3s ease;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 12px 20px;
            font-size: 1.2rem;
            margin: 0 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        nav a:hover {
            background-color: #D7B29E; /* Light brown */
            color: black;
        }

        /* Search Bar Styles */
        .search-container {
            text-align: center;
            margin: 20px 0;
        }

        .search-container input[type="text"] {
            padding: 10px;
            font-size: 1rem;
            width: 200px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-right: 10px;
        }

        .search-container button {
            padding: 10px 15px;
            font-size: 1rem;
            background-color: #D7B29E; /* Light brown */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .search-container button:hover {
            background-color: #FF6347; /* Tomato red for hover */
        }

        /* Table Styling */
        table {
            width: 80%;
            margin: 40px auto;
            border-collapse: collapse;
            background-color: #f4f4f4;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.5);
            border-radius: 8px;
            animation: slideIn 1s ease-out;
        }

        table th, table td {
            padding: 14px;
            text-align: center;
            border: 1px solid #555;
            font-size: 1.1rem;
        }

        table th {
            background-color: #6F4F1F; /* Coffee brown */
            color: white;
            text-transform: uppercase;
            transform: scale(1);
            transition: transform 0.3s ease;
        }

        table th:hover {
            transform: scale(1.1);
        }

        table tr:nth-child(even) {
            background-color: #f0f0f0;
        }

        table tr:hover {
            background-color: #e0e0e0;
            transition: background-color 0.3s ease;
            transform: scale(1.02);
        }

        /* Popup Modal */
        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            justify-content: center;
            align-items: center;
            animation: fadeInModal 0.5s ease-out;
        }

        .popup-content {
            background-color: #6F4F1F; /* Coffee brown */
            padding: 20px;
            border-radius: 8px;
            color: white;
            width: 400px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.6);
        }

        .popup button {
            background-color: #D7B29E; /* Light brown */
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        .popup button:hover {
            background-color: #FF6347; /* Tomato red */
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideIn {
            from {
                transform: translateY(-20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @keyframes fadeInModal {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                width: 100%;
            }

            table th, table td {
                font-size: 0.9rem;
                padding: 8px;
            }

            nav {
                padding: 10px 15px;
            }

            nav a {
                font-size: 1rem;
                padding: 10px;
                margin: 0 5px;
            }
        }
    </style>
</head>
<body>

    <h3>All Students</h3>

    <div class="search-container">
        <form action="/displaystudent" method="post">
            <input type="text" name="studentId" placeholder="Search by ID" required />
            <button type="submit">Search</button>
        </form>
    </div>

    <!-- Table to display student data -->
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>GENDER</th>
                <th>DATE OF BIRTH</th>
                <th>Department</th>
                <th>EMAIL</th>
                <th>CONTACT</th>
                <th>LOCATION</th>
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
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Popup Modal -->
    <div class="popup" id="studentPopup">
        <div class="popup-content">
            <h4>Student Added Successfully!</h4>
            <button onclick="closePopup()">Close</button>
        </div>
    </div>

    <script>
        function openPopup() {
            document.getElementById('studentPopup').style.display = 'flex';
        }

        function closePopup() {
            document.getElementById('studentPopup').style.display = 'none';
        }
    </script>

</body>
</html>
