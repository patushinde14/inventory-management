<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Popularity</title>
<style>
    body {
        font-family: 'Courier New', monospace;
        background-color: #e5d8c0;
        text-align: center;
    }
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #f4e9d8;
        box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3);
    }
    th, td {
        padding: 12px;
        border: 1px solid #8b6f47;
        text-align: left;
    }
    th {
        background-color: #6D5845;
        color: white;
    }
    .button {
        display: inline-block;
        padding: 10px 20px;
        margin-top: 20px;
        font-size: 18px;
        text-decoration: none;
        color: white;
        background-color: #8B6F47;
        border-radius: 5px;
    }
    .button:hover {
        background-color: #6D5845;
    }
</style>
</head>
<body>

    <h2>📊 Product Popularity</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Product Name</th>
            <th>Category</th>
            <th>Sales Count</th>
        </tr>
        <c:forEach var="product" items="${popularProducts}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.category}</td>
                <td>${product.salesCount}</td>
            </tr>
        </c:forEach>
    </table>

    <a href="/admin_panel" class="button">🔙 Back to Admin Panel</a>

</body>
</html>
