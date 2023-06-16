<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
#BUTTON_1 {
	align-items: center;
	block-size: 36px;
	border-block-end-color: rgb(237, 28, 36);
	border-block-end-style: solid;
	border-block-end-width: 0.8px;
	border-block-start-color: rgb(237, 28, 36);
	border-block-start-style: solid;
	border-block-start-width: 0.8px;
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-end-style: solid;
	border-inline-end-width: 0.8px;
	border-inline-start-color: rgb(237, 28, 36);
	border-inline-start-style: solid;
	border-inline-start-width: 0.8px;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	display: flex;
	height: 36px;
	inline-size: 206.4px;
	padding-block-end: 0px;
	padding-block-start: 0px;
	padding-inline-end: 0px;
	padding-inline-start: 0px;
	perspective-origin: 103.2px 18px;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	transform-origin: 103.2px 18px;
	width: 206.4px;
	background: rgb(255, 255, 255) none repeat scroll 0% 0%/auto padding-box
		border-box;
	border: 0.8px solid rgb(237, 28, 36);
	font: 500 14px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
	overflow: hidden;
	padding: 0px;
	transition: all 0.35s ease-in-out 0s;
} /*#BUTTON_1*/
#BUTTON_1:after {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	display: block;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	border: 0px none rgb(237, 28, 36);
	font: 500 14px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#BUTTON_1:after*/
#BUTTON_1:before {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	display: block;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	border: 0px none rgb(237, 28, 36);
	font: 500 14px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#BUTTON_1:before*/
#DIV_2 {
	block-size: 16.8px;
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	height: 16.8px;
	inline-size: 204.8px;
	min-block-size: auto;
	min-height: auto;
	perspective-origin: 102.4px 8.4px;
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	transform-origin: 102.4px 8.4px;
	width: 204.8px;
	border: 0px none rgb(237, 28, 36);
	flex: 1 1 auto;
	font: 500 14px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#DIV_2*/
#DIV_2:after {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	border: 0px none rgb(237, 28, 36);
	font: 500 14px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#DIV_2:after*/
#DIV_2:before {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	border: 0px none rgb(237, 28, 36);
	font: 500 14px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#DIV_2:before*/
#svg_3 {
	block-size: 16px;
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	display: inline-block;
	fill: rgb(237, 28, 36);
	height: 16px;
	inline-size: 16px;
	margin-inline-end: 4px;
	overflow-clip-margin: content-box;
	perspective-origin: 8px 8px;
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	transform-origin: 8px 8px;
	user-select: none;
	vertical-align: text-bottom;
	width: 16px;
	border: 0px none rgb(237, 28, 36);
	flex: 0 0 auto;
	font: 500 16px Roboto, sans-serif;
	margin: 0px 4px 0px 0px;
	outline: rgb(237, 28, 36) none 0px;
	overflow: hidden;
	transition: fill 0.2s cubic-bezier(0.4, 0, 0.2, 1) 0s;
} /*#svg_3*/
#svg_3:after {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	fill: rgb(237, 28, 36);
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	user-select: none;
	border: 0px none rgb(237, 28, 36);
	font: 500 16px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#svg_3:after*/
#svg_3:before {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	fill: rgb(237, 28, 36);
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	user-select: none;
	border: 0px none rgb(237, 28, 36);
	font: 500 16px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#svg_3:before*/
#path_4 {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	d: path("M 11 9 H 13 V 6 H 16 V 4 H 13 V 1 H 11 V 4 H 8 V 6 H 11 V 9 Z M 7 18 C 5.9 18 5.01 18.9 5.01 20 S 5.9 22 7 22 S 9 21.1 9 20 S 8.1 18 7 18 Z M 17 18 C 15.9 18 15.01 18.9 15.01 20 S 15.9 22 17 22 S 19 21.1 19 20 S 18.1 18 17 18 Z M 7.17 14.75 L 7.2 14.63 L 8.1 13 H 15.55 C 16.3 13 16.96 12.59 17.3 11.97 L 21.16 4.96 L 19.42 4 H 19.41 L 18.31 6 L 15.55 11 H 8.53 L 8.4 10.73 L 6.16 6 L 5.21 4 L 4.27 2 H 1 V 4 H 3 L 6.6 11.59 L 5.25 14.04 C 5.09 14.32 5 14.65 5 15 C 5 16.1 5.9 17 7 17 H 19 V 15 H 7.42 C 7.29 15 7.17 14.89 7.17 14.75 Z"
		);
	fill: rgb(237, 28, 36);
	perspective-origin: 0px 0px;
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	transform-origin: 0px 0px;
	user-select: none;
	border: 0px none rgb(237, 28, 36);
	font: 500 16px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#path_4*/
#path_4:after {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	fill: rgb(237, 28, 36);
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	user-select: none;
	border: 0px none rgb(237, 28, 36);
	font: 500 16px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#path_4:after*/
#path_4:before {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	fill: rgb(237, 28, 36);
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	user-select: none;
	border: 0px none rgb(237, 28, 36);
	font: 500 16px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#path_4:before*/
#SPAN_5 {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	perspective-origin: 0px 0px;
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	transform-origin: 0px 0px;
	border: 0px none rgb(237, 28, 36);
	font: 500 14px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#SPAN_5*/
#SPAN_5:after {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	border: 0px none rgb(237, 28, 36);
	font: 500 14px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#SPAN_5:after*/
#SPAN_5:before {
	border-block-end-color: rgb(237, 28, 36);
	border-block-start-color: rgb(237, 28, 36);
	border-inline-end-color: rgb(237, 28, 36);
	border-inline-start-color: rgb(237, 28, 36);
	box-sizing: border-box;
	caret-color: rgb(237, 28, 36);
	color: rgb(237, 28, 36);
	column-rule-color: rgb(237, 28, 36);
	cursor: pointer;
	text-align: center;
	text-decoration: none solid rgb(237, 28, 36);
	text-emphasis-color: rgb(237, 28, 36);
	text-size-adjust: 100%;
	border: 0px none rgb(237, 28, 36);
	font: 500 14px Roboto, sans-serif;
	outline: rgb(237, 28, 36) none 0px;
} /*#SPAN_5:before*/
</style>
</head>
<body>
	<div class="col-sm-8">
		<a href="/product/showProduct" type="button" class="btn btn-primary">Product</a>
		<hr>

		<div class="row">
			<c:forEach var="product" items="${products}">
				<a class="card col-xs-6 col-sm-4"
					href="/product/detail-cart/${product.id}"
					style="text-decoration-line: none;">
					<div class="card">
						<img class="card-img-top"
							src="${pageContext.request.contextPath}/upload/${product.image}"
							width="270px" height="286px">
						<div class="card-body">
							<h3>
								<p style="text-align: center; color: black;" class="card-title">${product.name}</p>
							</h3>

							<p class="card-title" style="text-align: center; color: red;">Price:
								${product.price} VND</p>

							<div  style="text-align: center">
								<button   class="btn btn-outline-danger">
									<i class="fa fa-shopping-basket" aria-hidden="true"></i>
									Add to Cart
								</button>
							</div>
						</div>
					</div>
				</a>
			</c:forEach>

		</div>

		<br>
		<div>
			<ul class="pagination">
				<c:forEach begin="1" end="${totalPage}" varStatus="status">
					<li class="page-item"><a class="page-link"
						href="${pageContext.request.contextPath}/product/list?pageNum=${status.index}">${status.index}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>