<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
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

        /* Header Section */
        header {
            background-color: #6F4F1F; /* Coffee brown */
            color: white;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        header h1 {
            font-size: 3rem;
            font-weight: 600;
            letter-spacing: 1px;
            margin: 0;
        }

        /* Navigation Bar Styling */
        nav {
            background-color: #333;
            padding: 15px 0;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            padding: 14px 25px;
            font-size: 1.1rem;
            margin: 0 15px;
            border-radius: 30px;
            transition: 0.3s ease;
            position: relative;
        }

        nav a:hover {
            background-color: #FFD9CC; /* Light peach on hover */
            transform: scale(1.1);
        }

        /* Dropdown Menu */
        .dropdown {
            display: inline-block;
            position: relative;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #333;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            top: 100%;
            left: 0;
        }

        .dropdown-content a {
            color: #fff;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            border-radius: 10px;
            font-size: 1rem;
            transition: 0.3s ease;
        }

        .dropdown-content a:hover {
            background-color: #007bff;
            transform: scale(1.1);
        }

        /* Main Content Area */
        .main-content {
            padding: 50px 20px;
            text-align: center;
        }

        .main-content h2 {
            font-size: 2.5rem;
            margin-bottom: 30px;
            color: #3E1F1B; /* Chocolate brown */
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3);
        }

        .main-content p {
            font-size: 1.2rem;
            line-height: 1.6;
            color: #3E1F1B; /* Chocolate brown */
        }

        /* Flexbox container for the four boxes */
        .dashboard-stats {
            display: flex;
            justify-content: space-around;
            margin-top: 40px;
            flex-wrap: wrap;
            gap: 30px;
        }

        /* Flip Card Container */
        .flip-card {
            width: 220px;
            height: 220px;
            perspective: 1000px;
        }

        .flip-card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            transform-style: preserve-3d;
            transition: transform 0.5s;
        }

        .flip-card:hover .flip-card-inner {
            transform: rotateY(180deg);
        }

        /* Flip Card Front */
        .flip-card-front, .flip-card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
            border-radius: 10px;
        }

        .flip-card-front {
            background-color: #D7B29E; /* Light brown */
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 3rem;
            color: #3E1F1B; /* Chocolate brown */
        }

        .flip-card-back {
            background-color: #D7B29E; /* Light brown */
            display: flex;
            justify-content: center;
            align-items: center;
            color: #3E1F1B; /* Chocolate brown */
            font-size: 1.2rem;
            transform: rotateY(180deg);
            flex-direction: column;
            text-align: center;
        }

        /* Highlighted Number Styling */
        .flip-card-back .number {
            font-size: 3.5rem;
            font-weight: bold;
            color: #FF6347;  /* Bright color for highlight */
            margin: 10px 0;
            text-shadow: 0 0 10px rgba(255, 99, 71, 0.6);
        }

        /* Footer Section */
        footer {
            background-color: #6F4F1F; /* Coffee brown */
            color: white;
            text-align: center;
            padding: 15px 0;
            box-shadow: 0 -4px 10px rgba(0, 0, 0, 0.1);
            position: relative;
            bottom: -245px;
            width: 100%;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            nav a {
                padding: 10px;
                font-size: 1rem;
            }

            header h1 {
                font-size: 2.2rem;
            }

            .main-content h2 {
                font-size: 1.8rem;
            }

            .dashboard-stats {
                flex-direction: column;
                gap: 20px;
            }

            .flip-card {
                width: 200px;
                height: 200px;
            }
        }
    </style>
</head>
<body>

    <header>
        <h1>Welcome to Admin Dashboard</h1>
    </header>

    <nav>
        <a href="/adminhome">Home</a>
        
        <!-- Dropdown for Students -->
        <div class="dropdown">
            <a href="#">Students</a>
            <div class="dropdown-content">
                <a href="/viewallstudents">View All Students</a>
                <a href="/studentReg">Add Student</a>
                <a href="/deletestudent">Delete Student</a>
            </div>
        </div>

        <!-- Dropdown for Faculty -->
        <div class="dropdown">
            <a href="#">Faculty</a>
            <div class="dropdown-content">
                <a href="viewallfaculty">View All Faculty</a>
                <a href="addfaculty">Add Faculty</a>
                <a href="/deletefaculty">Delete Faculty</a>
            </div>
        </div>

        <!-- Dropdown for Courses -->
        <div class="dropdown">
            <a href="#">Courses</a>
            <div class="dropdown-content">
                <a href="/addcourse">Add Course</a>
                <a href="/viewallcourse">View Courses</a>
            </div>
        </div>

        <a href="/adminLogin">LogOut</a>
    </nav>

    <div class="main-content">
        <h2>Admin Dashboard</h2>
        <p>Manage your website content, users, and settings from here. Navigate using the options above to explore.</p>

        <!-- Flexbox container for the four flip cards -->
        <div class="dashboard-stats">
            <div class="flip-card">
                <div class="flip-card-inner">
                    <div class="flip-card-front">
                        &#x1F3C6;
                    </div>
                    <div class="flip-card-back">
                        <div class="number">50</div>
                        <p>Awards</p>
                    </div>
                </div>
            </div>

            <div class="flip-card">
                <div class="flip-card-inner">
                    <div class="flip-card-front">
                        &#x1F4D5;
                    </div>
                    <div class="flip-card-back">
                        <div class="number">120</div>
                        <p>Journals</p>
                    </div>
                </div>
            </div>

            <div class="flip-card">
                <div class="flip-card-inner">
                    <div class="flip-card-front">
                        &#x1F389;
                    </div>
                    <div class="flip-card-back">
                        <div class="number">25</div>
                        <p>Achievements</p>
                    </div>
                </div>
            </div>

            <div class="flip-card">
                <div class="flip-card-inner">
                    <div class="flip-card-front">
                        &#x1F4D6;
                    </div>
                    <div class="flip-card-back">
                        <div class="number">90</div>
                        <p>Projects</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Your University Name. All Rights Reserved.</p>
        <p>Contact us: <a href="mailto:contact@university.com" style="color: #fff; text-decoration: none;">contact@university.com</a></p>
    </footer>

</body>
</html>
