<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Registration</title>
<style>
    /* Old Photography Theme */
    body {
        font-family: 'Georgia', serif;
        background-color: #e6dfcf; /* Sepia tone */
        margin: 0;
        padding: 0;
        text-align: center;
        color: #4a3f35; /* Dark brown text */
    }

    .container {
        padding: 80px 20px;
        background: rgba(255, 250, 240, 0.85); /* Old paper effect */
        display: inline-block;
        border-radius: 10px;
        box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3);
    }

    h1 {
        color: #5a4e3b; /* Vintage brown */
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        font-size: 26px;
        margin-bottom: 20px;
    }

    .input-field {
        width: 80%;
        max-width: 280px;
        padding: 12px;
        margin: 10px 0;
        border: 2px solid #8b7765; /* Aged border */
        border-radius: 5px;
        background-color: #f8f4e3; /* Soft parchment */
        color: #4a3f35;
        font-size: 16px;
    }

    /* Magical Button Styling */
    .button {
        display: inline-block;
        padding: 12px 25px;
        margin: 15px;
        font-size: 18px;
        font-weight: bold;
        text-decoration: none;
        color: white;
        background-color: #715b3e; /* Old leather brown */
        border-radius: 8px;
        position: relative;
        overflow: hidden;
        transition: all 0.4s ease-in-out;
    }

    /* Magical Glow Effect */
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

    /* Button Hover Animation */
    .button:hover {
        background-color: #5a4a33; /* Darkened vintage brown */
        box-shadow: 0 0 15px rgba(255, 233, 163, 0.6); /* Golden glow */
        transform: translateY(-3px);
    }

    p {
        font-size: 16px;
        color: #4a3f35;
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
</style>
</head>
<body>
    <div class="container">
        <h1>Admin Registration</h1>
        <form action="/admin_register" method="post">
            <input type="text" name="fullname" class="input-field" placeholder="Full Name" required><br>
            <input type="email" name="email" class="input-field" placeholder="Email" required><br>
            <input type="password" name="password" class="input-field" placeholder="Password" required><br>
            <button type="submit" class="button">Register</button>
        </form>
        <p>Already have an account? <a href="/admin_login">Login here</a></p>
    </div>
</body>
</html>
