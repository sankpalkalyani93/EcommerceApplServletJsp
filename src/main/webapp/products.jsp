<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
</head>
<body>
    <h1>Products</h1>
    <form action="products" method="post">
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Stock</th>
            </tr>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td>${product.name}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td>${product.stock}</td>
                </tr>
            </c:forEach>
        </table>
        <h2>Add New Product</h2>
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required><br>
        <label for="description">Description:</label>
        <textarea name="description" id="description" required></textarea><br>
        <label for="price">Price:</label>
        <input type="number" name="price" id="price" step="0.01" required><br>
        <label for="stock">Stock:</label>
        <input type="number" name="stock" id="stock" required><br>
        <button type="submit">Add Product</button>
    </form>
    <a href="index.jsp">Back to Home</a>
</body>
</html>