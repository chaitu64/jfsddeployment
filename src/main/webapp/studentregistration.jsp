<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Academic Registration</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Roboto', sans-serif;
        }

        body {
            background-color: #f0f2f5;
            padding: 2rem;
        }

        .header {
            background-color: #005f73;
            color: white;
            padding: 1rem 2rem;
            border-radius: 8px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .header h1 {
            font-size: 1.8rem;
        }

        .logout-btn {
            background-color: #d32f2f;
            color: white;
            padding: 0.7rem 1.2rem;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .logout-btn:hover {
            background-color: #c62828;
        }

        .main-content {
            max-width: 1000px;
            margin: 2rem auto;
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 2rem;
        }

        .registration-card {
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.05);
        }

        .card-header {
            background-color: #007f7f;
            color: white;
            padding: 1.5rem;
            border-radius: 12px 12px 0 0;
            text-align: center;
            font-size: 1.6rem;
            font-weight: 500;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        label {
            font-size: 1rem;
            color: #333;
            font-weight: 500;
            margin-bottom: 0.5rem;
            display: block;
        }

        select {
            width: 100%;
            padding: 1rem;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
            background-color: #fafafa;
        }

        select:focus {
            border-color: #007f7f;
            background-color: white;
        }

        .button-group {
            display: flex;
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .btn {
            padding: 0.8rem 1.6rem;
            font-size: 1rem;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-search {
            background-color: #007f7f;
            color: white;
        }

        .btn-search:hover {
            background-color: #005f73;
            transform: scale(1.05);
        }

        .btn-reset {
            background-color: #e0e0e0;
            color: #333;
        }

        .btn-reset:hover {
            background-color: #d5d5d5;
            transform: scale(1.05);
        }

        .subjects-table {
            width: 100%;
            margin-top: 2rem;
            border-collapse: collapse;
            display: none;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        .subjects-table th,
        .subjects-table td {
            padding: 1rem;
            border: 1px solid #ddd;
            text-align: left;
        }

        .subjects-table th {
            background-color: #f1f1f1;
            font-weight: 600;
        }

        .section-select {
            width: 100%;
            padding: 0.8rem;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
        }

        .save-btn {
            background-color: #28a745;
            color: white;
            padding: 0.8rem 1.6rem;
            font-size: 1rem;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 2rem;
            display: none;
            transition: all 0.3s ease;
        }

        .save-btn:hover {
            background-color: #218838;
            transform: scale(1.05);
        }

        @media (max-width: 768px) {
            .main-content {
                padding: 1rem;
            }

            .header {
                flex-direction : column;
                gap: 1rem;
            }

            .button-group {
                flex-direction: column;
                gap: 1rem;
            }

            .btn {
                width: 100%;
                margin-bottom: 1rem;
            }

            .subjects-table th,
            .subjects-table td {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

    <header class="header">
        <h1>Student Portal</h1>
        <button class="logout-btn" onclick="window.location.href='/studentlogin'">Logout</button>
    </header>

    <main class="main-content">
        <div class="registration-card">
            <div class="card-header">
                Academic Registration
            </div>
            <div class="card-body">
                <form id="registrationForm">
                    <div class="form-group">
                        <label for="academicYear">Academic Year</label>
                        <select id="academicYear" name="academicYear" required>
                            <option value="">Select Academic Year</option>
                            <option value="2023-2024">2023-2024</option>
                            <option value="2024-2025">2024-2025</option>
                            <option value="2025-2026">2025-2026</option>
                            <option value="2026-2027">2026-2027</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="semester">Semester</label>
                        <select id="semester" name="semester" required>
                            <option value="">Select Semester</option>
                            <option value="odd">Odd</option>
                            <option value="even">Even</option>
                        </select>
                    </div>

                    <div class="button-group">
                        <button type="submit" class="btn btn-search">Search</button>
                        <button type="reset" class="btn btn-reset">Reset</button>
                    </div>
                </form>

                <table id="subjectsTable" class="subjects-table">
                    <thead>
                        <tr>
                            <th>S.No</th>
                            <th>Subject Code</th>
                            <th>Subject Name</th>
                            <th>Section</th>
                        </tr>
                    </thead>
                    <tbody id="subjectsBody"></tbody>
                </table>

                <button id="saveBtn" class="save-btn">Save</button>
            </div>
        </div>
    </main>

   <script>
    const subjectsBySemester = {
        'odd': [
            { code: '22CS2233F', name: 'Python Full Stack Development' },
            { code: '22CSB2103', name: 'Operating Systems' },
            { code: '22EC123R', name: 'Processors and Controllers' },
            { code: '22CS341A', name: 'Machine Learning' },
            { code: '22CS2301', name: 'Problem Solving' }
        ],
        'even': [
            { code: '22CS2256', name: 'Engineering Mathematics' },
            { code: '22CS276A', name: 'Java Full Stack Development' },
            { code: '22EC2311', name: 'Network Protocol Systems' },
            { code: '22CS2871R', name: 'Database Management System' },
            { code: '22CS2871R', name: 'ATFL' }
        ]
    };

    document.getElementById('registrationForm').addEventListener('submit', function (e) {
        e.preventDefault();
        const semester = document.getElementById('semester').value;
        const subjects = subjectsBySemester[semester] || []; // Use empty array as fallback if no subjects for selected semester

        // Debugging: Check if subjects array is populated correctly
        console.log('Selected Semester:', semester);
        console.log('Subjects:', subjects);

        const subjectsTable = document.getElementById('subjectsTable');
        const saveBtn = document.getElementById('saveBtn');
        const subjectsBody = document.getElementById('subjectsBody');

        // Hide the table initially before showing results
        subjectsTable.style.display = 'none';
        saveBtn.style.display = 'none';

        // Clear previous results (in case the form is re-submitted)
        subjectsBody.innerHTML = '';

        if (subjects.length > 0) {
            subjectsTable.style.display = 'table';
            saveBtn.style.display = 'block';

            subjects.forEach((subject, index) => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${index + 1}</td>
                    <td>${subject.code}</td>
                    <td>${subject.name}</td>
                    <td>
                        <select class="section-select">
                            <option value="">Select Section</option>
                            <option value="S1">S-1</option>
                            <option value="S2">S-2</option>
                            <option value="S3">S-3</option>
                            <option value="S4">S-4</option>
                            <option value="S5">S-5</option>
                        </select>
                    </td>
                `;
                subjectsBody.appendChild(row);
            });
        } else {
            alert('No subjects available for the selected semester.');
        }
    });

    document.getElementById('saveBtn').addEventListener('click', function () {
        const subjectsTable = document.getElementById('subjectsTable');
        const rows = subjectsTable.querySelectorAll('tbody tr');
        const selectedSubjects = [];

        rows.forEach(row => {
            const subjectCode = row.cells[1].innerText;
            const subjectName = row.cells[2].innerText;
            const section = row.querySelector('.section-select').value;

            if (section) {
                selectedSubjects.push({
                    subjectCode: subjectCode,
                    subjectName: subjectName,
                    section: section
                });
            }
        });

        if (selectedSubjects.length > 0) {
            localStorage.setItem('selectedSubjects', JSON.stringify(selectedSubjects));
            window.location.href = "/generate-timetable";
        } else {
            alert('Please select a section for all subjects.');
        }
    });
</script>

</body>
</html>
