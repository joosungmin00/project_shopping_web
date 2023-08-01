<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
  
  
  
  <div class="toptop">
        <div class="container main-container">
            <div class="navbar toptop">
  <c:choose>
	<c:when test="${empty loginCustomer}">
                <a class="toptop-menu" href="${path}/customer/signup">log in / Sign up</a>
                </c:when>
                <c:otherwise>
                <a class="toptop-menu">${loginCustomer.id}님 환영합니다!</a>
                <a class="toptop-menu" href="${path}/customer/signin"> Log out</a>
                <a class="toptop-menu" href="${path}/cart"> Cart</a>
                <a class="toptop-menu" href="my-account.html"> My account</a>
                </c:otherwise>
                </c:choose>
            </div>
        </div>
  </div>



    <!-- Top Header Start -->
    <div class="top-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-3">
                    <div class="logo">
                        <a href="/index.jsp">
                            <img src="/img/logo.png" alt="Logo">
                        </a>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="search">
                        <div class="input-group">
                            <input type="text" placeholder="제품을 검색해보세요">
                            <button><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 top-header-menu">
                    <p class="keyword">인기 검색어 </p>
                    <div id="content">
                        <dl class="rank-list">
                            <dd>
                                <ul>
                                    <li><a href="#">1 . 강아지 사료</a></li>
                                    <li><a href="#">2 . 고양이 사료</a></li>
                                    <li><a href="#">3 . 로얄 캐닌</a></li>
                                    <li><a href="#">4 . 강아지 간식</a></li>
                                    <li><a href="#">5 . 캣타워</a></li>
                                    <li><a href="#">6 . 애견 용품</a></li>
                                    <li><a href="#">7 . 강형욱 논란</a></li>
                                    <li><a href="#">8 . 강형욱 인스타</a></li>
                                    <li><a href="#">9 . 강아지 장난감</a></li>
                                    <li><a href="#">10 . 심장사상충</a></li>
                                </ul>
                            </dd>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Top Header End -->


    <!-- Header Start -->
    <div class="header">
        <div class="container">
            <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                <a href="#" class="navbar-brand">MENU</a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav m-auto">
                        <a href="/" class="nav-item nav-link active">Home</a>
                        <a href="${path}/error" class="nav-item nav-link">About us</a>
                        <a href="${path}/product" class="nav-item nav-link">Products</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu">
                                <a href="${path}/error" class="dropdown-item">Wishlist</a>
                            </div>
                        </div>
                        <a href="${path}/article" class="nav-item nav-link">Contact Us</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>

    <!-- Header End -->