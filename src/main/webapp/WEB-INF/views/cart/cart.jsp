<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>E Shop - Bootstrap Ecommerce Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Bootstrap Ecommerce Template" name="keywords">
<meta content="Bootstrap Ecommerce Template Free Download"
	name="description">
	  <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
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
<script defer src="/js/main.js"></script>
<script defer src="/js/set-cart.js"></script>
<script defer src="/js/cart-remove.js"></script>
<style>

#couponLabel{
 background: rgb(241, 240, 240);
margin-top : 35px;
padding : 55px;
border : 1px solid black;
-webkit-animation: fadein 3s;
}
#couponLabel label {
text-align : center;
}
.coupon p {
margin-top : 20px;
}
@keyframes fadein {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
.alertMessage{
	color: balck !important;
	font-weight: bold;
}
#freeShipping	{
	display: flex;
	justify-content: flex-end;
}
#freeShipping h5 {
font-weight: bolder;
color: black !important;
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
				<li class="breadcrumb-item active">Cart</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->


	<!-- Cart Start -->
	<div class="cart-page">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				<p class="alertMessage">※ $100 이상 구매 시 배송비는 무료입니다! ※
					<div class="table-responsive">
						<table class="table table-bordered">
							<thead class="thead-dark">
								<tr>
									<th>Image</th>
									<th>Name</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Total</th>
									<th>Remove</th>
								</tr>
							
							</thead>
<c:forEach var="entry" items="${cart.list}" >
							<tbody class="align-middle" id="tBody">
  <tr>
    <td><a href="#"><img src="${entry.value.p_img}" alt="Image"></a></td>
    <td><a href="#">${entry.value.p_name}</a></td>
    <td>$${entry.value.saleprice}</td>
    <td>
      <div class="qtyy">
        <button class="btnMinus"><i class="fa fa-minus"></i></button>
        <input type="text" value="${entry.value.quantity}" name="quantity">
        <button class="btnPlus"><i class="fa fa-plus"></i></button>
      </div>
    </td>
    <td>$${entry.value.saleprice * entry.value.quantity}</td>
    <td>
      <button class="btn-remove" data-productid="${entry.value.product_id}">삭제</button>
    </td>
  </tr>   
				
							</tbody>
</c:forEach>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="coupon">
						<input type="text" placeholder="쿠폰번호를 입력하세요">
						<button>쿠폰 등록</button>
					</div>
					<div id = "couponOut"></div>
				</div>
				<div class="col-md-6">
					<div class="cart-summary">
						<div class="cart-content">
							<h3>장바구니 합계</h3>
							<p id="subTotal">
								제품 합계<span>$0</span>
							</p>
							<p id="shippingCost">
								배송비<span>$5</span>
							</p>
							<h4 id="grandTotal">
								총 결제 금액<span>$5</span>
							</h4>
						</div>
							<div id="freeShipping"></div>
						<div class="cart-btn">
							<button onclick="location.href='/'">홈으로</button>
							<button onclick="location.href='${path}/error'">결제하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Cart End -->

	<%--Footer 모듈 삽입 --%>
	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />

	<!-- Back to Top -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="/js/easing.min.js"></script>
	<script src="/js/slick.min.js"></script>
</body>
</html>
