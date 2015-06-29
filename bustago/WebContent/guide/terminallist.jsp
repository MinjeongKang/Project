<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="utf-8" lang="utf-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>	
<title>BusTago</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Expires" content="1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta name="keywords" content="시외버스, 시외버스 예매, 시외버스터미널, 터미널, 서울남부터미널, 서울 남부 터미널, 서울남부터미널 예매, 서울남부터미널 예매,시외버스터미널 예매, 시외버스 요금, 시외버스 시간표"> 
<meta name="description" content="시외버스  예매 시외버스 터미널 예매  서울남부터미널 서울 남부 터미널 예매, 서울 남부 터미널 예매 시외버스터미널  시외버스 요금 시외버스 시간표 ">
		
<link type="text/css" rel="stylesheet" media="screen" href="/css/jquery.fancybox.css" />
<link type="text/css" rel="stylesheet" href="/css/skins/all.css?v=1.0.2"/>
<link type="text/css" rel="stylesheet" href="/css/jquery.ui.css" />
<link type="text/css" rel="stylesheet" href="/css/jquery.loading.min.css" />
<link type="text/css" rel="stylesheet" href="/css/buttons.css"/>
<link type="text/css" rel="stylesheet" href="/css/global.css"/>
<link type="text/css" rel="stylesheet" media="screen" href="/css/jquery.select2.css" />

<script type="text/javascript" src="/js/jquery/jquery-1.9.1.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.json2.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.filterJSON.plugin.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.fancybox.js?v=2.1.5"></script>
<script type="text/javascript" src="/js/jquery/jquery-ui.min.js"></script>	
<script type="text/javascript" src="/js/jquery/jquery-migrate-1.2.1.js"></script>	
<script type="text/javascript" src="/js/jquery/jquery.simplemodal-1.4.4.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.pagenavigator.js"></script>		
<script type="text/javascript" src="/js/jquery/jquery.flexslider.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.noty.packaged.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.loading.min.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.icheck.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.number.min.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.Checkbox.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.form.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.bxslider.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.select2.js"></script>

<script type="text/javascript" src="/js/common/common.js"></script> 		
<script type="text/javascript" src="/js/common/design.js"></script>
<script type="text/javascript" src="/js/common/calendar.js"></script>

<script type="text/javascript" src="/js/netfunnel/netfunnel-2.1.16-bustago.js"></script> 
<script type="text/javascript" src="/js/netfunnel/skin.js"></script> 
<style>
#simplemodal-overlay {
	background-color:#000;
}
</style>
</head>

