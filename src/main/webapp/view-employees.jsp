<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.util.List" %>
        <%@ page import="com.ems.model.Employee" %>

            <% List<Employee> employeeList =
                (List<Employee>) request.getAttribute("employeeList");
                    %>

                    <!DOCTYPE html>
                    <html>

                    <head>

                        <title>View Employees</title>
                        <link rel="stylesheet"
                            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

                        <style>
                            * {
                                margin: 0;
                                padding: 0;
                                box-sizing: border-box;
                                font-family: 'Segoe UI', sans-serif;
                            }

                            body {
                                background: linear-gradient(135deg,
                                        #eef2ff,
                                        #dbeafe,
                                        #f8fafc);

                                display: flex;

                            }

                            /* SIDEBAR */

                            .sidebar {

                                width: 260px;
                                height: 100vh;
                                background: linear-gradient(180deg,
                                        #0f172a,
                                        #1e293b);
                                position: fixed;
                                left: 0;
                                top: 0;
                                padding: 30px;

                            }

                            .sidebar h2 {

                                color: white;
                                margin-bottom: 40px;

                            }

                            .sidebar a {

                                display: block;
                                color: white;
                                text-decoration: none;
                                padding: 14px;
                                margin-bottom: 10px;
                                border-radius: 10px;
                                transition: .3s;

                            }

                            .sidebar a:hover {

                                background: #2563eb;
                                transform: translateX(5px);

                            }

                            /* CONTENT */

                            .content {

                                margin-left: 260px;
                                width: 100%;
                                padding: 40px;

                            }

                            .title {

                                font-size: 42px;
                                font-weight: 700;
                                color: #1e293b;

                                display: flex;
                                align-items: center;
                                gap: 15px;

                            }

                            .title i {

                                color: #2563eb;
                                font-size: 36px;

                            }

                            /* SEARCH */

                            .search-box {

                                margin-bottom: 20px;

                            }

                            .search-box input {

                                width: 350px;
                                padding: 12px;
                                border: none;
                                border-radius: 10px;
                                box-shadow: 0 0 10px rgba(0, 0, 0, .1);

                            }

                            /* TABLE CARD */

                            .card {

                                background: rgba(255, 255, 255, .85);

                                backdrop-filter: blur(20px);

                                border: 1px solid rgba(255, 255, 255, .4);

                                padding: 25px;

                                border-radius: 24px;

                                box-shadow:
                                    0 20px 40px rgba(0, 0, 0, .08);

                                animation: fadeIn .7s ease;

                                transition: .3s;

                            }

                            .card:hover {

                                transform: translateY(-5px);

                            }

                            table {

                                width: 100%;
                                border-collapse: collapse;

                            }

                            th {

                                background: #2563eb;
                                color: white;
                                padding: 15px;

                            }

                            td {

                                padding: 15px;
                                border-bottom: 1px solid #eee;

                            }

                            tr:hover {

                                background: #f8f9ff;

                            }

                            .btn {

                                padding: 8px 15px;
                                border: none;
                                border-radius: 8px;
                                color: white;
                                text-decoration: none;
                                font-size: 14px;

                            }

                            .edit {

                                background: linear-gradient(135deg,
                                        #10b981,
                                        #059669);

                            }

                            .delete {

                                background: linear-gradient(135deg,
                                        #ef4444,
                                        #dc2626);

                            }

                            .btn {

                                transition: .3s;

                            }

                            .btn:hover {

                                transform: translateY(-2px);

                            }

                            @keyframes fadeIn {

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

                        <div class="sidebar">

                            <h2>EMS Admin</h2>
                            <a href="dashboard">Dashboard</a>

                            <a href="add-employee.jsp">Add Employee</a>

                            <a href="viewEmployees">View Employees</a>

                            <a href="#">Logout</a>

                        </div>

                        <div class="content">

                            <div class="title">
                                <i class="fa-solid fa-users"></i>

                                Employee Directory

                            </div>

                            <div class="search-box">

                                <input type="text" id="searchInput" placeholder="Search Employee...">

                            </div>

                            <div class="card">

                                <table id="employeeTable">

                                    <thead>

                                        <tr>

                                            <th>ID</th>
                                            <th>
                                                <a href="viewEmployees?sort=full_name"
                                                    style="color:white;text-decoration:none;">
                                                    Name
                                                    <br>

                                                    <a href="viewEmployees?sort=full_name&order=ASC"
                                                        style="color:white;">
                                                        A-Z
                                                    </a>

                                                    |

                                                    <a href="viewEmployees?sort=full_name&order=DESC"
                                                        style="color:white;">
                                                        Z-A
                                                    </a>
                                                </a>
                                            </th>
                                            <th>Email</th>
                                            <th>
                                                <a href="viewEmployees?sort=department"
                                                    style="color:white;text-decoration:none;">
                                                    Department
                                                    <br>

                                                    <a href="viewEmployees?sort=department&order=ASC"
                                                        style="color:white;">
                                                        A-Z
                                                    </a>

                                                    |

                                                    <a href="viewEmployees?sort=department&order=DESC"
                                                        style="color:white;">
                                                        Z-A
                                                    </a>
                                                </a>
                                            </th>
                                            <th>
                                                <a href="viewEmployees?sort=salary"
                                                    style="color:white;text-decoration:none;">
                                                    Salary
                                                    <br>

                                                    <a href="viewEmployees?sort=salary&order=ASC" style="color:white;">
                                                        Low-High
                                                    </a>

                                                    |

                                                    <a href="viewEmployees?sort=salary&order=DESC" style="color:white;">
                                                        High-Low
                                                    </a>
                                                </a>
                                            </th>
                                            <th>Actions</th>

                                        </tr>

                                    </thead>

                                    <tbody>

                                        <% if(employeeList !=null){ for(Employee emp : employeeList){ %>

                                            <tr>

                                                <td>
                                                    <%= emp.getEmployeeId() %>
                                                </td>

                                                <td>
                                                    <%= emp.getFullName() %>
                                                </td>

                                                <td>
                                                    <%= emp.getEmail() %>
                                                </td>

                                                <td>
                                                    <%= emp.getDepartment() %>
                                                </td>

                                                <td>₹<%= String.format("%.0f", emp.getSalary()) %>
                                                </td>

                                                <td>

                                                    <a class="btn edit"
                                                        href="editEmployee?id=<%= emp.getEmployeeId() %>">
                                                        Edit
                                                    </a>

                                                    <a class="btn delete"
                                                        href="deleteEmployee?id=<%= emp.getEmployeeId() %>"
                                                        onclick="return confirm('Delete this employee?');">
                                                        Delete
                                                    </a>

                                                </td>

                                            </tr>

                                            <% } } %>

                                    </tbody>

                                </table>

                                <% Integer totalPages=(Integer)request.getAttribute( "totalPages" ); Integer
                                    currentPage=(Integer)request.getAttribute( "currentPage" ); %>

                                    <div style="
                                    margin-top:25px;
                                    text-align:center;">

                                        <% for(int i=1; i<=totalPages; i++){ %>

                                            <a href="viewEmployees?page=<%=i%>" style="
                                    padding:10px 15px;
                                    text-decoration:none;
                                    border-radius:8px;
                                    margin:5px;
                                    color:white;
                                    background:
                                    <%= i==currentPage
                                    ? " #10b981" : "#2563eb" %>;
                                                ">

                                                <%=i%>

                                            </a>

                                            <% } %>

                                    </div>
                                    <script>

                                        document
                                            .getElementById("searchInput")
                                            .addEventListener("keyup", function () {

                                                let value =
                                                    this.value.toLowerCase();

                                                let rows =
                                                    document.querySelectorAll(
                                                        "#employeeTable tbody tr"
                                                    );

                                                rows.forEach(function (row) {

                                                    row.style.display =
                                                        row.innerText.toLowerCase()
                                                            .includes(value)
                                                            ? ""
                                                            : "none";

                                                });

                                            });

                                    </script>

                    </body>

                    </html>