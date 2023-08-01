<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%-- CSS 파일 포함 --%>
<jsp:include page="/WEB-INF/views/modules/styles.jsp" />

<title>Portfolio</title>
</head>

<body>

	<div data-scroll-container>
		<!-- ======================================== Header Start ======================================== -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp" />
		<!-- ======================================== Header End ======================================== -->

		<!-- Option Menu Start-->
		<jsp:include page="/WEB-INF/views/modules/option.jsp" />
		<!-- Option Menu End-->

		<!-- ================================================== Main content Start =================================================-->
		<main>
			<section class="position-relative">
				<div
					class="bg-pattern text-primary text-opacity-50 opacity-25 w-100 h-100 start-0 top-0 position-absolute">
				</div>
				<div
					class="bg-gradientwhite flip-y w-50 h-100 start-50 top-0 translate-middle-x position-absolute"></div>
				<div class="container pt-11 pt-lg-14 pb-9 position-relative z-1">
					<div class="row align-items-center justify-content-center">
						<div class="col-md-8 col-sm-10">
							<h2>회원 목록</h2>
							<div class="width-50x pt-1 bg-primary mb-5"></div>

							<div class="position-relative">
								<div>
									<table class="table table-striped table-hover">
										<thead>
											<tr>
												<th>번호</th>
												<th>이름</th>
												<th>아이디</th>
												<th>이메일</th>
												<th>가입일자</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${members}" var="member" varStatus="loop">
												<tr>
													<td>${loop.count}</td>
													<td>${member.name}</td>
													<td>${member.id}</td>
													<td>${member.email}</td>
													<td>${member.regdate}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

									<div class="d-grid">
										<a href="/" class="btn btn-primary">홈으로</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>
		<!-- ================================================== Main content End =================================================-        
        
	</div>

	<!-- JavaScript Start -->
		<jsp:include page="/WEB-INF/views/modules/scripts.jsp" />
		<!-- JavaScript End -->
</body>

</html>