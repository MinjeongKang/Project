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
		
		<div class="invisible">
			<p>바로가기</p>
			<ul>
				<li><a href="#Gnb">주메뉴 바로가기</a></li>
				<li><a href="#Lnb">주메뉴 바로가기</a></li>
				<li><a href="#Content">컨텐츠 바로가기</a></li>
			</ul>
		</div>

		<div class="dvwrap">

			<div class="container bg1">
				<!-- content -->
				<div class="location">
					<a href="/kr/index.do" class="home">HOME</a> &gt; 
					<a href="/kr/ticket/ticket.do">승차권 예매</a> &gt; <a class="state">승차권 예매</a>
				</div>

				<h2 class="title">
					<img src="/images/ticket/title.gif" alt="승차권예매" />
				</h2>
				<p class="step">
					<img src="/images/ticket/step02.gif" alt="예매정보" />
				</p>

				<h4 class="stit">
					<img src="/images/ticket/h4_member.gif" alt="회원 예매" /> <span><img
						src="/images/ticket/member_txt01.gif"
						alt="회원인 경우에는 로그인을 하신 후 승차권 예매를 진행해 주시기 바랍니다." /></span>
				</h4>
				<div class="logbox">
					<div class="login">
						<ul class="log">
							<li><input type="text" id="userId" class="id"
								onFocus="this.style.background='#fff';" /></li>
							<li><input type="password" id="password" class="pw"
								onFocus="this.style.background='#fff';" /></li>
						</ul>
						<div class="bts">
							<a id="loginBtn" style="cursor: pointer;"><img
								src="/images/button/bts_login.gif" alt="로그인" /></a>
						</div>
						<ul class="tt">
							<li>아이디와 비밀번호를 잊어버리셨다면, 아래의 아이디 찾기, <br />비밀번호 찾기를 통해 찾으실 수
								있습니다.
							</li>
							<li>아직 회원이 아니시면, 회원가입을 통해 회원이 되실 수 <br />있습니다.
							</li>
						</ul>
					</div>
					<div class="loglink">
						<img src="/images/ticket/member_img01.gif" alt="."
							usemap="#link01" />
						<map name="link01">
							<area alt="아이디찾기" coords="1,127,108,153"
								href="/kr/member/id_check.do">
							<area alt="비밀번호찾기" coords="162,126,268,154"
								href="/kr/member/pw_check.do">
							<area alt="회원가입" coords="322,126,430,154"
								href="/kr/member/member_certificate.do">
						</map>
					</div>
				</div>

				<h4 class="stit">
					<img src="/images/ticket/h4_member2.gif" alt="비회원 예매" /> <span><img
						src="/images/ticket/member_txt02.gif"
						alt="비회원으로 예매를 하시는 분은 아래의 개인정보 수집 및 이용에 대한 안내를 읽고 동의 후 승차권 예매를  진행해 주시기 바랍니다. " /></span>
				</h4>
				<div class="box1">
					<div class="btm">
						<div class="top membox">
							<!-- 수정 -->
							<div class="ss">
								<strong class="mtit">개인정보 보호를 위한 이용자 동의사항</strong>
								<div class="mscroll">
									<strong>수집하는 개인정보 항목</strong>
									<p>1) 개인정보 수집항목은 필수 항목으로 생년월일, 휴대전화번호, 예매시 사용한 신용카드 결제 내역
										입니다. 또한, 서비스 이용과정이나 프로세스처리 과정에서 IP주소, 쿠키, 방문일시, 서비스 이용 기록이
										자동으로 생성되어 수집될 수 있습니다.</p>

									<strong>개인정보의 수집 및 이용 목적</strong>
									<p>회사는 다음과 같은 목적을 위하여 개인정보를 수집하며, 해당 목적 내에서만 수집한 개인정보를 이용하고
										있습니다.</p>
									<p>1) 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 컨텐츠 제공, 구매 및 요금 결제
										회사는 고객의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 노동조합 및
										정당의 가입,출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)와 개인을 고유하게 구별하기
										위해 부여된 고유식별정보(주민등록번호, 여권번호, 운전면허의 면허번호, 외국인등록번호)는 별도로 수집하지
										않습니다.</p>

									<strong>개인정보의 보유 및 이용기간</strong>
									<p>고객의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 단,
										다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.</p>
									<p>
										1) 회사의 내부 방침에 의한 정보 보유 사유<br /> ① 부정이용기록 (6개월, 부정 이용 방지)<br />
										<br /> 2) 관련법령에 의한 정보보유 사유<br /> ① 계약 또는 청약철회 등에 관한 기록: 5년
										(전자상거래 등에서의 소비자보호에 관한 법률)<br /> ② 대금결제 및 재화 등의 공급에 관한 기록: 5년
										(전자상거래 등에서의 소비자보호에 관한 법률)<br /> ③ 소비자의 불만 또는 분쟁처리에 관한 기록: 5년
										(전자상거래 등에서의 소비자보호에 관한 법률)
									</p>
									<br />
								</div>
								<div class="chk chks">
									<input type="checkbox" id="agree1" /> <label for="agree">수집하는
										개인정보 항목, 수집/이용목적, 개인정보 보유기간에 동의합니다.</label>
								</div>
							</div>
							<div class="ss">
								<strong class="mtit">인터넷 이용약관</strong>
								<div class="mscroll">
									<strong>제1장 총칙</strong> <strong>제1조 (목적) </strong>
									<p>이 약관은 ㈜이비카드가 제공하는 시외버스 승차권 통합 예약/예매/안내 사이트에서 제공하는 제반
										서비스의 이용과 관련하여 회사와 고객의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 한다.
									</p>

									<strong>제2조 (용어의 정의)</strong>
									<p>
										① "회사"란 재화나 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신 설비를 이용하여 재화 또는 용역을
										거래할 수 있도록 구성한 인터넷상의 영업공간을 만들고, 그 영업공간을 운영하는 사업자를 말합니다.<br />
										② "www.bustago.or.kr"란 회사가 재화나 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신
										설비를 이용하여 재화 또는 용역을 거래할 수 있도록 구성한 인터넷상의 영업공간을 말합니다.<br /> ③
										"이용자"란 이 약관에 따라 "www.bustago.or.kr"가 제공하는 서비스를 이용하는 자를 말합니다.<br />
										④ "결제"란 이용자가 "www.bustago.or.kr" 서비스 이용을 위해 결제수단으로 일정금액을 지불하는
										행위를 말합니다.<br /> ⑤ "환불"이란 이용자가 결제한 내역에 대해 취소 요청을 하는 경우 결제한 금액을
										이용자에게 돌려주는 행위를 말합니다.
									</p>

									<strong>제3조 (약관의 게시와 개정)</strong>
									<p>
										① 회사는 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자 등록번호, 연락처(전화, 팩스, 전자우편
										주소 등) 등을 이용자가 쉽게 확인할 수 있도록 "www.bustago.or.kr" 초기 서비스화면에 게시하거나
										기타의 방법으로 이용자에게 공지합니다. <br /> ② 회사는 「약관의 규제에 관한 법률」, 「정보통신망
										이용촉진 및 정보보호 등에 관한 법률」 등 관련법을 위반하지 않는 범위에서 이 약관을 개정할 수 있습니다. <br />
										③ 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고, 그 이전에 체결된 계약에 대해서는 개정 전의
										약관이 적용됩니다. <br /> ④ 이 약관에 정하지 아니한 사항과 이 약관의 해석에 관하여는
										「전자거래기본법」, 「전자거래소비자보호지침」 및 관계법령 또는 상관례에 따릅니다.
									</p>

									<strong>제4조 (이용계약 체결)</strong>
									<p>
										- 이용계약은 이용자의 약관동의, 이용신청, 회사의 승낙에 의하여 체결됩니다.<br /> - 회사는 다음 각
										호의 1에 해당하는 경우에는 이용신청을 승낙하지 아니할 수 있습니다.
									</p>
									<p>
										1. 서비스 관련 설비의 용량이 부족한 경우<br /> 2. 기술상 장애 사유가 있는 경우 <br /> 3.
										본인의 실명으로 신청하지 아니한 경우 <br /> 4. 이용신청 시 필요 내용을 허위로 기재하여 신청한 경우
										<br /> 5. 공공질서 또는 건전한 미풍약속을 저해할 우려가 있는 경우 <br /> 6. 기타 회사가
										필요하다고 인정한 경우
									</p>


									<strong>제5조 (서비스의 제공 및 변경)</strong>
									<p>
										① 회사는 특별한 사유가 없는 한 "www.bustago.or.kr"가 제공하는 서비스를 항시 이용할 수 있도록
										합니다.<br /> ② 회사는 기술적 사양의 변경 또는 기타 불가피한 여건이나 사정 등이 있는 경우에는 장차
										체결되는 계약에 의해 제공할 서비스의 내용을 변경할 수 있습니다.<br /> 이 경우에는 변경된 서비스의 내용
										및 제공일자를 명시하여 이용자에게 공지합니다. 단, 제6조 1항의 사유에 해당하는 경우에는 공지하지 않을 수
										있습니다.
									</p>

									<strong>제6조 (서비스의 중단) </strong>
									<p>
										① 회사는 다음 각 호의할 수 1에 해당하는 경우 서비스의 전부 또는 일부를 제한하거나 중단 있습니다<br />
										1. 서비스용 설비의 보수 등 공사로 인한 부득이한 경우<br /> 2. 고객이 회사의 영업활동을 방해하는
										경우 <br /> 3. 정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 서비스 이용에 지장이 있는
										경우 <br /> 4. 서비스 제공업자와의 계약 종료 등과 같은 회사의 제반 사정으로 서비스를 유지할 수 없는
										경우 <br /> 5. 기타 천재지변, 국가비상사태 등 불가항력적 사유가 있는 경우<br /> ② 제1항의
										서비스의 제한 또는 중단의 경우에는 내용 및 일자를 이용자에게 공지합니다. 단, 회사가 통제할 수 없는 사유로
										인한 서비스의 중단 등 사전 통지가 불가능한 경우에는 공지하지 않을 수 있습니다.<br /> ③ 회사는 회사의
										고의 또는 과실이 없는 서비스의 제한 또는 중단으로 인하여 발생하는 문제에 대해서는 어떠한 책임도 지지
										않습니다.
									</p>

									<strong>제3장 계약 당사자의 의무 </strong> <strong>제7조 (회사의 의무)</strong>
									<p>
										① 회사는 법령과 이 약관이 금지하거나 공공질서, 미풍양속에 반하는 행위를 하지 않으며, 이 약관이 정하는 바에
										따라 지속적이고 안정적으로 재화 및 용역을 제공하는데 최선을 다하여야 합니다. <br /> ② 회사는 이용자가
										안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함) 보호를 위한 보안 시스템을 갖추어야
										합니다. <br /> ③ 회사가 상품이나 용역에 대하여 「표시 광고의 공정화에 관한 법률」 제3조 소정의
										부당한 표시 또는 광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다. <br /> ④
										회사는 이용자가 원하지 않는 영리목적의 광고성 전자 우편을 발송하지 않습니다.
									</p>

									<strong>제8조 (이용자의 의무)</strong>
									<p>
										① 이용자는 관계법령, 이 약관의 규정, 이용안내 등 회사가 통지하는 사항을 준수하여야 하며, 기타 회사의
										업무에 방해되는 행위를 해서는 안됩니다. <br /> ② 이용자는 서비스의 일부로 보내지는 회사의 전자우편을
										받는 것에 동의합니다. <br /> ③ 이용자는 서비스 이용과 관련하여 다음 각 호의 행위를 해서는 안됩니다.
										<br /> 1. 서비스 신청 또는 변경 시 허위내용의 등록 <br /> 2.
										"www.bustago.or.kr"에 게시된 정보의 허가 받지 않은 변경 <br /> 3. 회사가 정한 정보
										이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시 <br /> 4. 회사 기타 제3자의 저작권 등 지적
										재산권에 대한 침해 <br /> 5. 회사 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위 <br />
										6. 외설 또는 폭력적인 메시지, 화상, 음성 기타 공공질서 미풍양속에 반하는 정보를
										"www.bustago.or.kr"에 공개 또는 게시하는 행위 <br /> 7. 기타 방송통신심의위원회의
										시정을 요구 받는 행위
									</p>


									<strong>제4장 결제관련 의무</strong> <strong>제9조 (결제수단)</strong>
									<p>홈페이지에서 구매하는 재화 또는 용역에 대한 결제수단은 신용카드 또는 기타 회사가 추가로 정의하는
										결제수단입니다.</p>

									<strong>제10조 (결제내용)</strong>
									<p>
										① 홈페이지에서 승차권 예매 시 예매 수수료는 없습니다. <br /> ② 홈페이지에서 승차권 예매 시 신용카드
										결제는 인터넷 예매시점에 이루어집니다.
									</p>


									<strong>제5장 서비스의 이용 </strong> <strong>제11조 (서비스 이용시간)
									</strong>
									<p>
										① 서비스 이용시간은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로
										합니다. 다만 정기점검 등의 필요로 회사가 정한 날이나 시간은 제외됩니다. <br /> ② 회사는 서비스를
										일정범위로 분할하여 각 범위별로 이용가능 시간을 별도로 정할 수 있습니다. 이 경우 그 내용을 이용자에게 사전에
										공지합니다.
									</p>

									<strong>제12조 (서비스 이용책임) </strong>
									<p>
										① 이용자는 회사에서 권한 있는 사원이 서명한 명시적인 서면에 의해 구체적으로 허용한 경우를 제외하고는 서비스를
										이용하여 상품을 판매하는 영업활동을 할 수 없으며, 특히 해킹, 도박, 음란 사이트 등을 통한 상업행위,
										상용S/W 불법 배포 등을 할 수 없습니다. <br /> ② 회사는 이용자가 본조 제1항을 어기고 발생한
										영업활동의 결과 및 관계기관에 의한 사법조치 등에 대해서는 책임을 지지 않습니다.
									</p>

									<strong>제13조 (정보의 제공)</strong>
									<p>회사는 이용자가 서비스 이용 중 필요하다고 인정되는 다양한 정보에 대해서 전자우편 또는 서신우편 등의
										방법으로 회원에게 제공할 수 있습니다.</p>

									<strong>제14조 (게시물의 삭제) </strong>
									<p>
										회사는 이용자가 게시하거나 등록하는 서비스의 내용물이 다음 각 항의 1에 해당한다고 판단되는 경우에는 사전통지
										없이 삭제할 수 있습니다. <br /> ① 다른 회원 또는 제3자를 비방하거나 명예를 손상시키는 내용인 경우
										<br /> ② 공공질서 및 미풍양속에 위반되는 내용을 기재하거나 인터넷 사이트를 링크하는 경우 <br />
										③ 범죄적 행위에 결부된다고 인정되는 경우 <br /> ④ 회사의 저작권, 제3자의 저작권 등의 권리를
										침해하는 내용인 경우 <br /> ⑤ 기타 관계법령에 위반된다고 판단되는 경우
									</p>

									<strong>제15조 (게시물의 저작권) </strong>
									<p>
										① 게시물에 대한 권리와 책임은 게시자에게 있으며, 회사는 게시자의 동의 없이는 이를 사이트 내 게재 이외의
										영리목적으로 사용할 수 없습니다. <br /> ② 이용자는 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위
										등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.
									</p>

									<strong>제16조 (이용자에 대한 통지) </strong>
									<p>
										① 회사가 이용자에 대한 통지를 하는 경우 이용자가 회사에 제출한 전자우편 주소로 할 수 있습니다. <br />
										② 회사는 불특정다수 이용자에 대한 통지의 경우 1주일 이상 사이트에 게시함으로써 개별 통지에 갈음할 수
										있습니다.
									</p>


									<strong>제6장 취소 및 환불 </strong> <strong>제17조 (취소, 환불) </strong>
									<p>
										① 예매한 승차권의 취소는 운송약관에 명시된 내용에 따릅니다. <br /> ② 예매 및 취소의 마감 시간
										기준은 "www.bustago.or.kr" 해당 터미널의 사정에 따라 다를 수 있습니다. <br /> ③
										전항의 예매 및 취소의 마감 시간은 버스회사, 터미널 등 관련기관의 사정에 의해 변경될 수 있습니다. <br />
										예매한 승차권의 취소 시 취소시점에 따라 수수료가 부과될 수 있습니다. <br /> ④ 승차권을 예매하고
										터미널에서 해당 승차권을 발권한 후 또는 해당 차량이 출발한 이후의 환불에 대하여는 운송약관의 규정에 따라
										수수료가 부과될 수 있습니다. <br /> ⑤ 기타 본 약관 및 이용안내에 규정되지 않은 환불 및 취소에 대한
										사항 및 수수료의 적용에 대해서는 「소비자 피해보상규정」에 따릅니다.
									</p>

									<strong>제18조 (수수료의 처리)</strong>
									<p>
										① 예매 취소 시에는 승인된 내역에 취소 금액을 차감 후 남은 금액에 대하여 수수료를 부과합니다. <br />
										② 환불금액의 환급 방법과 환급일은 예매 취소 시점과 해당 신용카드사의 환불 처리기준에 따라 다소 차이가 있을
										수 있으며, 보다 상세한 환불 정책에 대해서는 회사 또는 해당 신용카드사로 문의하시기 바랍니다.
									</p>


									<strong>제7장 기타 </strong> <strong>제19조 (저작권의 귀속 및 이용제한)
									</strong>
									<p>
										① 회사가 작성한 저작물에 대한 저작권 기타 지적재산권은 회사에 귀속합니다. <br /> ② 이용자는
										홈페이지를 통해 얻은 정보를 회사의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리
										목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.
									</p>

									<strong>제20조 (분쟁 해결) </strong>
									<p>
										① 회사는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상하기 위해 피해보상처리기구를 설치,
										운영합니다. <br /> ② 회사는 이용자가 제기하는 의견이나 불만을 신속하게 처리합니다. 단, 신속한 처리가
										곤란한 경우에는 이용자에게 그 사유와 처리일정을 통보합니다. <br /> ③ 회사와 이용자 간에 발생한 분쟁은
										「전자거래기본법」에 의하여 설치된 전자거래 분쟁조정위원회의 조정에 따를 수 있습니다.
									</p>

									<strong>제21조 (면책조항) </strong>
									<p>
										회사는 다음 각 항의 1에 해당하는 경우에는 책임을 지지 않습니다. <br /> ① 회사는 이용자가 제기하는
										정당한 의견이나 불만을 반영하고 그 피해를 보상하기 위해 피해보상처리기구를 설치, 운영합니다. <br /> ②
										회사는 이용자가 제기하는 의견이나 불만을 신속하게 처리합니다. 단, 신속한 처리가 곤란한 경우에는 이용자에게 그
										사유와 처리일정을 통보합니다. <br /> ③ 회사와 이용자 간에 발생한 분쟁은 「전자거래기본법」에 의하여
										설치된 전자거래 분쟁조정위원회의 조정에 따를 수 있습니다.
									</p>


									<strong>제22조 (관할 법원) </strong>
									<p>홈페이지와 관련된 분쟁에 대해 소송이 제기될 경우 회사의 본사 소재지를 관할하는 법원을 전속
										관할법원으로 합니다.</p>

									<strong>부칙<2010. 6. 1> </strong>
									<p>① 이 약관은 2010년 6월 1일부터 시행합니다.</p>
									<br />
								</div>
								<div class="chk chks">
									<input type="checkbox" id="agree2" /> <label for="agree">인터넷
										이용약관에 동의합니다.</label>
								</div>
							</div>
							<div class="ss">
								<strong class="mtit">원하지 않는 경우 개인정보 수집 및 이용에 동의하지 않을 수
									있습니다. 이러한 경우 예매 서비스를 제공받으실 수 없음을 알려드립니다.</strong> </br>
								</br>
								</br>
							</div>
							<!-- //수정 -->
							<div class="chk_agree"
								style="position: absolute; margin-top: -30px; text-align: right; right: 65px;">
								<input type="checkbox" id="agree3" value="Y" /> <label
									for="agree">전체 동의합니다.</label>
							</div>
							<div class="ss line ">
								<strong class="mtit">발권 시 확인정보</strong> <span class="essential2">
									<!-- * 는 필수입력 항목입니다. -->입력하신 정보는 승차권 조회 및 발권 시 카드번호 대신 사용하실 수
									있습니다.
								</span>
								<table class="member etc space1" summary="이름, 생년월일, 핸드폰번호">
									<caption>회원정보 입력</caption>
									<colgroup>
										<col style="width: 22%;" />
										<col style="" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="row"><label for="name">생년월일 *</label></th>
											<td><input type="text" id="birthDate" class="txt"
												style="width: 155px;" maxlength="6" /> <span
												id="birthDaySpan" class="tt">(생년월일 6자리를 입력해 주세요.)</span></td>
										</tr>
										<tr>
											<th scope="row"><label for="phone">핸드폰번호 *</label></th>
											<td><select style="width: 70px;" id="phone1"
												title="핸드폰 앞번호">
													<option value="">선택</option>

													<option value="010">010</option>

													<option value="011">011</option>

													<option value="016">016</option>

													<option value="017">017</option>

													<option value="018">018</option>

													<option value="019">019</option>

											</select> - <input type="text" class="txt" id="phone2" maxLength="4"
												onKeyUp="moveNext(event,'#phone2','#phone3',4)"
												style="width: 55px;" title="핸드폰 중간번호" /> - <input
												type="text" class="txt" id="phone3" maxLength="4"
												style="width: 55px;" title="핸드폰 끝번호" /> <span
												id="birthDaySpan" class="tt">(발권 시 카드번호 대신 이용)</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="btn_center">

					<!--a id="reserveBtn" style="cursor:pointer;"><img src="/images/button/btn_next.gif" alt="다음" /></a-->
					<input name="" id="reserveBtn" type="image"
						src="/images/button/btn_next.gif">
				</div>
				<!-- //content -->
				<form id="frmSubmit" name="frmSubmit" method="post">
					<input type="hidden" id="RETSTR1" name="RETSTR1" value="" /> <input
						type="hidden" id="RETSTR2" name="RETSTR2" value="" /> <input
						type="hidden" id="PhoneNO" name="PhoneNO" value="" />
					<!-- 전화번호 -->
					<input type="hidden" id="uname" name="uname" value="" />
					<!-- 사용자 이름 (미사용) -->
					<input type="hidden" id="CcNameOnCard" name="CcNameOnCard" value="" />
					<!-- 카드 사용자 이름 (미사용) -->
					<input type="hidden" id="hp1" name="hp1" value="" />
					<!-- 핸드폰 번호 -->
					<input type="hidden" id="hp2" name="hp2" value="" />
					<!-- 핸드폰 번호 -->
					<input type="hidden" id="hp3" name="hp3" value="" />
					<!-- 핸드폰 번호 -->
					<input type="hidden" id="birthdate" name="birthdate" value="" />
					<!-- 생년월일 -->
					<input type="hidden" id="selWay" name="selWay" value="1" />
					<!-- 왕복(2) or 편도(1) 구분  -->
					<input type="hidden" id="sdate" name="sdate" value="20150522" />
					<!-- 출발일  -->
					<input type="hidden" id="edate" name="edate" value="" />
					<!-- 도착일  -->
					<input type="hidden" id="stime" name="stime" value="0730" />
					<!-- 출발시간 -->
					<input type="hidden" id="etime" name="etime" value="" />
					<!-- 도착시간 -->
					<input type="hidden" id="slvl" name="slvl" value="1" />
					<!-- 출발차량 등급 -->
					<input type="hidden" id="elvl" name="elvl" value="" />
					<!-- 왕복시 출발차량등급 -->
					<input type="hidden" id="adults" name="adults" value="1" />
					<!-- 성인 표 매수 -->
					<input type="hidden" id="university" name="university" value="0" />
					<!-- 대학생 표 매수 -->
					<input type="hidden" id="student" name="student" value="0" />
					<!-- 학생 표 매수 -->
					<input type="hidden" id="children" name="children" value="0" />
					<!-- 아동 표 매수 -->
					<input type="hidden" id="mAdults" name="mAdults" value="19200" />
					<!-- 성인 표 가격 -->
					<input type="hidden" id="mUniversity" name="mUniversity" value="0" />
					<!-- 대학생 표 가격 -->
					<input type="hidden" id="mStudent" name="mStudent" value="15400" />
					<!-- 학생 표 가격 -->
					<input type="hidden" id="mChildren" name="mChildren" value="9600" />
					<!-- 아동 표 가격 -->
					<input type="hidden" id="sterCode" name="sterCode" value="0004" />
					<!-- 출발 터미널 코드 -->
					<input type="hidden" id="eterCode" name="eterCode" value="6001" />
					<!-- 도착 터미널 코드 -->
					<input type="hidden" id="sterName" name="sterName" value="서울남부" />
					<!-- 출발 터미널 이름 -->
					<input type="hidden" id="eterName" name="eterName" value="거창" />
					<!-- 도착 터미널 이름 -->
					<input type="hidden" id="routecode" name="routecode"
						value="000004603201" />
					<!-- 편도 버스 배차 코드 -->
					<input type="hidden" id="selectlvl" name="selectlvl" value="1" />
					<!-- 선택된 차량 등급 -->
					<input type="hidden" id="starttime" name="starttime" value="0730" />
					<!-- // 20111010 최성호 좌석배치 상태 호출 프로시져로 변경 -->
					<!-- 편도 터미널 출발 시간 -->
					<input type="hidden" id="startTime" name="startTime" value="0730" />
					<!-- // 20111010 최성호 좌석배치 상태 호출 프로시져로 변경 -->
					<!-- 편도 터미널 출발 시간 -->
					<input type="hidden" id="changNo" name="changNo" value="99" />
					<!-- ? -->
					<input type="hidden" id="sjType" name="sjType" value="" /> <input
						type="hidden" id="seatNo" name="seatNo" value="26" />
					<!-- 선택 좌석 번호 -->
					<input type="hidden" id="seatNos" name="seatNos" value="26" />
					<!-- 전체 좌석 번호(','로 구분) -->
					<input type="hidden" id="totCnt" name="totCnt" value="1" />
					<!-- 총 표 매수 -->
					<input type="hidden" id="totFee" name="totFee" value="19200" />
					<!-- 총 표 가격 -->
					<input type="hidden" id="busFee" name="busFee"
						value="19200:15400:13400:9600" />
					<!-- 총 표 가격 -->
					<input type="hidden" id="bizr_id" name="bizr_id" value="5500051" />
					<!-- 버스회사 코드 7자리 -->
					<input type="hidden" id="bizr_nm" name="bizr_nm" value="거창고속㈜" />
					<!-- 버스회사 코드 7자리 -->
					<input type="hidden" id="ebizr_id" name="ebizr_id" value="" />
					<!-- 버스회사 코드 7자리 -->
					<input type="hidden" id="ebizr_nm" name="ebizr_nm" value="" />
					<!-- 버스회사 코드 7자리 -->
					<input type="hidden" id="seatState" name="seatState"
						value="88888811888888888baa888888808888888888888" />
					<!-- 편도 좌석 상태 (빈좌석-8) -->
					<input type="hidden" id="reserveNo" name="reserveNo" value="" />
					<!-- 예매번호 -->
					<input type="hidden" id="jsType" name="jsType" value="2" />
					<!-- 좌석 선점 타입 (인터넷: 선점-2 / 해제-3) -->
					<input type="hidden" id="startDate" name="startDate"
						value="20150522" />
					<!-- 예매 날짜 -->
					<input type="hidden" id="reserveTime" name="reserveTime"
						value="0210" />
					<!-- 예매시간 -->
					<input type="hidden" id="totalSeat" name="totalSeat" value="41" />
					<!-- 전체 좌석 -->
					<input type="hidden" id="email" name="email" /> <input
						type="hidden" id="MSTR" name="MSTR"
						value="26!1!0!0!0!19200!0!15400!9600!0730" /> <input
						type="hidden" id="MSTR2" name="MSTR2" value="" /> <input
						type="hidden" id="oriReserveNo" name="oriReserveNo" value="" /> <input
						type="hidden" id="startDistance" name="startDistance" value="0" />
					<input type="hidden" id="startDist_Time" name="startDist_Time"
						value="210" /> <input type="hidden" id="startRouteData"
						name="startRouteData" value="서울남부 → 안의 → 거창" /> <input
						type="hidden" id="finishDistance" name="finishDistance" value="" />
					<input type="hidden" id="finishDist_Time" name="finishDist_Time"
						value="" /> <input type="hidden" id="finishRouteData"
						name="finishRouteData" value="" />
				</form>
			</div>

		</div>

		<!-- 톰캣 -->


		<!-- 웹로직 -->









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
		</div>
		<script type="text/javascript">
		if (self.name != "") {
			document.writeln("<div><a href='https://m.bustago.or.kr:444/mobus' style='display:block; width:640px; margin:0 auto;' target=\"_top\" ><img src='/images/main/bustago_mobile_icon.gif' alt='모바일 웹사이트로 이동' width='640' height='83' /></a></div>");
		}
		</script>
	</div>
</body>
</html>