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
            vertical-align: top;
        }

        tr:nth-child(even) td {
            background-color: #f9f9f9;
        }

        .time-slot {
            padding: 10px;
            border-radius: 5px;
            background-color: #e9ecef;
            margin-bottom: 5px;
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
            <tr>
                <td>Monday</td>
                <td>
                    <div class="time-slot">Mathematics (MATH101)<br>Section: A<br>Room: R201</div>
                </td>
                <td>
                    <div class="time-slot">Physics (PHYS101)<br>Section: B<br>Room: R202</div>
                </td>
                <td>
                    <div class="time-slot">Computer Science (CS101)<br>Section: A<br>Room: R203</div>
                </td>
                <td>
                    <div class="time-slot">English (ENG101)<br>Section: C<br>Room: R204</div>
                </td>
                <td>
                    <div class="time-slot">Chemistry (CHEM101)<br>Section: B<br>Room: R205</div>
                </td>
                <td>
                    <div class="time-slot">Biology (BIO101)<br>Section: A<br>Room: R206</div>
                </td>
            </tr>
            <tr>
                <td>Tuesday</td>
                <td>
                    <div class="time-slot">History (HIST101)<br>Section: C<br>Room: R207</div>
                </td>
                <td>
                    <div class="time-slot">Geography (GEO101)<br>Section: B<br>Room: R208</div>
                </td>
                <td>
                    <div class="time-slot">Mathematics (MATH102)<br>Section: A<br>Room: R209</div>
                </td>
                <td>
                    <div class="time-slot">Physics (PHYS102)<br>Section: B<br>Room: R210</div>
                </td>
                <td>
                    <div class="time-slot">Computer Science (CS102)<br>Section: A<br>Room: R201</div>
                </td>
                <td>
                    <div class="time-slot">English (ENG102)<br>Section: C<br>Room: R202</div>
                </td>
            </tr>
            <tr>
                <td>Wednesday</td>
                <td>
                    <div class="time-slot">Biology (BIO102)<br>Section: A<br>Room: R203</div>
                </td>
                <td>
                    <div class="time-slot">Chemistry (CHEM102)<br>Section: B<br>Room: R204</div>
                </td>
                <td>
                    <div class="time-slot">Mathematics (MATH103)<br>Section: A<br>Room: R205</div>
                </td>
                <td>
                    <div class="time-slot">Physics (PHYS103)<br>Section: B<br>Room: R206</div>
                </td>
                <td>
                    <div class="time-slot">Computer Science (CS103)<br>Section: A<br>Room: R207</div>
                </td>
                <td>
                    <div class="time-slot">English (ENG103)<br>Section: C<br>Room: R208</div>
                </td>
            </tr>
            <tr>
                <td>Thursday</td>
                <td>
                    <div class="time-slot">History (HIST102)<br>Section: C<br>Room: R209</div>
                </td>
                <td>
                    <div class="time-slot">Geography (GEO102)<br>Section: B<br>Room: R210</div>
                </td>
                <td>
                    <div class="time-slot">Mathematics (MATH104)<br>Section: A<br>Room: R201</div>
                </td>
                <td>
                    <div class="time-slot">Physics (PHYS104)<br>Section: B<br>Room: R202</div>
                </td>
                <td>
                    <div class="time-slot">Computer Science (CS104)<br>Section: A<br>Room: R203</div>
                </td>
                <td>
                    <div class="time-slot">English (ENG104)<br>Section: C<br>Room: R204</div>
                </td>
            </tr>
            <tr>
                <td>Friday</td>
                <td>
                    <div class="time-slot">Chemistry (CHEM105)<br>Section: B<br>Room: R205</div>
                </td>
                <td>
                    <div class="time-slot">Biology (BIO105)<br>Section: A<br>Room: R206</div>
                </td>
                <td>
                    <div class="time-slot">Mathematics (MATH105)<br>Section: A<br>Room: R207</div>
                </td>
                <td>
                    <div class="time-slot">Physics (PHYS105)<br>Section: B<br>Room: R208</div>
                </td>
                <td>
                    <div class="time-slot">Computer Science (CS105)<br>Section: A<br>Room: R209</div>
                </td>
                <td>
                    <div class="time-slot">English (ENG105)<br>Section: C<br>Room: R210</div>
                </td>
            </tr>
        </tbody>
    </table>

    <div class="actions">
        <button class="btn" onclick="window.location.href='/logout'">Logout</button>
        <button class="btn" onclick="window.location.href='/studenthome'">Return to Student Dashboard</button>
    </div>

</body>
</html>
