<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <!DOCTYPE html>

    <html>

    <head>

        <title>Add Employee | EMS</title>

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Segoe UI', sans-serif;
            }

            body {

                min-height: 100vh;

                background:
                    linear-gradient(135deg,
                        #0f172a,
                        #1e293b,
                        #2563eb);

                display: flex;
                justify-content: center;
                align-items: center;

                padding: 40px;
            }

            .container {

                width: 900px;

                background: rgba(255, 255, 255, 0.08);

                backdrop-filter: blur(20px);

                border: 1px solid rgba(255, 255, 255, 0.2);

                border-radius: 25px;

                padding: 40px;

                color: white;

                box-shadow:
                    0 20px 40px rgba(0, 0, 0, .25);

                animation: fadeIn .8s ease;
            }

            @keyframes fadeIn {

                from {

                    opacity: 0;
                    transform: translateY(30px);

                }

                to {

                    opacity: 1;
                    transform: translateY(0);

                }

            }

            h1 {

                text-align: center;
                margin-bottom: 10px;

            }

            .subtitle {

                text-align: center;
                color: #cbd5e1;
                margin-bottom: 35px;

            }

            .form-grid {

                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 20px;

            }

            .input-group {

                display: flex;
                flex-direction: column;

            }

            label {

                margin-bottom: 8px;
                font-size: 14px;
                color: #e2e8f0;

            }

            input {

                padding: 14px;

                border: none;

                outline: none;

                border-radius: 12px;

                background: rgba(255, 255, 255, .12);

                color: white;

                transition: .3s;

            }

            input:focus {

                transform: scale(1.02);

                background: rgba(255, 255, 255, .18);

                box-shadow:
                    0 0 15px rgba(59, 130, 246, .5);

            }

            input::placeholder {

                color: #cbd5e1;

            }

            .full {

                grid-column: 1 / span 2;

            }

            .btn {

                margin-top: 25px;

                width: 100%;

                padding: 15px;

                border: none;

                border-radius: 15px;

                font-size: 16px;

                font-weight: 600;

                cursor: pointer;

                background:
                    linear-gradient(90deg,
                        #3b82f6,
                        #2563eb);

                color: white;

                transition: .3s;

            }

            .btn:hover {

                transform: translateY(-3px);

                box-shadow:
                    0 10px 25px rgba(37, 99, 235, .45);

            }

            .success {

                margin-top: 20px;

                background: #16a34a;

                padding: 12px;

                border-radius: 10px;

                text-align: center;

            }

            .error {

                margin-top: 20px;

                background: #dc2626;

                padding: 12px;

                border-radius: 10px;

                text-align: center;

            }

            @media(max-width:768px) {

                .form-grid {

                    grid-template-columns: 1fr;

                }

                .full {

                    grid-column: auto;

                }

                .container {

                    width: 100%;

                }

            }
        </style>

    </head>

    <body>

        <div class="container">

            <h1>Add Employee</h1>

            <p class="subtitle">
                Employee Management System
            </p>

            <form action="addEmployee" method="post">

                <div class="form-grid">

                    <div class="input-group">

                        <label>Full Name</label>

                        <input type="text" name="fullName" placeholder="Enter employee name" required>

                    </div>

                    <div class="input-group">

                        <label>Email</label>

                        <input type="email" name="email" placeholder="Enter email" required>

                    </div>

                    <div class="input-group">

                        <label>Department</label>

                        <input type="text" name="department" placeholder="Department" required>

                    </div>

                    <div class="input-group">

                        <label>Salary</label>

                        <input type="number" step="0.01" name="salary" placeholder="Salary" required>

                    </div>

                    <div class="input-group">

                        <label>Phone</label>

                        <input type="text" name="phone" placeholder="Phone Number">

                    </div>

                    <div class="input-group">

                        <label>Joining Date</label>

                        <input type="date" name="joiningDate">

                    </div>

                    <div class="input-group full">

                        <label>Address</label>

                        <input type="text" name="address" placeholder="Employee Address">

                    </div>

                </div>

                <button class="btn" type="submit">

                    ➕ Add Employee

                </button>

            </form>

            <% String success=request.getParameter("success"); if(success!=null){ %>

                <div class="success">

                    <%=success%>

                </div>

                <% } String error=request.getParameter("error"); if(error!=null){ %>

                    <div class="error">

                        <%=error%>

                    </div>

                    <% } %>

        </div>

    </body>

    </html>