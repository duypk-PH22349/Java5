<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Title</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700"
	rel="stylesheet">


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
	<div class="container" style="margin-top: 100px">
		<h1 class="text-center">CART</h1>
		<c:if test="${gh.isEmpty()}">
			<h2>Not found any record!!</h2>
		</c:if>
		<c:if test="${not gh.isEmpty()}">
			<table class="table">
				<thead>
					<tr>
						<th>Name</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Total</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${sanPhamTrongGio}" var="item" varStatus="status">
						<tr>
							<td>${item.name}</td>
							<td>${item.price}</td>
							<td>${item.qty}</td>
							<td>${item.price * item.qty}</td>
							<td>
								<form method="post" action="removeItem">
									<input type="hidden" name="index" value="${status.index}">
									<a type="button" class="btn btn-secondary"
										href="/product/detail-cart/${item.id}">Edit</a> <a
										type="button" class="btn btn-danger"
										href="/shopping-cart/delete/${item.id}">Remove</a>

								</form>
							</td>
						</tr>

					</c:forEach>
				</tbody>
			</table>
			<h3>TOTAL: ${total}</h3>
			<a type="button" class="btn btn-info" href="/shopping-cart/clear">Clear
				cart</a>

			<a href="/shopping-cart/bill"><button type="button"
					class="btn btn-success">
					<i class="fa fa-shopping-cart"></i>Purchase
				</button></a>
			<a type="button" class="btn btn-success" href="/product/list">Exit</a>
		</c:if>
	</div>


	<footer class="py-3 my-4">
		<ul class="nav justify-content-center border-bottom pb-3 mb-3">
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-body-secondary">Home</a></li>
			<li class="nav-item"><a href="#"
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>