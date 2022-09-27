<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Product</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Product Description</th>
			<th>Product Price</th>
			<th>Product Count</th>
			<th>Admin ID</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${productList}" var="prod">
			<tr>
				<td><c:out value="${prod.productID}"/></td>
				<td><c:out value="${prod.productName}"/></td>
				<td><c:out value="${prod.productDesc}"/></td>
				<td><c:out value="${prod.productPrice}"/></td>
				<td><c:out value="${prod.productCount}"/></td>
				<td><c:out value="${prod.adminID}"/></td>
				<td>
					<a href="UpdateProductController?action=updater&productid=<c:out value="${prod.productID}"/>">Update</a>
					<a href="DeleteProductController?action=delete&productid=<c:out value="${prod.productID}"/>">Delete</a>
				</td>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>