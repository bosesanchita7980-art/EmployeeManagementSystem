<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <!DOCTYPE html>
    <html>

    <head>

        <title>Employee Management System</title>

        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            body {

                height: 100vh;

                display: flex;
                justify-content: center;
                align-items: center;

                background: url('https://images.unsplash.com/photo-1506744038136-46273834b3fb') no-repeat center center/cover;
            }

            .container {

                width: 400px;

                padding: 40px;

                border-radius: 20px;

                background: rgba(255, 255, 255, 0.1);

                backdrop-filter: blur(15px);

                border: 1px solid rgba(255, 255, 255, 0.3);

                box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);

                animation: fadeIn 1s ease;
            }

            @keyframes fadeIn {

                from {
                    opacity: 0;
                    transform: translateY(-30px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            h1 {

                text-align: center;

                color: white;

                margin-bottom: 25px;
            }

            .input-box {

                margin-bottom: 20px;
            }

            .input-box input {

                width: 100%;

                padding: 14px;

                border: none;

                border-radius: 30px;

                outline: none;

                background: rgba(255, 255, 255, 0.2);

                color: white;

                font-size: 15px;
            }

            .input-box input::placeholder {

                color: white;
            }

            button {

                width: 100%;

                padding: 14px;

                border: none;

                border-radius: 30px;

                background: white;

                color: black;

                font-weight: 600;

                cursor: pointer;

                transition: 0.3s;
            }

            button:hover {

                transform: scale(1.03);

                background: #e0e0e0;
            }

            .error {

                color: #ff6b6b;

                text-align: center;

                margin-top: 15px;
            }

            .footer {

                margin-top: 20px;

                text-align: center;

                color: white;

                font-size: 14px;
            }
        </style>

    </head>

    <body>

        <div class="container">

            <h1>Login</h1>

            <form action="login" method="post">

                <div class="input-box">

                    <input type="text" name="username" placeholder="Username" required>

                </div>

                <div class="input-box">

                    <input type="password" name="password" placeholder="Password" required>

                </div>

                <button type="submit">

                    Login

                </button>

            </form>

            <% String error=request.getParameter("error"); if(error!=null){ %>

                <p class="error">

                    <%= error %>

                </p>

                <% } %>

                    <div class="footer">

                        Employee Management System

                    </div>

        </div>

    </body>

    </html>