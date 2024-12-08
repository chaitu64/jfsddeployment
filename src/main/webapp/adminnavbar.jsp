<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
        /* Style for the nav bar */
        nav {
            background-color: #333;
            overflow: hidden;
        }

        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        nav a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Dropdown container */
        .dropdown {
            float: left;
            overflow: hidden;
        }

        /* Dropdown links */
        .dropdown a {
            font-size: 16px;
            padding: 14px 20px;
            display: block;
            background-color: #333;
        }

        /* Dropdown content (hidden by default) */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #333;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: white;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
            color: black;
        }

    </style>
    <script>
        // Function to hide all dropdown menus
        function hideAllDropdowns() {
            var dropdowns = document.querySelectorAll('.dropdown-content');
            dropdowns.forEach(function(dropdown) {
                dropdown.style.display = 'none';
            });
        }

        // Function to show the specific dropdown
        function showDropdown(dropdown) {
            hideAllDropdowns();
            dropdown.style.display = 'block';
        }

        // Event listeners for hover
        document.addEventListener("DOMContentLoaded", function() {
            var dropdowns = document.querySelectorAll('.dropdown');
            dropdowns.forEach(function(dropdown) {
                dropdown.addEventListener('mouseenter', function() {
                    showDropdown(dropdown.querySelector('.dropdown-content'));
                });
                dropdown.addEventListener('mouseleave', function() {
                    hideAllDropdowns();
                });
            });
        });
    </script>
</head>
<body>
    <nav>
        <a href="/adminhome">Home</a>
        
        <!-- Dropdown for Students -->
        <div class="dropdown">
            <a href="javascript:void(0)">Students</a>
            <div class="dropdown-content">
                <a href="/viewallstudents">View All Students</a>
                <a href="/studentReg">Add Student</a>
                <a href="/deletestudent">Delete Student</a>
            </div>
        </div>

        <!-- Dropdown for Faculty -->
        <div class="dropdown">
            <a href="javascript:void(0)">Faculty</a>
            <div class="dropdown-content">
                <a href="viewallfaculty">View All Faculty</a>
                <a href="addfaculty">Add Faculty</a>
                <a href="/deletefaculty">Delete Faculty</a>
            </div>
        </div>

        <!-- Dropdown for Courses -->
        <div class="dropdown">
            <a href="javascript:void(0)">Courses</a>
            <div class="dropdown-content">
                <a href="/addcourse">Add Course</a>
                <a href="/viewallcourse">View Courses</a>
]            </div>
        </div>

        <a href="/adminLogin">LogOut</a>
    </nav>
</body>
</html>
