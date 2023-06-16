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
	<header class="d-flex justify-content-center py-3">
		<ul class="nav nav-pills">
			<li class="nav-item"><a href="/product/list" class="nav-link active"
				aria-current="page">Home</a></li>
			<li class="nav-item"><a href="#" class="nav-link">Features</a></li>
			<li class="nav-item"><a href="#" class="nav-link">Pricing</a></li>
			<li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>
			<li class="nav-item"><a href="#" class="nav-link">About</a></li>
		</ul>
	</header>

	<h1 style="text-align: center;">Product Shop</h1>
	<a href="/product/view-add" class="btn btn-primary" type="button">Add</a>
	<a href="/product/list" class="btn btn-light" type="button">Exit</a>
	<hr>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Description</th>
				<th scope="col">Image</th>
				<th scope="col">Name</th>
				<th scope="col">Price</th>
				<th scope="col">Quantity</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${products.content}" var="l">
				<tr>
					<td>${l.id}</td>
					<td>${l.description}</td>
					<td><img alt=""
						src="${pageContext.request.contextPath}/upload/${l.image}"
						width="60px" height="50px"></td>
					<td>${l.name }</td>
					<td>${l.price }</td>
					<td>${l.quantity}</td>
					<td><a class="btn btn-warning" href="/product/detail/${l.id}">Detail</a>
						<a class="btn btn-danger" href="/product/list/delete/${l.id}"
						onclick="onDelete">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<c:forEach begin="0" end="${products.totalPages -1}" varStatus="loop">
				<li class="page-item"><a class="page-link"
					href="/product/showProduct?page=${loop.begin + loop.count - 1}">
						${loop.begin + loop.count } </a></li>
			</c:forEach>
		</ul>
	</nav>

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
	</script>
	<footer class="py-3 my-4">
		<ul class="nav justify-content-center border-bottom pb-3 mb-3">
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-body-secondary">Home</a></li>
			<li class="nav-item"><a href="/product/list"
				class="nav-link px-2 text-body-secondary">Features</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-body-secondary">Pricing</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-body-secondary">FAQs</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-body-secondary">About</a></li>
		</ul>
		<p class="text-center text-body-secondary">© 2023 Company, Inc</p>
	</footer>

</body>
</html>