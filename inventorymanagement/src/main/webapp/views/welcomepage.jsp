<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>INVENTORY MANAGEMENT SYSTEM</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('/assets/background.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        margin: 0;
        padding: 0;
    }

    .navbar {
        background: rgba(0, 0, 0, 0.6);
        padding: 15px 20px;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
    }

    .navbar a {
        color: white;
        text-decoration: none;
        padding: 10px 15px;
        font-size: 18px;
        font-weight: bold;
        transition: transform 0.2s, box-shadow 0.2s;
        display: inline-block;
    }

    .navbar a:hover {
        transform: translateY(-3px);
        box-shadow: 0 4px 10px rgba(255, 255, 255, 0.4);
    }

    .navbar-title {
        flex: 1 1 100%;
        text-align: center;
        font-size: 22px;
        font-weight: bold;
        color: white;
        margin-bottom: 10px;
    }

    .navbar-links {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 10px;
    }

    .container {
        text-align: center;
        padding: 100px 20px;
        color: white;
        text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.7);
    }

    h1 {
        font-size: 36px;
        margin-bottom: 20px;
        color: black;
    }

    p {
        font-size: 20px;
        margin-bottom: 20px;
        color: black;
    }

    .button {
        display: inline-block;
        padding: 15px 25px;
        font-size: 18px;
        font-weight: bold;
        text-decoration: none;
        color: white;
        background-color: #6D5845;
        border-radius: 5px;
        transition: background-color 0.3s, transform 0.3s;
        margin-top: 20px;
    }

    .button:hover {
        background-color: #8B6F47;
        transform: translateY(-2px);
    }

    @media (max-width: 768px) {
        .navbar {
            flex-direction: column;
            align-items: flex-start;
        }

        .navbar-title {
            text-align: left;
            font-size: 20px;
        }

        .navbar-links {
            flex-direction: column;
            width: 100%;
            align-items: flex-start;
        }

        .navbar a {
            padding: 10px 0;
            width: 100%;
        }

        h1 {
            font-size: 28px;
        }

        p {
            font-size: 16px;
        }

        .button {
            width: 100%;
            font-size: 16px;
            padding: 12px;
        }
    }

    @media (max-width: 480px) {
        .container {
            padding: 60px 15px;
        }

        h1 {
            font-size: 24px;
        }

        p {
            font-size: 14px;
        }

        .button {
            font-size: 14px;
            padding: 10px 20px;
        }
    }
</style>
</head>
<body>
    <div class="navbar">
        <div class="navbar-title">INVENTORY MANAGEMENT SYSTEM</div>
        <div class="navbar-links">
            <a href="/product/add">Add Product</a>
            <a href="/product/list">Update Stock</a>
            <a href="/order/process">Process Orders</a>
            <a href="/admin_panel">Admin Panel</a>
        </div>
    </div>

    <div class="container">
        <h1>WELCOME TO INVENTORY MANAGEMENT SYSTEM!</h1>
        <p>Easily manage your stock, track product popularity, and process orders efficiently.</p>
        <p>The admin panel provides insights into product popularity and stock status.</p>
        <a href="/admin_panel" class="button">Admin Panel</a>
    </div>
</body>
</html>
