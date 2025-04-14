<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
    <style>
        /* Old Photography Theme */
        body {
            font-family: 'Georgia', serif;
            background-color: #e6dfcf; /* Sepia tone */
            text-align: center;
            color: #4a3f35; /* Dark brown text */
        }

        h2 {
            color: #5a4e3b; /* Vintage brown */
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        }

        .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 90%;
            margin: auto;
            padding: 20px;
        }

        .form-container {
            background: #f8f4e3; /* Soft parchment */
            padding: 20px;
            width: 45%;
            border-radius: 10px;
            box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3);
            text-align: left;
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            border: 1px solid #8b7765; /* Aged border */
            border-radius: 5px;
            background-color: #f2e6d9; /* Light parchment */
            color: #4a3f35;
            font-size: 16px;
        }

        input[type="submit"] {
            background: #715b3e; /* Old leather brown */
            color: white;
            font-size: 16px;
            border: none;
            cursor: pointer;
            padding: 10px;
            border-radius: 8px;
            transition: all 0.4s ease-in-out;
            position: relative;
            overflow: hidden;
        }

        /* Magical Hover Effect */
        input[type="submit"]::after {
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

        input[type="submit"]:hover::after {
            transform: scale(2);
        }

        input[type="submit"]:hover {
            background: #5a3e2b;
            box-shadow: 0 0 15px rgba(255, 233, 163, 0.6);
            transform: translateY(-3px);
        }

        img {
            width: 45%;
            border-radius: 10px;
            box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3);
        }

        /* Back Button */
        a {
            display: inline-block;
            text-decoration: none;
            font-size: 16px;
            color: #5a3e2b;
            background-color: #c4a484;
            padding: 10px 15px;
            border-radius: 8px;
            margin-top: 20px;
            transition: all 0.4s ease-in-out;
            position: relative;
            overflow: hidden;
        }

        a::after {
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

        a:hover::after {
            transform: scale(2);
        }

        a:hover {
            background: #a68064;
            box-shadow: 0 0 15px rgba(255, 233, 163, 0.6);
            transform: translateY(-3px);
        }
    </style>
</head>
<body>
    <h2>Update Product</h2>
    <div class="container">
        <div>
            <img src="/assets/update product.jpg" alt="Update Product Image">
        </div>
        <div class="form-container">
           <form action="/product/update" method="post">
                <input type="hidden" name="id" value="${product.id}">
                <label>Name:</label>
                <input type="text" name="name" value="${product.name}" required><br>
                <label>Category:</label>
                <input type="text" name="category" value="${product.category}" required><br>
                <label>Price:</label>
                <input type="number" name="price" step="0.01" value="${product.price}" required><br>
                <label>Stock Quantity:</label>
                <input type="number" name="stockQuantity" value="${product.stockQuantity}" required><br>
                <input type="submit" value="Update Product">
            </form>
        </div>
    </div>
    <a href="/product/list">🔙 Back to Products</a>
</body>
</html>
