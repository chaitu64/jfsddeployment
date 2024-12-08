<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generated Timetable</title>
    <style>
        * {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            box-sizing: border-box;
        }

        body {
            background-color: #f4f7fc;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            padding: 20px;
            background-color: #4e73df;
            color: white;
            margin: 0;
        }

        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #6c5ce7;
            color: white;
        }

        td {
            background-color: #fff;
            font-size: 14px;
        }

        tr:nth-child(even) td {
            background-color: #f9f9f9;
        }

        .actions {
            text-align: center;
            margin-top: 30px;
        }

        .btn {
            padding: 12px 25px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 30px;
            font-size: 16px;
            cursor: pointer;
            margin: 0 15px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn:hover {
            background-color: #218838;
            transform: translateY(-2px);
        }

        .btn:active {
            transform: translateY(0);
        }

        .btn:focus {
            outline: none;
        }

        .footer {
            text-align: center;
            margin-top: 40px;
            font-size: 14px;
            color: #777;
        }

    </style>
</head>
<body>
    <h1>Generated Timetable</h1>
    <table>
        <thead>
            <tr>
                <th>Day</th>
                <th>9:00 AM - 10:00 AM</th>
                <th>10:00 AM - 11:00 AM</th>
                <th>11:00 AM - 12:00 PM</th>
                <th>12:00 PM - 1:00 PM</th>
                <th>2:00 PM - 3:00 PM</th>
                <th>3:00 PM - 4:00 PM</th>
            </tr>
        </thead>
        <tbody id="timetableBody">
        </tbody>
    </table>

    <div class="actions">
        <button class="btn" onclick="window.location.href='/logout'">Logout</button>
        <button class="btn" onclick="window.location.href='/studenthome'">Return to Student Dashboard</button>
    </div>

    <script>
        const days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];
        const timetableBody = document.getElementById('timetableBody');

        // Sample subjects data
        const sampleSubjects = [
            { subjectName: 'Mathematics', subjectCode: 'MATH101', section: 'A' },
            { subjectName: 'Physics', subjectCode: 'PHYS101', section: 'B' },
            { subjectName: 'Computer Science', subjectCode: 'CS101', section: 'A' },
            { subjectName: 'English', subjectCode: 'ENG101', section: 'C' },
            { subjectName: 'Chemistry', subjectCode: 'CHEM101', section: 'B' },
            { subjectName: 'Biology', subjectCode: 'BIO101', section: 'A' },
            { subjectName: 'History', subjectCode: 'HIST101', section: 'C' },
            { subjectName: 'Geography', subjectCode: 'GEO101', section: 'B' }
        ];

        // Room allocations
        const classrooms = ['C001', 'C002', 'C003', 'C004', 'C005', 'C006', 'C007'];
        const rooms = ['R201', 'R202', 'R203', 'R204', 'R205', 'R206', 'R207', 'R208', 'R209', 'R210'];

        // Helper function to get a random room
        function getRandomRoom() {
            const allRooms = [...classrooms, ...rooms];
            return allRooms[Math.floor(Math.random() * allRooms.length)];
        }

        // Store the sampleSubjects to localStorage for testing
        localStorage.setItem('selectedSubjects', JSON.stringify(sampleSubjects));

        // Retrieve selected subjects from localStorage
        const selectedSubjects = JSON.parse(localStorage.getItem('selectedSubjects')) || [];
        
        // Check if the subjects are correctly retrieved
        console.log("Selected Subjects:", selectedSubjects);

        // Generate timetable rows for each day
        days.forEach(day => {
            const row = document.createElement('tr');
            row.innerHTML = `<td>${day}</td>`;

            // Randomly assign subjects to time slots
            const timeSlots = selectedSubjects.sort(() => 0.5 - Math.random()).slice(0, 6);

            timeSlots.forEach(slot => {
                const randomRoom = getRandomRoom();
                row.innerHTML += ` 
                    <td>
                        ${slot.subjectName} (${slot.subjectCode})<br>
                        Section: ${slot.section}<br>
                        Room: ${randomRoom}
                    </td>`;
            });

            timetableBody.appendChild(row);
        });
    </script>
</body>
</html>
