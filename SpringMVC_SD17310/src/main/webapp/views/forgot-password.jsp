<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Forgot Password</title>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

</head>

<body>
	<form method="post"
		action="${pageContext.request.contextPath}/forgot-password">
		<div class="bg-white border rounded-5">

			<section class="p-4 d-flex justify-content-center py-4 bgeee w-100">
				<div class="card text-center" style="width: 300px;">
					<div class="card-header h5 text-white bg-primary">Password
						Reset</div>
					<div class="card-body px-5">
						<p class="card-text py-2">Enter your email address and we'll
							send you an email with instructions to reset your password.</p>
						<div class="form-outline">
							<input name="username" path="username" type="email"
								class="form-control my-3" required> <label
								class="form-label" for="typeEmail" style="margin-left: 0px;">Email
								input</label>
							<div class="form-notch">
								<div class="form-notch-leading" style="width: 9px;"></div>
								<div class="form-notch-middle" style="width: 71.2px;"></div>
								<div class="form-notch-trailing"></div>
							</div>
							<div>
							<small><frm:errors path="username" class="error" /></small>
						</div>
						
						</div>
						<div class="text-center text-lg-start mt-4 pt-2">
							<input type="submit" class="btn btn-primary btn-lg"
								style="padding-left: 2.5rem; padding-right: 2.5rem;"
								value="Forgot-PassWord" />

						</div>
						<div class="d-flex justify-content-between mt-4">
							<a class="" href="/login">Login</a> <a class="" href="/register">Register</a>
						</div>
					</div>
				</div>
			</section>
		</div>
		</div>
	</form>
</body>
</html>