<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert Form</title>
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

        h2 {
            color: #333;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        label {
            display: block;
            margin-top: 10px;
            color: #555;
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>


    <form:form action="updateFormsuccess" modelAttribute="upobj">
        <form:label path="productid">Enter The Product_ID</form:label>
        <form:input path="productid" type="number"  value= "${product.productid}"/>
        <br>

        <form:label path="productname">Enter The Product_Name</form:label>
        <form:input path="productname" type="text" />
        <br>

        <form:label path="productprice">Enter The Product_Price</form:label>
        <form:input path="productprice" type="number" />
        <br>

        <form:label path="productquantity">Enter The Product_quantity</form:label>
        <form:input path="productquantity" type="number" />
        <br>

        <button type="submit" class="login-button">Update</button>
    </form:form>

</body>
</html>
