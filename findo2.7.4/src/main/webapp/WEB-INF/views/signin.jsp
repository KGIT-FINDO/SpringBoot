<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Findo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link href="/css/stylesheet.css" rel="stylesheet" />
<script src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/javascript.js"></script>
<script src="https://kit.fontawesome.com/08cf8c1353.js" crossorigin="anonymous"></script>
</head>
<body>
	<form method="post" action="signin_ok">
		<%-- 전체를 움직이고 싶으면 login class 를 이용하기 --%>
		<div class="wrapper_login">
	
			<div class="signin_logo">
				<a href="/"><img src="/images/logo_black.png" /></a>
			</div>
			
			<%-- signin_main 전체를 움직이는 class --%>
			<div class="signin_main">
				<div class="signin_main_login">로그인</div>
				<div class="signin_main_login_id">
					<input type="text" size="24" id="id" name="id" placeholder="ID" maxlength="20" required />
				</div>
				<div class="signin_main_login_password">
					<input type="password" size="24" id="password" name="password" placeholder="Password" maxlength="20" required />
				</div>
				<div class="signin_main_login">
					<div>로그인 상태유지</div>
					<div>IP보안</div>
				</div>
				<div class="signin_main_loginbutton">
					<input type="submit" value="로그인" />
				</div>
			</div>
			
			<%-- signin_search 전체를 움직이는 class --%>
			<div class="signin_search">
				<li><a href="#">비밀번호 찾기 </a> | </li>
				<li><a href="#">아이디찾기 </a> | </li>
				<li><a href="/signupAgreement">회원가입</a></li>
			</div>
			
			<div class="signin_advertisement">
				<a href="https://rolls-roycemotorcars-apac.com/kr/?utm_source=google&utm_medium=cpc&utm_campaign=2022-MARCH_ALWAYSON_KR_SEM_CONV_BRAND-EXACT&utm_content=2022-MARCH_ALWAYSON_KR_SEM_CONV_BRAND-EXACT_Rolls%20Royce%20Exact%20KR&gclid=EAIaIQobChMI6LPe5tmY-gIVotdMAh2GYQNSEAAYASAAEgJ3cfD_BwE"><img src="/front2/images/car.jpg" /></a>
			</div>
			
			<%-- signin_law 전체를 움직이는 class --%>
			<div class="signin_law">
				<li><a href="/front2/html/company_using_law.jsp">이용약관 </a> | </li>
				<li><a href="/front2/html/company_personal_info_law.jsp">개인정보처리방침 </a> | </li>
				<li><a href="/front2/html/company_financial_transation_law.jsp">책임의 한계와 법적고지 </a> | </li>
				<li><a href="/front2/html/index_faq.jsp">회원정보 고객센터</a></li>
			</div>
			
			<div class="signin_copyright"> 
				<p>Copyright © FINDO Corp. All Rights Reserved.</p>
			</div>
			
		</div>
	</form>
</body>
</html>