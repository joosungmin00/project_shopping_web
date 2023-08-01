<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="/css/loginstyle.css">
<link rel="stylesheet" href="/css/headercss.css">
<link
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
   rel="stylesheet">
<link
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
   rel="stylesheet">
<link href="/css/slick.css" rel="stylesheet">
<link href="/css/slick-theme.css" rel="stylesheet">

<script defer src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script defer src="/js/id-check.js"></script>
<script defer src="/js/validator.js"></script>
<script defer
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script defer src="/js/easing.min.js"></script>
<script defer src="/js/slick.min.js"></script>
<script defer src="/js/login.js"></script>
<script defer src="/js/main.js"></script>
<style>
.form-check-label {
   display: inline;
}
/* 체크박스에 margin 추가하여 라벨과 간격을 줌 */
input[type="checkbox"] {
   margin-left: 5px;
}

h1 {
   font-weight: bold;
   font-size: 35px;
}
</style>
</head>

<body>
   <%-- <jsp:include page="/WEB-INF/views/modules/header.jsp" /> --%>


   <div class="logo-header">
      <div class="container">
               <div class="logo">
                  <a href="/index.jsp"> <img src="/img/logo.png" alt="Logo">
                  </a>
               </div>
      </div>
   </div>





   <div class="wrapper">
      <div class="container con ">
         <div class="sign-up-container">
            <form id="sign-up" action="${path}/customer/signup" method="post">
               <h1>회원 가입</h1>
               <div class="social-links">
                  <div>
                     <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                  </div>
                  <div>
                     <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                  </div>
                  <div>
                     <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                  </div>
               </div>
               <input type="text" placeholder="Name" name="name"> 
               
               <input type="text"placeholder="Id"  name="id" id="id"> 
               <span id="dup-result1"></span>
               
               <input type="password" placeholder="Password" maxlength="12" name="pw" id="pw"> 
               <span id="dup-result2"></span>
               
               <input type="text" placeholder="ex)abc@naver.com" name="email" id="email">
               <span id="dup-result3"></span>
               
               <button class="form_btn" type="submit"id="signup-button">Sign Up</button>
            </form>
         </div>
         <div class="sign-in-container">
            <form id="login" action="${path}/customer/signin" method="post">
               <h1>로그인</h1>
               <div class="social-links">
                  <div>
                     <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                  </div>
                  <div>
                     <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                  </div>
                  <div>
                     <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                  </div>
               </div>
                <input type="text"
                  placeholder="Id" id="userid" name="id" required> <input
                  type="password" placeholder="Password" id="pw" name="pw">
               <!-- <input class="form-check-input" type="checkbox" id="flexCheckDefault" name="saveid" 
               <!-- <c:if test="${not empty cookie.saveid}">checked</c:if>>  -->
               <div>
                  <label class="form-check-label" for="flexCheckDefault">
                     save ID </label> <input type="checkbox" name="saveid">
               </div>
               <button class="form_btn" type="submit">Sign In</button>
            </form>
         </div>
         <div class="overlay-container">
            <div class="overlay-left">
               <h1>Welcome Back</h1>
               <p>버튼을 눌러 로그인을 하세요</p>
               <button id="signIn" class="overlay_btn">Sign In</button>
            </div>
            <div class="overlay-right">
               <h1>Hello, Friend</h1>
               <p>
                  회원가입을 하고 서비스를 누려보세요<br>아래의 버튼을 누르면 이동합니다
               </p>
               <button id="signUp" class="overlay_btn">Sign Up</button>
            </div>
         </div>
      </div>
   </div>

</body>

</html>