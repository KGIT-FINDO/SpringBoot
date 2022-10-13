<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>

<div class="index_bell_wrapper">
    <div class="index_bell_main_top">
        <div id="bCont_wrap">
            <div id="bDel_wrap">
                <h2 class="bDel_title">게시판 삭제</h2>
                <form method="post" action="board_del_ok">
                    <input type="hidden" name="board_no" value="${b.board_no}"/>
                    <input type="hidden" name="page" value="${page}" />
                    <div id="bDel_menu">
                        <input type="submit" value="삭제" /><input type="reset" value="취소" onclick="$('#del_pwd').focus()"/>
                        <input type="button" value="목록" onclick="location='commuity?page=${page}';"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="./footer.jsp" %>