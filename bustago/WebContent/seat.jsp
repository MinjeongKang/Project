<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="utf-8" lang="utf-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BusTago</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Expires" content="1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta name="keywords"
	content="시외버스, 시외버스 예매, 시외버스터미널, 터미널, 서울남부터미널, 서울 남부 터미널, 서울남부터미널 예매, 서울남부터미널 예매,시외버스터미널 예매, 시외버스 요금, 시외버스 시간표">
<meta name="description"
	content="시외버스  예매 시외버스 터미널 예매  서울남부터미널 서울 남부 터미널 예매, 서울 남부 터미널 예매 시외버스터미널  시외버스 요금 시외버스 시간표 ">

<link type="text/css" rel="stylesheet" media="screen"
	href="/css/jquery.fancybox.css" />
<link type="text/css" rel="stylesheet" href="/css/skins/all.css?v=1.0.2" />
<link type="text/css" rel="stylesheet" href="/css/jquery.ui.css" />
<link type="text/css" rel="stylesheet"
	href="/css/jquery.loading.min.css" />
<link type="text/css" rel="stylesheet" href="/css/buttons.css" />
<link type="text/css" rel="stylesheet" href="/css/global.css" />
<link type="text/css" rel="stylesheet" media="screen"
	href="/css/jquery.select2.css" />

<script type="text/javascript" src="/js/jquery/jquery-2.0.0.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.json2.js"></script>
<script type="text/javascript"
	src="/js/jquery/jquery.filterJSON.plugin.js"></script>
<script type="text/javascript"
	src="/js/jquery/jquery.fancybox.js?v=2.1.5"></script>
<script type="text/javascript" src="/js/jquery/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/jquery/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript"
	src="/js/jquery/jquery.simplemodal-1.4.4.js"></script>
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

<script type="text/javascript"
	src="/js/netfunnel/netfunnel-2.1.16-bustago.js"></script>
<script type="text/javascript" src="/js/netfunnel/skin.js"></script>
<style>
#simplemodal-overlay {
	background-color: #000;
}
</style>
<script type="text/javascript" src="/script/jquery-2.0.0.js"></script>
<script type="text/javascript">
	var temp = "";
	chkCnt = 0;
	seatNo = "";
	seatNos = "";
	$(function() {
		$("div#popup").hide();
		$("div#seatbox").hide();
		$("table#seat45").hide();
		$("span#enrollseat").hide();
		$("input#avaseat").hide();
		$("img#seatsubmit").hide();
		$("#adultCnt").change(function() {
			adulttemp = "";
			if ((parseInt($('#adultCnt').val()) + parseInt($('#childrenCnt').val())) > 5 || parseInt($('#adultCnt').val()) == 0 && parseInt($('#childrenCnt').val()) == 0) {
				layeralert("인원수를 확인해주세요");
				$("#adultCnt").val("0");
			}
			
			adulttemp += parseInt($('#adultCnt').val());
			$("#adultCount").val(adulttemp);
		});

		$("#childrenCnt").change(function() {
			childtemp = "";
			
			if ((parseInt($('#adultCnt').val()) + parseInt($('#childrenCnt').val())) > 5 || parseInt($('#adultCnt').val()) == 0 && parseInt($('#childrenCnt').val()) == 0) {
				alert("인원수를 확인해주세요");
				$("#childrenCnt").val("0");
			}
			
			childtemp += parseInt($('#childrenCnt').val());
			$("#childCount").val(childtemp);
		});

		$("img#peoplesubmit").click(function() {
		/* var adults = parseInt($('#adultCnt').val());
		var kids = parseInt($('#childrenCnt').val());
		if ((adults + kids) > 5 || (adults == 0 & kids == 0)) {
		alert("인원수를 확인하세요");
		} else {
		$("table#seat45").show(1000); 
		$("input#seat1").html("input#adultCount");
		$("input#seat2").html("input#childCount");
		} */
			var childParseInt = parseInt(childtemp);
			var adultParseInt = parseInt(adulttemp);
			totalpeople = (childParseInt + adultParseInt);

			if ((childParseInt + adultParseInt) > 5 || (adultParseInt == 0 && childParseInt == 0)) {
				alert("수를 확인하세요");
			}
			
			$("table#seat45").show(1000);
			$("img#seatsubmit").show(1000);
		});

		$("input[type=checkbox]").click(function() {
			var chkCnt = 0;
			var temp = "";

			$("input[name='checkbox']").each(function() {
				if (this.checked) {
					temp += this.value + "/"
					chkCnt++;
					if (chkCnt > totalpeople) {
						this.checked = false;
					}
				}
			});
			$("#avaseat").val(temp);
		});

		/* $(':checkbox').each(function() {
			if ($(this).is(':checked'))
				chkCnt++;
			//console.log("1:"+chkCnt);
			$(this).click(function() {
				if (seatNo == "") {
					seatNo = $(this).parent().text();
				} else {
					if (chkCnt < $('#totCnt').val())
						seatNo += "," + $(this).parent().text();
				}
				if ($(this).is(':checked')) {
					chkCnt++;
					//console.log("2-1:"+chkCnt);
				} else {
					chkCnt--;
					//console.log("2-2:"+chkCnt);
				}

				if (chkCnt > $('#totCnt').val() && $(this).is(':checked')) {
					chkCnt--;
					layerAlert('더이상 좌석을 선택 할 수 없습니다');
					return false;
				} else {
					if ($(this).is(':checked'))
						setBusSeat($(this).parent().text(), 2);//선점
					else
						setBusSeat($(this).parent().text(), 3);//선점해지
					setSessionSeat($('#seatNos').val());
				}
				//console.log("3:"+chkCnt);
			});
		}); */

		/* 	var temp = "";
			for (var i = 0; i < $("input[type=checkbox]").length; i++) {

				if ($("input[type=checkbox]").eq(i).is(':checked'))
					chkCnt++;

				$(this).click(function() {
					if ($(this).is(':checked')) {
						chkCnt++;
						alert(chkCnt);
						temp += $("input[type=checkbox]").eq(i).val() + '번 ';
						//console.log("2-1:"+chkCnt);
					} else {
						chkCnt--;
						//console.log("2-2:"+chkCnt);
					}

					chkCnt++;
					alert(chkCnt);

					chkCnt--;
					alert(chkCnt);
				});

			}

			$("#avaseat").val(temp); */

		$("img#seatsubmit").click(function() {
			$("#popup").dialog();

			$("span#enrollseat").show(1000);
			$("input#avaseat").show(1000);
			var adultpay = 26000;
			var childpay = 13000;
			totFee = 0;
			totFee = (adultpay * adulttemp) + (childpay * childtemp);

			$("input#totalcost").val(totFee);
		});

		$("img#seatConfirm").click(function() {
			/* 카드정보 입력란.show(1000); */
		});
		
		$("img#seatConfirm").click(function() {
			
			$("form#yeFrm").submit();
		});
	});
