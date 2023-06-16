<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Navigation-->
<nav class="navbar navbar-expand-lg bg-light">
	<div class="container-fluid">
	
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<a class="navbar-brand" href="javascript:void(0)"><img
				src="https://img.watsonsvn.com/ecommerce/ecom/Watsons/WatsonsVietnam.jpg"
				alt="" width="150" height="50" /></a>
			<div class="collapse navbar-collapse" id="mynavbar"
				style="margin-left: 30px">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#!">
						<s:message code="label.home.home" />
								
								</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">
					<s:message code="label.home.about" />
					
					</a></li>
					<li class="nav-item"><a class="nav-link dropdown-toggle"
						id="navbarDropdown" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">
						<s:message code="label.home.shop" />
						
						</a></li>
					<li class="nav-item"><a class="nav-link text-black"
						aria-current="page" href="/login"><span
							class="glyphicon  glyphicon-list "></span>Login</a></li>
				</ul>
			</div>

			<a href="?language=vi"> <img alt=""
				src="https://s2.o7planning.com/templates/o7planning/resources/images/languages/vi.png">
			</a> <a href="?language=en"> <img alt=""
				src="https://s2.o7planning.com/templates/o7planning/resources/images/languages/en.png">
			</a>


			<form class="d-flex justify-content-center" role="search">
				<input class="form-control me-2 col-6 mt-1" type="search"
					style="width: 400px; margin-right: 10px; border-color: rebeccapurple;"
					placeholder="Search" aria-label="Search">
				<button class="btn btn- btn-primary"
					style="width: 100px; margin-right: 20px" type="submit">Search
				</button>
			</form>

			<button class="btn btn-black"
				style="border: none; border-radius: 5px">
				<a class="nav-link text-black" href="/shopping-cart/view"> <svg
						xmlns="http://www.w3.org/2000/svg" width="40" height="25"
						fill="currentColor" class="bi bi-cart-check-fill"
						viewBox="0 0 16 16">
                        <path
							d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm-1.646-7.646-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L8 8.293l2.646-2.647a.5.5 0 0 1 .708.708z" />
                    </svg> <img
					src="https://img.icons8.com/emoji/256/shopping-cart-emoji.png"
					id="dagger" width="30px" />
				</a>
			</button>

			<div>
				<c:if test="${not empty userLogged}">
		Hello: ${userLogged.name}
		<a href="${pageContext.request.contextPath}/login">Logout</a>
				</c:if>

				<c:if test="${empty userLogged}">
					<a href="${pageContext.request.contextPath}/login">Login</a>
				</c:if>
			</div>

		</div>
	</div>
</nav>