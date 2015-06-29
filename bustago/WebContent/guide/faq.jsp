<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
<script type="text/javascript">
	$(document).ready(function() {
		$("a#noticeBtn").click(function() {
			$("div.dvwrap").hide();

			$.ajax({
				url : '/guide/notice.jsp',
				dataType : 'html',
				success : function(data) {
					$("div.dvwrap").html(data);
					$("div.dvwrap").show();
				}
			});
		});

		$("a#faqBtn").click(function() {
			$("div.dvwrap").hide();
			$.ajax({
				url : '/guide/faq.jsp',
				dataType : 'html',
				success : function(data) {
					$("div.dvwrap").html(data);
					$("div.dvwrap").show();
				}
			});
		});

		$("a#questionBtn").click(function() {
			$("div.dvwrap").hide();
			$.ajax({
				url : '/guide/question.jsp',
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

		<div class="container bg5">
			<div class="location">
				<a href="/kr/index.do" class="home">HOME</a> &gt; <a
					href="/kr/support/notice/notice.do">고객지원</a> &gt; <a class="state">FAQ</a>
			</div>

			<h2 class="title">
				<img id="lnbTitle" src="/images/customer/h2.gif" alt="고객센터" />
			</h2>

			<div class="contents" id="Contents">
				<div class="lnbs" id="Lnb">
					<!-- lnb -->
					<p class="lnbt">
						<img src="/images/reserve/lnb_tit.gif" alt="" />
					</p>
					<div class="slnb">
						<ul class="lnb" id="support">
							<li><a href="/bustagoApp/noticeAction.action">공지사항</a></li>
							<li><a href="/guide/faq.jsp">FAQ</a></li>
							<li><a href="/guide/question.jsp">1 : 1 문의</a></li>
							<li><a href="/bustagoApp/lostListAction.action">유실물센터</a></li>
							
						</ul>
					</div>
					<!-- //lnb -->
				</div>

				<div class="content" id="Content">
					<!-- content -->
					<h3 class="stit">
						<img src="/images/customer/h3_faq.gif" alt="FAQ" />
					</h3>
					<p class="des">사용 중 불편한 점이나 궁금한 사항은 FAQ를 이용해주세요, 원하시는 답변을 찾지
						못하셨다면 연락처를 통해 문의바랍니다.</p>

					<div id="faq0">
						<div class="faqsearch">
							<ul class="tabed_faq">
								<li class="selected"><a href="javascript:funcChange(0);">승차권
										예매</a></li>
								<li><a href="javascript:funcChange(1);">승차권 조회/변경/취소</a></li>
								<li><a href="javascript:funcChange(2);">운행정보</a></li>
								<li><a href="javascript:funcChange(3);">기타</a></li>
							</ul>
						</div>

						<div class="faqbox">
							<ul class="faq_list">
								<li><strong><a href="#none"><span>[승차권
												예매]</span> 인터넷 예매좌석 말고 터미널 좌석이 따로 있나요?</a></strong>
									<p>
										각 터미널 별로 판매 좌석과 인터넷 예매 좌석이 동일한 터미널이 있으며, 그렇지 않은 터미널이 있습니다.<br />
										동일한 터미널은 인터넷에서 매진되면 현장에서도 매진이며, 그렇지 않은 터미널은 일부분에 대해서 터미널 현장
										발권이 가능합니다.<br /> ※ 자세한 사항은 터미널로 연락하여 문의 하시기 바랍니다.<br />
									</p></li>

								<li><strong><a href="#none"><span>[승차권
												예매]</span> 인터넷 예매 후 출발 몇 시간전까지 가야 합니까?</a></strong>
									<p>출발전까지 가셔서 표를 받으시면 됩니다.</p></li>

								<li><strong><a href="#none"><span>[승차권
												예매]</span> 체크카드로도 인터넷 예매가 가능한가요?</a></strong>
									<p>체크카드로도 가능합니다.</p></li>

								<li><strong><a href="#none"><span>[승차권
												예매]</span> 우등과 일반버스의 차이는 무엇인가요?</a></strong>
									<p>
										시외버스에서는 우등은 28석, 일반을 45석으로 운영 하며, 운임 요금은 동일합니다. </br>단, 일부노선에 한하여
										차이가 있을 수 있습니다.
									</p></li>

								<li><strong><a href="#none"><span>[승차권
												예매]</span> 사파리나 구글, 크롬 등 여러 개의 브라우저에서 예매가 가능한가요?</a></strong>
									<p>새롭게 변경된 버스타자 홈페이지에선 가능 합니다.</p></li>

								<li><strong><a href="#none"><span>[승차권
												예매]</span> 상담원과 전화로 예매가 가능합니까?</a></strong>
									<p>예매는 인터넷으로 직접 신용카드나 체크카드로 예매 하셔야 합니다.</p></li>

								<li><strong><a href="#none"><span>[승차권
												예매]</span> 터미널에서 발권받은 승차권을 집에서 인터넷으로 취소가 가능합니까?</a></strong>
									<p>터미널 발권 티켓은 터미널에서만 취소가 가능합니다. 직접 티켓을 가지고 오셔야 취소처리가 됩니다.</p></li>

								<li><strong><a href="#none"><span>[승차권
												예매]</span> 티켓이 찢어지거나 물에 젖었거나 승차권이 손상되었을 경우 사용이 가능합니까?</a></strong>
									<p>터미널에서 직원이 판단하기 때문에 해당 터미널에 문의 바랍니다.</p></li>

								<li><strong><a href="#none"><span>[승차권
												예매]</span> 홈티켓은 안되나요?</a></strong>
									<p>현재 홈티켓 서비스는 안하고 있습니다</p></li>

								<li><strong><a href="#none"><span>[승차권
												예매]</span> 인터넷으로 예매가능한 좌석은 최대 몇 개까지 가능한가요?</a></strong>
									<p>각 터미널별 인터넷 예매가능한 좌석 수가 정해져 있습니다. 정확한 좌석수는 터미널로 문의하시기
										바랍니다.</p></li>
							</ul>
						</div>
					</div>
					<div id="faq1" style="display: none;">
						<div class="faqsearch">
							<ul class="tabed_faq">
								<li><a href="javascript:funcChange(0);">승차권 예매</a></li>
								<li class="selected"><a href="javascript:funcChange(1);">승차권
										조회/변경/취소</a></li>
								<li><a href="javascript:funcChange(2);">운행정보</a></li>
								<li><a href="javascript:funcChange(3);">기타</a></li>
							</ul>
						</div>

						<div class="faqbox">
							<ul class="faq_list">
								<li><strong><a href="#none"><span>[승차권
												조회/변경/취소]</span> 위약금이란 무엇인가요?</a></strong>
									<p>예매하고 버스이용 안할 시에는 거기에 출발날짜 기준으로 10%, 20% 위약금이 나옵니다.</p></li>

								<li><strong><a href="#none"><span>[승차권
												조회/변경/취소]</span> 카드 취소 시 현금으로 돌려주나요?</a></strong>
									<p>카드 취소는 현금이 아닌 카드 승인 취소로 처리 됩니다.</p></li>

								<li><strong><a href="#none"><span>[승차권
												조회/변경/취소]</span> 신용카드로 인터넷이나 터미널에서 표를 샀을 시 분실한 후에 다시 결제 안하고 재발행이
											가능한가요?</a></strong>
									<p>
										승차권도 유가증권이고 물건이기 때문에 카드로 산 이력이 있다해도 다시 승차권만 뽑아서 줄수가 없습니다. <br />새로
										결제를 하고 사셔야 합니다.
									</p></li>

								<li><strong><a href="#none"><span>[승차권
												조회/변경/취소]</span> 시스템 장애로 인해 예매취소 또는 승차권발권을 하지못해서 발생한 수수료에 대한 처리는
											어떻게 되나요?</a></strong>
									<p>
										시스템 분석 후 시스템장애로 인하여 취소수수료 또는 부도위약금이 청구된것으로 판명되면 부당하게 <br />청구된
										수수료에 대해서는 보상해 드립니다.
									</p></li>

								<li><strong><a href="#none"><span>[승차권
												조회/변경/취소]</span> 버스를 놓쳤을 경우 가지고있던 티켓으로 다음버스를 이용할수 있나요?</a></strong>
									<p>
										터미널에서 취소하고 다음 티켓으로 다시 끊으셔야 합니다. 하지만 승차권에 출발시간이 명시되어있지 않은 경우 <br />해당터미널에
										문의 바랍니다.
									</p></li>

								<li><strong><a href="#none"><span>[승차권
												조회/변경/취소]</span> 승차권 예매사항에 대한 변경은 어떻게 하나요?</a></strong>
									<p>로그인 후 승차권 조회 및 마이페이지에서 예매하신 승차권의 시간, 버스, 좌석 변경이 가능합니다.</p></li>

								<li><strong><a href="#none"><span>[승차권
												조회/변경/취소]</span> 승차권 예매 취소 후 재 예매가 가능한가요?</a></strong>
									<p>예매하신 승차권 취소 후 재 예매는 가능합니다. 다만, 좌석변경은 있을수 있습니다.</p></li>

								<li><strong><a href="#none"><span>[승차권
												조회/변경/취소]</span> 비 회원도 예매한 승차권을 취소/변경할수 있나요?</a></strong>
									<p>승차권 조회에서 비회원도 승차권 취소/변경이 가능합니다.</p></li>
							</ul>
						</div>
					</div>
					<div id="faq2" style="display: none;">
						<div class="faqsearch">
							<ul class="tabed_faq">
								<li><a href="javascript:funcChange(0);">승차권 예매</a></li>
								<li><a href="javascript:funcChange(1);">승차권 조회/변경/취소</a></li>
								<li class="selected"><a href="javascript:funcChange(2);">운행정보</a></li>
								<li><a href="javascript:funcChange(3);">기타</a></li>
							</ul>
						</div>

						<div class="faqbox">
							<ul class="faq_list">
								<li><strong><a href="#none"><span>[운행정보]</span>
											몇시까지 운행하나요?</a></strong>
									<p>각 해당 노선마다 막차 시간이 틀립니다. 자세한 사항은 해당 터미널로 연락하시기 바랍니다.</p></li>

								<li><strong><a href="#none"><span>[운행정보]</span>
											명절 같은 날은 버스가 더 다니나요?</a></strong>
									<p>각 해당 터미널 버스회사에서 판단하기 때문에 터미널에 문의하시는게 정확한 정보를 얻으실수 있습니다.</p>
								</li>

								<li><strong><a href="#none"><span>[운행정보]</span>
											도착시간을 알수는 없나요?</a></strong>
									<p>도로(교통) 사정에 따라 많은 변수가 있으므로 정확한 도착 시간은 제공해 드리지 못하고 있습니다.</p></li>
							</ul>
						</div>
					</div>
					<div id="faq3" style="display: none;">
						<div class="faqsearch">
							<ul class="tabed_faq">
								<li><a href="javascript:funcChange(0);">승차권 예매</a></li>
								<li><a href="javascript:funcChange(1);">승차권 조회/변경/취소</a></li>
								<li><a href="javascript:funcChange(2);">운행정보</a></li>
								<li class="selected"><a href="javascript:funcChange(3);">기타</a></li>
							</ul>
						</div>

						<div class="faqbox">
							<ul class="faq_list">
								<li><strong><a href="#none"><span>[기타]</span>
											동물들과 함께 탑승할 수 있나요?</a></strong>
									<p>
										다른 여객에게 위해를 끼치거나 불쾌감을 줄 우려가 있는 동물은 제외하며 장애우 보조견 및 애완동물은 <br />이동용
										가방이나 케이스를 이용하여 운송을 윈칙으로 합니다.
									</p></li>

								<li><strong><a href="#none"><span>[기타]</span>
											수하물은 어떻게 보내나요?</a></strong>
									<p>각 해당 일부 터미널에서 수하물이란 곳이 위치하고 있습니다. 가셔서 접수하시고 붙이시면 됩니다.</p></li>

								<li><strong><a href="#none"><span>[기타]</span>
											현재까지 본인이 이용한 내역을 조회할 수 있는 방법은 없나요?</a></strong>
									<p>개편되는 버스타자 홈페이지는 회원가입이 가능하며, 로그인 후 승차권 예매 내역을 통해 확인하실수
										있습니다.</p></li>
							</ul>
						</div>
					</div>

					<script type="text/javascript">
						function funcChange(objNum) {
							for (i = 0; i < 4; i++) {
								if (objNum == i) {
									document.getElementById("faq" + i).style.display = "block";
								} else {
									document.getElementById("faq" + i).style.display = "none";
								}
							}
						}
					</script>

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
				<li class="sta"><a href="/kr/etc/agreement.do"> <img
						src="/images/main/footer_01.gif" alt="홈페이지 이용약관" /></a></li>
				<li><a href="/kr/etc/privacy.do"> <img
						src="/images/main/footer_02.gif" alt="개인정보취급방침" /></a></li>
				<li><a href="/kr/etc/ebanking.do"> <img
						src="/images/main/footer_03.gif" alt="전자금융거래 기본약관" /></a></li>
				<li><a href="/kr/etc/email.do"> <img
						src="/images/main/footer_04.gif" alt="이메일무단수집거부" /></a></li>
				<li><a href="#"> <img src="/images/main/footer_06.gif"
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
		</div>
		<script type="text/javascript">
			if (self.name != "") {
				document
						.writeln("<div><a href='https://m.bustago.or.kr:444/mobus' style='display:block; width:640px; margin:0 auto;' target=\"_top\" ><img src='/images/main/bustago_mobile_icon.gif' alt='모바일 웹사이트로 이동' width='640' height='83' /></a></div>");
			}
		</script>
	</div>
</body>
</html>