<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>D & C shop</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Bootstrap Ecommerce Template" name="keywords">
    <meta content="Bootstrap Ecommerce Template Free Download" name="description">

    <!-- Favicon -->
    <link href="/img/favicon.png" rel="icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&display=swap" rel="stylesheet">

    <!-- CSS Libraries -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="/css/slick.css" rel="stylesheet">
    <link href="/css/slick-theme.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">

    <script defer src="/js/login.js"></script>


</head>

<body>

  <!-- Header 모듈 삽입 -->
  <jsp:include page="/WEB-INF/views/modules/header.jsp"/>


    <!-- Main Slider Start -->
    <div class="home-slider">
        <div class="main-slider">
            <div class="main-slider-item"><a href="${path}/customer/signup"><img src="img/slide1.jpg" alt="Slider Image" /></a></div>
            <div class="main-slider-item"><img src="img/slide2.jpg" alt="Slider Image" /></div>
            <div class="main-slider-item"><img src="img/slide3.jpg" alt="Slider Image" /></div>
        </div>
    </div>
    <!-- Main Slider End -->


    <!-- Feature Start-->
    <div class="feature">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-6 feature-col">
                    <div class="feature-content">
                        <i class="fa fa-shield"></i>
                        <h2>Trusted Shopping</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 feature-col">
                    <div class="feature-content">
                        <i class="fa fa-shopping-bag"></i>
                        <h2>Quality Product</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 feature-col">
                    <div class="feature-content">
                        <i class="fa fa-truck"></i>
                        <h2>Worldwide Delivery</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 feature-col">
                    <div class="feature-content">
                        <i class="fa fa-phone"></i>
                        <h2>Telephone Support</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Feature End-->


    <!-- Category Start-->
    <div class="category">
        <div class="container-fluid">
            <h2>상품 카테고리</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="category-img">
                        <img src="img/dry3.jpg" />
                        <a class="category-name" href="${path}/error">
                            <h2>건식 사료</h2>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="category-img">
                        <img src="img/wet7.jpg" />
                        <a class="category-name" href="${path}/error">
                            <h2>습식 사료</h2>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="category-img">
                        <img src="img/dental1.jpg" />
                        <a class="category-name" href="${path}/error">
                            <h2>덴탈 간식</h2>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Category End-->


    <!-- Featured Product Start -->
    <div class="featured-product">
        <div class="container">
            <div class="section-header">
                <h3>한 주의 인기상품</h3>
            </div>
            <div class="row align-items-center product-slider product-slider-4">
                <div class="col-lg-3">
                    <div class="product-item">
                        <div class="product-image">
                            <a href="product-detail.html">
                                <img src="/img/dry7.jpg" alt="Product Image">
                            </a>
                            <div class="product-action" id="bar">
                                <a href="#"><i class="fa fa-cart-plus"></i></a>
                                <a href="#"><i class="fa fa-heart"></i></a>
                                <a href="#"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="title"><a href="#">고! 솔루션 LID 레시피</a></div>
                            <div class="ratting">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="price">$22 <span>$25</span></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="product-item">
                        <div class="product-image">
                            <a href="product-detail.html">
                                <img src="/img/dental2.jpg" alt="Product Image">
                            </a>
                            <div class="product-action">
                                <a href="#"><i class="fa fa-cart-plus"></i></a>
                                <a href="#"><i class="fa fa-heart"></i></a>
                                <a href="#"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="title"><a href="#">덴탈 슈퍼 스틱</a></div>
                            <div class="ratting">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="price">$22 <span>$25</span></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="product-item">
                        <div class="product-image">
                            <a href="product-detail.html">
                                <img src="/img/dry1.jpg" alt="Product Image">
                            </a>
                            <div class="product-action">
                                <a href="#"><i class="fa fa-cart-plus"></i></a>
                                <a href="#"><i class="fa fa-heart"></i></a>
                                <a href="#"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="title"><a href="#">디어니스트키친 치킨 레시피</a></div>
                            <div class="ratting">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="price">$22 <span>$25</span></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="product-item">
                        <div class="product-image">
                            <a href="product-detail.html">
                                <img src="/img/dry2.jpg" alt="Product Image">
                            </a>
                            <div class="product-action">
                                <a href="#"><i class="fa fa-cart-plus"></i></a>
                                <a href="#"><i class="fa fa-heart"></i></a>
                                <a href="#"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="title"><a href="#">훌 그레인 치킨 앤 오트 레시피</a></div>
                            <div class="ratting">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="price">$22 <span>$25</span></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="product-item">
                        <div class="product-image">
                            <a href="product-detail.html">
                                <img src="/img/dry3.jpg" alt="Product Image">
                            </a>
                            <div class="product-action">
                                <a href="#"><i class="fa fa-cart-plus"></i></a>
                                <a href="#"><i class="fa fa-heart"></i></a>
                                <a href="#"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="title"><a href="#">스몰 브리드 오리</a></div>
                            <div class="ratting">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="price">$22 <span>$25</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured Product End -->

<!--brand. 모듈 삽입 -->
<jsp:include page="/WEB-INF/views/modules/brand.jsp"/>


<!-- Footer 모듈 삽입 -->
<jsp:include page="/WEB-INF/views/modules/footer.jsp"/>



    <!-- Back to Top -->
    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="/js/easing.min.js"></script>
    <script src="/js/slick.min.js"></script>

    <!-- Template Javascript -->
    <script src="/js/main.js"></script>

</body>

</html>