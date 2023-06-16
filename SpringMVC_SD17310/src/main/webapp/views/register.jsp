<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Register</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
</head>
<body>
	<form modelAttribute="register"
		action="${pageContext.request.contextPath}/register" method="post">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-12 col-md-9 col-lg-7 col-xl-7">
				<div class="card" style="border-radius: 15px;">
					<div class="card-body p-5">
						<h2 class="text-uppercase text-center mb-5">Create an account</h2>
						<form>
							<div class="form-outline mb-4">
								<label class="form-label" for="form3Example1cg"
									style="margin-left: 0px;">Name</label> <input name="name"
									id="name" path="name" name="name" type="text"
									class="form-control form-control-lg" required>

								<div class="form-notch">
									<div class="form-notch-leading" style="width: 9px;"></div>
									<div class="form-notch-middle" style="width: 71.2px;"></div>
									<div class="form-notch-trailing"></div>
								</div>
								<div>
									<small><frm:errors path="name" class="error" /></small>
								</div>
							</div>

							<div class="form-outline mb-4">
								<label class="form-label" for="form3Example3cg"
									style="margin-left: 0px;">User Name</label> <input
									name="username" path="username" id="username" type="email"
									class="form-control form-control-lg" required>
								<div class="form-notch">
									<div class="form-notch-leading" style="width: 9px;"></div>
									<div class="form-notch-middle" style="width: 68.8px;"></div>
									<div class="form-notch-trailing"></div>
								</div>
								<span style="color: red">${emailError}</span>
								<div>
									<small><frm:errors path="username" class="error" /></small>
								</div>
							</div>

							<div class="form-outline mb-4">
								<label class="form-label" for="form3Example4cg"
									style="margin-left: 0px;">Password</label> <input
									name="password" path="password" id="password" type="password"
									class="form-control form-control-lg" aria-autocomplete="list"
									required>
								<div class="form-notch">
									<div class="form-notch-leading" style="width: 9px;"></div>
									<div class="form-notch-middle" style="width: 64.8px;"></div>
									<div class="form-notch-trailing"></div>
								</div>
								<div>
									<small><frm:errors path="password" class="error" /></small>
								</div>

							</div>

							<div class="form-outline mb-4">
								<label class="form-label" for="form3Example4cdg"
									style="margin-left: 0px;">Repeat your password</label> <input
									name="repeat-password" id="repeat-password" type="password"
									class="form-control form-control-lg" required>

								<div class="form-notch">
									<div class="form-notch-leading" style="width: 9px;"></div>
									<div class="form-notch-middle" style="width: 136px;"></div>
									<div class="form-notch-trailing"></div>
								</div>
								<div>
									<small><frm:errors path="repeat-password" class="error" /></small>
								</div>

								<script>
									document
											.querySelector('form')
											.addEventListener(
													'submit',
													function(event) {
														var password = document
																.getElementById('password').value;
														var passwordRepeat = document
																.getElementById('repeat-password').value;
														if (password !== passwordRepeat) {
															alert('Mật khẩu và mật khẩu lặp lại không giống nhau!');
															event
																	.preventDefault();
														}
													});
								</script>

							</div>

							<div class="d-flex justify-content-center">
								<input type="submit" class="btn btn-primary btn-lg"
									style="padding-left: 2.5rem; padding-right: 2.5rem;"
									value="Register" />
							</div>

							<p class="text-center text-muted mt-5 mb-0">
								Have already an account? <a href="/login"
									class="fw-bold text-body"><u>Login here</u></a>
							</p>

						</form>

					</div>
				</div>
			</div>
		</div>
	</form>

</body>
</html>