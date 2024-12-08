<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #121212; /* Previous background color */
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            flex-direction: column;
            overflow: hidden; /* Remove scroll bar */
        }

        h1 {
            text-align: center;
            color: #f1f1f1; /* Previous text color */
            margin-bottom: 40px;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-size: 36px;
        }

        /* Contact Form */
        .contact-form {
            background: rgba(0, 0, 0, 0.8); /* Previous form background */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.6);
            width: 100%;
            max-width: 500px;
            margin-bottom: 40px;
            transition: all 0.3s ease-in-out;
        }

        .contact-form:hover {
            transform: scale(1.05);
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border-radius: 10px;
            border: 1px solid #333;
            background-color: #222; /* Previous input background */
            color: #ddd;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        .contact-form input:focus, .contact-form textarea:focus {
            border-color: #3a86ff; /* Previous focus color */
            outline: none;
        }

        .contact-form button {
            width: 100%;
            padding: 15px;
            border-radius: 10px;
            background-color: #3a86ff; /* Previous button color */
            color: #fff;
            font-size: 18px;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s ease;
        }

        .contact-form button:hover {
            background-color: #5c99ff; /* Previous hover button color */
        }

        /* Go Back Button */
        .go-back-btn {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            background-color: #ff5733; /* Previous Go Back button color */
            color: #fff;
            font-size: 18px;
            cursor: pointer;
            border: none;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .go-back-btn:hover {
            background-color: #ff7043; /* Previous Go Back button hover color */
        }

        /* Modal (Popup) */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            overflow: auto;
            transition: all 0.3s ease;
        }

        .modal-content {
            background-color: #121212;
            color: #fff;
            margin: 15% auto;
            padding: 30px;
            border-radius: 10px;
            width: 80%;
            max-width: 400px;
        }

        .close {
            color: #fff;
            float: right;
            font-size: 24px;
            font-weight: bold;
            cursor: pointer;
        }

        .close:hover,
        .close:focus {
            color: #3a86ff; /* Previous close button color */
            text-decoration: none;
        }

        /* Animation */
        .animate__animated {
            animation-duration: 1s;
            animation-timing-function: ease-in-out;
        }

        .animate__bounceIn {
            animation-name: bounceIn;
        }

        @keyframes bounceIn {
            0% {
                transform: scale(0);
            }
            60% {
                transform: scale(1.2);
            }
            100% {
                transform: scale(1);
            }
        }

    </style>
</head>
<body>

    <h1>Contact Us</h1>

    <!-- Contact Form -->
    <div class="contact-form animate__animated animate__bounceIn">
        <input type="text" placeholder="Your Name" id="name" required>
        <input type="email" placeholder="Your Email" id="email" required>
        <textarea placeholder="Your Message" id="message" required></textarea>
        <button onclick="openModal()">Send Message</button>
    </div>

    <!-- Go Back Button -->
    <a href="/" class="go-back-btn">Go Back to Home</a>

    <!-- Modal Popup -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>Thank you for reaching out!</h2>
            <p>Your message has been sent successfully.</p>
        </div>
    </div>

    <script>
        // Modal Popup
        function openModal() {
            const name = document.getElementById("name").value;
            const email = document.getElementById("email").value;
            const message = document.getElementById("message").value;

            // Simple validation before opening the modal
            if (name && email && message) {
                document.getElementById("myModal").style.display = "block";
            } else {
                alert("Please fill in all fields.");
            }
        }

        function closeModal() {
            document.getElementById("myModal").style.display = "none";
        }

        // Close modal when clicked outside
        window.onclick = function(event) {
            if (event.target == document.getElementById("myModal")) {
                closeModal();
            }
        }
    </script>

</body>
</html>
