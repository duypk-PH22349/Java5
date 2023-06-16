<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title><tiles:getAsString name="title" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<!-- include header -->
	<tiles:insertAttribute name="header" />


	<!-- include navigation -->
	<tiles:insertAttribute name="menu" />


	<!-- Section-->
	<section>
		<div>
			<div>
				<div>
					<tiles:insertAttribute name="body" />
				</div>

				<div>
					<!-- include aside -->
					<tiles:insertAttribute name="aside" />
				</div>
			</div>
		</div>
	</section>

	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<!-- include footer -->
		<tiles:insertAttribute name="footer" />
	</footer>
</body>
</html>
