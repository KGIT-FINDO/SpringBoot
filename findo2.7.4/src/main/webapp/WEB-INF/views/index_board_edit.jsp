<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>

<div class="index_bell_wrapper">
    <div class="index_bell_main_top"> </div>
    <div class="index_bell_main_middle">

        <div id="bWrite_wrap">
            <h3 class="bWrite_title">수정중</h3>
            <form method="post" action="/board_edit_ok">
                <input type="hidden" name="board_no" value="${b.board_no}"/>
                <table id="bWrite_t">
                    <tr>
                        <th>제목</th>
                        <td><input name="board_title" id="board_title" size="35" value="${b.board_title}"/></td>
                    </tr>

                    <tr>
                        <th>내용</th>
                        <td><textarea name="board_cont" id="board_cont" rows="9"
                                      cols="36" >${b.board_cont}</textarea></td>
                    </tr>
                </table>
                <div id="bWrite_menu">
                    <input type="submit" value="저장" /> <input type="reset" value="취소"
                                                              onclick="$('#board_name').focus();" /> <input type="button"
                                                                                                            value="목록" onclick="location='community?page=${page}';" />
                    <%-- board_list.do?page=쪽번호가 get 방식으로 전달됨 =>  내가 본 페이지로 바로 이동하는 책갈피 기능.--%>
                </div>
            </form>
        </div>

    </div>
    <div class="index_bell_main_bottom"> </div>
</div>

<%@ include file="./footer.jsp" %>
