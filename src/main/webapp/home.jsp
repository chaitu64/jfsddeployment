<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP System - Home</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #121212;
            color: #e0e0e0;
            line-height: 1.6;
            overflow-x: hidden;
            height: 100%;
        }

        /* Navbar */
        nav {
            background: linear-gradient(45deg, #0f4b6e, #03627e);
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
        }

        nav .links {
            display: flex;
            align-items: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 20px;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        nav a:hover {
            color: #ff9800;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 600;
            letter-spacing: 2px;
            margin-right: 50px;
        }

        /* Hero Section */
        .hero {
            background: url('erp-background.jpg') no-repeat center center/cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            position: relative;
            z-index: 1;
            padding: 20px;
        }

        .hero h1 {
            font-size: 4rem;
            margin-bottom: 20px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 2px;
            animation: fadeIn 1.5s ease-in-out;
        }

        .hero p {
            font-size: 1.5rem;
            font-weight: 300;
            animation: fadeIn 2s ease-in-out;
        }

        .cta-button {
            display: inline-block;
            background: linear-gradient(45deg, #ff9800, #f57c00);
            color: white;
            padding: 15px 30px;
            border-radius: 30px;
            text-decoration: none;
            font-size: 1.2rem;
            font-weight: bold;
            margin-top: 30px;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .cta-button:hover {
            background: linear-gradient(45deg, #f57c00, #ff5722);
            transform: translateY(-5px);
        }

        /* Features Section */
        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin: 50px 20px;
            padding: 50px 0;
            gap: 20px;
            align-items: center;
        }

        .card {
            background: #333;
            width: 300px;
            height: 400px;
            border-radius: 15px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease, transform 0.3s ease;
            position: relative;
            cursor: pointer;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .card i {
            font-size: 50px;
            color: #ff9800;
            margin-bottom: 20px;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .card h3 {
            font-size: 1.8rem;
            color: #ffeb3b;
            margin-bottom: 10px;
        }

        .card p {
            font-size: 1rem;
            color: #bbb;
            line-height: 1.5;
        }

        /* Footer */
        footer {
            background: #333;
            color: white;
            text-align: center;
            padding: 30px 0;
            margin-top: 50px;
        }

        footer a {
            color: #ff9800;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        footer a:hover {
            color: #ff5722;
        }

        /* FAQ Section */
        .faq {
            background: #222;
            color: #e0e0e0;
            padding: 50px 20px;
            text-align: center;
        }

        .faq h2 {
            font-size: 2.5rem;
            margin-bottom: 30px;
            color: #ff9800;
        }

        .faq .faq-item {
            background: #333;
            border-radius: 10px;
            padding: 20px;
            margin: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            cursor: pointer;
        }

        .faq .faq-item h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
            color: #ffeb3b;
        }

        .faq .faq-item p {
            font-size: 1rem;
            color: #bbb;
            display: none;
        }

        .faq .faq-item.active p {
            display: block;
        }

        /* Popup Styles */
        .popup-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            justify-content: center;
            align-items: center;
            z-index: 1001;
        }

        .popup-content {
            background-color: #222;
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            width: 70%;
            max-width: 600px;
            color: #fff;
            position: relative;
        }

        .popup-content h2 {
            color: #ff9800;
            margin-bottom: 20px;
        }

        .popup-content p {
            font-size: 1rem;
            color: #bbb;
            margin-bottom: 20px;
        }

        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: #ff5722;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 50%;
            cursor: pointer;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 3rem;
            }

            .hero p {
                font-size: 1.2rem;
            }

            .features {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 80%;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav>
        <div class="logo">EDU PLAN</div>
        <div class="links">
            <a href="/">Home</a>
            <a href="/studentlogin">Student Login</a>
            <a href="/facultylogin">Faculty Login</a>
            <a href="/adminLogin">Admin Login</a>
            <a href="/contact">Contact</a>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div>
            <h1>Welcome to Our EDU System</h1>
            <p>Craft Your Ideal Learing Plan In Way Of Thinking Beyond</p>
            <a href="javascript:void(0);" class="cta-button" onclick="showPopup()">Get Started</a>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="card">
            <i class="fas fa-cogs"></i>
            <h3>Process Automation</h3>
            <p>Automate your business workflows to improve efficiency.</p>
        </div>
        <div class="card">
            <i class="fas fa-chart-line"></i>
            <h3>Advanced Analytics</h3>
            <p>Gain valuable insights with real-time reporting and analytics.</p>
        </div>
        <div class="card">
            <i class="fas fa-plug"></i>
            <h3>Seamless Integration</h3>
            <p>Integrate all your departments under one unified system.</p>
        </div>
    </section>

    <!-- FAQ Section -->
    <section class="faq">
        <h2>Frequently Asked Questions</h2>
        <div class="faq-item">
            <h3>What is an ERP system?</h3>
            <p>An ERP system is a software platform that integrates all the essential business processes, including finance, human resources, and supply chain management.</p>
        </div>
        <div class="faq-item">
            <h3>How can ERP improve my business?</h3>
            <p>ERP improves business efficiency by automating processes, reducing manual errors, and providing real-time data for decision-making.</p>
        </div>
        <div class="faq-item">
            <h3>Is the ERP system customizable?</h3>
            <p>Yes, ERP systems can be tailored to meet the specific needs of your business, ensuring seamless operations.</p>
        </div>
        <div class="faq-item">
            <h3>How secure is the ERP system?</h3>
            <p>The ERP system follows industry best practices in security to ensure that your data is protected and safe from breaches.</p>
        </div>
        <div class="faq-item">
            <h3>Can I integrate ERP with other systems?</h3>
            <p>Yes, the ERP system can be integrated with other tools and software to streamline all your business functions in one place.</p>
        </div>
    </section>

    <!-- Popup Overlay -->
    <div class="popup-overlay" id="popupOverlay">
        <div class="popup-content">
            <button class="close-btn" onclick="closePopup()">X</button>
            <h2>Course Selection Management System</h2>
            <p>This system helps manage course selections for students. It allows easy tracking of available courses, student registrations, and prerequisites management, making the course allocation process more efficient.</p>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>© 2024 ERP System. All rights reserved. | <a href="#">Privacy Policy</a></p>
    </footer>

    <script>
        // Function to show the popup
        function showPopup() {
            document.getElementById('popupOverlay').style.display = 'flex';
        }

        // Function to close the popup
        function closePopup() {
            document.getElementById('popupOverlay').style.display = 'none';
        }

        // Add event listener to FAQ items
        const faqItems = document.querySelectorAll('.faq-item');
        
        faqItems.forEach(item => {
            item.addEventListener('click', function() {
                this.classList.toggle('active');
            });
        });
    </script>

</body>
</html>
