<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add product</title>
</head>
<body>
<form action="CreateProductController" method="POST">
	Product Code: <input type="text" name="product_id"><br>
	Product name: <input type="text" name="product_name"><br>
	Product description: <input type="text" name="product_description"><br>
	Product Price: <input type="text" name="product_price"><br>
	Product Stock: <input type="number" name="product_count"><br>
	<input type="submit" value="Submit">
	<input type="reset" value="Reset">
</form>
</body>
</html>