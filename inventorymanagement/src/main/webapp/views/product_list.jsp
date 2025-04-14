<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Product List</title>
<style>
/* Old Photography Theme */
body {
	font-family: 'Georgia', serif;
	background-color: #e6dfcf; /* Sepia tone */
	margin: 0;
	padding: 20px;
	text-align: center;
	color: #4a3f35; /* Dark brown text */
}

h2 {
	color: #5a4e3b; /* Vintage brown */
	text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
}

/* Centered Table */
table {
	width: 90%;
	margin: 20px auto;
	border-collapse: collapse;
	background-color: #f8f4e3; /* Soft parchment */
	box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3);
	border-radius: 8px;
	overflow: hidden;
}

/* Table Headers */
th {
	background-color: #715b3e; /* Old leather brown */
	color: white;
	padding: 12px;
	text-align: center;
	font-size: 16px;
}

/* Table Cells */
td {
	padding: 12px;
	border: 1px solid #8b7765; /* Aged border */
	text-align: center;
}

/* Alternating Row Colors */
tr:nth-child(even) {
	background-color: #f2e6d9; /* Light parchment */
}

tr:hover {
	background-color: #d9c3a3; /* Aged effect */
}

/* Button Styling */
button, .edit-btn, .delete-btn, .add-btn, .process-btn {
	text-decoration: none;
	padding: 8px 12px;
	font-size: 14px;
	font-weight: bold;
	color: white;
	border-radius: 6px;
	display: inline-block;
	position: relative;
	overflow: hidden;
	transition: all 0.3s ease-in-out;
	border: none;
	cursor: pointer;
}

/* Edit Button */
.edit-btn {
	background-color: #d19c3f; /* Golden brown */
}

/* Delete Button */
.delete-btn {
	background-color: #c0392b; /* Red */
}

/* Add Product Button */
.add-btn {
	background-color: #5c3b1e; /* Dark vintage brown */
	margin-top: 20px;
}

/* Process Order Button */
.process-btn {
	background-color: #3e7e3e; /* Green */
	padding: 8px 14px;
	font-size: 14px;
	border-radius: 6px;
}

/* Button Hover Effects */
.edit-btn:hover {
	background-color: #b3832b;
	box-shadow: 0 0 10px rgba(255, 233, 163, 0.6);
}

.delete-btn:hover {
	background-color: #a93226;
	box-shadow: 0 0 10px rgba(255, 0, 0, 0.6);
}

.add-btn:hover {
	background-color: #4a2e16;
	box-shadow: 0 0 10px rgba(255, 233, 163, 0.6);
}

.process-btn:hover {
	background-color: #357a35;
	box-shadow: 0 0 10px rgba(255, 233, 163, 0.6);
}

/* Styled Input Box */
input[type="number"] {
	width: 80px;
	padding: 6px;
	border: 2px solid #8b7765;
	border-radius: 6px;
	background-color: #f8f4e3;
	color: #4a3f35;
	font-family: 'Georgia', serif;
	text-align: center;
	font-size: 14px;
	outline: none;
	transition: border-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
}

/* Input Box Hover and Focus Effect */
input[type="number"]:hover,
input[type="number"]:focus {
	border-color: #5a4e3b;
	box-shadow: 0px 0px 8px rgba(90, 78, 59, 0.6);
}

</style>
</head>
<body>

	<h2>Product List</h2>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Category</th>
			<th>Price</th>
			<th>Stock Quantity</th>
			<th>Actions</th>
			<th>Order Nexus</th>
		</tr>
		<c:forEach var="product" items="${products}">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.category}</td>
				<td>${product.price}</td>
				<td>${product.stockQuantity}</td>
				<td>
					<a class="edit-btn" href="/product/edit?id=${product.id}">Edit</a>
					<form action="/product/delete" method="POST" style="display: inline;">
						<input type="hidden" name="id" value="${product.id}">
						<button type="submit" class="delete-btn" onclick="return confirm('Are you sure you want to delete this product?');">Delete</button>
					</form>
				</td>
				<td>
					<form action="/order/process" method="POST">
						<input type="hidden" name="id" value="${product.id}"> 
						<input type="number" name="quantity" min="1" placeholder="Qty" required>
						<button type="submit" class="process-btn">Process Order</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a class="add-btn" href="/product/add">➕ Add New Product</a>
</body>
</html>
