<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Process Orders</title>
<style>
/* Old Photography Theme */
body {
	font-family: 'Georgia', serif;
	background-color: #e6dfcf;
	text-align: center;
	color: #4a3f35;
	padding: 20px;
}

h2 {
	color: #3d2c1e;
	text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.2);
}

/* Back to Home Button */
.back-btn {
	position: absolute;
	top: 20px;
	left: 20px;
	padding: 10px 15px;
	font-size: 16px;
	font-weight: bold;
	color: white;
	background-color: #5a4e3b;
	border-radius: 8px;
	text-decoration: none;
	box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.3);
	transition: all 0.3s ease-in-out;
}

.back-btn:hover {
	background-color: #4a3f35;
	box-shadow: 0 0 15px rgba(255, 233, 163, 0.6);
	transform: translateY(-2px);
}

table {
	width: 80%;
	margin: 20px auto;
	border-collapse: collapse;
	background-color: #f3e7d2;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.3);
	border-radius: 10px;
	overflow: hidden;
}

th, td {
	padding: 12px;
	border: 1px solid #a89c88;
	text-align: left;
}

th {
	background-color: #5a4e3b;
	color: #f8f3e7;
}

tr:nth-child(even) {
	background-color: #dacbb3;
}

tr:hover {
	background-color: #bfa68b;
}

/* Button Styles */
.btn {
	padding: 10px 15px;
	color: white;
	border: none;
	cursor: pointer;
	text-decoration: none;
	display: inline-block;
	border-radius: 5px;
	font-family: 'Georgia', serif;
	transition: all 0.4s ease-in-out;
	position: relative;
	overflow: hidden;
}

.btn::after {
	content: '';
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	background: radial-gradient(circle, rgba(255, 255, 255, 0.5) 10%, transparent 80%);
	transform: scale(0);
	transition: transform 0.5s ease-out;
}

.btn:hover::after {
	transform: scale(2);
}

.btn-process {
	background-color: #715b3e;
}

.btn-process:hover {
	background-color: #5a4a33;
	box-shadow: 0 0 15px rgba(255, 233, 163, 0.6);
}

.btn-disabled {
	background-color: #a89c88;
	cursor: not-allowed;
	opacity: 0.7;
}

/* Back to Products Link */
a {
	display: inline-block;
	margin-top: 20px;
	color: #5a4a33;
	font-weight: bold;
	text-decoration: none;
	transition: color 0.3s;
}

a:hover {
	color: #715b3e;
	text-shadow: 0px 0px 10px rgba(255, 233, 163, 0.8);
}
</style>
</head>
<body>

	<!-- Back to Home Button -->
	<a class="back-btn" href="/welcomepage">🏠 Home</a>

	<h2>Process Orders</h2>

	<c:if test="${empty orders}">
		<p>No orders available to process at the moment.</p>
	</c:if>

	<c:if test="${not empty orders}">
		<table>
			<thead>
				<tr>
					<th>Order ID</th>
					<th>Product Name</th>
					<th>Quantity</th>
					<th>Stock Availability</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="order" items="${orders}">
					<tr>
						<td>${order.id}</td>
						<td>${order.product.name}</td>
						<td>${order.quantity}</td>
						<td><c:choose>
								<c:when test="${order.product.stockQuantity == 0}">
									<span style="color: red;">Out of Stock</span>
								</c:when>
								<c:otherwise>
									<span style="color: green;">Available</span>
								</c:otherwise>
							</c:choose></td>
						<td>${order.status}</td>
						<td><c:choose>
								<c:when test="${order.status == 'Processed'}">
									<span style="color: blue;">Order Completed</span>
								</c:when>
								<c:otherwise>
									<form action="/order/process" method="POST">
										<input type="hidden" name="id" value="${order.product.id}">
										<input type="number" name="quantity" min="1" placeholder="Enter quantity" required>
										<button type="submit" class="btn btn-process" ${order.product.stockQuantity == 0 ? 'disabled' : ''}>Process Order</button>
									</form>
								</c:otherwise>
							</c:choose></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>

	<br>
	<a href="/product/list">Back to Products</a>
</body>
</html>
