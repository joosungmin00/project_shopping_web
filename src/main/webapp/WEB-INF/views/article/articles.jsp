<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- Favicon -->
<link href="/img/favicon.png" rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="/css/slick.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	rel="stylesheet">

<%-- CSS 파일 포함 --%>
<jsp:include page="/WEB-INF/views/modules/styles.jsp" />
<script defer src="/js/replys.js"></script>
<title>Portfolio</title>

<!-- icon -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
body {
	font-family: cookie, sans-serif;
}

header {
	color: black;
	padding: 10px;
	border-bottom: 2px solid black;
}

main {
	margin: 20px;
}

.review {
	border: 1px solid pink;
	padding: 10px;
	margin-bottom: 10px;
	background-color: #f9f9f9;
	position: relative;
}

.review-title {
	font-weight: bold;
	display: flex;
	justify-content: flex-end;
}

.review-rating {
	color: #ff9900;
	margin-top: 5px;
}
/*
        .review-content {
            margin-top: 10px;
        }*/

/*.review-reply{
        	border: 1px solid #ff4b2b;
        }*/
form {
	margin-top: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"], textarea {
	width: 100%;
	padding: 5px;
	margin-bottom: 10px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

.input-container {
	display: flex;
	align-items: center;
	margin-bottom: 10px;
	/*border-bottom: 2px solid black;*/
}

.text-start {
	display: flex;
	align-items: center;
	margin-bottom: 10px;
/*	border-bottom: 2px solid black; */
}

textarea {
	flex: 1;
	/* Take remaining width */
	padding: 10px;
	margin-bottom: 10px;
}

.submit-btn {
	font-size: 24px;
	background-color: white;
	color: #fff;
	border: 1px solid black;
	border-left: none;
	padding: 16px 18px;
	cursor: pointer;
	margin-top: -10px;
}

.reply-submit-btn {
	font-size: 24px;
	background-color: white;
	color: #fff;
	border: 1px solid black;
	border-left: none;
	padding: 16px 18px;
	cursor: pointer;
	margin-top: -10px;
}

textarea {
	resize: none;
}

.page-link {
	color: white;
	background-color: pink;
}

.container .pagination .page-item.active .page-link {
	background-color: pink;
}
.outside{
padding: 10px;
//border: 3px solid red;
box-shadow: 0 2px 4px rgba(0,0,0,0.4);
margin-bottom: 30px;
margin-top: 30px;
}
.outout{

background: #66666;
}
.reply-btn{
	border-radius: 10% 0%  10% 0%;
	box-shadow: 0 2px 4px rgba(0,0,0,0.4);
	background: pink;
	border: none !important;
}
.reply-btn:hover{

border: none !important;
}
.replyBtnP{
display: flex;
	justify-content: flex-end;
}
</style>
</head>

<body>

	<!-- ======================================== Header Start ======================================== -->
	<jsp:include page="/WEB-INF/views/modules/header.jsp" />
	<!-- ======================================== Header End ======================================== -->








	<!-- Breadcrumb Start -->
	<div class="breadcrumb-wrap">
		<div class="container">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Home</a></li>
				<li class="breadcrumb-item active">Contact</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->


	<!-- Contact Start -->
	<div class="container">
		<header>
			<h1>자유 게시판</h1>
		</header>
		<main>
			<form action="${path}/article" method="post" role="form" novalidate>
				<label for="content">작성 내용</label>
				<div class="input-container">
					<textarea id="content" name="content"
						<c:choose>
				        <c:when test="${empty loginCustomer}">
				            placeholder="로그인 하여야 게시글을 입력할 수 있습니다...."
				        </c:when>
				        <c:otherwise>
				            placeholder="작성하실 글을 입력하세요!"
				        </c:otherwise>
				    </c:choose>
						required <c:if test="${empty loginCustomer}">disabled</c:if>></textarea>
					<button class="submit-btn" type="submit">
						<i class="fa-solid fa-pen-to-square"></i>
					</button>
				</div>
			</form>

<div class= "outout">

			<c:forEach items="${list}" var="memo">
				<div class="outside">
				<div class="review">
					<div class="review-title">${memo.customerId}님/
						${memo.datecreated }</div>
					<div class="review-content">${memo.contents}</div>
				</div>



				<input type="hidden" id="postId" name="postId"
					value="${memo.postId}">
				<!-- postId 값을 hidden input으로 전달 -->

				<label for="replyContent">댓글 내용</label>

				<div class="input-container">

					<textarea id="reply-${memo.postId}" name="contents"
						<c:choose>
		                    <c:when test="${empty loginCustomer}">
		                        placeholder="로그인 하여야 댓글을 입력할 수 있습니다...."
		                    </c:when>
		                    <c:otherwise>
		                        placeholder="댓글을 입력하세요!"
		                    </c:otherwise>
		                </c:choose>
						required <c:if test="${empty loginCustomer}">disabled</c:if> >
						
						</textarea>

					<button class="reply-submit-btn" value="${memo.postId}"> <i
						class="fa-solid fa-pen-to-square"></i>
					</button>

				</div>
				<div class="replyBtnP">
				<p>
					<button class="reply-btn" value="${memo.postId}">댓글</button>
				</p>
</div>

				<p id="replyView-${memo.postId}" data-id="${memo.postId}"
					class="text-start"></p>
</div>
			</c:forEach>

</div>

			<!-- 페이징 처리 -->
			<nav class="mt-3">
				<ul class="pagination justify-content-center">
					<%-- 처음으로 보여주기 여부 --%>
					<c:if test="${pagination.showFirst}">
						<li class="page-item"><a class="page-link" href="?page=1"
							aria-label="First"> <span aria-hidden="true">처음으로</span>
						</a></li>
					</c:if>

					<%-- 이전 목록 보여주기 여부 --%>
					<c:if test="${pagination.showPrevious}">
						<li class="page-item"><a class="page-link"
							href="?page=${pagination.previousStartPage}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>

					<c:forEach var="i" begin="${pagination.startPage }"
						end="${pagination.endPage }">
						<c:choose>
							<c:when test="${i == pagination.params.requestPage}">
								<li class="page-item"><a class="page-link">${i}</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="?page=${i}">${i}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<%-- 다음 목록 보여주기 여부 --%>
					<c:if test="${pagination.showNext}">
						<li class="page-item"><a class="page-link"
							href="?page=${pagination.nextStartPage}" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</c:if>

					<%-- 마지막으로 보여주기 여부 --%>
					<c:if test="${pagination.showLast}">
						<li class="page-item"><a class="page-link"
							href="?page=${pagination.totalPages}" aria-label="First"> <span
								aria-hidden="true">마지막으로</span>
						</a></li>
					</c:if>
				</ul>
			</nav>


		</main>
	</div>
	<!-- Contact End -->

	<!-- JavaScript Start -->
	<jsp:include page="/WEB-INF/views/modules/scripts.jsp" />

	<!-- Footer 모듈 삽입 -->
	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />
	<!-- JavaScript End -->
</body>

</html>