<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
<form method="post" action="/search_list">
    <div class="search_wrapper">
        <div class="search_main">
            <a href="/"><img src="/images/logo_black.png" width=150 /></a>
            <div class="input-area">
                <i class="fa-solid fa-magnifying-glass search-icon"></i>
                <input type="text" id="find_name" name="find_name" class="input-box" maxlength="20" placeholder="종목명 /코드 검색" />
            </div>
            <div class="search-list">
                <table>
                    <tr style="text-align: center;">
                        <th width="50%" height="26">종목명</th>
                        <th width="50%">종목코드</th>
                    </tr>
                    <c:if test="${!empty slist}"> <%-- 검색전후 목록이 있는 경우 실행 --%>
                        <c:forEach var="s" items="${slist}">
                            <tr>

                                <td align="center">${s.stocknumber}</td>
                                &nbsp;<%--한칸의 빈공백 --%>

                                <td style="text-align: center;">
                                    <a href="stock_cont?stocknumber=${s.stocknumber}" style="text-decoration: none; color:black;">${s.stockname}</a>
                                        <%-- *.do?board_no=번호&page=쪽번호&state=cont 주소창에 노출되는 get방식(쿼리스트링 방식)으로 3개의 피라미터
                                        값을 &기호로 구분해서 전달함. --%>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>

                    <c:if test="${empty slist}">
                        <tr>
                            <th colspan="5">검색한 종목이 없습니다.</th>
                        </tr>
                    </c:if>
                </table>
            </div>
            <div class="language-area">Findo offered in: 한국어 English
            </div>
        </div>
    </div>
</form>
</body>
</html>