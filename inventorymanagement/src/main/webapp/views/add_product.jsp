<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Georgia', serif;
            background-color: #f5e6ca;
            color: #5a3e36;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .container {
            display: flex;
            flex-direction: row;
            width: 90%;
            max-width: 1000px;
            background: #fff8e1;
            border-radius: 10px;
            box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.2);
            overflow: hidden;
        }

        .image-section {
            flex: 1;
            background: url('/assets/manage product.jpg') no-repeat center;
            background-size: cover;
            min-height: 300px;
        }

        .form-section {
            flex: 1;
            padding: 40px;
            text-align: right;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        h2 {
            color: #5a3e36;
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }

        form {
            width: 100%;
            max-width: 300px;
            margin: 0 auto;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #c7a17a;
            border-radius: 5px;
            background: #fff5e0;
            color: #5a3e36;
            font-size: 14px;
        }

        input[type="submit"] {
            background: #8b5e3b;
            color: white;
            font-size: 16px;
            border: none;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: #6f4422;
        }

        a {
            display: block;
            margin-top: 15px;
            color: #8b5e3b;
            text-decoration: none;
            font-weight: bold;
            text-align: center;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .form-section {
                padding: 30px 20px;
                text-align: center;
            }

            h2 {
                font-size: 20px;
            }

            input {
                font-size: 16px;
            }

            input[type="submit"] {
                width: 100%;
            }

            a {
                font-size: 14px;
            }
        }

        @media (max-width: 480px) {
            .form-section {
                padding: 20px 15px;
            }

            h2 {
                font-size: 18px;
            }

            input {
                font-size: 14px;
                padding: 8px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="image-section"></div>
        <div class="form-section">
            <h2>Add New Product</h2>
            <form action="/product/save" method="post">
                <input type="text" name="name" placeholder="Product Name" required><br>
                <input type="text" name="category" placeholder="Category" required><br>
                <input type="number" name="price" step="0.01" placeholder="Price" required><br>
                <input type="number" name="stockQuantity" placeholder="Stock Quantity" required><br>
                <input type="submit" value="Add Product">
            </form>
            <a href="/product/list">📜 View Products</a>
        </div>
    </div>

</body>
</html>
