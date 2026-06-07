<%@ page import="com.ems.model.Employee" %>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

        <% Employee emp=(Employee) request.getAttribute("employee"); %>

            <!DOCTYPE html>
            <html>

            <head>

                <title>Employee Dashboard</title>

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

                        background:
                            linear-gradient(135deg,
                                #667eea,
                                #764ba2);

                        min-height: 100vh;

                        padding: 40px;
                    }

                    .card {

                        max-width: 900px;

                        margin: auto;

                        background:
                            rgba(255, 255, 255, .15);

                        backdrop-filter: blur(20px);

                        border-radius: 25px;

                        padding: 40px;

                        color: white;

                        box-shadow:
                            0 10px 30px rgba(0, 0, 0, .2);

                        animation:
                            fadeIn 1s ease;
                    }

                    .avatar {

                        width: 120px;
                        height: 120px;

                        border-radius: 50%;

                        background: white;

                        color: #2563eb;

                        font-size: 50px;

                        display: flex;

                        align-items: center;

                        justify-content: center;

                        margin: auto;
                    }

                    h1 {

                        text-align: center;

                        margin-top: 20px;

                        margin-bottom: 30px;
                    }

                    .info {

                        display: grid;

                        grid-template-columns:
                            1fr 1fr;

                        gap: 20px;
                    }

                    .box {

                        background:
                            rgba(255, 255, 255, .1);

                        padding: 20px;

                        border-radius: 15px;
                    }

                    .label {

                        font-size: 14px;

                        opacity: .8;
                    }

                    .value {

                        font-size: 20px;

                        font-weight: 600;
                    }

                    .logout {

                        display: block;

                        width: 180px;

                        text-align: center;

                        margin: 40px auto 0;

                        background: #ef4444;

                        color: white;

                        text-decoration: none;

                        padding: 12px;

                        border-radius: 10px;
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
                </style>

            </head>

            <body>

                <div class="card">

                    <div class="avatar">
                        👤
                    </div>

                    <h1>
                        Welcome
                        <%= emp.getFullName() %>
                    </h1>

                    <div class="info">

                        <div class="box">
                            <div class="label">Email</div>
                            <div class="value">
                                <%= emp.getEmail() %>
                            </div>
                        </div>

                        <div class="box">
                            <div class="label">Department</div>
                            <div class="value">
                                <%= emp.getDepartment() %>
                            </div>
                        </div>

                        <div class="box">
                            <div class="label">Salary</div>
                            <div class="value">
                                ₹<%= emp.getSalary() %>
                            </div>
                        </div>

                        <div class="box">
                            <div class="label">Phone</div>
                            <div class="value">
                                <%= emp.getPhone() %>
                            </div>
                        </div>

                        <div class="box">
                            <div class="label">Address</div>
                            <div class="value">
                                <%= emp.getAddress() %>
                            </div>
                        </div>

                        <div class="box">
                            <div class="label">Joining Date</div>
                            <div class="value">
                                <%= emp.getJoiningDate() %>
                            </div>
                        </div>

                    </div>

                    <a href="login.jsp" class="logout">
                        Logout
                    </a>

                </div>

            </body>

            </html>