<body>
	<div class="invisible">
		<p>바로가기</p>
		<ul>
			<li><a href="#Gnb">주메뉴 바로가기</a></li>
			<li><a href="#Lnb">주메뉴 바로가기</a></li>
			<li><a href="#Content">컨텐츠 바로가기</a></li>
		</ul>
	</div>

	<div class="dvwrap">
		<div id="Gnb" class="headers">
			<h1>
				<a href="/index.jsp"><img src="/images/main/logo.gif" alt="버스타자 로고" /></a>
			</h1>
			<div class="tinfo">
				<ul>
					<li id="loginOutBtn">
					<%
						if (session.getAttribute("M_ID") == null) {
					%>
						<a href="/guide/login.jsp">
							<input id="ckLogin1" name="ckLogin1" type="image" src="/images/main/gnbs_01.gif" alt="로그인" />
						</a>
					<%
						} else {
					%>
						${M_ID}님 어서오세요
						<a href="/guide/logout.jsp">
							<input id="ckLogin2" name="ckLogin2" type="image" src="/images/main/gnbs_logout.gif" alt="로그아웃" ">	
						</a>
					<%
						}
					%>
					</li>
					<li id="certificate">
						<a href="/guide/member.jsp"><img src="/images/main/gnbs_02.gif" alt="회원가입" /></a>
					</li>

					<li>
						<a href="/member/mypageAction.action"><img src="/images/main/gnbs_03.gif" alt="마이페이지" /></a>
					</li>
					<%
						if (session.getAttribute("M_ID") != null) {
							if (session.getAttribute("M_ID").equals("scott")) {
					%>
					<li>
						<a href="/bustagoApp/AdminMemberAction.action">
							<input id="admin" name="admin" type="button" value="관리자">
						</a>
					<li>
					<%
							}
						}
					%>
				</ul>
			</div>
			
			<div class="gnb">
				<div class="gnbbox"></div>
				<ul class="menus">
					<li id="menu01">
						<a href="/guide/ticket.jsp"><img src="/images/common/gnb01.png" alt="승차권예매" /></a><br /> 
						<span class="pic mg01"><img src="/images/common/gnb01_pic.png" alt="승차권예매" /></span>
						<ul class="gnb01">
							<li><a href="/guide/ticket.jsp">예매/발권</a></li>
						</ul>
					</li>
					
					<li id="menu02">
						<a href="#"><img src="/images/common/gnb02.png" alt="승차권조회" /></a><br /> 
						<span class="pic mg02"><img src="/images/common/gnb02_pic.png" alt="승차권조회" /></span>
						<ul class="gnb02">
							<li><a href="#">조회/변경/취소</a></li>
						</ul>
					</li>
					
					<li id="menu03">
						<a href="/guide/map.jsp"><img src="/images/common/gnb03.png" alt="운행정보" /></a><br /> 
						<span class="pic mg03"><img src="/images/common/gnb03_pic.png" alt="운행정보" /></span>
						<ul class="gnb03">
							<li><a href="/guide/map.jsp">운행/노선 정보</a></li>
							<li><a href="/bustagoApp/comListAction.action">버스회사 안내</a></li>
						</ul>
					</li>
					
					<li id="menu04">
						<a href="/guide/terminallist.jsp"><img src="/images/common/gnb04.png" alt="터미널정보" /></a><br /> 
						<span class="pic mg04"><img src="/images/common/gnb04_pic.png" alt="터미널정보" /></span>
						<ul class="gnb04">
							<li><a href="/guide/terminallist.jsp">터미널 안내</a></li>
						</ul>
					</li>
					
					<li id="menu05">
						<a href="/guide/notice.jsp"><img src="/images/common/gnb05.png" alt="고객센터" /></a><br /> 
						<span class="pic mg05"><img src="/images/common/gnb05_pic.png" alt="고객센터" /></span>
						<ul class="gnb05">
							<li><a href="/bustagoApp/noticeAction.action">공지사항</a></li>
							<li><a href="/guide/faq.jsp">FAQ</a></li>
							<li><a href="/guide/question.jsp">1 : 1 문의</a></li>
							<li><a href="/bustagoApp/lostListAction.action">유실물센터</a></li>
						</ul>
					</li>
					
					<li id="menu06">
					<a href="/guide/info.jsp"><img src="/images/common/gnb06.png" alt="이용안내" /></a><br /> 
					<span class="pic mg06"><img src="/images/common/gnb06_pic.png" alt="이용안내" /></span>
						<ul class="gnb06">
							<li><a href="/guide/info.jsp">서비스 안내</a></li>
							<li><a href="/guide/guideticket.jsp">승차권 예매 안내</a></li>
							<li><a href="/guide/guidehometicket.jsp">홈티켓 발권/취소 안내</a></li>
							<li><a href="/guide/guidecharge.jsp">취소 수수료 안내</a></li>
							<li><a href="/guide/guidemobile.jsp">모바일 이용 안내</a></li>
							<li><a href="/guide/guidesetup.jsp">설정안내</a></li>
							<li><a href="/guide/guidecharacter.jsp">캐릭터 안내</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>

		<div class="container bg4">
			<div class="location">
				<a href="/kr/index.do" class="home">HOME</a> &gt; <a
					href="/kr/terminalInfo/terminallist.do">터미널정보</a> &gt; <a
					class="state">터미널 안내</a>
			</div>

			<h2 class="title">
				<span> <img id="lnbTitle" src="/images/terminal/h2.gif"
					alt="교통의 허브인 터미널 위치와 댜양한 편의 서비스 정보를 제공하고 있습니다." />
				</span>
			</h2>

			<div class="contents" id="Contents">
				<div class="lnbs" id="Lnb">
					<p class="lnbt">
						<img src="/images/reserve/lnb_tit.gif" alt="버스타고" />
					</p>
					<div class="slnb">
						<ul class="lnb none" id="terminalInfo">
							<li class="sta"><a href="/kr/terminalInfo/terminallist.do">터미널
									안내</a></li>
						</ul>
					</div>
				</div>

				<div class="content" id="Content">
					<h3 class="stit">
						<img src="/images/terminal/h3_terminal.gif" alt="터미널 안내" />
					</h3>

					<p class="tertxt">
						<strong>지도에서 지역</strong>을 선택하시면, 터미널 리스트가 보여집니다.
					</p>
					<div class="mapbox">
						<div class="map_l">
							<strong class="tit">전국</strong>
							<div class="map1">
								<img src="/images/terminal/map_all.png" alt="전국지도"
									usemap="#amap" />
								<map name="amap" id="amap">
									<area href="#Content" alt="강원도" title="강원도" class="20"
										class2="1" id="map_gangwon" shape="poly"
										coords="68,36,79,30,90,31,100,28,109,31,112,31,115,30,120,31,125,31,131,28,138,22,138,14,143,8,148,13,151,24,156,36,166,51,183,74,188,76,189,81,190,84,194,93,204,108,200,112,200,116,197,120,193,120,186,119,182,122,174,122,171,123,166,119,158,123,156,124,153,120,143,120,139,122,138,118,138,114,132,112,125,111,123,111,120,112,110,112,108,107,107,97,109,88,108,82,103,80,98,78,97,77,97,74,99,70,100,68,98,63,96,54,93,52,92,52,88,47,86,47,83,47,80,41,78,38,72,37">
									<area href="#Content" alt="서울" title="서울" class="00" class2="1"
										id="map_seoul" shape="poly"
										coords="54,78,58,72,64,71,70,70,76,72,83,76,83,80,86,85,82,91,78,91,71,93,66,96,64,92,62,94,58,88,56,85">
									<area href="#Content" alt="인천" title="인천" class="93" class2="2"
										id="map_inchon" shape="poly"
										coords="26,82,33,74,45,73,52,76,56,86,56,96,51,100,35,101,26,91">
									<area href="#Content" alt="경기도" title="경기도" class="10"
										class2="1" id="map_gyeonggi" shape="poly"
										coords="22,71,26,66,29,65,32,65,36,64,36,59,38,54,41,52,46,51,51,52,57,50,58,45,59,41,68,36,78,39,83,46,88,48,94,53,99,66,98,73,98,78,106,81,109,86,108,91,107,101,110,110,104,118,97,125,90,129,85,133,85,136,72,135,61,133,54,132,50,124,48,118,44,114,44,110,47,108,50,108,53,105,49,101,46,95,42,89,38,88,30,85,25,78">
									<area href="#Content" alt="대전" title="대전" class="95" class2="2"
										id="map_daejeon" shape="poly"
										coords="68,176,72,170,83,166,92,172,95,177,96,183,92,186,86,188,78,189,67,181">
									<area href="#Content" alt="충청남도" title="충청남도" class="40"
										class2="1" id="map_chungnam" shape="poly"
										coords="14,143,13,139,20,133,23,133,26,136,26,133,26,127,31,126,36,127,38,128,41,127,45,128,50,131,52,136,55,137,57,133,86,136,88,143,87,149,82,152,80,155,83,158,84,160,84,166,92,170,98,176,101,179,102,187,104,196,101,198,99,200,95,201,95,204,92,207,87,206,84,199,81,195,77,195,66,194,64,190,59,190,55,195,51,198,44,197,36,189,35,176,32,172,33,167,34,162,30,155,24,152,18,150,14,148">
									<area href="#Content" alt="충청북도" title="충청북도" class="30"
										class2="1" id="map_chungbuk" shape="poly"
										coords="135,139,138,140,143,141,148,139,152,132,155,123,152,120,144,120,138,119,131,111,121,112,110,112,106,116,94,127,84,133,88,139,87,144,86,150,80,155,85,161,84,166,90,170,101,179,104,196,108,199,113,199,118,201,119,194,122,184,117,177,115,171,115,165,112,161,117,153,123,145,131,142">
									<area href="#Content" alt="대구" title="대구" class="92" class2="2"
										id="map_daegu" shape="poly"
										coords="154,203,160,200,168,200,171,200,174,204,181,210,182,212,179,219,174,221,171,221,166,223,162,224,160,229,149,228,149,225,152,222,152,219,149,218,148,215,149,212,148,209,145,206,147,205">
									<area href="#Content" alt="경상북도" title="경상북도" class="50"
										class2="1" id="map_gyeongbuk" shape="poly"
										coords="208,135,208,114,204,107,200,112,200,116,198,119,185,119,183,121,170,123,166,119,154,124,150,136,145,140,136,140,132,140,128,143,121,146,118,150,114,158,113,163,116,168,117,177,123,186,123,192,119,197,118,208,124,212,125,216,134,216,134,218,132,228,144,230,151,229,159,228,163,233,170,231,183,230,187,226,213,226,216,225,218,206,220,198,220,194,213,195,210,195,208,196,208,174,212,166,208,158,211,144">
									<area href="#Content" alt="울산" title="울산" class="96" class2="2"
										id="map_ulsan" shape="poly"
										coords="193,242,186,236,185,227,189,226,206,226,215,226,213,232,213,239,207,248,202,255,200,248,196,243">
									<area href="#Content" alt="부산" title="부산" class="90" class2="2"
										id="map_busan" shape="poly"
										coords="161,266,160,262,167,258,177,256,181,255,186,250,193,247,195,242,200,249,202,254,195,265,188,274,178,273,169,269">
									<area href="#Content" alt="경상남도" title="경상남도" class="60"
										class2="1" id="map_gyeongnam" shape="poly"
										coords="98,255,102,252,104,246,102,238,102,232,105,226,103,220,106,217,117,207,125,214,133,216,133,227,150,229,157,229,162,231,177,232,186,227,186,237,191,239,196,244,182,252,181,255,172,257,166,258,160,263,162,266,158,276,158,278,159,278,164,278,165,277,168,278,170,281,168,288,162,297,156,295,154,290,149,285,145,282,133,282,126,278,124,274,122,277,121,282,112,280,112,275,108,271,104,263">
									<area href="#Content" alt="전라북도" title="전라북도" class="70"
										class2="1" id="map_jeonbuk" shape="poly"
										coords="43,197,50,198,55,195,62,190,64,190,66,194,73,194,76,195,82,196,89,205,92,208,94,206,94,202,98,200,101,198,103,196,107,198,112,199,118,200,118,208,115,208,112,212,105,217,102,221,102,224,104,228,104,232,100,234,100,238,103,241,103,247,103,252,100,254,95,255,88,251,84,256,78,255,75,253,70,252,67,248,65,244,60,244,58,247,55,247,53,244,49,243,46,244,44,250,39,254,34,252,24,252,28,247,30,241,33,236,35,235,37,235,40,235,40,234,42,231,38,230,34,228,34,224,36,220,40,217,42,216,45,216,48,217,49,216,48,211,48,208,42,205,41,202">
									<area href="#Content" alt="광주" title="광주" class="94" class2="2"
										id="map_gwangju" shape="poly"
										coords="38,267,44,260,50,257,54,257,57,258,61,258,68,263,67,266,67,272,63,276,58,280,52,281,50,282,36,280,36,271">
									<area href="#Content" alt="전라남도" title="전라남도" class="80"
										class2="1" id="map_gyeongnam" shape="poly"
										coords="78,297,78,299,76,305,79,310,83,310,90,304,90,296,88,289,90,286,96,286,97,292,98,298,103,297,107,294,107,290,106,290,101,284,102,282,109,277,108,272,106,264,97,254,92,252,86,252,83,255,74,253,71,252,65,245,60,244,58,246,56,246,50,243,44,245,42,250,39,254,33,252,25,251,22,255,22,260,24,263,26,267,22,264,18,264,16,266,18,270,20,270,23,273,22,276,19,277,19,279,24,283,24,288,30,288,29,291,30,298,24,296,22,294,18,295,17,297,16,302,19,305,25,309,28,312,32,309,31,313,29,316,32,322,36,322,40,318,45,318,48,313,48,310,50,313,56,312,62,310,66,304,72,300,76,299">
									<area href="#Content" alt="제주도" title="제주도" class="97"
										class2="2" id="map_jeju" shape="poly"
										coords="29,339,36,334,44,334,56,335,60,332,65,332,70,338,73,344,70,350,65,356,52,357,43,362,28,359,23,351">
								</map>
							</div>
						</div>
						<div class="map_r">
							<strong class="tit" id="domap"></strong>
							<div class="map2">
								<img src="/images/terminal/map_none.png" alt="지도상세"
									id="areaMap2" />
								<div class="station" style="top: 100px; left: 100px;"></div>
							</div>
						</div>
					</div>
					<a name="termList" id="termList"></a>
					<div id="terminallist_ajax"></div>
					<!-- //content -->
				</div>
			</div>
		</div>

		<script type="text/javascript">
		function onopenPopup() {
			var url = "http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1298638970";
			window.open(url, "communicationViewPopup", "width=730, height=650;");
		}
		</script>
		<div class="footer">
			<ul class="introduce">
				<li class="sta"><a href="/kr/etc/agreement.do"><img
						src="/images/main/footer_01.gif" alt="홈페이지 이용약관" /></a></li>
				<li><a href="/kr/etc/privacy.do"><img
						src="/images/main/footer_02.gif" alt="개인정보취급방침" /></a></li>
				<li><a href="/kr/etc/ebanking.do"><img
						src="/images/main/footer_03.gif" alt="전자금융거래 기본약관" /></a></li>
				<li><a href="/kr/etc/email.do"><img
						src="/images/main/footer_04.gif" alt="이메일무단수집거부" /></a></li>
				<li><a href="#"><img src="/images/main/footer_06.gif"
						alt="사업자정보" onclick="onopenPopup();" /></a></li>
			</ul>
			<div class="family">
				<span class="flink"><img src="/images/main/family.gif" alt="" /></span>
				<div class="flist">
					<ul>
						<li><a href="http://www.mltm.go.kr" target="_blank">국토교통부</a></li>
						<li><a href="http://www.visitkorea.co.kr" target="_blank">한국관광공사</a></li>
						<li><a href="http://www.bus.or.kr" target="_blank">전국버스운송사업조합연합회</a></li>
						<li><a href="http://www.sbus.or.kr" target="_blank">서울특별시버스운송사업조합</a></li>
						<li><a href="http://www.incheonbus.or.kr" target="_blank">인천광역시버스운송사업조합</a></li>
						<li><a href="http://www.daejeonbus.or.kr" target="_blank">대전광역시버스운송사업조합</a></li>
						<li><a href="http://www.ulsanbus.or.kr" target="_blank">울산광역시버스운송사업조합</a></li>
						<li><a href="http://www.gbus.or.kr" target="_blank">경기도버스운송사업조합</a></li>
						<li><a href="http://www.busta.or.kr" target="_blank">전라북도버스운송사업조합</a></li>
					</ul>
				</div>
			</div>
			<p class="address">
				<img src="/images/main/footer_copyright.gif"
					alt="(주)이비카드, 사업자등록번호: 129-86-38970, 통신판매업 2013-경기성남-1165,  서울시 금천구 가산디지털2로 179(가산동 533-2),  콜센터 1644-2992,  interoper@lotte.net" />
			</p>
			<!-- 2014-12-12 -->
			<!-- p class="address"><img src="/images/main/footer_copyright.gif" alt="" /></p-->
		</div>
		<script type="text/javascript">
		if (self.name != "") {
			document.writeln("<div><a href='https://m.bustago.or.kr:444/mobus' style='display:block; width:640px; margin:0 auto;' target=\"_top\" ><img src='/images/main/bustago_mobile_icon.gif' alt='모바일 웹사이트로 이동' width='640' height='83' /></a></div>");
		}
		</script>
	</div>
</body>
</html>