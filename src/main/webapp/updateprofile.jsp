<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student Profile</title>
</head>
<body>

<h1>Welcome to the Student Dashboard</h1>
<h2>Update Profile</h2>

<!-- Student Profile Information -->
<p><strong>ID:</strong> 2</p>
<p><strong>Name:</strong> Adarsh</p>
<p><strong>Gender:</strong> Male</p>
<p><strong>Date of Birth:</strong> 2004-04-11</p>
<p><strong>Department:</strong> Computer Science</p>
<p><strong>Email:</strong> tnsadarsh@gmail.com</p>
<p><strong>Location:</strong> Vijayawada</p>
<p><strong>Contact:</strong> 6301045494</p>

<hr>

<!-- Update Form -->
<form action="updateProfile.jsp" method="post">
    <h3>Update Your Profile:</h3>

    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name" value="Adarsh" required><br><br>

    <label for="gender">Gender:</label><br>
    <select id="gender" name="gender" required>
        <option value="Male" selected>Male</option>
        <option value="Female">Female</option>
        <option value="Other">Other</option>
    </select><br><br>

    <label for="dob">Date of Birth:</label><br>
    <input type="date" id="dob" name="dob" value="2004-04-11" required><br><br>

    <label for="department">Department:</label><br>
    <input type="text" id="department" name="department" value="Computer Science" required><br><br>

    <label for="email">Email:</label><br>
    <input type="email" id="email" name="email" value="tnsadarsh@gmail.com" required><br><br>

    <label for="location">Location:</label><br>
    <input type="text" id="location" name="location" value="Vijayawada" required><br><br>

    <label for="contact">Contact:</label><br>
    <input type="text" id="contact" name="contact" value="6301045494" required><br><br>

    <input type="submit" value="Update Profile">
</form>

</body>
</html>
