<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Product List</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        table {
            width: 70%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #4caf50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .action-buttons {
            display: flex;
            justify-content: space-around;
        }

        .update-button, .delete-button {
            text-decoration: none;
            padding: 8px 12px;
            color: #fff;
            border-radius: 4px;
            cursor: pointer;
        }

        .update-button {
            background-color: #3498db;
        }

        .delete-button {
            background-color: #e74c3c;
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Product Price</th>
            <th>Product Quantity</th>
            <th>Operation</th>
        </tr>
        <c:forEach items="${prolist}" var="product">
            <tr>
                <td>${product.productid}</td>
                <td>${product.productname}</td>
                <td>${product.productprice}</td>
                <td>${product.productquantity}</td>
                <td class="action-buttons">
                    <a href="updateProduct/${product.productid}" class="update-button">Update</a>
                    <a href="deleteProduct?id=${product.productid}" class="delete-button">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
