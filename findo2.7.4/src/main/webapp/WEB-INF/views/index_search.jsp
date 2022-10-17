<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/css/stylesheet.css" rel="stylesheet" type="text/css" />
<script src="https://kit.fontawesome.com/08cf8c1353.js"
	crossorigin="anonymous"></script>
<title>Findo</title>
</head>
<body>
	<form name="svo" method="post" action="/search_list">
		<div class="search_wrapper">
			<div class="search_main">
				<a href="/"><img src="/images/logo_black.png" width=150 /></a>
				<div class="input-area">
					<i class="fa-solid fa-magnifying-glass search-icon"></i>
					<input type="text" id="find_name" name="find_name" value="${find_name}" class="input-box" maxlength="20" placeholder="종목명 /코드 검색" />
				</div>
				<div class="language-area">Findo offered in: 한국어 English
				</div>
			</div>
		</div>
	</form>
</body>
</html>