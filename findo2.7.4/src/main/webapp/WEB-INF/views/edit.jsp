<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="Downloads/Findo (3)/Findo/WebContent/css/stylesheet.css" rel="stylesheet" />
    <script src="Downloads/Findo (3)/Findo/WebContent/js/jquery.js"></script>
    <script type="text/javascript" src="Downloads/Findo (3)/Findo/WebContent/js/javascript.js"></script>
    <script src="https://kit.fontawesome.com/08cf8c1353.js" crossorigin="anonymous"></script>
</head>
<body>
<form method="post" action="member_join_ok.do">

    <div class="signup_wrapper">
        <div class="signup_wrapper_container">

            <div class="signup_logo">
                <img src="Downloads/Findo (3)/Findo/WebContent/images/default.png" />
            </div>
            <div class="signup_id">
                <h3>아이디</h3>
            </div>
            <div class="signup_id_text">
                ${id}
            </div>
            <div class="signup_password">
                <h3>비밀번호</h3>
            </div>
            <div class="signup_password_text">
                <input type="text" id="signup_password" name="signup_password"
                       size="32" maxlength="20" required />
            </div>
            <div class="signup_password_confirm">
                <h3>비밀번호 재확인</h3>
            </div>
            <div class="signup_password_confirm_text">
                <input type="text" id="signup_password_confirm"
                       name="signup_password_confirm" size="32" maxlength="20" required />
            </div>
            <div class="signup_name">
                <h3>이름</h3>
            </div>
            <div class="signup_name_text">
                <input type="text" id="signup_name" name="signup_name" size="32"
                       maxlength="20" value="${m.name}" required />
            </div>
            <div class="signup_birth">
                <h3>생년월일</h3>
            </div>
            <div class="signup_birth_text">

                <input type="text" id="signup_birth_text" name="signup_birth_text"
                       size="32" maxlength="8" value="${m.birth}" placeholder="생년월일8자리를 입력해주세요." required />

            </div>
            <div class="signup_gender">
                <h3>성별</h3>
            </div>
            <div class="signup_gender_text" >
                <select id="signup_gender_text" name="signup_gender_text" >
                    <option value="select" disabled selected>${m.gender}</option>
                    <option value="male">남성</option>
                    <option value="female">여성</option>
                    <option value="other">선택안함</option>
                </select>
            </div>
            <div class="signup_email">
                <h3>본인확인 이메일</h3>
            </div>
            <div class="signup_email_text">
                <input type="text" id="signup_email_text" name="signup_email_text"
                       size="32" value="${m.email}" maxlength="24" required /> <input type="button"
                                                                                      onclick="signup_email_text_confirm()" value="중복확인" />
            </div>

            <div class="signup_phonenumber">
                <h3>휴대전화</h3>
            </div>

            <div class="signup_phonenumber_text">
                <input type="text" id="signup_phonenumber_text" name="signup_phonenumber_text"placeholder="'-'를 제외하고 입력하세요." size="32"
                       value="${m.phoneNum}" maxlength="24" required />
            </div>

            <div class="signup_button">
                <input type="submit" value="가입하기" />
            </div>


            <div class="signup_law">
                <li><a href="#">이용약관 </a> |</li>
                <li><a href="#">개인정보처리방침 </a> |</li>
                <li><a href="#">책임의 한계와 법적고지 </a> |</li>
                <li><a href="#">회원정보 고객센터</a></li>
            </div>

            <div class="signin_copyright">Copyright © FINDO Corp. All
                Rights Reserved.</div>
        </div>
    </div>
</form>
</body>
</html>