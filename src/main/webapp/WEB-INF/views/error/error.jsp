<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<style>
		body {
			margin: 0;
			padding: 0;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
		}
		#error_content {
			text-align: center;
			display: inline;
			border: 1px solid gray;
		}
		img {
			margin: 0 auto;
			max-width: 100%;
			height: auto;
			width: 300px;
		}
		button:hover{
			background: rgb(246, 240, 240);
			color: rgb(30, 29, 29);
		}
		button{
			margin: 10px 0px 20px 0px;
			border: none;
			padding: 3px;
			background: rgb(140, 129, 117);
			color: rgb(255, 237, 237);
			border-radius: 20% 0% 10% 0%;
		}
		</style>
</head>
<body>
	<div id="error_content">
		<img src="/img/error.jpg" alt="">
		<h2>기능을 구현중이에요!</h2>
		<p>죄송합니다.<br> 업데이트 중입니다.</p>
		<a href="javascript:history.back();"><button>이전 페이지</button></a>
		<a href="/"><button>홈페이지</button></a>
	</div>
</body>
</html>