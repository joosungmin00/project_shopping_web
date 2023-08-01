<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>D & C shop</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Bootstrap Ecommerce Template" name="keywords">
<meta content="Bootstrap Ecommerce Template Free Download"
	name="description">
<!-- Favicon -->
<link href="/img/favicon.ico" rel="icon">
<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="/css/slick.css" rel="stylesheet">
<link href="/css/slick-theme.css" rel="stylesheet">
<!-- Template Stylesheet -->
<link href="/css/style.css" rel="stylesheet">
<script defer src="/js/product-detail.js"></script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/modules/header.jsp" />
	<!-- Breadcrumb Start -->
	<div class="breadcrumb-wrap">
		<div class="container">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="/">Home</a></li>
				<li class="breadcrumb-item"><a href="${path}/product">Products</a></li>
				<li class="breadcrumb-item active">product list</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->


	<!-- Product List Start -->
	<div class="product-view">
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<div class="col-md-8">
									<div class="product-search">
										<input type="email" value="Search">
										<button>
											<i class="fa fa-search"></i>
										</button>
									</div>
								</div>
								<div class="col-md-4">
									<div class="product-short">
										<div class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown">상품정렬</a>
											<div class="dropdown-menu dropdown-menu-right">
												<a href="#" class="dropdown-item">이름순</a> <a href="#"
													class="dropdown-item">인기순</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 제품 시작점... -->
						<c:forEach var="product" items="${products}">
							<div class="col-lg-4">
							
								<div class="product-item" >
									<div class="product-image">
										<a href="${path}/product/detail?productId=${product.product_id}"> 
										<img src="${product.p_img}" alt="Product Image">
										</a>
										<div class="product-action">
											<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
												class="fa fa-heart"></i></a> <a href="#"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-content">
										<div class="title">
											<a href="#">${product.p_name}</a>
										</div>
										<div class="ratting">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
										<div class="price">
											$${product.saleprice} <span>$${product.price}</span>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>

						<%-- --%>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dry2.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dry3.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dry4.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dry5.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dry6.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dry7.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/wet1.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/wet2.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/wet3.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/wet4.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/wet5.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/wet6.png"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/wet7.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dental1.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dental2.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dental3.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dental4.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dental5.jpg"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="product-item">
								<div class="product-image">
									<a href="product-detail.html"> <img src="/img/dental6.png"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-content">
									<div class="title">
										<a href="#">Phasellus Gravida</a>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										$22 <span>$25</span>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-12">
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled"><a class="page-link"
									href="#" tabindex="-1">Previous</a></li>
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>



				<div class="col-md-3">
					<div class="sidebar-widget category">
						<h2 class="title">Category</h2>
						<ul>
							<li><a href="product-dry.html">건식사료</a><span>(7)</span></li>
							<li><a href="product-wet.html">습식사료</a><span>(7)</span></li>
							<li><a href="product-dental.html">덴탈간식</a><span>(6)</span></li>
						</ul>
					</div>

					<div class="sidebar-widget image">
						<h2 class="title">Featured Product</h2>
						<a href="#"> <img src="/img/eat.jpg" alt="Image">
						</a>
					</div>

					<div class="sidebar-widget brands">
						<h2 class="title">Our Brands</h2>
						<ul>
							<li><a href="#">Nulla </a><span>(45)</span></li>
							<li><a href="#">Curabitur </a><span>(34)</span></li>
							<li><a href="#">Nunc </a><span>(67)</span></li>
							<li><a href="#">Ullamcorper</a><span>(74)</span></li>
							<li><a href="#">Fusce </a><span>(89)</span></li>
							<li><a href="#">Sagittis</a><span>(28)</span></li>
						</ul>
					</div>

					<div class="sidebar-widget tag">
						<h2 class="title">Tags Cloud</h2>
						<a href="#">Lorem ipsum</a> <a href="#">Vivamus</a> <a href="#">Phasellus</a>
						<a href="#">pulvinar</a> <a href="#">Curabitur</a> <a href="#">Fusce</a>
						<a href="#">Sem quis</a> <a href="#">Mollis metus</a> <a href="#">Sit
							amet</a> <a href="#">Vel posuere</a> <a href="#">orci luctus</a> <a
							href="#">Nam lorem</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Product List End -->

	<!-- Footer 모듈 삽입 -->
	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />
	<!-- Back to Top -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="/js/easing.min.js"></script>
	<script src="/js/slick/slick.min.js"></script>


	<!-- Template Javascript -->
	<script src="/js/main.js"></script>
</body>
</html>
