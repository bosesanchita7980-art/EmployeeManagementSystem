<%@ page import="com.ems.model.Employee" %>

    <% Employee employee=(Employee) request.getAttribute("employee"); %>

        <!DOCTYPE html>
        <html>

        <head>

            <title>Update Employee</title>

            <style>
                * {
                    margin: 0;
                    padding: 0;
                    box-sizing: border-box;
                    font-family: 'Segoe UI';
                }

                body {

                    height: 100vh;

                    display: flex;
                    justify-content: center;
                    align-items: center;

                    background: linear-gradient(135deg,
                            #667eea,
                            #764ba2);

                }

                .card {

                    width: 700px;

                    background: rgba(255, 255, 255, .15);

                    backdrop-filter: blur(20px);

                    padding: 40px;

                    border-radius: 25px;

                    box-shadow:
                        0 20px 50px rgba(0, 0, 0, .2);

                    animation: slide .5s ease;

                }

                h2 {

                    color: white;

                    margin-bottom: 25px;

                }

                input {

                    width: 100%;

                    padding: 12px;

                    margin-bottom: 15px;

                    border: none;

                    border-radius: 10px;

                }

                button {

                    width: 100%;

                    padding: 14px;

                    border: none;

                    background: #22c55e;

                    color: white;

                    font-size: 16px;

                    border-radius: 10px;

                    cursor: pointer;

                    transition: .3s;

                }

                button:hover {

                    transform: scale(1.03);

                }

                @keyframes slide {

                    from {

                        opacity: 0;
                        transform: translateY(20px);

                    }

                    to {

                        opacity: 1;
                        transform: translateY(0);

                    }

                }
            </style>

        </head>

        <body>

            <div class="card">

                <h2>Update Employee</h2>

                <form action="updateEmployee" method="post">

                    <input type="hidden" name="employeeId" value="<%= employee.getEmployeeId() %>">

                    <input type="text" name="fullName" value="<%= employee.getFullName() %>" required>

                    <input type="email" name="email" value="<%= employee.getEmail() %>" required>

                    <input type="text" name="department" value="<%= employee.getDepartment() %>" required>

                    <input type="number" name="salary" value="<%= employee.getSalary() %>" required>

                    <input type="text" name="phone" value="<%= employee.getPhone() %>">

                    <input type="text" name="address" value="<%= employee.getAddress() %>">

                    <input type="date" name="joiningDate" value="<%= employee.getJoiningDate() %>">

                    <button type="submit">
                        Update Employee
                    </button>

                </form>

            </div>

        </body>

        </html>