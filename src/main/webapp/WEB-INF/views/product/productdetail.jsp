<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>E Shop - Bootstrap Ecommerce Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Bootstrap Ecommerce Template" name="keywords">
<meta content="Bootstrap Ecommerce Template Free Download"
	name="description">

<!-- Favicon -->
<link href="/img/favicon.ico" rel="icon">

<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
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
<script defer src="/js/product-quantity.js"></script>
<script defer src="/js/main.js"></script>

<style>
#description img {
	width: inherit;
}
</style>
</head>

<body>


	<jsp:include page="/WEB-INF/views/modules/header.jsp" />


	<!-- Breadcrumb Start -->
	<div class="breadcrumb-wrap">
		<div class="container">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="/">Home</a></li>
				<li class="breadcrumb-item"><a href="${path}/product">Products</a></li>
				<li class="breadcrumb-item active">product details</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->


	<%--제품 상세 등록 시작... --%>


	<!-- Product Detail Start -->
	<div class="product-detail">
		<div class="container">
			<div class="row">
				<div class="col-lg-9">
					<div class="row align-items-center product-detail-top">
						<div class="col-md-5">
							<div class="product-slider-single">
								<c:forEach var="images" items="${images}">
									<img src="${images.path}" alt="Product Image">
								</c:forEach>
							</div>
						</div>
						<div class="col-md-7">
							<div class="product-content">
								<div class="title">
									<h2>${product.p_name}</h2>
								</div>
								<div class="ratting">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="price">
									$${product.saleprice}<span>$${product.price}</span>
								</div>
								<div class="details">
									<p>${product.p_desc}</p>
								</div>

								<%-- 마이너스, 수량, 플러스 버튼 --%>
								<div class="quantity">
									<h4>수량:</h4>
									<div class="qty">
										<button class="btn-minus btn-plus-minus">
											<i class="fa fa-minus"></i>
										</button>
										<input type="text" value="1" name="quantity"
											id="quantityInput">
										<button class="btn-plus btn-plus-minus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>


								<div class="action">
									<a href="#" id="addToCartButton"
										data-productid="${product.product_id}"><i
										class="fa fa-cart-plus"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a> <a href="${path}/order"><i
										class="fas fa-credit-card"></i></a>

								</div>
							</div>
						</div>
					</div>

					<div class="row product-detail-bottom">
						<div class="col-lg-12">
							<ul class="nav nav-pills nav-justified">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="pill" href="#description">Description</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="pill"
									href="#specification">Specification</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="pill"
									href="#reviews">Reviews (1)</a></li>
							</ul>

							<div class="tab-content">
								<div id="description" class="container tab-pane active">
									<br>
									<h4>상품 상세정보</h4>
									<%--               <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. In condimentum quam ac mi viverra dictum. In efficitur ipsum diam, at dignissim lorem tempor in. Vivamus tempor hendrerit finibus. Nulla tristique viverra nisl, sit amet bibendum ante suscipit non. Praesent in faucibus tellus, sed gravida lacus. Vivamus eu diam eros. Aliquam et sapien eget arcu rhoncus scelerisque. Suspendisse sit amet neque neque. Praesent suscipit et magna eu iaculis. Donec arcu libero, commodo ac est a, malesuada finibus dolor. Aenean in ex eu velit semper fermentum. In leo dui, aliquet sit amet eleifend sit amet, varius in turpis. Maecenas fermentum ut ligula at consectetur. Nullam et tortor leo. 
                                        </p>--%>
									<img src="${product.p_detaildesc}" alt="detail">
								</div>
								<div id="specification" class="container tab-pane fade">
									<br>
									<h4>교환 및 반품안내</h4>
                                        <p>- 상품 택(tag)제거 또는 개봉으로 상품 가치 훼손 시에는 상품수령후 7일 이내라도 교환 및 반품이 불가능합니다.(대형견하우스, 울타리, 패드, 박스채 출고되는 하우스 등)

                                            - 저단가 상품, 일부 특가 상품은 고객 변심에 의한 교환, 반품은 고객께서 배송비를 부담하셔야 합니다(제품의 하자,배송오류는 제외)
                                            
                                            - 일부 상품은 신모델 출시, 원재료가격 변동 등 제조사 사정으로 가격이 변동될 수 있습니다.
                                            
                                            - 공장에서 박스자체가 상품으로 출고되는 제품에 대하여서는 박스개봉후 중고상품으로 간주되어 교환이나 반품이 불가능합니다. (이동켄넬, 대형배변판, 박스포장된 수제사료 등) </p>
                                        <br>
                                        <h4>환불안내</h4>
                                        <p>- 상품 청약철회 가능기간은 상품 수령일로 부터 7일 이내 입니다.

                                            - 단순 변심 및 불량에 의한 교환 및 반품은 식품을 포함한 전제품 모두 7일 이후에는 불가능 하십니다.
                                            
                                            - 개봉흔적이나 사용흔적, 텍이제거나거나 식품같은 경우엔 개봉후에는 환불과 교환이 모두 불가능 합니다.
                                            
                                            - 대형견용 제품이나 박스채로 발송이 되는 재포장 상품이 아닌, 공장출고박스 그대로 출고가 되는 제품은 박스개봉후에는 중고상품으로 간주되어 재판매가 불가능할 경우가 있습니다.
                                            
                                              (대형견하우스, 이동켄넬, 배변판, 기저귀 및 패드, 울타리 등) 이런 제품들은 단순변심에 의한 교환이나 환불이 불가능합니다.
                                            
                                               세부사이즈를 꼼꼼히 확인하시고 주문 부탁드립니다. </p>
                                        <br>
                                        <h4>AS안내</h4>
                                        <p>- 소비자분쟁해결 기준(공정거래위원회 고시)에 따라 피해를 보상받을 수 있습니다.

                                            - A/S는 고객센터에서 접수 및 처리를 도와드립니다. 게시판을 이용하셔도 빠른 처리 도와드리고 있습니다.</p>
                                        <br>
                                        <h4>배송안내</h4>
                                        <p>- 배송비 : 기본배송료는 3,000원 입니다. (도서,산간,오지 일부지역은 배송비가 추가될 수 있습니다)  

                                            - 30,000원 이상 구매시 무료배송입니다. [제주도 배송비 3천원 추가]
                                            
                                            - 기본적으로 평일오후 4시이전 주문건은 당일출고를 원칙으로 배송준비하고 있습니다. (재고가 부족하거나 창고/수입사에서 바로 발송되시는 제품은 1-2일정도 배송일이 더 소요될 수 있습니다.]
                                            
                                            - 상품의 평균 배송일은 1-3일입니다.(입금 확인 후) 배송사의 사정에 따라 유동적일 수 있으며 배송일 지정은 불가능합니다.
                                            
                                               [배송예정일은 주문시점(주문순서)에 따른 유동성이 발생하므로 평균 배송일과는 차이가 발생할 수 있습니다.]</p>
                                    
								</div>
								<div id="reviews" class="container tab-pane fade">
									<br>
									<div class="reviews-submitted">
										<div class="reviewer">
											김기정 - <span>28 Jul 2023</span>
										</div>
										<div class="ratting">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
										<p>감사합니다. 구매 잘 해서 만족합니다.</p>
									</div>
									<div class="reviews-submit">
										<h4>Give your Review:</h4>
										<div class="ratting">
											<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i>
										</div>
										<div class="row form">
											<div class="col-sm-6">
												<input type="text" placeholder="Name">
											</div>
											<div class="col-sm-6">
												<input type="email" placeholder="Email">
											</div>
											<div class="col-sm-12">
												<textarea placeholder="Review"></textarea>
											</div>
											<div class="col-sm-12">
												<button>Submit</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>





					<div class="container">
						<div class="section-header">
							<h3>관련 상품</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Donec viverra at massa sit amet ultricies. Nullam consequat,
								mauris non interdum cursus</p>
						</div>
					</div>

					<div class="row align-items-center product-slider product-slider-3">
						<div class="col-lg-3">
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
						<div class="col-lg-3">
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
						<div class="col-lg-3">
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
						<div class="col-lg-3">
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
						<div class="col-lg-3">
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
					</div>
				</div>

				<div class="col-lg-3">
					<div class="sidebar-widget category">
						<h2 class="title">Category</h2>
						<ul>
							<li><a href="#">Lorem Ipsum</a><span>(83)</span></li>
							<li><a href="#">Cras sagittis</a><span>(198)</span></li>
							<li><a href="#">Vivamus</a><span>(95)</span></li>
							<li><a href="#">Fusce vitae</a><span>(48)</span></li>
							<li><a href="#">Vestibulum</a><span>(210)</span></li>
							<li><a href="#">Proin phar</a><span>(78)</span></li>
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
	<!-- Product Detail End -->


	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />


	<!-- Back to Top -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="/js/easing.min.js"></script>
	<script src="/js/slick.min.js"></script>


	<!-- Template Javascript -->
	<script src="/js/main.js"></script>
</body>
</html>
