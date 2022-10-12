<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<link rel="stylesheet" type="text/css" href="/css/stylesheet.css" />
<script src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/javascript.js"></script>
<script src="https://kit.fontawesome.com/08cf8c1353.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<%-- 전체적인 움직임 줄려면 wrapper class 이용하기; --%>
	<div class="wrapper_index">

		<%-- header --%>
		<%-- header 전체를 움직이고 싶으면 header class 이용하기 --%>
		<div class="header">

			<div class="header_top">
				<div class="header_top_togglebutton">
					<button id="header_top_togglebutton">
						<i class="fa-solid fa-bars fa-2x"></i>
					</button>
				</div>
				<div class="header_top_logo"></div>
				<div class="header_top_icons">
					<a href="/webapp/WEB-INF/views/index_bell.jsp"><button id="header_top_bell">
							<i class="fa-solid fa-bell fa-2x"></i>
						</button></a> <a href="/webapp/WEB-INF/views/index_search.jsp"><button id="header_top_search">
							<i class="fa-solid fa-magnifying-glass fa-2x"></i>
						</button></a>
					<a href="/webapp/WEB-INF/js/logout.jsp"><button><i class="fa-solid fa-right-to-bracket fa-2x"></i></button></a>
				</div>
			</div>
			<%-- block --%>

			<div class="header_middle">
				<a href="/"><input type="button" value="홈" /></a>
				<a href="/portfolio"><input type="button" value="포트폴리오" /></a>
				<a href="/community"><input type="button" value="커뮤니티" /></a>
				<a href="/news"><input type="button" value="뉴스" /></a>
			</div>
			<%
				if(session.getAttribute("id") != null) {
				String nick = (String)session.getAttribute("id");
			%>
			<p style="text-align: center;"><%=nick%> 님이 로그인 중입니다.</p>
			<%} else {%>
			<div class="header_bottom">
                <%
                    if(session.getAttribute("id") != null) {
                        String nick = (String)session.getAttribute("id");
                %>
                <p style="text-align: center;"><%=nick%> 님이 로그인 중입니다.</p>
                <%} else {%>
				<div class="header_bottom_write">
					<p>로그인을 하려면 아래의 버튼을 누르시오</p>
				</div>
				<div class="header_bottom_button">
					<a href="/signin"><input type="button" value="로그인" /></a>
				</div>
			</div>
			<%-- heaer_bottom class 닫는 마지막 /div --%>
            <%}%>
		</div>
			<% } %>
		<%-- header class 닫는 마지막 /div --%>


		<%-- ******	plz cut here	header part split to /include/heaer.jsp 	******	--%>


		<%-- main --%>
		<%-- main 전체를 움직이고 싶으면 main class 이용하기 --%>
		<div class="main">

			<%-- main_top 움직이고 싶으면 main_top 이용하기 --%>
			<div class="main_top" style="cursor: pointer;"
				onclick="location.href='./index_company.jsp';">
				<a href="./index_company.jsp">자산배분 및 포트폴리오 전략 목돈마련</a>
			</div>
			<div class="main_top_top" style="cursor: pointer;"
				onclick="location.href='./index_products.jsp';">
				<a href="/webapp/WEB-INF/views/index_products.jsp">최적의 자산 운용 서비스의 개시</a>
			</div>
			<div class="main_top_middle" style="cursor: pointer;"
				onclick="location.href='./index_management.jsp';">
				<a href="/webapp/WEB-INF/views/index_management.jsp">차별화된 전략을 통한 자산관리 서비스</a>
			</div>
			<div class="main_top_bottom" style="cursor: pointer;"
				onclick="location.href='./index_investment.jsp';">
				<a href="/webapp/WEB-INF/views/index_investment.jsp">글로벌화된 자산시장에 투자</a>
			</div>

			<%-- main_middle 움지이고 싶으면 main_middle 이용하기 --%>
			<div class="main_up_middle"></div>
			<div class="main_up_middle_top" style="cursor: pointer;"
				onclick="location.href='https://www.apple.com/kr/?afid=p238%7CsiADh6hbK-dc_mtid_18707vxu38484_pcrid_620523511820_pgrid_16348496961_pntwk_g_pchan__pexid__&cid=aos-kr-kwgo-Brand--slid---product-';"></div>
				<div class="main_up_middle_middle">
					<img src="/images/tmp.gif" style="width:400px; height:300px; margin-bottom:300px; border-radius: 16px;"/>
				</div>
			<div class="main_up_middle_bottom" style="cursor: pointer;"
				onclick="location.href='https://www.bhc.co.kr/mobile/';"></div>

			<%-- main_middle 움지이고 싶으면 main_middle 이용하기 --%>
			<div class="main_middle"></div>
			<div class="main_middle_top"></div>
				<div class="main_middle_middle">
					<img src="/images/money1.gif" style="width:400px; height:300px; margin-bottom:300px; border-radius: 16px;"/>
				</div>
			<div class="main_middle_bottom" style="cursor: pointer;"
				onclick="location.href='https://goodrichmall.com/total_sum?inType=GKAB&gclid=EAIaIQobChMIgKTzh-eY-gIV1KmWCh24rAiZEAAYASAAEgLn_PD_BwE';"></div>

			<%-- main_bottomd 움직이고 싶으면 main_bottom 이용하기 --%>
			<div class="main_bottom">
				<a href="">자산 배분을 위한 솔루션</a>
			</div>
			<div class="main_bottom_top"></div>
			<div class="main_bottom_middle"></div>
			<div class="main_bottom_bottom" id="career"></div>

		</div>

		<%-- ******	please cut here!	footer part split to /include/footer.jsp 	******	--%>

		<%-- footer --%>
		<%-- footer 전체를 움직이고 싶으면 footer class 이용하기 --%>
		<div class="footer">
			<div class="footer_top">
				<div class="footer_top_list">
					<li><a href="#">Home</a></li>
					<li><a href="/webapp/WEB-INF/views/index_company.jspny.jsp">Company</a></li>
				</div>
				<div class="footer_top_list">
					<li><a href="/webapp/WEB-INF/views/index_investment.jspnt.jsp">Investment</a></li>
					<li><a href="/webapp/WEB-INF/views/index_products.jspts.jsp">Products</a></li>
				</div>
				<div class="footer_top_list">
					<li><a href="/webapp/WEB-INF/views/index_faq.jspaq.jsp">FAQ</a></li>
					<li><a href="/webapp/WEB-INF/views/index_management.jspnt.jsp">Management</a></li>
				</div>
			</div>


			<div class="footer_middle"></div>

			<div class="footer_bottom">

				<div class="footer_bottom_top_list">
					<li><a href="/webapp/WEB-INF/views/company_using_law.jspaw.jsp">핀도이용약관</a></li>
					<li><a href="/webapp/WEB-INF/views/company_financial_transation_law.jspaw.jsp">전자금융거래이용약관</a></li>
				</div>
				<div class="footer_bottom_top_list">
					<li><a href="/webapp/WEB-INF/views/company_personal_info_law.jspaw.jsp">개인정보처리방침</a></li>
					<li><a href="/webapp/WEB-INF/views/company_management_announcement.jspnt.jsp">경영공지</a></li>
				</div>
			</div>

			<div class="footer_bottom_middle">
				<p>주식회사 핀도</p>
				<p>사업자등록번호 502-10923-12</p>
				<p>대표 정범수</p>
				<p>서울특별시 강남구 강남대로 84길(역삼동)</p>
			</div>

			<div class="footer_bottom_bottom">
				<div class="footer_bottom_bottom_top">
					<span>Copyright © FINDO Corp. All Rights Reserved.</span>
				</div>
				<div class="footer_bottom_bottom_middle">
					<button>
						<a href="https://www.facebook.com/campaign/landing.php?&campaign_id=1654655180&extra_1=s%7Cc%7C318651279253%7Ce%7Cfacebook%27%7C&placement=&creative=318651279253&keyword=facebook%27&partner_id=googlesem&extra_2=campaignid%3D1654655180%26adgroupid%3D63137639963%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D%26target%3D%26targetid%3Dkwd-362360550869%26loc_physical_ms%3D1009871%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=EAIaIQobChMIpKbnrvSY-gIV1cIWBR15NQ3OEAAYASAAEgL-ovD_BwE"><i
							class="fa-brands fa-square-facebook fa-2x"></i></a>
					</button>
					<button>
						<a href="https://www.instagram.com/"><i
							class="fa-brands fa-square-instagram fa-2x"></i></a>
					</button>
					<button>
						<a href="https://twitter.com/i/flow/login"><i
							class="fa-brands fa-square-twitter fa-2x"></i></a>
					</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>