<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome</title>
<style>
    body {
        font-family: 'Georgia', serif;
        background-color: #e6dfcf;
        margin: 0;
        padding: 0;
        color: #4a3f35;
    }

    .container {
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding: 40px 20px;
        max-width: 800px;
        margin: auto;
        text-align: center;
    }

    h1 {
        color: #5a4e3b;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        font-size: 2rem;
        margin-bottom: 30px;
    }

    .button {
        display: inline-block;
        padding: 15px 30px;
        margin: 10px;
        font-size: 1rem;
        font-weight: bold;
        text-decoration: none;
        color: white;
        background-color: #715b3e;
        border-radius: 8px;
        position: relative;
        overflow: hidden;
        transition: all 0.4s ease-in-out;
        width: 250px;
        max-width: 90%;
        text-align: center;
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
        transform: translateY(-3px);
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        h1 {
            font-size: 1.5rem;
        }

        .button {
            font-size: 1rem;
            padding: 12px 24px;
        }
    }

    @media (max-width: 480px) {
        .container {
            padding: 30px 10px;
        }

        h1 {
            font-size: 1.2rem;
        }

        .button {
            padding: 10px 20px;
            font-size: 0.9rem;
            width: 100%;
        }
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Inventory Management System!</h1>
        <a href="/admin_login" class="button">Admin Login</a>
        <a href="/admin_register" class="button">New Admin Registration</a>
    </div>
</body>
</html>
