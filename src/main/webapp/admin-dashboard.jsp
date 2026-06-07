<%@ page import="java.util.List" %>
    <%@ page import="com.ems.model.Employee" %>

        <% Integer employeeCount=(Integer)request.getAttribute("employeeCount"); Double
            totalSalary=(Double)request.getAttribute("totalSalary"); List<Employee> employeeList =
            (List<Employee>)request.getAttribute("employeeList");

                if(employeeCount == null)
                employeeCount = 0;

                if(totalSalary == null)
                totalSalary = 0.0;
                %>


                <%@ page contentType="text/html;charset=UTF-8" language="java" %>

                    <!DOCTYPE html>
                    <html>

                    <head>

                        <title>Admin Dashboard</title>

                        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap"
                            rel="stylesheet">

                        <style>
                            * {
                                margin: 0;
                                padding: 0;
                                box-sizing: border-box;
                                font-family: 'Poppins', sans-serif;
                            }

                            body {
                                background: #f4f7fc;
                            }

                            .sidebar {

                                position: fixed;

                                left: 0;
                                top: 0;

                                width: 250px;
                                height: 100vh;

                                background: #111827;

                                padding: 30px;
                            }

                            .logo {

                                color: white;
                                font-size: 24px;
                                font-weight: bold;

                                margin-bottom: 40px;
                            }

                            .sidebar a {

                                display: block;

                                color: white;

                                text-decoration: none;

                                padding: 15px;

                                margin-bottom: 10px;

                                border-radius: 10px;

                                transition: 0.3s;
                            }

                            .sidebar a:hover {

                                background: #2563eb;

                                transform: translateX(5px);
                            }

                            .main {

                                margin-left: 270px;

                                padding: 30px;
                            }

                            .header {

                                font-size: 30px;
                                font-weight: 600;

                                margin-bottom: 25px;
                            }

                            .cards {

                                display: flex;
                                gap: 20px;

                                margin-bottom: 30px;
                            }

                            .card {

                                flex: 1;

                                background: white;

                                padding: 25px;

                                border-radius: 15px;

                                box-shadow: 0 5px 15px rgba(0, 0, 0, .1);

                                transition: .3s;
                            }

                            .card:hover {

                                transform: translateY(-8px);
                            }

                            .card h2 {

                                color: #2563eb;
                            }

                            .table-box {

                                background: white;

                                padding: 20px;

                                border-radius: 15px;

                                box-shadow: 0 5px 15px rgba(0, 0, 0, .1);
                            }

                            table {

                                width: 100%;
                                border-collapse: collapse;
                            }

                            th,
                            td {

                                padding: 15px;

                                border-bottom: 1px solid #ddd;
                            }

                            th {

                                background: #2563eb;
                                color: white;
                            }
                        </style>

                    </head>

                    <body>

                        <div class="sidebar">

                            <div class="logo">
                                EMS Admin
                            </div>

                            <a href="dashboard">Dashboard</a>
                            <a href="add-employee.jsp">
                                Add Employee
                            </a>
                            <a href="viewEmployees">
                                View Employees
                            </a>

                            <a href="login.jsp">Logout</a>

                        </div>

                        <div class="main">

                            <div class="header">
                                Welcome Admin 👋
                            </div>

                            <div class="cards">

                                <div class="card">
                                    <h2>
                                        <%= employeeCount %>
                                    </h2>
                                    <p>Total Employees</p>
                                </div>

                                <div class="card">
                                    <h2>5</h2>
                                    <p>Departments</p>
                                </div>

                                <div class="card">
                                    <h2>₹<%= String.format("%.0f",totalSalary) %>
                                    </h2>
                                    <p>Total Salary</p>
                                </div>

                            </div>

                            <div class="table-box">

                                <h2>Recent Employees</h2>

                                <br>

                                <table>

                                    <% for(Employee emp : employeeList){ %>

                                        <tr>

                                            <td>
                                                <%= emp.getEmployeeId() %>
                                            </td>

                                            <td>
                                                <%= emp.getFullName() %>
                                            </td>

                                            <td>
                                                <%= emp.getDepartment() %>
                                            </td>

                                        </tr>

                                        <% } %>

                                </table>

                            </div>

                        </div>

                    </body>

                    </html>