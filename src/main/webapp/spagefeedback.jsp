<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Feedback</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f4f4f9;  /* Light background */
            color: #333;  /* Dark text color for contrast */
            transition: background-color 0.5s ease;
        }

        /* Header Section with Home and Logout Buttons */
        .header {
            display: flex;
            justify-content: space-between;
            padding: 10px 20px;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            background-color: #003366; /* Navy blue background */
            z-index: 1000;
        }

        .header button {
            background-color: #003366; /* Navy blue for buttons */
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .header button:hover {
            background-color: #00508b; /* Lighter blue on hover */
        }

        /* Centering the Feedback Form */
        .feedback-section {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding-top: 80px; /* Adjusted for header space */
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }

        .feedback-form-container {
            background-color: #333;  /* Dark background for form */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            transform: scale(0.9);
            animation: fadeInUp 1s forwards;
            color: #fff;  /* White text inside the form */
            position: relative; /* Make the container position relative for modal */
        }

        h2, p {
            text-align: center;
            animation: fadeIn 1.5s ease-out;
        }

        .feedback-form {
            display: flex;
            flex-direction: column;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-size: 1.1rem;
            color: #fff;  /* White text for labels */
        }

        input, select, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: none;
            font-size: 1rem;
            transition: background-color 0.3s, transform 0.3s ease;
            color: #fff;  /* White text for input fields */
            background-color: #444;  /* Dark background for inputs */
        }

        input:focus, select:focus, textarea:focus {
            background-color: #555;  /* Slightly lighter on focus */
            transform: scale(1.05);
        }

        .submit-btn {
            background-color: #008CBA; /* Button color - blue */
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #005f6b; /* Darker blue on hover */
            transform: scale(1.05);
        }

        /* Modal */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
            animation: fadeInModal 0.5s ease-in-out;
        }

        .modal-content {
            background-color: #333;
            margin: 15% auto;
            padding: 30px;
            border-radius: 10px;
            width: 80%;
            text-align: center;
            animation: slideUp 0.5s ease-out;
        }

        /* Make the modal text white */
        .modal-content h2,
        .modal-content p {
            color: #fff;
        }

        .close-btn {
            color: #aaa;
            float: right;
            font-size: 30px;
            font-weight: bold;
            cursor: pointer;
        }

        .close-btn:hover,
        .close-btn:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }

        /* Keyframe Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
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

        @keyframes slideUp {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>

    <!-- Header with Home and Logout Buttons -->
    <div class="header">
        <button onclick="studenthome">Home</button>
        <button onclick="logout()">Logout</button>
    </div>

    <!-- Main Feedback Section -->
    <section class="feedback-section">
        <div class="container">
            <div class="feedback-form-container">
                <h2 class="title">Give Your Feedback</h2>
                <p class="description">Help us improve by providing your valuable feedback on the course.</p>

                <form class="feedback-form" action="submitFeedback" method="post">
                    <div class="form-group">
                        <label for="course">Course Name</label>
                        <input type="text" id="course" name="course" placeholder="Enter course name" required>
                    </div>
                    <div class="form-group">
                        <label for="rating">Rating (1 to 5)</label>
                        <select id="rating" name="rating" required>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="feedback">Your Feedback</label>
                        <textarea id="feedback" name="feedback" rows="4" placeholder="Write your feedback here" required></textarea>
                    </div>
                    <button type="submit" class="submit-btn">Submit Feedback</button>
                </form>
            </div>
        </div>
    </section>

    <!-- Popup Modal (for success message) -->
    <div class="modal" id="feedbackModal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal()">&times;</span>
            <h2>Thank You for Your Feedback!</h2>
            <p>Your feedback has been submitted successfully.</p>
        </div>
    </div>

    <script>
        function logout() {
            alert("Logged out successfully!");
            window.location.href = 'studentlogin.jsp'; // Redirect to login page
        }

        // Show the modal
        function openModal() {
            document.getElementById("feedbackModal").style.display = "block";
        }

        // Close the modal
        function closeModal() {
            document.getElementById("feedbackModal").style.display = "none";
        }

        // Open modal after form submission (simulated here)
        document.querySelector('.feedback-form').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form from submitting

            // Show modal after form submission
            setTimeout(function() {
                openModal(); // Show the feedback submitted modal
            }, 1000); // Show the modal after 1 second delay
        });
    </script>

</body>
</html>
