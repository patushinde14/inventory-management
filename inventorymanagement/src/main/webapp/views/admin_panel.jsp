<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Panel</title>
<style>
    body {
        font-family: 'Courier New', monospace;
        background-color: #e5d8c0;
        text-align: center;
        margin: 0;
        padding: 20px;
    }
    h2 {
        font-size: 30px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        color: #5c4033;
    }
    .admin-dashboard {
        display: flex;
        justify-content: center;
        gap: 20px;
        flex-wrap: wrap;
        margin-top: 30px;
    }
    .dashboard-block {
        width: 250px;
        height: 150px;
        background-color: #6D5845;
        color: white;
        font-size: 20px;
        font-weight: bold;
        display: flex;
        justify-content: center;
        align-items: center;
        text-decoration: none;
        border-radius: 10px;
        box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.3);
        transition: transform 0.3s, background-color 0.3s;
    }
    .dashboard-block:hover {
        background-color: #8B6F47;
        transform: translateY(-5px);
    }
    .home-button {
        display: inline-block;
        margin-top: 30px;
        padding: 15px 25px;
        font-size: 18px;
        font-weight: bold;
        text-decoration: none;
        color: white;
        background-color: #6D5845;
        border-radius: 5px;
        transition: background-color 0.3s, transform 0.3s;
    }
    .home-button:hover {
        background-color: #8B6F47;
        transform: translateY(-2px);
    }
</style>
</head>
<body>

    <h2>⚙️ Admin Panel</h2>

    <div class="admin-dashboard">
        <a href="/product/popularity" class="dashboard-block">📊 Product Popularity</a>
        <a href="/stock/status" class="dashboard-block">📦 Stock Status</a>
        <a href="/product/list" class="dashboard-block">📝 Manage Products</a>
       
    </div>

    <a href="/welcomepage" class="home-button">🏠 Back to Home</a>

</body>
</html>
