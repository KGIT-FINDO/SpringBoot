<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Findo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link href="/css/stylesheet.css" rel="stylesheet" />
<script src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/javascript.js"></script>
<script src="https://kit.fontawesome.com/08cf8c1353.js" crossorigin="anonymous"></script>
</head>
<body>
	<form name="m" method="post" action="/signupComplete">

		<div class="signup_wrapper">
			<div class="signup_wrapper_container">

				<div class="signup_logo">
					<a href="/"><img src="/images/logo_black.png" /></a>
				</div>
				<div class="signup_id">
					<h5>아이디</h5>
				</div>
				<div class="signup_id_text">
					<input autofocus type="text" id="id" name="id"
						size="32" maxlength="20" required /> <input type="button"
						id="signup_id_confirm" name="signup_id_confirm" value="중복확인" />
				</div>
				<div class="signup_password">
					<h5>비밀번호</h5>
				</div>
				<div class="signup_password_text">
					<input type="text" id="password" name="password"
						size="32" maxlength="20" required />
				</div>
				<div class="signup_password_confirm">
					<h5>비밀번호 재확인</h5>
				</div>
				<div class="signup_password_confirm_text">
					<input type="text" id="signup_password_confirm"
						name="signup_password_confirm" size="32" maxlength="20" required />
				</div>
				<div class="signup_name">
					<h5>이름</h5>
				</div>
				<div class="signup_name_text">
					<input type="text" id="name" name="name" size="32"
						maxlength="20" required />
				</div>
				<div class="signup_birth">
					<h5>생년월일</h5>
				</div>
				<div class="signup_birth_text">

					<input type="text" id="birth" name="birth"
						size="32" maxlength="8" placeholder="생년월일8자리를 입력해주세요." required />

				</div>
				<div class="signup_gender">
					<h5>성별</h5>
				</div>
				<div class="signup_gender_text">
					<select id="gender" name="gender">
						<option value="select" disabled selected>선택</option>
						<option value="male">남성</option>
						<option value="female">여성</option>
						<option value="other">선택안함</option>
					</select>
				</div>
				<div class="signup_email">
					<h5>본인확인 이메일</h5>
				</div>
				<div class="signup_email_text">
					<input type="text" id="email" name="email"
						size="32" maxlength="24" required /> <input type="button"
						onclick="signup_email_text_confirm()" value="중복확인" />
				</div>

				<div class="signup_phonenumber">
					<h5>휴대전화</h5>
				</div>

				<div class="signup_phonenumber_text">
					<input type="text" id="phoneNum" name="phoneNum" placeholder="'-'를 제외하고 입력하세요." size="32"
						maxlength="24" required />
				</div>

				<div class="signup_button">
					<input type="submit" value="가입하기" />
				</div>


				<div class="signup_law">
					<li><a href="./company_using_law.jsp">이용약관 </a> |</li>
					<li><a href="./company_personal_info_law.jsp">개인정보처리방침 </a> |</li>
					<li><a href="./company_financial_transation_law.jsp">책임의 한계와 법적고지 </a> |</li>
					<li><a href="#">회원정보 고객센터</a></li>
				</div>

				<div class="signin_copyright">Copyright © FINDO Corp. All
					Rights Reserved.</div>
			</div>
		</div>
	</form>
</body>
</html>