</script>
</head>
<body>
	<div class="invisible">
		<p>바로가기</p>
		<ul>
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

		<div class="container bg1">
			<div class="location">
				<a href="/kr/index.do" class="home">HOME</a> &gt; <a
					href="/kr/ticket/ticket.do">승차권 예매</a> &gt; <a class="state">승차권
					예매</a>
			</div>

			<h2 class="title">
				<img src="/images/ticket/title.gif" alt="승차권예매" />
			</h2>

			<p class="step">
				<img src="/images/ticket/step01.gif" alt="예매정보" />
			</p>

			<div class="contents" id="Contents">
				<div class="content" id="Content">
					<p class="des">버스타고(전국시외버스 통합전산망)의 승차권 예매화면 입니다.</p><br>
					
					<form action="/bustagoApp/a.action" method="post" id="selectpersonFrm" name="selectpersonFrm">
						<div class="partbox">
							<div class="ss">
								<label for="adult"><img
									src="/images/ticket/tt_adult.gif" alt="성인" /></label> <select
									style="width: 65px;" id="adultCnt" name="adultCnt">
									<option value="0">0명</option>
									<option value="1">1명</option>
									<option value="2">2명</option>
									<option value="3">3명</option>
									<option value="4">4명</option>
									<option value="5">5명</option>
								</select>
							</div>

							<div class="ss">
								<label for="child"><img
									src="/images/ticket/tt_child.gif" alt="아동" /> </label> <select
									style="width: 65px;" id="childrenCnt" name="childrenCnt">
									<option value="0">0명</option>
									<option value="1">1명</option>
									<option value="2">2명</option>
									<option value="3">3명</option>
									<option value="4">4명</option>
									<option value="5">5명</option>
								</select>
							</div>
							
							<img alt="조회하기" src="/images/button/btn_check.gif" id="peoplesubmit" name="peoplesubmit">
						</div>
					</form>

					<form action="/bustagoApp/b.action" method="post" id="ticketFrm" style="width: 627px; height: 256px">
						<div class="seatbox" style="background: url('/images/reserve/busback.PNG'); width: 780px; height: 251px; position: relative;">
							<!-- seat -->
							<div class="bus" id="seatDiv" style="width: 700px; height: 220px;">
								<br>
								<table id="seat45" style="width: 724px">
									<colgroup>
										<col width="50px">
										<col width="50px">
										<col width="50px">
										<col width="50px">
										<col width="50px">
										<col width="50px">
										<col width="50px">
										<col width="50px">
										<col width="50px">
										<col width="50px">
									</colgroup>

									<tbody>
										<tr>
											<c:forEach var="i" begin="0" end="9" items="${busseatList}"
												varStatus="cnt">
												<c:choose>
													<c:when test="${i.flag eq 'Y' }">
														<td><input type="checkbox" name="checkbox"
															value="${i.seat }"><label>${i.seat}</label></td>
													</c:when>
													<c:otherwise>
														<td><input type="checkbox" name="checkbox"
															value="${i.seat }" disabled="disabled"><label>${i.seat}</label></td>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</tr>
										<tr>
											<c:forEach var="i" begin="10" end="19" items="${busseatList}"
												varStatus="cnt">
												<c:choose>
													<c:when test="${i.flag eq 'Y' }">
														<td><input type="checkbox" name="checkbox"
															value="${i.seat }"><label>${i.seat}</label></td>
													</c:when>
													<c:otherwise>
														<td><input type="checkbox" name="checkbox"
															value="${i.seat }" disabled="disabled"><label>${i.seat}</label></td>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</tr>
										<tr>
											<c:forEach var="i" begin="20" end="29" items="${busseatList}"
												varStatus="cnt">
												<c:choose>
													<c:when test="${i.flag eq 'Y' }">
														<td><input type="checkbox" name="checkbox"
															value="${i.seat }"><label>${i.seat}</label></td>
													</c:when>
													<c:otherwise>
														<td><input type="checkbox" name="checkbox"
															value="${i.seat }" disabled="disabled"><label>${i.seat}</label></td>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</tr>
										<tr>
											<c:forEach var="i" begin="30" end="39" items="${busseatList}"
												varStatus="cnt">
												<c:choose>
													<c:when test="${i.flag eq 'Y' }">
														<td><input type="checkbox" name="checkbox"
															value="${i.seat }"><label>${i.seat}</label></td>
													</c:when>
													<c:otherwise>
														<td><input type="checkbox" name="checkbox"
															value="${i.seat }" disabled="disabled"><label>${i.seat}</label></td>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</tr>
										<tr>
											<c:forEach var="i" begin="40" end="40" items="${busseatList}"
												varStatus="cnt">
												<c:choose>
													<c:when test="${i.flag eq 'Y' }">
														<td><input type="checkbox" name="checkbox"
															value="${i.seat }"><label>${i.seat}</label></td>
													</c:when>
													<c:otherwise>
														<td><input type="checkbox" name="checkbox"
															value="${i.seat }" disabled="disabled"><label>${i.seat}</label></td>
													</c:otherwise>

												</c:choose>

											</c:forEach>

											<%-- <c:forEach var="i" items="${busseatList}" varStatus="cnt">

								<c:choose>
									<c:when test="${i.seat eq 10  }">
										<br>
										<c:when test="${i.flag eq 'Y' }">
											<td><input type="checkbox" name="checkbox"
												value="${i.seat }"><label>${i.seat}</label></td>
										</c:when>
									<c:otherwise>
										<td><input type="checkbox" name="checkbox"
											value="${i.seat }" disabled="disabled"><label>${i.seat}</label></td>
									</c:otherwise>
									</c:when>
								</c:choose>

							</c:forEach> --%>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</form>
					<img alt="좌석제출" src="/images/button/bts_ok.gif" id="seatsubmit" name="seatsubmit" value="좌석제출"><br>
				</div>
			</div>
		</div>

		<div id="popup" style="background-color: gray; width: 310px; height: 248px;">
		<form action="/bustagoApp/yeDataAction.action" name="yeFrm" id="yeFrm">
			<span class="seat" id="enrollseat"> 
				성인 : <input type="text" id="adultCount" name="adultCount" value="${adultCount }" style="width: 103px;">매 <br> 
				아동 : <input type="text" id="childCount" name="childCount" value="${childCount}" style="width: 101px;">매<br> 
				선택좌석 : <input type="text" id="avaseat" name="avaseat" value="${avaseat }"> <br>--------------------------------------<br>
				금액 : <input type="text" id="totalcost" name="totalcost" value=""><br>
				
				<a>위 정보가 맞습니까?</a><br> 
				<span> 
					
						<img src="/images/button/btn_ok.gif" id="seatConfirm" name="seatConfirm">
					
					<img src="/images/button/btn_cancel.gif">
			</span>
			</span>
			</form>
		</div>

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
		</div>
		<script type="text/javascript">
			if (self.name != "") {
				document
						.writeln("<div><a href='https://m.bustago.or.kr:444/mobus' style='display:block; width:640px; margin:0 auto;' target=\"_top\" ><img src='/images/main/bustago_mobile_icon.gif' alt='모바일 웹사이트로 이동' width='640' height='83' /></a></div>");
			}
		</script>
</body>
</html>