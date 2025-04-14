<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Login</title>
<style>
    body {
        font-family: 'Georgia', serif;
        background-color: #e6dfcf;
        margin: 0;
        padding: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        color: #4a3f35;
    }

    .container {
        width: 90%;
        max-width: 400px;
        background: rgba(255, 250, 240, 0.95);
        padding: 40px 20px;
        border-radius: 10px;
        box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3);
        text-align: center;
    }

    h1 {
        color: #5a4e3b;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        font-size: 24px;
        margin-bottom: 20px;
    }

    .input-field {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: 2px solid #8b7765;
        border-radius: 5px;
        background-color: #f8f4e3;
        color: #4a3f35;
        font-size: 16px;
        box-sizing: border-box;
    }

    .button {
        width: 100%;
        padding: 12px;
        font-size: 18px;
        font-weight: bold;
        color: white;
        background-color: #715b3e;
        border-radius: 8px;
        border: none;
        cursor: pointer;
        position: relative;
        overflow: hidden;
        transition: all 0.4s ease-in-out;
    }

    .button::after {
        content: '';
        position: absolute;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        background: radial-gradient(circle, rgba(255,255,255,0.4) 10%, transparent 80%);
        transform: scale(0);
        transition: transform 0.5s ease-out;
    }

    .button:hover::after {
        transform: scale(2);
    }

    .button:hover {
        background-color: #5a4a33;
        box-shadow: 0 0 15px rgba(255, 233, 163, 0.6);
        transform: translateY(-2px);
    }

    .error-message {
        color: #b22222;
        font-weight: bold;
        font-size: 16px;
        margin-bottom: 10px;
    }

    p {
        font-size: 16px;
        margin-top: 15px;
    }

    a {
        color: #6d4c41;
        font-weight: bold;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
        color: #5a3c30;
    }

    /* Responsive styles */
    @media (max-width: 480px) {
        h1 {
            font-size: 20px;
        }

        .input-field, .button {
            font-size: 15px;
        }

        p {
            font-size: 14px;
        }
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Admin Login</h1>

        <%-- Display error message if login fails --%>
        <c:if test="${param.error != null}">
            <p class="error-message">Invalid email or password. Please try again.</p>
        </c:if>

        <form action="/admin_login" method="post">
            <input type="text" name="email" class="input-field" placeholder="Username" required>
            <input type="password" name="password" class="input-field" placeholder="Password" required>
            <button type="submit" class="button">Login</button>
        </form>

        <p>Don't have an account? <a href="/admin_register">Register here</a></p>
    </div>
</body>
</html>
