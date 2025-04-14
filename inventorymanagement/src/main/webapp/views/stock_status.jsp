<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.form1.entity.Product, java.util.ArrayList" %>

<%
    Object obj = request.getAttribute("products");
    List<Product> products = new ArrayList<>();

    if (obj instanceof List<?>) {
        for (Object item : (List<?>) obj) {
            if (item instanceof Product) {
                products.add((Product) item);
            }
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Stock Status</title>
    <style>
        /* Old Photography Theme */
        body {
            font-family: 'Courier New', monospace;
            background-color: #f3e5d8; /* Light sepia */
            color: #5c4033; /* Dark brown */
            text-align: center;
            margin: 0;
            padding: 20px;
        }
        
        h2 {
            font-size: 30px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
            color: #4d3226;
        }

        /* Table Styling */
        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.8);
            box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            border: 1px solid #5c4033;
            text-align: center;
        }

        th {
            background-color: #6D5845;
            color: white;
            font-size: 18px;
        }

        td {
            background-color: rgba(250, 235, 215, 0.5); /* Antique white */
        }

        /* Button Styling */
        .button {
            display: inline-block;
            padding: 15px 30px;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            color: white;
            background-color: #6D5845;
            border-radius: 8px;
            transition: 0.3s ease-in-out;
            position: relative;
            overflow: hidden;
        }

        /* Magical Hover Effect */
        .button:hover {
            background-color: #8B6F47;
            transform: translateY(-3px);
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3);
        }

        .button::after {
            content: '';
            position: absolute;
            width: 300%;
            height: 300%;
            background: radial-gradient(circle, rgba(255, 255, 255, 0.2), transparent);
            top: -100%;
            left: -100%;
            transition: 0.4s;
        }

        .button:hover::after {
            top: 0;
            left: 0;
        }
    </style>
</head>
<body>
    <h2>📦 Stock Status</h2>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Stock</th>
        </tr>
        <% for (Product p : products) { %>
            <tr>
                <td><%= p.getId() %></td>
                <td><%= p.getName() %></td>
                <td><%= p.getStockQuantity() %></td>
            </tr>
        <% } %>
    </table>

    <br>
    <a href="/admin_panel" class="button">🔙 Back to Admin Panel</a>
</body>
</html>
