<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration Form</title>
    <style>
        /* General Body Style */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #e9f0f7; /* Light soft blue */
            color: #333;
            line-height: 1.6;
            padding: 0;
            margin: 0;
        }

        /* Navbar Styles */
        nav {
            background-color: #2c3e50; /* Dark blue-gray */
            padding: 15px 0;
            position: sticky;
            top: 0;
            width: 100%;
            z-index: 10;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
            padding: 0;
            margin: 0;
        }

        nav ul li {
            margin: 0 25px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            font-weight: 600;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        nav ul li a:hover {
            background-color: #3498db; /* Bright blue */
            transform: scale(1.1);
        }

        /* Form Container */
        .form-container {
            max-width: 550px;
            margin: 50px auto;
            padding: 35px;
            background-color: #ffffff; /* White background */
            border-radius: 8px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #3498db; /* Bright blue */
            font-size: 28px;
            margin-bottom: 30px;
            font-weight: 600;
        }

        /* Label and Input Styles */
        label {
            font-weight: 500;
            color: #2c3e50; /* Dark gray for labels */
            margin-bottom: 8px;
            display: block;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            background-color: #f4f6f7; /* Soft light gray */
            transition: border-color 0.3s ease;
        }

        input:focus, select:focus {
            border-color: #3498db; /* Bright blue border */
            outline: none;
            background-color: #eaf2f8; /* Light blue background on focus */
        }

        /* Button Styles */
        button {
            background-color: #3498db; /* Bright blue */
            color: white;
            border: none;
            padding: 12px 20px;
            cursor: pointer;
            border-radius: 6px;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2980b9; /* Slightly darker blue */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            nav ul {
                flex-direction: column;
                align-items: center;
            }

            nav ul li {
                margin: 10px 0;
            }

            .form-container {
                width: 90%;
                padding: 30px;
            }
        }

        /* Error Message Styles */
        .error {
            color: #f44336;
            font-size: 14px;
            margin-bottom: 20px;
        }

    </style>
</head>
<body>

    <!-- Navbar Section -->
    <nav>
        <ul>
            <li><a href="adminhome">Home</a></li>
        </ul>
    </nav>

    <!-- Form Section -->
    <div class="form-container">
        <h2>Student Registration Form</h2>
        
        <form action="insertstudent" method="POST" onsubmit="return validateForm()">
            <label for="name">Enter Name</label>
            <input type="text" name="name" id="name" required placeholder="Enter your name" aria-label="Name" />

            <label for="contact">Enter Contact</label>
            <input type="number" name="contact" id="contact" required min="1000000000" max="9999999999" placeholder="10-digit phone number" aria-label="Contact Number" />

            <label for="gender">Enter Gender</label>
            <select name="gender" id="gender" required aria-label="Gender">
                <option value="" disabled selected>Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <label for="dob">Enter Date of Birth</label>
            <input type="date" name="date_of_birth" id="dob" required aria-label="Date of Birth" />

            <label for="department">Enter Department</label>
            <input type="text" name="department" id="department" required placeholder="Enter your Department" aria-label="Department" />

            <label for="email">Enter Email</label>
            <input type="email" name="email" id="email" required placeholder="Enter your email" aria-label="Email" />

            <label for="password">Enter Password</label>
            <input type="password" name="password" id="password" required placeholder="At least 8 characters" aria-label="Password" />

            <label for="location">Enter Location</label>
            <input type="text" name="location" id="location" required placeholder="Enter your location" aria-label="Location" />

            <button type="submit">Submit</button>
        </form>
    </div>

    <!-- JavaScript for Validation -->
    <script>
        function validateForm() {
            var contact = document.querySelector('input[name="contact"]').value;
            if (contact.length !== 10) {
                alert("Please enter a valid 10-digit contact number.");
                return false; // Prevent form submission
            }
            return true;
        }
    </script>

</body>
</html>
