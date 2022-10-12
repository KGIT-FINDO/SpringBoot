<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="Documents/springboot/findo2.7.4/src/main/webapp/WEB-INF/include/header.jsp" %>

<div class="index_bell_wrapper">

	<div class="index_bell_main_middle">
		<div id="bList_wrap">
			<form method="get" action="/index_community"> <%-- 검색기능 폼 추가 --%>

				<table>
					<tr style="text-align: center;">
						<th width="21%" height="26">번호</th>
						<th width="35%">제목</th>
						<th width="14%">글쓴이</th>
						<th width="17%">작성일</th>
						<th width="14%">Hit</th>
					</tr>

					<c:if test="${!empty blist}"> <%-- 검색전후 목록이 있는 경우 실행 --%>
						<c:forEach var="b" items="${blist}">
							<tr>

								<td align="center">${b.board_no}</td>
									&nbsp;<%--한칸의 빈공백 --%>


								<td style="text-align: center;">
									<a href="board_cont.do?board_no=${b.board_no}&page=${page}&state=cont" style="text-decoration: none; color:black;">${b.board_title}</a>
										<%-- *.do?board_no=번호&page=쪽번호&state=cont 주소창에 노출되는 get방식(쿼리스트링 방식)으로 3개의 피라미터
                                        값을 &기호로 구분해서 전달함. --%>
								</td>
								<td align="center">${b.board_name}</td>
								<td align="center">${b.board_date}</td>
								<td align="center">${b.board_hit}</td>
							</tr>
						</c:forEach>
					</c:if>

					<c:if test="${empty blist}">
						<tr>
							<th colspan="5">게시물 목록이 없습니다.</th>
						</tr>
					</c:if>
				</table>

				<%--검색전후 페이징(쪽나누기) --%>
				<div id="bList_paging">
					<%--검색 전 페이징 --%>
					<c:if test="${(empty find_field) && (empty find_name)}"> <%--검색필드와 검색어가 없는 경우 --%>
						<c:if test="${page<=1}">
							[이전]&nbsp;
						</c:if>
						<c:if test="${page>1}">
							<a href="board_list.do?page=${page-1}" style="text-decoration: none; color:black;">[이전]</a>&nbsp;
						</c:if>

						<%--현재 쪽번호 출력 --%>
						<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
							<c:if test="${a == page}"> <%-- 현재 페이지가 선택된 경우 --%>
								<${a}>
							</c:if>
							<c:if test="${a != page}"> <%--현재페이지가 선택 안된 경우 --%>
								<a href="board_list.do?page=${a}" style="text-decoration: none; color:black;">[${a}]</a>&nbsp;
							</c:if>
						</c:forEach>

						<c:if test="${page >= maxpage}">
							[다음]
						</c:if>
						<c:if test="${page < maxpage}">
							<a href="board_list.do?page=${page+1}" style="text-decoration: none; color:black;">[다음]</a>
						</c:if>
					</c:if>

					<%--검색이후 페이징(쪽나누기)--%>
					<c:if test="${(!empty find_field) || (!empty find_name)}">
						<c:if test="${page<=1}">
							[이전]&nbsp;
						</c:if>
						<c:if test="${page>1}">
							<a href="board_list.do?page=${page-1}&find_field=${find_field}&find_name=${find_name}" style="text-decoration: none; color:black;">[이전]</a>&nbsp;
							<%--get으로 find_field와 find_name을 전달해야 검색이후 페이징 목록을 유지한다. 검색필드와 검색어를 전달하지 않으면
                            검색전 전체 페이징 목록으로 이동해서 검색효과가 사라진다. --%>
						</c:if>

						<%--현재 쪽번호 출력 --%>
						<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
							<c:if test="${a == page}"> <%-- 현재 페이지가 선택된 경우 --%>
								<${a}>
							</c:if>
							<c:if test="${a != page}"> <%--현재페이지가 선택 안된 경우 --%>
								<a href="board_list.do?page=${a}&find_field=${find_field}&find_name=${find_name}" style="text-decoration: none; color:black;">[${a}]</a>&nbsp;
							</c:if>
						</c:forEach>

						<c:if test="${page >= maxpage}">
							[다음]
						</c:if>
						<c:if test="${page < maxpage}">
							<a href="board_list.do?page=${page+1}&find_field=${find_field}&find_name=${find_name}" style="text-decoration: none; color:black;">[다음]</a>
						</c:if>
					</c:if>
				</div>

				<div id="bListW_menu">
					<input type="button" value="글쓰기" onclick="location='/front2/html/index_BoardWrite.jsp';" />
					<%--?page=페이지번호를 get으로 전달해야 책갈피 기능이 페이징에서 구현된다. --%>
					<c:if test="${(!empty find_field) && (!empty find_name)}"> <%--검색이후 --%>
						<input type="button" value="전체목록" onclick="location='board_list.do?page=${page}';" />
					</c:if>
				</div>

				<%-- 검색폼 추가 --%>
				<div>
					<table>
						<tr>
							<th>
								<select name="find_field">
									<option value="board_title" <c:if test="${find_field =='board_title'}"> ${'selected'}
									</c:if>>제목</option>

									<option value="board_cont" <c:if test="${find_field == 'board_cont'}">${'selected'}
									</c:if>>내용</option>
								</select>

								<input type="search" name="find_name" value="${find_name}" size="16" />
								<input type="submit" value="검색" />
							</th>
						</tr>
					</table>
				</div>

			</form>
		</div>

<%@ include file="Documents/springboot/findo2.7.4/src/main/webapp/WEB-INF/include/footer.jsp" %>