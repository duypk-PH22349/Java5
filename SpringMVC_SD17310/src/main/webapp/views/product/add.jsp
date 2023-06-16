<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<frm:form action="${pageContext.request.contextPath}/product/add"
		method="post" class="container" enctype="multipart/form-data">
		<div class="col-sm-6">
			<div>
				<b>Name</b> <input class="form-control" type="text"
					placeholder="Name" name="name" path="name" value="${product.name}">
			</div>
			<div>
				<b>Price</b> <input class="form-control" type="text"
					placeholder="Price" name="price" path="price"
					value="${product.price}">
			</div>
			<br>
			<div class="form-group">
				<b>Image</b> <input name="imageCategory" type="file" />
			</div>

			<div>
				<b>Description</b> <input class="form-control" type="text"
					placeholder="Description" name="description" path="description"
					value="${product.description}">
			</div>
			<div>
				<b>Quantity</b> <input class="form-control" type="text"
					name="quantity" placeholder="quantity" value="${product.quantity}">
			</div>
		</div>
		<br>
		<div>
			<button class="btn btn-primary" type="submit" onclick="onSave()">Add</button>
			 

		</div>
	</frm:form>
 


</body>
</html>