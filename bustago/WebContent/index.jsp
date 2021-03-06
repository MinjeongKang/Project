<%@page import="bustago.bean.MemberBean"%>
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
<link type="text/css" rel="stylesheet" href="/css/main.css"/>
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
<script type="text/javascript">
$(document).ready(function() {
	$("#reserveBtn").click(function() {
		if ($("#bus_no").val().length == 14) {
			$("form#frmSubmit").submit();
		} else {
			alert('예매창을 확인하여주세요');
		}
	});
});

function bdate_check1() {
	var b_date = $("#B_DATE1").val() + $("#B_DATE2").val() + $("#B_DATE3").val();
	$("#B_DATE").val(b_date)
}

function bdate_check2() {
	var b_date = $("#B_DATE1").val() + $("#B_DATE2").val() + $("#B_DATE3").val();
	$("#B_DATE").val(b_date)
}

function bdate_check3() {
	var b_date = $("#B_DATE1").val() + $("#B_DATE2").val() + $("#B_DATE3").val();
	$("#B_DATE").val(b_date)
}

function btime_check() {
	var b_no = $("#B_DATE").val() + $("#S_CODE").val() + $("#E_CODE").val() + $("#B_TIME").val();
	$("#bus_no").val(b_no);
}
</script>
</head>

<body class="main">
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
							if (session.getAttribute("M_ID").equals("admin")) {
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
							<li><a href="/guide/reservelist.jsp">조회/변경/취소</a></li>
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
	
		<div id="Content" class="container">
			<!-- //content -->
			<div class="mcont1">
				<div class="mreserve">
					<ul class="rtab">
						<li id="goTicketTab" class="selected">
							<a href="#" id="goTicket">
							<img src="/images/main/tab01.gif" alt="편도" /></a>
						</li>
					</ul>
					<div class="reservebox">
						<form action="/bustagoApp/ticketListAction.action" id='frmSubmit' name='frmSubmit' method='post'>
						<input type="hidden" id="startType" name="startType" value="S"/>
						<!-- 편도 : S / 완복 : D -->
						<!-- 수정 -->
						<table class="station">
							<tr>
								<th><label for="start">출발지</label></th>
								<td>
									<select id="S_CODE" name="S_CODE">
										<option value="empty" selected="selected">선택하세요</option>
										<option value="01">센트럴(서울호남)</option>
										<option value="02">곡성(곡성행)</option>
										<option value="03">괴산(괴산행)</option>
										<option value="04">군산(군산행)</option>
										<option value="05">기지시</option>
										<option value="06">김제</option>
										<option value="07">해남</option>
										<option value="08">대전청사</option>
										<option value="09">청주</option>
										<option value="11">강진</option>
										<option value="12">고창</option>
										<option value="13">고흥</option>
										<option value="14">나주(영산포행)</option>
										<option value="15">내포(홍성행)</option>
										<option value="16">녹동(녹동행)</option>
									</select>							
								</td>
							</tr>
							<tr>
								<th><label for="finish">도착지</label></th>
								<td>
									<select id="E_CODE" name="E_CODE">
										<option value="empty" selected="selected">선택하세요</option>
										<option value="01">센트럴(서울호남)</option>
										<option value="02">곡성(곡성행)</option>
										<option value="03">괴산(괴산행)</option>
										<option value="04">군산(군산행)</option>
										<option value="05">기지시</option>
										<option value="06">김제</option>
										<option value="07">해남</option>
										<option value="08">대전청사</option>
										<option value="09">청주</option>
										<option value="11">강진</option>
										<option value="12">고창</option>
										<option value="13">고흥</option>
										<option value="14">나주(영산포행)</option>
										<option value="15">내포(홍성행)</option>
										<option value="16">녹동(녹동행)</option>
									</select>
								</td>
							</tr>
						</table>

						<div class="times">
							<table class="time">
							<tr>
								<th><label for="go">출발 날짜</label></th>
								<td class="seletw">
									<select id="B_DATE1" name="B_DATE1" style="width:70px" onchange="javascript:bdate_check1()">
										<option value="15" selected="selected">2015년</option>
										<option value="16">2016년</option>
										<option value="17">2017년</option>
										<option value="18">2018년</option>
										<option value="19">2019년</option>
										<option value="20">2020년</option>
									</select>
									<select id="B_DATE2" name="B_DATE2" style="width:55px" onchange="javascript:bdate_check2()">
										<option value="01" selected="selected">01월</option>
										<option value="02">02월</option>
										<option value="03">03월</option>
										<option value="04">04월</option>
										<option value="05">05월</option>
										<option value="06">06월</option>
										<option value="07">07월</option>
										<option value="08">08월</option>
										<option value="09">09월</option>
										<option value="10">10월</option>
										<option value="11">11월</option>
										<option value="12">12월</option>
									</select>
									<select id="B_DATE3" name="B_DATE3" style="width:55px" onchange="javascript:bdate_check3()">
										<option value="01" selected="selected">01일</option>
										<option value="02">02일</option>
										<option value="03">03일</option>
										<option value="04">04일</option>
										<option value="05">05일</option>
										<option value="06">06일</option>
										<option value="07">07일</option>
										<option value="08">08일</option>
										<option value="09">09일</option>
										<option value="10">10일</option>
										<option value="11">11일</option>
										<option value="12">12일</option>
										<option value="13">13일</option>
										<option value="14">14일</option>
										<option value="15">15일</option>
										<option value="16">16일</option>
										<option value="17">17일</option>
										<option value="18">18일</option>
										<option value="19">19일</option>
										<option value="20">20일</option>
										<option value="21">21일</option>
										<option value="22">22일</option>
										<option value="23">23일</option>
										<option value="24">24일</option>
										<option value="25">25일</option>
										<option value="26">26일</option>
										<option value="27">27일</option>
										<option value="28">28일</option>
										<option value="29">29일</option>
										<option value="30">30일</option>
										<option value="31">31일</option>
									</select>
									<input type="hidden" id="B_DATE" name="B_DATE"/>
									<!-- 														
									<img class="selectday" src="/images/common/input01.gif" style="padding-left: 3px; ">
									-->
								</td>
							</tr>
							<tr>
								<th><label for="go">출발 시간</label></th>
								<td class="selecttime">
									<select id="B_TIME" name="B_TIME" onchange="javascript:btime_check()">
										<option value="empty" selected="selected">선택하세요</option>
										<option value="0000">00:00</option>
										<option value="0100">01:00</option>
										<option value="0200">02:00</option>
										<option value="0300">03:00</option>
										<option value="0400">04:00</option>
										<option value="0500">05:00</option>
										<option value="0600">06:00</option>
										<option value="0700">07:00</option>
										<option value="0800">08:00</option>
										<option value="0900">09:00</option>
										<option value="1000">10:00</option>
										<option value="1100">11:00</option>
										<option value="1200">12:00</option>
										<option value="1300">13:00</option>
										<option value="1400">14:00</option>
										<option value="1500">15:00</option>
										<option value="1600">16:00</option>
										<option value="1700">17:00</option>
										<option value="1800">18:00</option>
										<option value="1900">19:00</option>
										<option value="2000">20:00</option>
										<option value="2100">21:00</option>
										<option value="2200">22:00</option>
										<option value="2300">23:00</option>
								</select>
								<input type="hidden" id="bus_no" name="bus_no"/>
							</tr>
							</table>
						</div>
						<!-- //수정 -->
						</form>
						<div class="mbtn">
							<a id="reserveBtn" name="reserveBtn" style="cursor:pointer;">
								<img src="/images/main/btn_reserves.gif" alt="예매" />
							</a>
						</div>
					</div>
				</div>
				<div class="event">
					<img src="/images/main/main_visual.jpg" alt="." />
				</div>
			</div>
	
			<div class="mcont2">
				<div class="mcashbee">
					<div>
						<p>
							<a href="#"><img src="/images/main/cashbee_evt1.jpg" alt="#" title="#" /></a>
						</p>
					</div>
					<div>
						<p>
							<a href="#"><img src="/images/main/cashbee_evt2.jpg" alt="#" title="#" /></a>
						</p>
					</div>
				</div>
				<div class="pr">
					<strong><img src="/images/main/pr_tit.gif" alt="홍보관" /></strong>
					<p><a href="http://www.usquare.co.kr/index.asp" target="_blank"><img src="/images/main/pr_img.gif" alt="금호터미널 교통의 허브 젊음의 광장 New LandMark" /></a></p>
				</div>
				<div class="evt">
					<ul>
						<li><a href="#"><img src="/images/main/eve_01.jpg" alt="#" /></a></li>
						<li><a href="#""><img src="/images/main/eve_02.jpg" alt="#" /></a></li>
					</ul>
				</div>
				<div class="info">
					<ul>
						<li><a href="/kr/guide/hometicket.do"><img src="/images/main/quick_01.gif" alt="홈티켓 예매안내" /></a></li>
						<li><a href="/kr/guide/mobile.do"><img src="/images/main/quick_02.gif" alt="모바일 예매안내" /></a></li>
						<li><a onclick="layerAlert('서비스 준비중 입니다.');" style="cursor:pointer;"><img src="/images/main/quick_03.gif" alt="여행상품 안내" /></a></li>
						<li><a href="/kr/guide/setup.do"><img src="/images/main/quick_04.gif" alt="환경설정 안내" /></a></li>
						<li><a href="/kr/support/notice/notice.do"><img src="/images/main/quick_05.gif" alt="공지사항" /></a></li>
					</ul>
				</div>

			</div>
		</div>
		<p style="text-align:center;"><img src="/images/main/index_notice.gif"/></p>

<script type="text/javascript">
function onopenPopup() {
	var url = "http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1298638970";
	window.open(url, "communicationViewPopup", "width=730, height=650;");
}
</script>

<div class="footer">
	<ul class="introduce">
		<li class="sta"><a href="/kr/etc/agreement.do"><img src="/images/main/footer_01.gif" alt="홈페이지 이용약관" /></a></li>
		<li><a href="/kr/etc/privacy.do"><img src="/images/main/footer_02.gif" alt="개인정보취급방침" /></a></li>
		<li><a href="/kr/etc/ebanking.do"><img src="/images/main/footer_03.gif" alt="전자금융거래 기본약관" /></a></li>
		<li><a href="/kr/etc/email.do"><img src="/images/main/footer_04.gif" alt="이메일무단수집거부" /></a></li>
		<li><a href="#"><img src="/images/main/footer_06.gif" alt="사업자정보" onclick="onopenPopup();" /></a></li>
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
	<p class="address"><img src="/images/main/footer_copyright.gif" alt="SIST 7th, 사업자등록번호: 777-77-77777, 통신판매업 2015-대한민국-1004,  서울시 강남구 강남대로242-1(역삼동 513-2),  lee.devne@gmail.com" /></p>
</div>

<script type="text/javascript">
    if (self.name != ""){
		document.writeln("<div><a href='https://m.bustago.or.kr:444/mobus' style='display:block; width:640px; margin:0 auto;' target=\"_top\" ><img src='/images/main/bustago_mobile_icon.gif' alt='모바일 웹사이트로 이동' width='640' height='83' /></a></div>");
    }
</script>

		<script type="text/javascript">
			var tmpString = [];
			var orgEndString = "";
			var orgEndListString = "";
			var tmpTerId = "";
			var startScroll = 0;
			var finishScroll = 0;
			
			var $ = jQuery.noConflict();
			
			function universityChk(chk){
				if(chk){
					$(".partbox .ss").css({"width":"72px"});
					$(".partbox select").css({"width":"65px"});
					$("[name=noAgeIcon]").css({"width":"10px","height":"10px"});
					$("[name=ageIcon]").css({"width":"10px","margin-bottom":"3px"});
					$("#universityDiv").show();
					$(".agebox").css("margin","-8px 0 0 -299px");
					$("select").select2();
				} else {
					$("#universityCnt").find("option").eq(0).attr("selected",true);
					$("#universityDiv").hide();
					$(".partbox .ss").css({"width":"95px"});
					$(".partbox select").css({"width":"75px"});
					$("[name=noAgeIcon]").css({"width":"18px","height":"18px"});
					$("[name=ageIcon]").css({"width":"18px","margin-bottom":""});
					$(".agebox").css("margin","-8px 0 0 -250px");
					$("select").select2();
				}
			}
			
			function terminalQuery(json, property, value) {
				json = $.parseJSON( json );
				avoidDuplicates = false;
				wrapper = true;
				propertyValue = value;
				startsWith = false;
				checkContains = true;
				matchCase = false;
					
				try {
					var config = {
						property: property.split(","),
						wrapper: wrapper,
						value: propertyValue.split(","),
						startsWith: startsWith,
						checkContains: checkContains,
						matchCase: matchCase,
						avoidDuplicates: avoidDuplicates
					},
					o = $.fn.filterJSON(json, config).toArray();
		
					return (o != null && o.length > 0) ? JSON.stringify( o ) : "";
				}
				catch( e ) {
					console.error( e.message );
				}
			};
			
			function setTerminalName(mode,str,id){
				if (mode == "s") {
					$('#start').val(str);
					$('#startId').val(id);
				} else {
					$('#finish').val(str);
					$('#finishId').val(id);
				}
				$.fancybox.close();
			}
			
			function terminalEndList(mode,terCode,area,terminalNm,searchNm,orderCreateDays){
				$("#finishTerminalList").css("overflow","hidden");
				$("#finishTerminalListSearch").show();
				$("#finishTerminalListNone").hide();
				var tableHtml = ["","","","","","","","","","","","","",""];
				var tableHtmlEtc = ["","","","","","","","","","","","","",""];
				var orgEndStringTmp = "";
				var data = {};
				var reserveEndTable = "";
				var reserveEndEtcTable = "";
				
				terminalList('',terCode);
				
				$("#startTerminalNm").val("터미널명을 입력해주세요");

				$(".arealist li").each(function(index,value){
					if($(this).attr("terId") == terCode){
						$(this).addClass("selected");
					} else {
						$(this).removeClass("selected");
					}
				});
				
				if(terCode!="") $("#terCode").val(terCode);
				if(terminalNm!="") $("#terName").val(terminalNm);
				$("#startTerNm").html("출발지 "+$("#terName").val());

				if($.trim(orderCreateDays)!="") $("#startBusOrderCreateDays").val(orderCreateDays);
		
				// 광주,순천터미널 경고창 적용 20120530
				if (terCode =="8038"){
					layerAlert("해당 터미널("+terminalNm+")은 중고생/아동 예매를 할 수 없습니다.<br/><br/>중고생/아동 예매는 일반승차권 예매 후 해당 터미널에서 발권 후 교환하셔야합니다.");
				}
				// 광주 경고창 적용 20120530
				if (terCode =="9401"){
					layerAlert("해당 터미널("+terminalNm+")은 중고생 예매를 할 수 없습니다.<br/><br/>중고생 예매는 일반승차권 예매 후 해당 터미널에서 발권 후 교환하셔야합니다.");
				}
				// 부산동부 경고창 적용 20120713
				//if (terCode =="9001"){
				//	layerAlert("해당 터미널("+$(this).text()+")은 금일 기준으로\n10일 이내의 배차에 대해서만 예매가 가능합니다.\n중고생 예매 고객은 터미널 방문 시 꼭 필히 학생증 지잠바랍니다.");
				//}
				// 해운대(수도권) 알림 적용 20121004
				if (terCode =="9009"){
					layerAlert("해운대터미널이 부산해운대, 해운대(수도권)정류소로 분리되었습니다.<br/><br/>오산,수원,안산,부천,고양,동서울 노선은 해운대(수도권)정류소에서 예매 및 발권, 탑승이 가능합니다.<br/><br/>해운대(수도권)정류소는 부산기계공고 옆에 위치합니다.<br/><br/>(공지사항 참조)<br/>전화 : 1688-7645");
				}
				// 부산해운대 알림 적용 20121004
				if (terCode =="9007"){
					layerAlert("오산,수원,안산,부천,고양,동서울 노선은 해운대(수도권)정류소를 이용하여주십시오.");
				}
				// 고양 알림 적용 20121004 , 덕산스파, 신례원 추가 20121016, 여천 20121113, 성남 20121121, 공주 20130708
				if (terCode =="1782" || terCode =="4294" || terCode =="4115" || terCode =="8042" || terCode =="4003"){
					layerAlert(terminalNm+"에서 발권하실 경우 반드시 결제에 사용한 카드를 지참하셔야 합니다.");
				}
				// 영주 경고창 적용 20121107
				if (terCode =="5046"){
					layerAlert("발권/환불/탑승은 출발지 터미널에서만 가능하며 최소 출발시간 15분 전에 발권하시기 바랍니다.");
				}
				// 풍기터미널 경고창 적용 20130731
				if (terCode =="5283"){
					layerAlert("영주터미널 출발 시간에 맞춰 승강장에서 기다려 주시기 바랍니다.<br/><br/>발권/환불/탑승은 출발지 터미널에서만 가능하며 최소 출발시간 15분 전에 발권하시기 바랍니다.");
				}
				// 경주터미널 경고창 적용 20130401
				if (terCode =="5007"){
					layerAlert("포항터미널과의 연계노선으로 인해 6~10좌석만 예매가 가능합니다.<br/><br/>주말의 경우 버스가 28인승에서 41인승으로 변경될 수 있습니다.");
				}
				// 홍천 알림 내용 적용 20140826
				//if (terCode =="2044"){
				//	layerAlert("9월6일(토)~9월10일(수)까지 추석자량 지연으로 인하여 출발시각이 10시 이후 차량에 대해서 <br/>추석예매가 안됩니다.");
				//}
				// 좌천 알림 내용 적용 20140828
				//if (terCode =="9015"){
				//	layerAlert("침수로 인하여 좌천정류소 인터넷 예매가 불가합니다.<br/><br/>빠른 시일 내에 정상운영 하도록 하겠습니다.<br/><br/>문의전화 051)746-3550");
				//	return;
				//}
				// 포항 알림 내용 적용 20140828
				if (terCode =="5071"){
					layerAlert("2014년 9월1일부터 포항 - 신경주행 노선이 좌석제로 운영합니다.<br/><br/>많은 이용바랍니다.<br/><br/>감사합니다.");
				}
				// 강릉 알림 내용 적용 20140829
				if (terCode =="2051"){
					layerAlert("학생 및 청소년 할인(20%) 및 국가유공자할인(30%)이 적용이 되시는 승객께서는 터미널 현장예매(05:30~22:00)나, 인터넷에서 일반으로 예매후 매표창구에서 학생증( 청소년증)과 국가유공자증 확인후 할인된 승차권으로 교환하여 주시기 바랍니다.<br/><br/>(04:00 김포공항-인천공항의 경우 승차권 교환이 즉시 되지 않으니, 출발일 하루전까지 매표소 방문후 할인된 승차권으로 교환 하시기 바랍니다.(교환가능시간05:30~22:00))<br/><br/>(은행 체크카드로 승차권을 예매할 경우 취소 또는 환불이 3~5일 정도 소요됩니다. 통장잔고에 유의하시기 바랍니다.)<br/><br/><p><span style=\"color: rgb(255, 0, 0);\">승차권 분실시 재발행이 불가하오니, 승차권 분실에 주의 하시기 바랍니다.</span><br></p>");
				}
				// 광양 알림 내용 적용 20140901
				if (terCode =="8006"){
					layerAlert("동광양터미널(중마버스터미널) 예매는 출발지에서 동광양을 선택하여 주시기 바랍니다.");
				}
				// 동광양 알림 내용 적용 20140901
				if (terCode =="8019"){
					//layerAlert("광양시외버스터미널 예매는 출발지에서 광양을 선택하여 주시기 바랍니다.");
					layerAlert("동광양(중마동),광양(광양읍)은 출발지가 다르오니 <br/>확인후 예약하시기 바랍니다.");
				}
				// 부산동부 경고창 적용 20120713 추가 20121029
				if (terCode =="9001"){
					//layerAlert("해당 터미널("+terminalNm+")은 금일 기준으로 10일 이내의 배차에 대해서만 예매가 가능합니다.<br/><br/>중고생 고객은 예매 후 터미널 방문시 필히 학생증 지참하셔서 예매발권 하시기바랍니다. (학생증, 신용카드 필수 지참)");
					layerAlert("중고생 고객은 예매 후 터미널 방문시 필히 학생증 지참하셔서 예매발권 하시기바랍니다. (학생증, 신용카드 필수 지참)");
				}
				// 여수 경고창 적용 20140716
				if (terCode =="8041"){
					layerAlert("해당 터미널("+terminalNm+")은 중고생 예매를 할 수 없습니다.<br/><br/>중고생 예매는 일반승차권 예매 후 해당 터미널에서 발권 후 교환하셔야합니다.");
				}
				// 인천 알림 내용 적용 20141204
				//if (terCode =="9302"){
				//	layerAlert("12월 11일부로 안성행/거창행/서수원행/강진행 일부시간 및 승차홈 변경안내<br/><br/>안성행   9번승차홈 -> 6번승차홈 , 거창행 17번승차홈 -> 16번승차//홈<br/>서수원행 17번승차홈 -> 16번승차홈");
				//}
				// 진주개양 알림 내용 적용
				if (terCode =="6349"){
					layerAlert("인천공항 매표는 진주 개양정류소 바로 옆 나그네김밥에서 하고 있으며<br/><br/>자세한 내용은 (주)경북코치서비스로 문의 하시길 바랍니다.(053-356-1387)");
				}
				// 보령 알림 내용 적용 20150119
				if (terCode =="4024"){
					layerAlert("예매는 출발일 기준 2주전 발매합니다.<br/>보령발 센트럴 행은 중고생 예매가 불가능 합니다.");
				}
				// 성남 알림 내용 적용 20150119
				if (terCode =="1010"){
					layerAlert(
					"<p><span style=\"color: rgb(255, 0, 0);\">[긴급공지] 성남종합터미널 매표소 문제로 비상운영 중이며 현재 카드로만 발권이 가능하며, 현금 승차하실 승객께서는 운전 기사님께 현금을 지불하고 탑승하셔야합니다. 승차권 발권을 신속하게 하려면 가급적 인터넷 예매를 이용하여 주십시오.  </span><br></p><br>"+terminalNm+"에서 발권하실 경우 반드시 결제에 사용한 카드를 지참하셔야 합니다.");
				}
				//부천 알림
				if (terCode =="1007"){
					layerAlert("<p><span style=\"color: rgb(255, 0, 0);\">부천 터미널은 6세부터 아동요금을 받습니다. <br/>6세 ~ 초등학생의 경우 아동으로 예매 진행을 하시기 바랍니다. </span></p>");
				}
				
				$("select").select2();
		
				$.busCall({
					type : 'POST',
					url : '/common/terminalEndListAjax.do?area=&country=&terCode='+terCode,
					dataType : 'text',
					data: data,
					success : function(data) {
						orgEndListString = $.trim(data);
						
						console.log(orgEndListString);
		
						if(area!=""){
							orgEndStringTmp = terminalQuery(orgEndListString,"TERMINAL_AREA",area);
						} else if(searchNm!=""){
							orgEndStringTmp = terminalQuery(orgEndListString,"TERMINAL_NM",searchNm);
						} else {
							orgEndStringTmp = orgEndListString;
						}
		
						if(orgEndStringTmp!=""){
							//var tmpStr2 = terminalQuery(terminalChk,"code",terCode);
							//var tmpChk2 = $.parseJSON(tmpStr2);

							$.each(["ㄱ","ㄴ","ㄷ","ㄹ","ㅁ","ㅂ","ㅅ","ㅇ","ㅈ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"],function(index,value){
								var tmpStr = terminalQuery(orgEndStringTmp,"TERMINAL_MOEUM",value);
		
								if(tmpStr!=""){
									var tmpChk = $.parseJSON(tmpStr);
									$.each(tmpChk,function(index1,value1){
										//var tmpChk1 = setTerminalChk('e', value1["RESERVATION_CHK"], value1["TERMINAL_ID"], terCode);/* $.parseJSON(tmpStr1); */
										
										//if(value1["ROUND_TICKET_CD"]=="1"||value1["ROUND_TICKET_CD"]=="2"){
											if(parseInt(value1["RESERVATION_CHK"], 10) > 0 && value1["ONE_WAY_CD"] == "1"){
												//왕복/편도
												reserveEndTable = "					<tr><td class='ov3'><a href='javascript:terminalSet(\""+value1["TERMINAL_ID"]+"\",\""+value1["TERMINAL_NM"]+"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
												reserveEndTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_both.gif\" alt=\"왕복예매가능\" /></td></tr>";
												tableHtml[index] += reserveEndTable;
											}
											if(parseInt(value1["RESERVATION_CHK"], 10) > 0 && value1["ONE_WAY_CD"] == "0"){
												//왕복/편도
												reserveEndTable = "					<tr><td class='ov1'><a href='javascript:terminalSet(\""+value1["TERMINAL_ID"]+"\",\""+value1["TERMINAL_NM"]+"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
												reserveEndTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_one.gif\" alt=\"편도예매가능\" /></td></tr>";
												tableHtml[index] += reserveEndTable;
											}
											if(parseInt(value1["RESERVATION_CHK"], 10) == 0){
												//운행정보
												reserveEndEtcTable = "					<tr><td class='ov2'><a href='javascript:terminalSet(\""+value1["TERMINAL_ID"]+"\",\""+value1["TERMINAL_NM"]+"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
												reserveEndEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"예매불가\" /></td></tr>";
												tableHtmlEtc[index] += reserveEndEtcTable;
											}
											if(parseInt(value1["RESERVATION_CHK"], 10) == -1){
												//노선정보
												reserveEndEtcTable = "					<tr><td class='ov3'><a href='javascript:terminalSet(\""+value1["TERMINAL_ID"]+"\",\""+value1["TERMINAL_NM"]+"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
												reserveEndEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"예매불가\" /></td></tr>";
												tableHtmlEtc[index] += reserveEndEtcTable;
											}
										//} else {
											//노선정보
										//	reserveEndEtcTable = "					<tr><td class='ov4'><a href='javascript:terminalSet(\""+value1["TERMINAL_ID"]+"\",\""+value1["TERMINAL_NM"]+"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
										//	reserveEndEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"예매불가\" /></td></tr>";
										//	tableHtmlEtc[index] += reserveEndEtcTable;
										//}
									});
								}
							});
							
		
							$.each(tableHtml,function(index, value){
								if(value != ""){
									$('table[name="moeum_finish"]').eq(index).parent().parent().show();
									$('table[name="moeum_finish"]').eq(index).html(value);
									$("[id=moeumBtn1]").eq(index).attr('rowIdx',index);
								} else {
									$('table[name="moeum_finish"]').eq(index).parent().parent().hide();
									$("[id=moeumBtn1]").eq(index).removeAttr('rowIdx');
								}
							});
		
							$.each(tableHtmlEtc,function(index, value){
								if(value != ""){
									$('table[name="moeum_finish_etc"]').eq(index).parent().parent().show();
									$('table[name="moeum_finish_etc"]').eq(index).html(value);
								} else {
									$('table[name="moeum_finish_etc"]').eq(index).parent().parent().hide();
								}
							});
							$("#finishTerminalListSearch").hide();
							$("#finishTerminalListTable").show();
							$("#finishTerminalEtcListTable").show();
							$("#finishTerminalList").css({"overflow-y":"auto","overflow-x":"hidden"});
					        $("#finishTerminalList").animate({
					            scrollTop: $("#searchStartTerminalList").scrollTop(0)
					        }, 500);
					        finishScroll = $("#finishTerminalEtcListTable").offset().top-divOffset;
						} else {
							layerAlert("선택하신 지역 또는 검색어와 동일한 터미널이 없습니다.");
							$("#finishTerminalListSearch").hide();
						}
					}
				});
		
				$("#finishTitle").html("터미널 옆 아이콘을 참고해 주세요.").show();
				$("#finishTerminalList").height($("#startTerminalList").height());
			};
		
			function terminalList(area,terminalNm){
				var reserveTable = "";
				var reserveEtcTable = "";

				$("[id=allDepTerminal]").show();
				
				/* if(area==""&&terminalNm==""){
					$("div[name='startLayer']").eq(1).show();
					$("div[name='startLayer']").eq(0).hide();
			        $("#startTerminalList").animate({
			            scrollTop: $("#startTerminalList").scrollTop(0)
			        }, 500);
				} else { */
					var tableHtml = ["","","","","","","","","","","","","",""];
					var tableEtcHtml = ["","","","","","","","","","","","","",""];
					var orgEndStringTmp = "",
					data = {};
		
					if(orgEndString==""){
						if(terminalNm == "ALL"){
							terminalNm = "";
						}
						$.busCall({
							type : 'POST',
							url : '/common/terminalListAjax.do?area='+area+'&searchTerminalNm='+terminalNm,
							dataType : 'text',
							data: data,
							async: false,
							success : function(data) {
								orgEndString = $.trim(data);
								
								if(area!=""){
									orgEndStringTmp = terminalQuery(orgEndString,"TERMINAL_AREA",area);
								} else {
									if($.isNumeric(terminalNm)){
										orgEndStringTmp = terminalQuery(orgEndString,"TERMINAL_ID",terminalNm);
									} else {
										orgEndStringTmp = terminalQuery(orgEndString,"TERMINAL_NM",terminalNm);
									}
								}
								
								var mainTerminalList = $.parseJSON(terminalQuery(orgEndString,"MAIN_TERMINAL_CD","1"));
								var mainTerminalArray = "";
								$.each(mainTerminalList,function(index,value){
									mainTerminalArray += "<li terId='"+value["TERMINAL_ID"]+"' terNm='"+value["TERMINAL_NM"]+"'><a style='cursor:pointer;'>"+value["TERMINAL_NM"]+"("+value["TERMINAL_AREA"]+")</a></li>";
								});
								$(".arealist").html(mainTerminalArray);
		
								if(orgEndStringTmp!=""){
									$.each(["ㄱ","ㄴ","ㄷ","ㄹ","ㅁ","ㅂ","ㅅ","ㅇ","ㅈ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"],function(index,value){
										var tmpStr = terminalQuery(orgEndStringTmp,"TERMINAL_MOEUM",value);
		
										if(tmpStr!=""){
											var tmpChk = $.parseJSON(tmpStr);
											$.each(tmpChk,function(index1,value1){
												if($.isNumeric(terminalNm)) $("#startBusOrderCreateDays").val(value1["BUS_ORDER_CREATE_DAYS"]);
												//var tmpStr1 = terminalQuery(terminalChk,"code",value1["TERMINAL_ID"]);
												//if(tmpStr1!=""){
													//var tmpChk1 = $.parseJSON(tmpStr1);
													if(value1["ROUND_TICKET_CD"]=="1"){
														//왕복/편도
														reserveTable = "					<tr><td class='ov3'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
														reserveTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_both.gif\" alt=\"왕복예매가능\" /></td></tr>";
														tableHtml[index] += reserveTable;
													}
													if(value1["ROUND_TICKET_CD"]=="2"){
														//왕복/편도
														reserveTable = "					<tr><td class='ov1'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
														reserveTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_one.gif\" alt=\"편도예매가능\" /></td></tr>";
														tableHtml[index] += reserveTable;
													}
													if(value1["ROUND_TICKET_CD"]=="3"){
														//운행정보
														reserveEtcTable = "					<tr><td class='ov2'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
														reserveEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"예매불가\" /></td></tr>";
														tableEtcHtml[index] += reserveEtcTable;
													}
													if(value1["ROUND_TICKET_CD"]=="4" || value1["ROUND_TICKET_CD"]=="0"){
														//노선정보
														reserveEtcTable = "					<tr><td class='ov4'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
														reserveEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"예매불가\" /></td></tr>";
														tableEtcHtml[index] += reserveEtcTable;
													}
												//} else {
												//	reserveEtcTable += "					<tr><td class='ov4'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
												//	reserveEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"예매불가\" /></td></tr>";
												//	tableEtcHtml[index] += reserveEtcTable;
												//}
											});
										}
									});
		
									$.each(tableHtml,function(index, value){
										if(value != ""){
											$('table[name="moeum"]').eq(index).parent().parent().show();
											$('table[name="moeum"]').eq(index).html(value);
											$("[id=moeumBtn]").eq(index).attr('rowIdx',index);
										} else {
											$('table[name="moeum"]').eq(index).parent().parent().hide();
											$("[id=moeumBtn]").eq(index).removeAttr('rowIdx');
										}
									});
		
									$.each(tableEtcHtml,function(index, value){
										if(value != ""){
											$('table[name="moeum_etc"]').eq(index).parent().parent().show();
											$('table[name="moeum_etc"]').eq(index).html(value);
										} else {
											$('table[name="moeum_etc"]').eq(index).parent().parent().hide();
										}
									});
									
									$("div[name='startLayer']").eq(0).show();
									$("div[name='startLayer']").eq(1).hide();
							        $("#searchStartTerminalList").animate({
							            scrollTop: $("#searchStartTerminalList").scrollTop(0)
							        }, 500);
							        startScroll = $("#searchStartTerminalReserveEtc").offset().top-divOffset;
								} else {
									layerAlert("선택하신 지역 또는 검색어와 동일한 터미널이 없습니다.");
									$("#finishTerminalListSearch").hide();
								}
							}
						});
					} else {
						if(area!=""){
							orgEndStringTmp = terminalQuery(orgEndString,"TERMINAL_AREA",area);
						} else {
							if(terminalNm == "ALL"){
								terminalNm = "";
							}
							if($.isNumeric(terminalNm)){
								orgEndStringTmp = terminalQuery(orgEndString,"TERMINAL_ID",terminalNm);
							} else {
								orgEndStringTmp = terminalQuery(orgEndString,"TERMINAL_NM",terminalNm);
							}
						}
		
						if(orgEndStringTmp!=""){
							$.each(["ㄱ","ㄴ","ㄷ","ㄹ","ㅁ","ㅂ","ㅅ","ㅇ","ㅈ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"],function(index,value){
								var tmpStr = terminalQuery(orgEndStringTmp,"TERMINAL_MOEUM",value);
		
								if(tmpStr!=""){
									var tmpChk = $.parseJSON(tmpStr);
									$.each(tmpChk,function(index1,value1){
										if(value1["ROUND_TICKET_CD"]=="1"){
											//왕복/편도
											reserveTable = "					<tr><td class='ov3'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
											reserveTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_both.gif\" alt=\"왕복예매가능\" /></td></tr>";
											tableHtml[index] += reserveTable;
										}
										if(value1["ROUND_TICKET_CD"]=="2"){
											//왕복/편도
											reserveTable = "					<tr><td class='ov1'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
											reserveTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_one.gif\" alt=\"편도예매가능\" /></td></tr>";
											tableHtml[index] += reserveTable;
										}
										if(value1["ROUND_TICKET_CD"]=="3"){
											//운행정보
											reserveEtcTable = "					<tr><td class='ov2'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
											reserveEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"예매불가\" /></td></tr>";
											tableEtcHtml[index] += reserveEtcTable;
										}
										if(value1["ROUND_TICKET_CD"]=="4" || value1["ROUND_TICKET_CD"]=="0"){
											//노선정보
											reserveEtcTable = "					<tr><td class='ov4'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
											reserveEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"예매불가\" /></td></tr>";
											tableEtcHtml[index] += reserveEtcTable;
										}
									});
								}
		
							});
		
							$.each(tableHtml,function(index, value){
								if(value != ""){
									$('table[name="moeum"]').eq(index).parent().parent().show();
									$('table[name="moeum"]').eq(index).html(value);
									$("[id=moeumBtn]").eq(index).attr('rowIdx',index);
								} else {
									$('table[name="moeum"]').eq(index).parent().parent().hide();
									$("[id=moeumBtn]").eq(index).removeAttr('rowIdx');
								}
							});
		
							$.each(tableEtcHtml,function(index, value){
								if(value != ""){
									$('table[name="moeum_etc"]').eq(index).parent().parent().show();
									$('table[name="moeum_etc"]').eq(index).html(value);
								} else {
									$('table[name="moeum_etc"]').eq(index).parent().parent().hide();
								}
							});
							
							$("div[name='startLayer']").eq(0).show();
							$("div[name='startLayer']").eq(1).hide();
					        $("#searchStartTerminalList").animate({
					            scrollTop: $("#searchStartTerminalList").scrollTop(0)
					        }, 500);
					        startScroll = $("#searchStartTerminalReserveEtc").offset().top-divOffset;
						} else {
							layerAlert("선택하신 지역 또는 검색어와 동일한 터미널이 없습니다.");
							$("#finishTerminalListSearch").hide();
						}
					}
				/* } */
			};
			
			function terminalSet(cd,nm,orderCreateDays) {
				$("#startTerminalNm").val("터미널명을 입력해주세요");
				$("#finishTerminalNm").val("터미널명을 입력해주세요");
				$.busCall({
					type : 'POST',
					url : '/common/busOrderCreateDays.do?depTerId='+$("#terCode").val()+'&arrTerId='+cd,
					dataType : 'text',
					success : function(data) {
						$("#finishBusOrderCreateDays").val(common_dayDiff(serverDateTimes_string.substring(0,8),$.parseJSON(data)["busOrderCreateDays"]));
					}
				});
				//$("#finishBusOrderCreateDays").val(orderCreateDays);

				// 출발지가 부천이고, 해당 도착지일 경우 활성화, 아닐 경우 대학생 비활성화
				if($("#terCode").val() == "1007" && 
						      (cd =="1123"
							|| cd =="1221"
							|| cd =="1723"
							|| cd =="3108") )
				{
					universityChk(true);
				} else {
					universityChk(false);
				}
		
				$("#notiTxt").html("");
				//전주만 적용 2011-08-22, 광주, 목포, 해남, 공주, 순천, 여수추가 2011-10-10, 20120903 고양추가
				//부산동부터미널 중고생 비활성 추가(20140708)
				//보령터미널(4024), 대천해수욕장(4141) 일반만 예매되도록 적용(20140721)
				//보령터미널(4024) 제한 해제(20150113)
				if($("#terCode").val()=="7033" 
						|| $("#terCode").val()=="7099" 
						|| $("#terCode").val()=="7100" 
						|| $("#terCode").val()=="9401" 
						|| $("#terCode").val()=="8024" 
						|| $("#terCode").val()=="8062" 
						|| $("#terCode").val()=="4003" 
						|| $("#terCode").val()=="8038" 
						|| $("#terCode").val()=="8041" 
						|| $("#terCode").val()=="4015" 
						|| $("#terCode").val()=="4294" 
						|| $("#terCode").val()=="4020" 
						|| $("#terCode").val()=="4141"
						|| $("#terCode").val()=="2051"
						|| $("#terCode").val()=="6040"
						|| $("#terCode").val()=="4021"
						|| $("#terCode").val()=="4028"
						|| $("#terCode").val()=="4025"
						|| $("#terCode").val()=="4043"
						|| $("#terCode").val()=="4131"
						|| $("#terCode").val()=="4042"
						|| $("#terCode").val()=="4116"
						|| $("#terCode").val()=="4006"
						|| $("#terCode").val()=="4031"
						) {
					$('#studentCnt').attr('disabled',true);
					$('#studentCnt option:eq(0)').attr('selected','selected');
					$("#notiTxt").html("중고생 인터넷 <font color='red'>예매불가</font> 터미널 입니다.");
					if($("#terCode").val()=="7033" 
							|| $("#terCode").val()=="7099" 
							|| $("#terCode").val()=="7100" 
							|| $("#terCode").val()=="4141"
							|| $("#terCode").val()=="8038"
							|| $("#terCode").val()=="6040"){
						$('#childrenCnt').attr('disabled',true);
						$('#childrenCnt option:eq(0)').attr('selected','selected');
						$("#notiTxt").html("중고생/아동 인터넷 <font color='red'>예매불가</font> 터미널 입니다.");
					} else {
						$('#childrenCnt').attr('disabled',false);
					}
				} else {
					$("#studentCnt").prop('disabled',false);
					$("#childrenCnt").prop('disabled',false);
					$("#notiTxt").html("");
				}
		
				// 순환(담양,곡성),순환(강진,장흥), 순환(순천,보성), 순환(무안,함평)일 경우 아동 disabled 처리(20140708 추가)
				if (cd =="z067" || cd =="z068" || cd =="z073" || cd =="z074"){
					$("#childrenCnt").attr('disabled',true);
					$('#childrenCnt option:eq(0)').attr('selected','selected');
					$("#notiTxt").html("아동 인터넷 <font color='red'>예매불가</font> 터미널 입니다.");
				}
				
				// 출발지 보령(4024), 도착지 센트럴시티(0006) 인 경우 중고생 비활성화 (20150117)
				if($("#terCode").val()=="4024" && cd=="0006") {
					$('#studentCnt').attr('disabled',true);
					$('#studentCnt option:eq(0)').attr('selected','selected');
					$("#notiTxt").html("중고생 인터넷 <font color='red'>예매불가</font> 터미널 입니다.");
				}
				
				// 출발지 고양(1782), 도착지 천안(4019) 일 경우 중고생 비활성화처리 (20140922)
				if($("#terCode").val()=="1782" && cd=="4019") {
					$('#studentCnt').attr('disabled',true);
					$('#studentCnt option:eq(0)').attr('selected','selected');
					$("#notiTxt").html("중고생 인터넷 <font color='red'>예매불가</font> 터미널 입니다.");
				} else if($("#terCode").val()=="1782" && cd!="4019") {
					$("#studentCnt").attr('disabled',false);
				}

				$("#start").val($("#terName").val());
				$("#finish").val(nm);
				$("#startId").val($("#terCode").val());
				$("#finishId").val(cd);
				$("#finishTerNm").html("도착지 "+nm);
		
				$("select").select2();
				$.fancybox.close();
			}
			
			function terminalReset(){
				$(".arealist li").each(function(index,value){
					$(this).removeClass("selected");
				});
				$("[id=moeumBtn]").each(function(index){
					$(this).css({'background-color':'#f4f4f4','font-weight':'normal'});
				});
				$("[id=moeumBtn1]").each(function(index){
					$(this).css({'background-color':'#f4f4f4','font-weight':'normal'});
				});
				$("#finishTerminalListTable").hide();
				$("#finishTerminalEtcListTable").hide();
				$("#finishTerminalListNone").show();
			}
		
			$(document).ready(function(){
				$("[id=allDepTerminal]").hide();
				
				if($("#start").val() != "" && $("#startId").val() != ""){
					$(".arealist li").each(function(index,value){
						if($(this).attr("terId") == $("#startId").val()){
							$(this).addClass("selected");
						} else {
							$(this).removeClass("selected");
						}
					});
				}
		
				$("#finishTitle").hide();
				$("#finishTerminalList").height($("#startTerminalList").height()+41);
				$("#startTerminalList").scroll(function(){
					if($(this).scrollTop()<=$("#startTerminalReserve").height()){
						$("#startTitleMain").html("인터넷 예매 가능");
					} else if($(this).scrollTop()>$("#startTerminalReserve").height()&&$(this).scrollTop()<=($("#startTerminalReserve").height()+$("#startTerminalTransport").height())){
						$("#startTitleMain").html("운행정보만 제공");
					} else {
						$("#startTitleMain").html("노선정보만 제공");
					}
				});
				
				$("#searchStartTerminalList").scroll(function(){
					if(startScroll > 0){
						if($(this).scrollTop()<=startScroll){
							$("#startTitle").html("인터넷 예매 가능");
						} else {
							$("#startTitle").html("인터넷 예매 불가");
						}
					}
				});
				
				$("#finishTerminalList").scroll(function(){
					if(finishScroll > 0){
						if($(this).scrollTop()<=finishScroll){
							$("#finishTitle").html("인터넷 예매 가능");
						} else {
							$("#finishTitle").html("인터넷 예매 불가");
						}
					}
				});
		
				$("#startArea").change(function(){
					terminalReset();
					$("#finishTerminalListNone").show();
					$("#finishTerminalListTable").hide();
					$("#finishTitle").hide();
					$("#finishTerminalList").height($("#startTerminalList").height()+41);
					terminalList($(this).val(),'');
					$("[id=allDepTerminal]").show();
				});
				
				$("#finishArea").change(function(){
					terminalEndList("",$("#terCode").val(),$(this).val(),'','');
				});
				
				$("#startTerminalNm").click(function(){
					$(this).val("");
				});
				
				$("#startTerminalNm").focus(function(){
					$(this).val("");
				});
				
				$("#startTerminalNm").blur(function(){
					if($("#startTerminalNm").val()=="") $("#startTerminalNm").val("터미널명을 입력해주세요");
				});
				
				$("#startSearchBtn").click(function(){
					if($("#startTerminalNm").val() == '터미널명을 입력해주세요' || $("#startTerminalNm").val() == '') {
						layerAlert("검색하실 터미널 명을 입력해 주세요.");
					} else {
						terminalList('',$("#startTerminalNm").val());
						$("[id=allDepTerminal]").show();
						//$("#startTerminalNm").val("터미널명을 입력해주세요");
					}
				});
				
				$("#finishTerminalNm").click(function(){
					$(this).val("");
				});
				
				$("#finishTerminalNm").focus(function(){
					$(this).val("");
				});
				
				$("#finishTerminalNm").blur(function(){
					if($("#finishTerminalNm").val()=="") $("#finishTerminalNm").val("터미널명을 입력해주세요");
				});
				
				$("#finishSearchBtn").click(function(){
					if($("#finishTerminalNm").val() == '터미널명을 입력해주세요' || $("#finishTerminalNm").val() == '') {
						layerAlert("검색하실 터미널 명을 입력해 주세요.");
					} else {
						terminalEndList('',$("#terCode").val(),'','',$("#finishTerminalNm").val());
						//$("#finishTerminalNm").val("터미널명을 입력해주세요");
					}
				});
				
				$(document).on("click",".arealist li",function(){
					$(".arealist li").each(function(index,value){
						$(this).removeClass("selected");
					});
					$(this).addClass("selected");
					terminalEndList("S",$(this).attr('terId'),"",$(this).attr('terNm'),"");
					$("[id=allDepTerminal]").show();
				});
				
				$("[id=allDepTerminal]").off("click").click(function(){
					$(".arealist li").each(function(index,value){
						$(this).removeClass("selected");
					});
			        $("[id=moeumBtn]").each(function(index){
						var $moeum = $(this);
						$("#startTerminalReserve th").each(function(index1){
							if($(this).html() == $moeum.html()){
								$moeum.attr('rowIdx',index1);
								$moeum.css('cursor','pointer');
							}
						});
					});
					//if($("div[name='startLayer']").eq(0).css('display') == 'none'){
						terminalList("","ALL");
						terminalReset();
					//	$("[id=allDepTerminal]").show();
					//} else {
					//	$("div[name='startLayer']").eq(1).show();
					//	$("div[name='startLayer']").eq(0).hide();
						$("[id=allDepTerminal]").hide();
					//}
				});
			});
			</script>

			<!-- 터미널검색 layer -->
			<div style="display:none;" >
				<div class="laybox" id="LayerAlert">
					<div class="laycont1_top"></div>
					<div class="laycont1">
						<strong class="laytit etc"><img src="/images/popup/tit_terminal.gif" alt="터미널 검색" /></strong>

						<div class="terboxs">
							<div class="part1">
								<strong><img src="/images/popup/ico_01.png" alt="인터넷 예매 가능 - 편도,왕복" /></strong>
								<span>편도, 왕복으로 인터넷 예매 가능 합니다.</span>
							</div>
							<div class="part2">
								<strong><img src="/images/popup/ico_02.png" alt="인터넷 예매 불가 - 현장예매" /></strong>
								<span>터미널 매표소에서 승차권 구매 가능 합니다.</span>
							</div>
						</div>

						<strong class="areatit">주요 터미널</strong>
						<ul class="arealist">
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>

						<div class="terbox2">
							<!-- 출발지 -->
							<div class="parts1">
								<div class="seletw">
									<select id="startArea" style="width:143px;" title="지역 선택">
										<option value="">전체</option>
										<option value="서울">서울</option>
										<option value="경기">경기</option>
										<option value="부산">부산</option>
										<option value="인천">인천</option>
										<option value="광주">광주</option>
										<option value="대전">대전</option>
										<option value="대구">대구</option>
										<option value="울산">울산</option>
										<option value="강원">강원</option>
										<option value="충북">충북</option>
										<option value="충남">충남</option>
										<option value="전북">전북</option>
										<option value="전남">전남</option>
										<option value="경북">경북</option>
										<option value="경남">경남</option>
										<option value="제주">제주</option>
									</select> &nbsp;
									<input type="text" class="txts" id="startTerminalNm" value="터미널명을 입력해주세요" style="width:158px; ime-mode:active;" onkeydown="javascript: if (event.keyCode == 13) {$('#startSearchBtn').click();}">
									<a href="#" class="btn1"><img id="startSearchBtn" src="/images/button/bts_search.gif" alt="검색" class="bts"  /></a>
								</div>
								<script type="text/javascript">
									$(document).ready(function(){
								        $("[id=moeumBtn]").each(function(index){
											var $moeum = $(this);
											$("#startTerminalReserve th").each(function(index1){
												if($(this).html() == $moeum.html()){
													$moeum.attr('rowIdx',index1);
													$moeum.css('cursor','pointer');
												} else {
													$moeum.unbind('click');
												}
											});
										});

								        $("[id=moeumBtn]").click(function(){
											var idx = $(this).index();
											var str = $(this).html();
									        var rowIdx = $(this).attr('rowIdx');
									        var thHeight = 0;

									        if($("[name=startLayer]").eq(0).css('display') == "none"){
									        	$tableNm = $("#startTerminalReserve th:contains("+str+")");
									        	$tableIdx = $("#startTerminalReserve th:eq("+rowIdx+")");
									        	$divNm = $("#startTerminalList");
									        } else {
									        	$tableNm = $("#searchStartTerminalReserve th:contains("+str+")");
									        	$tableIdx = $("#searchStartTerminalReserve th:eq("+rowIdx+")");
									        	$divNm = $("#searchStartTerminalList");
									        }

									        // Get row position by index
									        if($tableNm.length > 0){
									        	thHeight = 0;
									        	if($("[name=startLayer]").eq(0).css("display") == "none"){
										        	for(var i = 0; i < rowIdx; i++){
										        		if(i == 0){
											        		thHeight += $("#startTerminalReserve th:eq("+i+")").height()+12;
										        		} else {
										        			if($("#startTerminalReserve th:eq("+i+")").height()>0){
												        		thHeight += $("#startTerminalReserve th:eq("+i+")").height()+13;
										        			} 
										        		}
										        	} 
									        	} else {
										        	for(var i = 0; i < rowIdx; i++){
										        		if(i == 0){
											        		thHeight += $("#searchStartTerminalReserve th:eq("+i+")").height()+12;
										        		} else {
										        			if($("#searchStartTerminalReserve th:eq("+i+")").height()>0){
												        		thHeight += $("#searchStartTerminalReserve th:eq("+i+")").height()+13;
										        			} 
										        		}
										        	} 
									        	}
										        $divNm.animate({
										            scrollTop: thHeight
										        }, 500);
												$("[id=moeumBtn]").each(function(index){
													if(idx == index){
														$(this).css({'background-color':'#d4d4d4','font-weight':'bold'});
													} else {
														$(this).css({'background-color':'#f4f4f4','font-weight':'normal'});
													}
												});
									        } else {
									        	layerAlert("'"+str+"' 로 시작하는 터미널이 없습니다.");
									        }
										});

								        $("[id=moeumBtn1]").click(function(){
											var idx = $(this).index();
											var str = $(this).html();
									        var rowIdx = $(this).attr('rowIdx');
									        var thHeight = 0;
									        
									        // Get row position by index
									        if(rowIdx != undefined){
									        	thHeight = 0;
									        	for(var i = 0; i < rowIdx; i++){
									        		if(i == 0){
										        		thHeight += $("#finishTerminalListTable th:eq("+i+")").height()+12;
									        		} else {
									        			if($("#finishTerminalListTable th:eq("+i+")").height()>0){
											        		thHeight += $("#finishTerminalListTable th:eq("+i+")").height()+13;
									        			} 
									        		}
									        	} 
										        // Go to row
										        $("#finishTerminalList").animate({
										            scrollTop: thHeight
										        }, 500);
												$("[id=moeumBtn1]").each(function(index){
													if(idx == index){
														$(this).css({'background-color':'#d4d4d4','font-weight':'bold'});
													} else {
														$(this).css({'background-color':'#f4f4f4','font-weight':'normal'});
													}
												});
									        } else {
									        	layerAlert("'"+str+"' 로 시작하는 터미널이 없습니다.");
									        }
										});
									});
								</script>
								<div style="margin:5px 0 -10px 0;">
									<table style="border:1px solid #cccccc; width:355px; cursor:pointer;">
										<tr>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㄱ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㄴ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㄷ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㄹ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅁ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅂ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅅ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅇ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅈ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅊ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅋ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅌ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅍ</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅎ</td>
										</tr>
									</table>
								</div>
								<div name="startLayer" class="partsbox" style="display:none;">
									<strong class="ltit">출발지</strong>
									<a id="allDepTerminal" style="cursor:pointer;"><img src="/images/popup/ico_terminal.png" alt="전체터미널" class="terimg" /></a>
									<span id="startTitle" class="ltit2">터미널 옆 아이콘을 참고해 주세요.</span>
									<div id="searchStartTerminalList" class="layscroll" style="position:relative;">
										<table id="searchStartTerminalReserve" style="position:relative;">
											<tr><th>ㄱ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㄴ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㄷ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㄹ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㅁ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㅂ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㅅ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㅇ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㅈ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㅊ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㅋ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㅌ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㅍ</th><td><table name="moeum"></table></td></tr>
											<tr><th>ㅎ</th><td><table name="moeum"></table></td></tr>
										</table>
										<table id="searchStartTerminalReserveEtc" style="position:absolute; border-top:0px;">
											<tr><th>ㄱ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㄴ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㄷ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㄹ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㅁ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㅂ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㅅ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㅇ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㅈ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㅊ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㅋ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㅌ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㅍ</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>ㅎ</th><td><table name="moeum_etc"></table></td></tr>
										</table>
									</div>
								</div>
								<div name="startLayer" class="partsbox">
									<strong class="ltit">출발지</strong>
									<a id="allDepTerminal" style="cursor:pointer;"><img src="/images/popup/ico_terminal.png" alt="전체터미널" class="terimg" /></a>
									<span id="startTitleMain" class="ltit2">인터넷 예매 가능</span>
									<div id="startTerminalList" class="layscroll">
										<table id="startTerminalReserve" style="display:none;">
											<tr>
												<th>ㄱ</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2051","","강릉","")' class='terName' terCode="2051" title="강원 강릉시"><b>[강원]</b>강릉</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","6001","","거창터미널","")' class='terName' terCode="6001" title="경남 거창군"><b>[경남]</b>거창터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","5005","","경산터미널","")' class='terName' terCode="5005" title="경북 경산시"><b>[경북]</b>경산터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","5007","","경주","")' class='terName' terCode="5007" title="경북 경주시"><b>[경북]</b>경주</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","1782","","고양","")' class='terName' terCode="1782" title="경기 고양시"><b>[경기]</b>고양</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4036","","고북","")' class='terName' terCode="4036" title="충남 서산시"><b>[충남]</b>고북</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2049","","고한","")' class='terName' terCode="2049" title="강원 정선군"><b>[강원]</b>고한</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","8007","","구례","")' class='terName' terCode="8007" title="전남 구례군"><b>[전남]</b>구례</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","4038","","공주산성","")' class='terName' terCode="4038" title="충남 공주시"><b>[충남]</b>공주산성</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","4003","","공주종합터미널","")' class='terName' terCode="4003" title="충남 공주시"><b>[충남]</b>공주종합터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
																													
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","9518","","관저정류소","")' class='terName' terCode="9518" title="대전 서구"><b>[대전]</b>관저정류소</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>	
															<td class='ov1'><a href='javascript:terminalEndList("S","1872","","광명(KTX)","")' class='terName' terCode="1872" title="경기 광명시"><b>[경기]</b>광명(KTX)</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","1061","","광명(철산)","")' class='terName' terCode="1061" title="광명(철산역)"><b>[경기]</b>광명(철산역)</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","8006","","광양","")' class='terName' terCode="8006" title="전남 광양시"><b>[전남]</b>광양</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","9401","","광주종합터미널","")' class='terName' terCode="9401" title="광주 서구"><b>[광주]</b>광주종합터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1222","","구리","")' class='terName' terCode="1222" title="경기 구리시"><b>[경기]</b>구리</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","4031","","기지시","")' class='terName' terCode="4031" title="충남 당진시"><b>[충남]</b>기지시</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","5016","","김천","")' class='terName' terCode="5016" title="경북 김천시"><b>[경북]</b>김천</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6295","","김해공항","")' class='terName' terCode="6295" title="부산 강서구"><b>[부산]</b>김해공항</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㄴ</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","7010","","남원공용버스","")' class='terName' terCode="7010" title="전북 남원시"><b>[전북]</b>남원공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="편도" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","6045","","남지","")' class='terName' terCode="6045" title="남지"><b>[경남]</b>남지</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6007","","남해터미널","")' class='terName' terCode="6007" title="경남 남해군"><b>[경남]</b>남해터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4319","","내포","")' class='terName' terCode="4319" title="충남 홍성군"><b>[충남]</b>내포</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㄷ</th>
												<td>
													<table>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","8232","","당목","")' class='terName' terCode="8232" title="전남 완도군"><b>[전남]</b>당목</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","4006","","당진","")' class='terName' terCode="4006" title="충남 당진시"><b>[충남]</b>당진</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","9201","","대구동부터미널","")' class='terName' terCode="9201" title="대구 동구"><b>[대구]</b>대구동부터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9202","","대구북부","")' class='terName' terCode="9202" title="대구 서구"><b>[대구]</b>대구북부</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","9508","","대전도마동","")' class='terName' terCode="9508" title="대전 서구"><b>[대전]</b>대전도마동</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","9504","","대전서부터미널","")' class='terName' terCode="9504" title="대전 중구"><b>[대전]</b>대전서부터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","9509","","대전용두동","")' class='terName' terCode="9509" title="대전용두동"><b>[대전]</b>대전용두동</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9505","","대전청사시외","")' class='terName' terCode="9505" title="대전 서구"><b>[대전]</b>대전청사시외</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","4141","","대천해수욕장","")' class='terName' terCode="4141" title="충남 보령시"><b>[충남]</b>대천해수욕장</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","7085","","덕진동","")' class='terName' terCode="7085" title="전북 전주시"><b>[전북]</b>덕진동</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","4294","","덕산스파","")' class='terName' terCode="4294" title="충남 예산군"><b>[충남]</b>덕산스파</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","8019","","동광양","")' class='terName' terCode="8019" title="전남 광양시"><b>[전남]</b>동광양</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅁ</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","8024","","목포터미널","")' class='terName' terCode="8024" title="전남 목포시"><b>[전남]</b>목포터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1006","","문산공용","")' class='terName' terCode="1006" title="경기 파주시"><b>[경기]</b>문산공용</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅂ</th>
												<td>
													<table>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6013","","부곡","")' class='terName' terCode="6013" title="부곡"><b>[경남]</b>부곡</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9001","","부산동부터미널","")' class='terName' terCode="9001" title="부산 금정구"><b>[부산]</b>부산동부터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","4008","","부여","")' class='terName' terCode="4008" title="충남 부여군"><b>[충남]</b>부여</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1007","","부천","")' class='terName' terCode="1007" title="경기 부천시"><b>[경기]</b>부천</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","4024","","보령","")' class='terName' terCode="4024" title="충남 보령시"><b>[충남]</b>보령</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅅ</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","8034","","삼호공용버스","")' class='terName' terCode="8034" title="전남 영암군"><b>[전남]</b>삼호공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4040","","삽교천","")' class='terName' terCode="4040" title="충남 당진시"><b>[충남]</b>삽교천</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","0002","","상봉터미널","")' class='terName' terCode="0002" title="상봉터미널"><b>[서울]</b>상봉터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1010","","성남터미널","")' class='terName' terCode="1010" title="경기 성남시"><b>[경기]</b>성남터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","4292","","세종시","")' class='terName' terCode="4292" title="충남 연기군"><b>[충남]</b>세종시</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","4318","","세종청사","")' class='terName' terCode="4318" title="세종특별자치시"><b>[세종]</b>세종청사</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2019","","속초시외버스","")' class='terName' terCode="2019" title="강원 속초시"><b>[강원]</b>속초시외버스</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","8038","","순천터미널","")' class='terName' terCode="8038" title="전남 순천시"><b>[전남]</b>순천터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","1226","","신갈(용인)","")' class='terName' terCode="1226" title="경기 용인시"><b>[경기]</b>신갈(용인)</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4115","","신례원","")' class='terName' terCode="4115" title="충남 예산군"><b>[충남]</b>신례원</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","9614","","신복터미널","")' class='terName' terCode="9614" title="울산시 남구"><b>[울산]</b>신복터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4032","","신평","")' class='terName' terCode="4032" title="충남 당진시"><b>[충남]</b>신평</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅇ</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","5043","","안동","")' class='terName' terCode="5043" title="경북 안동시"><b>[경북]</b>안동</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","1060","","안양버스여객터미널","")' class='terName' terCode="1060" title="안양버스여객터미널"><b>[경기]</b>안양버스여객터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","1018","","안양터미널","")' class='terName' terCode="1018" title="경기 안양시"><b>[경기]</b>안양터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","6018","","양산터미널","")' class='terName' terCode="6018" title="경남 양산시"><b>[경남]</b>양산터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","8041","","여수터미널","")' class='terName' terCode="8041" title="전남 여수시"><b>[전남]</b>여수터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","8042","","여천터미널","")' class='terName' terCode="8042" title="전남 여수시"><b>[전남]</b>여천터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","5044","","영덕버스터미널","")' class='terName' terCode="5044" title="경북 영덕군"><b>[경북]</b>영덕버스터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","5046","","영주터미널","")' class='terName' terCode="5046" title="경북 영주시"><b>[경북]</b>영주터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6046","","영산","")' class='terName' terCode="6046" title="영산"><b>[경남]</b>영산</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","4015","","예산터미널","")' class='terName' terCode="4015" title="충남 예산군"><b>[충남]</b>예산터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","3026","","오창","")' class='terName' terCode="3026" title="충북 청주시"><b>[충북]</b>오창</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1861","","운정신도시","")' class='terName' terCode="1861" title="경기 파주시"><b>[경기]</b>운정신도시</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","9633","","울산공업탑터미널","")' class='terName' terCode="9633" title="울산 남구"><b>[울산]</b>울산공업탑터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9601","","울산터미널","")' class='terName' terCode="9601" title="울산 남구"><b>[울산]</b>울산터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>	
															<td class='ov3'><a href='javascript:terminalEndList("S","9502","","유성터미널","")' class='terName' terCode="9502" title="대전 유성구"><b>[대전]</b>유성터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1025","","용인터미널","")' class='terName' terCode="1025" title="경기 용인시"><b>[경기]</b>용인터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","6019","","의령터미널","")' class='terName' terCode="6019" title="의령터미널"><b>[경남]</b>의령터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9302","","인천종합터미널","")' class='terName' terCode="9302" title="인천 남구"><b>[인천]</b>인천종합터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","7093","","완산동","")' class='terName' terCode="7093" title="완산동"><b>[전북]</b>완산동</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>	
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅈ</th>
												<td>
													<table>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","7100","","장신대","")' class='terName' terCode="7100" title="장신대"><b>[전북]</b>장신대</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","7099","","전주대","")' class='terName' terCode="7099" title="전주대"><b>[전북]</b>전주대</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>	
															<td class='ov3'><a href='javascript:terminalEndList("S","7033","","전주터미널","")' class='terName' terCode="7033" title="전북 전주시"><b>[전북]</b>전주터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","5060","","점촌터미널","")' class='terName' terCode="5060" title="경북 문경시"><b>[경북]</b>점촌터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>	
															<td class='ov3'><a href='javascript:terminalEndList("S","3011","","제천터미널","")' class='terName' terCode="3011" title="충북 제천시"><b>[충북]</b>제천터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="편도" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","9015","","좌천","")' class='terName' terCode="9015" title="부산 기장군"><b>[부산]</b>좌천</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>	
															<td class='ov3'><a href='javascript:terminalEndList("S","3013","","증평터미널","")' class='terName' terCode="3013" title="충북 증평군"><b>[충북]</b>증평터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","6414","","진주시외버스터미널","")' class='terName' terCode="6414" title="경남 진주시"><b>[경남]</b>진주시외버스터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","6349","","진주개양(인천공항)","")' class='terName' terCode="6349" title="진주개양(인천공항)"><b>[인천]</b>진주개양(인천공항)</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","6040","","진주(서울남부,인천) ","")' class='terName' terCode="6040" title="진주(서울남부,인천) "><b>[경남]</b>진주(서울남부,인천)</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6025","","진해","")' class='terName' terCode="6025" title="경남 진해"><b>[경남]</b>진해</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅊ</th>
												<td>
													<table>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6044","","창녕","")' class='terName' terCode="6044" title="경남 창녕군"><b>[경남]</b>창녕</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","4020","","청양공용버스","")' class='terName' terCode="4020" title="충남 청양군"><b>[충남]</b>청양공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2037","","춘천터미널","")' class='terName' terCode="2037" title="강원 춘천시"><b>[강원]</b>춘천터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅌ</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2039","","태백","")' class='terName' terCode="2039" title="강원 태백시"><b>[강원]</b>태백</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅍ</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","5071","","포항","")' class='terName' terCode="5071" title="경북 포항시"><b>[경북]</b>포항</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","5283","","풍기ic터미널","")' class='terName' terCode="5283" title="풍기ic터미널"><b>[경북]</b>풍기ic터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅎ</th>
												<td>
													<table>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","4034","","한서대","")' class='terName' terCode="4034" title="충남 서산시"><b>[충남]</b>한서대</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","6032","","함양","")' class='terName' terCode="6032" title="경남 함양군"><b>[경남]</b>함양</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="편도" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","4022","","합덕","")' class='terName' terCode="4022" title="충남 당진시"><b>[충남]</b>합덕</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","8062","","해남터미널","")' class='terName' terCode="8062" title="전남 해남군"><b>[전남]</b>해남터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","4033","","해미","")' class='terName' terCode="4033" title="충남 서산시"><b>[충남]</b>해미</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9009","","해운대(수도권)","")' class='terName' terCode="9009" title="해운대(수도권)"><b>[부산]</b>해운대(수도권)</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="편도" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","9210","","현풍","")' class='terName' terCode="9210" title="대구 달성군"><b>[대구]</b>현풍</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4090","","홍성","")' class='terName' terCode="4090" title="충남 홍성군"><b>[충남]</b>홍성</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="편도" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2044","","홍천","")' class='terName' terCode="2044" title="강원 홍천군"><b>[강원]</b>홍천</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1038","","화정터미널","")' class='terName' terCode="1038" title="경기 고양시"><b>[경기]</b>화정터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="왕복" /></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
										<table id="startTerminalTransport" style="display:none;">
											<tr>
												<th>ㄱ</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1001","","가평터미널","")' class='terName' terCode="1001" title="경기 가평군"><b>[경기]</b>가평터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","4117","","갈산","")' class='terName' terCode="4117" title="충남 홍성군"><b>[충남]</b>갈산</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5194","","경북대상주","")' class='terName' terCode="5194" title="경북 상주시"><b>[경북]</b>경북대상주</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8233","","고금","")' class='terName' terCode="8233" title="전남 완도군"><b>[전남]</b>고금</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8003","","곡성공용버스","")' class='terName' terCode="8003" title="전남 곡성군"><b>[전남]</b>곡성공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>	
															<td class='ov2'><a href='javascript:terminalEndList("S","9613","","공업탑(해운대)","")' class='terName' terCode="9613" title="공업탑(해운대)"><b>[울산]</b>공업탑(해운대)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1720","","금강고속","")' class='terName' terCode="1720" title="금강고속"><b>[경기]</b>금강고속</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>	
															<td class='ov2'><a href='javascript:terminalEndList("S","1002","","금촌","")' class='terName' terCode="1002" title="경기 파주시"><b>[경기]</b>금촌</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5014","","기성터미널","")' class='terName' terCode="5014" title="경북 울진군"><b>[경북]</b>기성터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>	
															<td class='ov2'><a href='javascript:terminalEndList("S","6470","","김해장유공용버스","")' class='terName' terCode="6470" title="김해장유공용버스"><b>[경남]</b>김해장유공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㄴ</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","7094","","남노송동","")' class='terName' terCode="7094" title="남노송동"><b>[전북]</b>남노송동</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","2071","","남면","")' class='terName' terCode="2071" title="강원 양구군"><b>[강원]</b>남면</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8133","","남악","")' class='terName' terCode="8133" title="전남 무안군"><b>[전남]</b>남악</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8256","","남악도청","")' class='terName' terCode="8256" title="남악도청"><b>[전남]</b>남악도청</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","7103","","남원북부정류소","")' class='terName' terCode="7103" title="남원북부정류소"><b>[전북]</b>남원북부정류소</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8010","","남창","")' class='terName' terCode="8010" title="전남 해남군"><b>[전남]</b>남창</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","6338","","남해사거리","")' class='terName' terCode="6338" title="남해사거리"><b>[경남]</b>남해사거리</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8159","","녹진","")' class='terName' terCode="8159" title="전남 진도군"><b>[전남]</b>녹진</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㄷ</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","3023","","단양상진","")' class='terName' terCode="3023" title="단양상진"><b>[충북]</b>단양상진</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","3003","","단양터미널","")' class='terName' terCode="3003" title="충북 단양군"><b>[충북]</b>단양터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","9203","","대구남구","")' class='terName' terCode="9203" title="대구 수성구"><b>[대구]</b>대구남구</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8113","","덕양","")' class='terName' terCode="8113" title="전남 여수시"><b>[전남]</b>덕양</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","2009","","도계공용버스","")' class='terName' terCode="2009" title="강원 삼척시"><b>[강원]</b>도계공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","1221","","동아방송대","")' class='terName' terCode="1221" title="경기 안성시"><b>[경기]</b>동아방송대</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","2671","","동해공영","")' class='terName' terCode="2671" title="강원 동해시"><b>[강원]</b>동해공영</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8164","","땅끝마을","")' class='terName' terCode="8164" title="전남 해남군"><b>[전남]</b>땅끝마을</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅁ</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8109","","문화동","")' class='terName' terCode="8109" title="광주 북구"><b>[전남]</b>문화동</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅂ</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","7016","","반선","")' class='terName' terCode="7016" title="반선"><b>[전북]</b>반선</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8132","","배산","")' class='terName' terCode="8132" title="전남 장흥군"><b>[전남]</b>배산</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","2060","","백담사입구","")' class='terName' terCode="2060" title="강원 인제군"><b>[강원]</b>백담사입구</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8031","","보성터미널","")' class='terName' terCode="8031" title="전남 보성군"><b>[전남]</b>보성터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","9010","","부산동래","")' class='terName' terCode="9010" title="부산 동래구"><b>[부산]</b>부산동래</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","9007","","부산해운대","")' class='terName' terCode="9007" title="부산 해운대"><b>[부산]</b>부산해운대</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅅ</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8162","","산정","")' class='terName' terCode="8162" title="전남 해남군"><b>[전남]</b>산정</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","7019","","삼례공용버스","")' class='terName' terCode="7019" title="전북 완주군"><b>[전북]</b>삼례공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","4153","","삼흥고속","")' class='terName' terCode="4153" title="삼흥고속"><b>[충남]</b>삼흥고속</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","4045","","서천정류소","")' class='terName' terCode="4045" title="충남 서천군"><b>[충남]</b>서천정류소</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","8417","","섬진강(상행)","")' class='terName' terCode="8417" title="섬진강(상행)"><b>[전남]</b>섬진강(상행)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8345","","섬진강(하행)","")' class='terName' terCode="8345" title="전남 구례군"><b>[전남]</b>섬진강(하행)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","9402","","송정정류장","")' class='terName' terCode="9402" title="송정정류장"><b>[광주]</b>송정정류장</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","1011","","송탄터미널","")' class='terName' terCode="1011" title="경기 평택시"><b>[경기]</b>송탄터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","8069","","순천북부","")' class='terName' terCode="8069" title="전남 순천시"><b>[전남]</b>순천북부</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8679","","순천북부(하행)","")' class='terName' terCode="8679" title="순천북부(하행)"><b>[전남]</b>순천북부(하행)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","8346","","순천역","")' class='terName' terCode="8346" title="전남 순천시"><b>[전남]</b>순천역</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8680","","순천역(상행)","")' class='terName' terCode="8680" title="순천역(상행)"><b>[전남]</b>순천역(상행)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","9616","","신복(금아)","")' class='terName' terCode="9616" title="신복(금아)"><b>[울산]</b>신복(금아)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","4030","","쌍용동","")' class='terName' terCode="4030" title="쌍용동"><b>[충남]</b>쌍용동</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅇ</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5040","","안강터미널","")' class='terName' terCode="5040" title="경북 경주시"><b>[경북]</b>안강터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5256","","안강동부","")' class='terName' terCode="5256" title="안강동부"><b>[경북]</b>안강동부</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5042","","안덕","")' class='terName' terCode="5042" title="경북 청송군"><b>[경북]</b>안덕</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5166","","안동용상정류소","")' class='terName' terCode="5166" title="경북 안동시"><b>[경북]</b>안동용상정류소</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5286","","안동초교","")' class='terName' terCode="5286" title="경북 안동시"><b>[경북]</b>안동초교</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","1232","","안성","")' class='terName' terCode="1232" title="경기 안성시"><b>[경기]</b>안성</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1795","","안성시민회관","")' class='terName' terCode="1795" title="경기 안성시"><b>[경기]</b>안성시민회관</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","1020","","양평터미널","")' class='terName' terCode="1020" title="경기 양평군"><b>[경기]</b>양평터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1022","","여주태평리","")' class='terName' terCode="1022" title="경기 여주시"><b>[경기]</b>여주태평리</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5344","","역포","")' class='terName' terCode="5344" title="역포"><b>[경북]</b>역포</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","4313","","연무정류소","")' class='terName' terCode="4313" title="연무정류소"><b>[충남]</b>연무정류소</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5125","","영남대","")' class='terName' terCode="5125" title="충남 논산시"><b>[충남]</b>영남대</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8047","","영암터미널","")' class='terName' terCode="8047" title="전남 영암군"><b>[전남]</b>영암터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5280","","영주(꽃동산)","")' class='terName' terCode="5280" title="경북 영주시"><b>[경북]</b>영주(꽃동산)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5047","","영천버스터미널","")' class='terName' terCode="5047" title="경북 문경시"><b>[경북]</b>영천버스터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8131","","예당","")' class='terName' terCode="8131" title="전남 보성군"><b>[전남]</b>예당</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","7023","","오수공용버스","")' class='terName' terCode="7023" title="전북 임실군"><b>[전북]</b>오수공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","9251","","용계","")' class='terName' terCode="9251" title="용계"><b>[대구]</b>용계</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","7106","","우석대","")' class='terName' terCode="7106" title="우석대"><b>[전북]</b>우석대</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8158","","우수영","")' class='terName' terCode="8158" title="전남 해남군"><b>[전남]</b>우수영</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","7320","","우화","")' class='terName' terCode="7320" title="우화"><b>[전북]</b>우화</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8051","","원동","")' class='terName' terCode="8051" title="전남 완도군"><b>[전남]</b>원동</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","6282","","원지","")' class='terName' terCode="6282" title="경남 산청군"><b>[경남]</b>원지</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","2029","","원통","")' class='terName' terCode="2029" title="강원 인제군"><b>[강원]</b>원통</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","8084","","월송","")' class='terName' terCode="8084" title="전남 해남군"><b>[전남]</b>월송</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","4017","","유구터미널","")' class='terName' terCode="4017" title="충남 공주시"><b>[충남]</b>유구터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","5056","","의성","")' class='terName' terCode="5056" title="경북 의성군"><b>[경북]</b>의성</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","7027","","인월","")' class='terName' terCode="7027" title="전북 남원시"><b>[전북]</b>인월</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","2031","","인제","")' class='terName' terCode="2031" title="강원 인제군"><b>[강원]</b>인제</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","7098","","인후동","")' class='terName' terCode="7098" title="인후동"><b>[전북]</b>인후동</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","1108","","일죽","")' class='terName' terCode="1108" title="경기 안성시"><b>[경기]</b>일죽</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","7028","","임실공용버스","")' class='terName' terCode="7028" title="전북 임실군"><b>[전북]</b>임실공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅈ</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8054","","장성공영버스","")' class='terName' terCode="8054" title="전남 장성군"><b>[전남]</b>장성공영버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","6455","","장승포","")' class='terName' terCode="6455" title="장승포"><b>[경남]</b>장승포</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8248","","장평","")' class='terName' terCode="8248" title="전남 장흥군"><b>[전남]</b>장평</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","2032","","장평","")' class='terName' terCode="2032" title="강원 평창군"><b>[강원]</b>장평</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1030","","장호원공용버스","")' class='terName' terCode="1030" title="경기 이천시"><b>[경기]</b>장호원공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5359","","점촌북부","")' class='terName' terCode="5359" title="경북 문경시"><b>[경북]</b>점촌북부</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8130","","조성","")' class='terName' terCode="8130" title="전남 보성군"><b>[전남]</b>조성</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","3037","","주덕","")' class='terName' terCode="3037" title="충북 충주시"><b>[충북]</b>주덕</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8046","","정석(영산포)","")' class='terName' terCode="8046" title="전남 나주시"><b>[전남]</b>정석(영산포)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","6021","","진교공용버스","")' class='terName' terCode="6021" title="경남 하동군"><b>[경남]</b>진교공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","7034","","진안","")' class='terName' terCode="7034" title="전북 진안군"><b>[전북]</b>진안</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","7321","","진안삼거리","")' class='terName' terCode="7321" title="진안삼거리"><b>[전북]</b>진안삼거리</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","6038","","진주","")' class='terName' terCode="6038" title="경남 진주시"><b>[경남]</b>진주</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","6041","","진주(경남)","")' class='terName' terCode="6041" title="진주(경남)"><b>[경남]</b>진주(경남)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","6042","","진주(경원)","")' class='terName' terCode="6042" title="진주(경원)"><b>[경남]</b>진주(경원)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","6816","","진주(부산)","")' class='terName' terCode="6816" title="진주(부산)"><b>[경남]</b>진주(부산)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","6039","","진주부산교통","")' class='terName' terCode="6039" title="진주부산교통"><b>[경남]</b>진주부산교통</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","6048","","진주(경전여객)","")' class='terName' terCode="6048" title="경남 진주시"><b>[경남]</b>진주(경전여객)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","3014","","진천터미널","")' class='terName' terCode="3014" title="충북 진천군"><b>[충북]</b>진천터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅊ</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8073","","청계","")' class='terName' terCode="8073" title="전남 무안군"><b>[전남]</b>청계</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5065","","청도공용버스","")' class='terName' terCode="5065" title="경북 청도군"><b>[경북]</b>청도공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1034","","청평터미널","")' class='terName' terCode="1034" title="경기 가평군"><b>[경기]</b>청평터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅎ</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1051","","하남","")' class='terName' terCode="1051" title="경기 하남시"><b>[경기]</b>하남</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8070","","학동","")' class='terName' terCode="8070" title="광주 동구"><b>[광주]</b>학동</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8061","","함평터미널","")' class='terName' terCode="8061" title="전남 함평군"><b>[전남]</b>함평터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","1092","","호계동","")' class='terName' terCode="1092" title="경기 안양시"><b>[경기]</b>호계동</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8064","","홍농터미널","")' class='terName' terCode="8064" title="전남 영광군"><b>[전남]</b>홍농터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","2047","","횡성","")' class='terName' terCode="2047" title="강원 횡성군"><b>[강원]</b>횡성</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="운행정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
										<table id="startTerminalRoute" style="display:none;">
											<tr>
												<th>ㄱ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","9013","","기장버스터미널","")' class='terName' terCode="9013" title="기장버스터미널"><b>[부산]</b>기장버스터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","8137","","격포","")' class='terName' terCode="8137" title="전북 부안군"><b>[전북]</b>격포</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","7003","","고창터미널","")' class='terName' terCode="7003" title="전북 고창군"><b>[전북]</b>고창터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","8347","","광영","")' class='terName' terCode="8347" title="전남 광양시"><b>[전남]</b>광영</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","8488","","광천","")' class='terName' terCode="8488" title="전남 순천시"><b>[전남]</b>광천</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5011","","구미터미널","")' class='terName' terCode="5011" title="경북 구미시"><b>[경북]</b>구미터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","5252","","구시포","")' class='terName' terCode="5252" title="구시포"><b>[경북]</b>구시포</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","7078","","구천동","")' class='terName' terCode="7078" title="구천동"><b>[전북]</b>구천동</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","7006","","군산","")' class='terName' terCode="7006" title="전북 군산시"><b>[전북]</b>군산</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5012","","군위공용버스","")' class='terName' terCode="5012" title="경북 군위군"><b>[경북]</b>군위공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","0010","","김포공항","")' class='terName' terCode="0010" title="김포공항"><b>[서울]</b>김포공항</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","6006","","김해시외버스","")' class='terName' terCode="6006" title="경남 김해시"><b>[경남]</b>김해시외버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2001","","간성","")' class='terName' terCode="2001" title="경기 고성군"><b>[경기]</b>간성</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㄴ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","8119","","남부","")' class='terName' terCode="8119" title="남부"><b>[전남]</b>남부</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","4023","","논산","")' class='terName' terCode="4023" title="충남 논산시"><b>[충남]</b>논산</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㄷ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","8502","","대구","")' class='terName' terCode="8502" title="전남 강진군"><b>[전남]</b>대구</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","9024","","대구(고려여객)","")' class='terName' terCode="9024" title="대구 동구"><b>[대구]</b>대구(고려여객)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","9227","","대구대학교","")' class='terName' terCode="9227" title="대구 남구"><b>[대구]</b>대구대학교</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","9204","","대구서부","")' class='terName' terCode="9204" title="대구 남구"><b>[대구]</b>대구서부</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","9503","","대전복합터미널","")' class='terName' terCode="9503" title="대전 동구"><b>[대전]</b>대전복합터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","9512","","대전시외","")' class='terName' terCode="9512" title="대전 동구"><b>[대전]</b>대전시외</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","9235","","동대구","")' class='terName' terCode="9235" title="대구 동구"><b>[대구]</b>동대구</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","0001","","동서울터미널","")' class='terName' terCode="0001" title="동서울터미널"><b>[서울]</b>동서울터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅁ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","6010","","마산버스터미널","")' class='terName' terCode="6010" title="경남 창원시"><b>[경남]</b>마산버스터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅂ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","9604","","방어진시외버스터미널","")' class='terName' terCode="9604" title="울산 동구"><b>[울산]</b>방어진시외버스터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","6264","","백무동","")' class='terName' terCode="6264" title="경남 함양군"><b>[경남]</b>백무동</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","7053","","뱀사골","")' class='terName' terCode="7053" title="전북 남원시"><b>[전북]</b>뱀사골</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","9304","","부평역","")' class='terName' terCode="9304" title="인천 부평구"><b>[인천]</b>부평역</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>	
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅅ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2552","","산양리","")' class='terName' terCode="2552" title="강원 화천군"><b>[강원]</b>산양리</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","8103","","삼거리","")' class='terName' terCode="8103" title="삼거리"><b>[전남]</b>삼거리</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2015","","삼척종합버스","")' class='terName' terCode="2015" title="강원 삼척시"><b>[강원]</b>삼척종합버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","1715","","상봉동","")' class='terName' terCode="1715" title="경기 진주시"><b>[경기]</b>상봉동</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","5033","","상주터미널","")' class='terName' terCode="5033" title="경북 상주시"><b>[경북]</b>상주터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","7067","","상하","")' class='terName' terCode="7067" title="상하"><b>[전북]</b>상하</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","4010","","서산","")' class='terName' terCode="4010" title="충남 서산시"><b>[충남]</b>서산</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","1008","","서수원터미널","")' class='terName' terCode="1008" title="경기 수원시"><b>[경기]</b>서수원터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","5035","","선산","")' class='terName' terCode="5035" title="경북 구미시"><b>[경북]</b>선산</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","0019","","센트럴(강남)","")' class='terName' terCode="0019" title="센트럴(강남)"><b>[서울]</b>센트럴(강남)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","6225","","소태터미널","")' class='terName' terCode="6225" title="소태터미널"><b>[경남]</b>소태터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","1012","","수원터미널","")' class='terName' terCode="1012" title="경기 수원시"><b>[경기]</b>수원터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","7020","","순창터미널","")' class='terName' terCode="7020" title="전북 순창군"><b>[전북]</b>순창터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","7021","","신태인공용버스","")' class='terName' terCode="7021" title="전북 정읍시"><b>[전북]</b>신태인공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","1128","","신갈영덕","")' class='terName' terCode="1128" title="경기 용인시"><b>[경기]</b>신갈영덕</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅇ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","1015","","안산","")' class='terName' terCode="1015" title="경기 안산시"><b>[경기]</b>안산</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","1115","","안산시청앞","")' class='terName' terCode="1115" title="안산시청앞"><b>[경기]</b>안산시청앞</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","2022","","양구공용버스","")' class='terName' terCode="2022" title="강원 양구군"><b>[강원]</b>양구공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5315","","양정","")' class='terName' terCode="5315" title="경북 상주시"><b>[경북]</b>양정</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","8045","","영광공용버스","")' class='terName' terCode="8045" title="전남 영광군"><b>[전남]</b>영광공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","2025","","영월공용버스","")' class='terName' terCode="2025" title="강원 영월군"><b>[강원]</b>영월공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","5049","","예천공용버스","")' class='terName' terCode="5049" title="경북 예천군"><b>[경북]</b>예천공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","6231","","오산","")' class='terName' terCode="6231" title="경남 고성군"><b>[경남]</b>오산</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","5050","","온정공용버스","")' class='terName' terCode="5050" title="경북 울진군"><b>[경북]</b>온정공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","8311","","용정","")' class='terName' terCode="8311" title="용정"><b>[전남]</b>용정</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","5054","","울진터미널","")' class='terName' terCode="5054" title="경북 울진군"><b>[경북]</b>울진터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","2028","","원주","")' class='terName' terCode="2028" title="강원 원주시"><b>[강원]</b>원주</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","1027","","의정부종합버스터미널","")' class='terName' terCode="1027" title="경기 의정부"><b>[경기]</b>의정부종합버스터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","7026","","익산","")' class='terName' terCode="7026" title="전북 익산시"><b>[전북]</b>익산</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅈ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","7030","","장수공용버스","")' class='terName' terCode="7030" title="전북 장수군"><b>[전북]</b>장수공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","2250","","장항","")' class='terName' terCode="2250" title="강원 홍천군"><b>[강원]</b>장항</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","7084","","정읍","")' class='terName' terCode="7084" title="전북 정읍시"><b>[전북]</b>정읍</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","9005","","정읍공용버스","")' class='terName' terCode="9005" title="전북 정읍시"><b>[전북]</b>정읍공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2034","","주문진터미널","")' class='terName' terCode="2034" title="강원 강릉시"><b>[강원]</b>주문진터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5061","","주왕산공용버스","")' class='terName' terCode="5061" title="주왕산공용버스"><b>[경북]</b>주왕산공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","8059","","진도공용버스","")' class='terName' terCode="8059" title="전남 진도군"><b>[전남]</b>진도공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5064","","진보공용버스","")' class='terName' terCode="5064" title="경북 청송군"><b>[경북]</b>진보공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","6023","","진주","")' class='terName' terCode="6023" title="경남 진주시"><b>[경남]</b>진주</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅊ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","6028","","창원","")' class='terName' terCode="6028" title="경남 창원시"><b>[경남]</b>창원</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","4019","","천안","")' class='terName' terCode="4019" title="충남 천안시"><b>[충남]</b>천안</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2553","","철원","")' class='terName' terCode="2553" title="철원"><b>[강원]</b>철원</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5066","","청송공용버스","")' class='terName' terCode="5066" title="청송공용버스"><b>[경북]</b>청송공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","3015","","청주","")' class='terName' terCode="3015" title="충북 청주시"><b>[충북]</b>청주</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","3017","","충주","")' class='terName' terCode="3017" title="충북 충주시"><b>[충북]</b>충주</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅌ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","8185","","태백(전남)","")' class='terName' terCode="8185" title="태백(전남)"><b>[전남]</b>태백(전남)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","4021","","태안","")' class='terName' terCode="4021" title="충남 태안군"><b>[충남]</b>태안</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅍ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","1035","","평택터미널","")' class='terName' terCode="1035" title="경기 평택시"><b>[경기]</b>평택터미널</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5069","","평해공용버스","")' class='terName' terCode="5069" title="경북 울진군"><b>[경북]</b>평해공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>ㅎ</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","5158","","하양","")' class='terName' terCode="5158" title="경북 경산시"><b>[경북]</b>하양</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","8060","","학교공용버스","")' class='terName' terCode="8060" title="학교공용버스"><b>[전남]</b>학교공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2043","","호산공용버스","")' class='terName' terCode="2043" title="강원 삼척시"><b>[강원]</b>호산공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","2045","","화천공용버스","")' class='terName' terCode="2045" title="화천공용버스"><b>[강원]</b>화천공용버스</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="노선정보" /></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<!-- //출발지 -->
							<!-- 도착지 -->
							<div class="parts2">
								<div class="seletw">
									<input type="hidden" id="terCode" />
									<input type="hidden" id="terName" />
									<select id="finishArea" style="width:143px;" title="지역 선택">
										<option value="">전체</option>
										<option value="서울">서울</option>
										<option value="경기">경기</option>
										<option value="부산">부산</option>
										<option value="인천">인천</option>
										<option value="광주">광주</option>
										<option value="대전">대전</option>
										<option value="대구">대구</option>
										<option value="울산">울산</option>
										<option value="강원">강원</option>
										<option value="충북">충북</option>
										<option value="충남">충남</option>
										<option value="전북">전북</option>
										<option value="전남">전남</option>
										<option value="경북">경북</option>
										<option value="경남">경남</option>
										<option value="제주">제주</option>
									</select> &nbsp;
									<input type="text" class="txts" id="finishTerminalNm" value="터미널명을 입력해주세요" style="width:158px; ime-mode:active;" onkeydown="javascript: if (event.keyCode == 13) {$('#finishSearchBtn').click();}">
									<a href="#" class="btn1"><img id="finishSearchBtn" src="/images/button/bts_search.gif" alt="검색" class="bts"  /></a>
								</div>
								<div style="margin:5px 0 -10px 0;">
									<table style="border:1px solid #cccccc; width:355px; cursor:pointer;">
										<tr>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㄱ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㄴ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㄷ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㄹ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅁ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅂ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅅ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅇ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅈ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅊ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅋ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅌ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅍ</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">ㅎ</td>
										</tr>
									</table>
								</div>
								<div id="finishTerminalListDiv" class="partsbox">
									<strong class="ltit">도착지</strong>
									<span id="finishTitle" class="ltit2">인터넷 예매 가능</span>	
									<div id="finishTerminalList" class="layscroll" style="overflow:hidden; position:relative;">
										<table id="finishTerminalListTable" style="position:relative; display:none;">
											<tr><th>ㄱ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㄴ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㄷ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㄹ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㅁ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㅂ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㅅ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㅇ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㅈ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㅊ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㅋ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㅌ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㅍ</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>ㅎ</th><td><table name="moeum_finish"></table></td></tr>
										</table>
										<table id="finishTerminalEtcListTable" style="position:absolute; display:none; border-top:0px;">
											<tr><th>ㄱ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㄴ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㄷ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㄹ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㅁ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㅂ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㅅ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㅇ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㅈ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㅊ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㅋ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㅌ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㅍ</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>ㅎ</th><td><table name="moeum_finish_etc"></table></td></tr>
										</table>
										<div id="finishTerminalListNone" style="display:block; overflow:hidden;"><center><img style="margin-top:40px;" src="/images/popup/selectStartTerminal.jpg" /></center></div>
										<div id="finishTerminalListSearch" style="position:relative; display:none; overflow:hidden; margin:-60px 0 0 -20px;"><center><img src="/images/common/load.gif" /></center></div>
									</div>
								</div>
							</div>
							<!-- //도착지 -->
						</div>
						<div class="laybtn"><a href="javascript:$.fancybox.close();"><img src="/images/button/btn_close.gif" alt="닫기" /></a></div>
						<a href="javascript:$.fancybox.close();" class="layclose"><img src="/images/popup/close.gif" alt="닫기" /></a>
					</div>
					<div class="laycont1_btm"></div>
				</div>
				<div id="loading" style="display:none;"><img id="loading" src="/images/common/load.gif"/></div>
			</div>
	</div>		
</body>
</html>