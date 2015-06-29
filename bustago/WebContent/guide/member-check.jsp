<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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

<script type="text/javascript" src="/js/jquery/jquery-2.0.0.js"></script>
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
<script type="text/javascript">
$(document).ready(function() {
	$("a#submitBtn").click(function() {
		if ($("input[id=m_NAME]").val().length == 0 || $("input[id=M_EMAIL]").val().length == 0) {
			alert('이름 | E-MAIL을 확인하여주세요');
			$("input[id=m_NAME]").val('');
			$("input[id=M_EMAIL]").val('');
			return;
		} else {
			$("form#idform").submit();S
		}
	});
	
	$("a#leftMenu01").click(function() {
		$("div.dvwrap").hide();

		$.ajax({
			url : '/guide/login.jsp',
			dataType : 'html',
			success : function(data) {
				$("div.dvwrap").html(data);
				$("div.dvwrap").show();
			}
		});
	});
	
	$("a#leftMenu02").click(function() {
		$("div.dvwrap").hide();
		$.ajax({
			url : '/guide/member.jsp',
			dataType : 'html',
			success : function(data) {
				$("div.dvwrap").html(data);
				$("div.dvwrap").show();
			}
		});
	});
	
	$("a#leftMenu03").click(function() {
		$("div.dvwrap").hide();
		$.ajax({
			url : '/guide/member-idcheck.jsp',
			dataType : 'html',
			success : function(data) {
				$("div.dvwrap").html(data);
				$("div.dvwrap").show();
			}
		});
	});
	
	$("a#leftMenu04").click(function() {
		$("div.dvwrap").hide();
		$.ajax({
			url : '/guide/member-pwcheck.jsp',
			dataType : 'html',
			success : function(data) {
				$("div.dvwrap").html(data);
				$("div.dvwrap").show();
			}
		});
	});
});
</script>
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

		<div class="container bg7">
			<div class="location">
				<a href="/kr/index.do" class="home">HOME</a> &gt; 
				<a>회원정보</a> &gt; 
				<a class="state">아이디 찾기</a>
			</div>

			<h2 class="title">
				<img src="/images/member/h2.gif" alt="회원정보" />
			</h2>

			<div class="contents">
				<div class="lnbs">
					<p class="lnbt">
						<img src="/images/reserve/lnb_tit.gif" alt="" />
					</p>
					<div class="slnb">
						<ul class="lnb">
							<li class="sta"><a id="leftMenu01">로그인</a></li>
							<li><a id="leftMenu02">회원가입</a></li>
							<li><a id="leftMenu03">아이디 찾기</a>
							<li class="end"><a id="leftMenu04">비밀번호 찾기</a></li>
						</ul>
					</div>
				</div>
				
				<div class="content" id="Content">
					<table class="member" summary="이름, 인증방법">
						<caption>회원정보</caption>
						<colgroup>
							<col style="width: 15%;" />
							<col style="" />
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="ee"><label for="name">아이디</label></th>
								<td>${ibean.m_ID}</td>
							</tr>
							<tr>
								<th scope="row" class="ee"><label for="name">비밀번호</label></th>
								<td>${pbean.m_PW}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			function onopenPopup() {
				var url = "http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1298638970";
				window.open(url, "communicationViewPopup",
						"width=730, height=650;");
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
				<img src="/images/main/footer_copyright.gif" alt="(주)이비카드, 사업자등록번호: 129-86-38970, 통신판매업 2013-경기성남-1165,  서울시 금천구 가산디지털2로 179(가산동 533-2),  콜센터 1644-2992,  interoper@lotte.net" />
			</p>
		</div>
		<script type="text/javascript">
			if (self.name != "") {
				document.writeln("<div><a href='https://m.bustago.or.kr:444/mobus' style='display:block; width:640px; margin:0 auto;' target=\"_top\" ><img src='/images/main/bustago_mobile_icon.gif' alt='모바일 웹사이트로 이동' width='640' height='83' /></a></div>");
			}
		</script>
	</div>
</body>
</html>