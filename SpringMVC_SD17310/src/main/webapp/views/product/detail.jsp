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
	<div>
		<div style="text-align: center;">
			<h1>
				<p style="color: black">${product.name}</p>
			</h1>
			<img alt=""
				src="${pageContext.request.contextPath}/upload/${product.image}"
				width="288px" height="350px">
			<h5>
				<p style="color: red">Price : ${product.price} VND</p>
			</h5>
		</div>

		<frm:form action="/product/update/${product.id}" method="post"
			class="container" style="text-align: left"
			enctype="multipart/form-data">
			<div class="col-sm-6">
				<div>
					<b>Name</b> <input class="form-control" type="text" name="name"
						value="${product.name}">
				</div>
				<div>
					<b>Price</b> <input class="form-control" type="text" name="price"
						value="${product.price}">
				</div>
				<div>
					<b>Price</b> <input class="form-control" type="text" name="image" value="${product.image}">
				</div>
				<div>
					<b>Description</b> <input class="form-control" type="text"
						name="description" value="${product.description}">
				</div>
				<div>
					<b>Quantity</b> <input class="form-control" type="text"
						name="quantity" value="${product.quantity}">
				</div>
			</div>
			<br>
			<button class="btn btn-primary" type="submit" onclick="onEdit()">Update</button>
		</frm:form>


		<a class="btn btn-primary" href="/product/list">Exit</a>
	</div>
	<script>
		function onDelete() {
			var dl = confirm("You have want to do not delete");
			if (dl) {
				alert("Delete success");
				return true;
			} else {
				return false
			}
		}
		function onEdit() {
			var dl = confirm("You have want to do not Edit");
			if (dl) {
				alert("Edit success");
				return true;
			} else {
				return false
			}
		}
	</script>
</body>
</html>