<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
</head>
<body>

	<frm:form modelAttribute="user"
		action="${pageContext.request.contextPath}/login" method="post">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-md-9 col-lg-6 col-xl-6 my-lg-5 py-lg-5">
				<img
					src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
					class="img-fluid" alt="Sample image">
			</div>
			<div class="col-md-8 col-lg-6 col-xl-5 offset-xl-1 my-lg-5 py-lg-5">
				<form>
					<div class="divider d-flex align-items-center my-4">
						<h2>
							<p class="text-center fw-bold mx-3 mb-0">Login</p>
						</h2>
					</div>

					<!-- Name input -->
					<div class="form-outline mb-4">
						<label class="form-label" for="form3Example3"
							style="margin-left: 0px;">User Name</label>
						<frm:input path="username" type="email" id="form3Example3"
							class="form-control form-control-lg"
							placeholder="Enter a valid name address" />

						<div class="form-notch">
							<div class="form-notch-leading" style="width: 9px;"></div>
							<div class="form-notch-middle" style="width: 88.8px;"></div>
							<div class="form-notch-trailing"></div>
						</div>

						<div>
							<small><frm:errors path="username" class="error" /></small>
						</div>
					</div>

					<!-- Password input -->
					<div class="form-outline mb-3">
						<label class="form-label" for="form3Example4"
							style="margin-left: 0px;">Password</label>
						<frm:input path="password" type="password" id="form3Example4"
							class="form-control form-control-lg" placeholder="Enter password" />

						<div class="form-notch">
							<div class="form-notch-leading" style="width: 9px;"></div>
							<div class="form-notch-middle" style="width: 64px;"></div>
							<div class="form-notch-trailing"></div>
						</div>

						<div>
							<small><frm:errors path="password" class="error" /></small>
						</div>
						<div>${message}</div>
					</div>


					<div class="d-flex justify-content-between align-items-center">
						<!-- Checkbox -->
						<div class="form-check mb-0">
							<input class="form-check-input me-2" type="checkbox"
								path="rememberMe" value="" id="form2Example3"> <label
								class="form-check-label" for="form2Example3"> Remember
								me </label>
						</div>
						<a href="/register"> Register account</a> <a
							href="/forgot-password" class="text-body">Forgot password?</a>
					</div>

					<div class="text-center text-lg-start mt-4 pt-2">
						<input type="submit" class="btn btn-primary btn-lg"
							style="padding-left: 2.5rem; padding-right: 2.5rem;"
							value="Login" />

					</div>

				</form>
			</div>
		</div>
	</frm:form>
</body>
</html>