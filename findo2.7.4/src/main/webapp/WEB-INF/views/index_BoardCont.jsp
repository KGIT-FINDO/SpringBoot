<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="Documents/springboot/findo2.7.4/src/main/webapp/WEB-INF/include/header.jsp" %>

<div class="index_bell_wrapper">
    <div class="index_bell_main_top">
        <div id="bCont_wrap">
            <h2 class="bCont_title">게시판 내용보기</h2>
            <table id="bCont_t">
                <tr>
                    <th>글제목</th><td>${bc.board_title}</td>
                </tr>
                <tr>
                    <th>글내용</th><td>${bc.board_cont}</td>
                </tr>
                <tr>
                    <th>조회수</th><td>${bc.board_hit}</td>
                </tr>
                <tr>
                    <th>글쓴이</th><td>${bc.board_name}</td>
                </tr>
            </table>
            <div id="dCont_menu">
                <input type="button" value="수정" onclick="location='board_cont.do?board_no=${bc.board_no}&page=${page}&board_name=${bc.board_name}&state=edit';"/>
                <input type="button" value="삭제" onclick="location='board_cont.do?board_no=${bc.board_no}&page=${page}&board_name=${bc.board_name}&state=del';"/>
                <input type="button" value="목록" onclick="location='board_list.do?page=${page}';"/>
            </div>
        </div>
    </div>
</div>

<%@ include file="Documents/springboot/findo2.7.4/src/main/webapp/WEB-INF/include/footer.jsp" %>