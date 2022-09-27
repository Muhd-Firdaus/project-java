<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
</head>
<body>
<form action="UpdateProductController" method="POST">
	Product ID: <input type="text" name="product_id" value="<c:out value="${pb.productID}"/>" readonly><br>
	Product Name: <input type="text" name="product_name" value="<c:out value="${pb.productName}"/>"><br>
	Product Description: <input type="text" name="product_description" value="<c:out value="${pb.productDesc}"/>"><br>
	Product Price: <input type="text" name="product_price" value="<c:out value="${pb.productPrice}"/>"><br>
	Product Stock: <input type="number" name="product_count" value="<c:out value="${pb.productCount}"/>"><br>
	Admin ID: <input type="number" name="admin_id" value="<c:out value="${pb.adminID}"/>" readonly><br>
	<input type="submit" value="Update">
	<input type="reset" value="Reset">
</form>
</body>
</html>