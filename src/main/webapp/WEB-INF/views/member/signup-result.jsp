<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%-- CSS 파일 포함 --%>
<link rel="stylesheet" href="/css/signup-result.css">
<jsp:include page="/WEB-INF/views/modules/styles.jsp" />
<title>Portfolio</title>
</head>
<body>

		<jsp:include page="/WEB-INF/views/modules/header.jsp" />
	<div data-scroll-container>
		<main>
			<section class="position-relative">
				<div
					class="bg-pattern text-primary text-opacity-50 opacity-25 w-100 h-100 start-0 top-0 position-absolute">
				</div>
				<div
					class="bg-gradientwhite flip-y w-50 h-100 start-50 top-0 translate-middle-x position-absolute"></div>
				<div class="container pt-11 pt-lg-14 pb-9 position-relative z-1">
					<div class="row align-items-center justify-content-center result-content">
						<div class="col-md-6 col-sm-8 message">
							<h2>Congratulation!</h2>
							<p class="mb-3 w-lg-75">가입하신 정보는 아래와 같습니다.</p>
							<div class="width-50x pt-1 bg-primary mb-5 topborder" style="background: #ff4b2b !important;"></div>

							<div class="position-relative">
								<div>
									<div class="input-icon-group mb-3">
										<span class="input-icon">가입 아이디 <i class="fa"></i>
										</span> <input type="text" value="${customer.id}" class="form-control" disabled>
									</div>

									<div class="input-icon-group mb-3">
										<span class="input-icon"> 성함<i class="bx bx-user"></i>
										</span> <input type="text" value="${customer.name}" class="form-control" disabled>
									</div>

									<div class="input-icon-group mb-3">
										<span class="input-icon">이메일주소 <i class="bx bx-envelope"></i>
										</span> </span> <input type="email" value="${customer.email}" class="form-control" disabled>
									</div>

									<div class="input-icon-group mb-3">
										<span class="input-icon">가입하신 날짜<i class="bx bx-lock-open"></i>
										</span> </span> <input type="text" value="${customer.regdate}" class="form-control" disabled>
									</div>

									<div class="d-grid home-btn">
										<a href="/" class="btn btn-primary">홈으로</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>
        

	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />
</body>

</html>