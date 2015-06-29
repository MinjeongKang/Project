<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="utf-8" lang="utf-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BusTago</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Expires" content="1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">

<link type="text/css" rel="stylesheet" media="screen" href="/css/jquery.fancybox.css" />
<link type="text/css" rel="stylesheet" href="/css/skins/all.css?v=1.0.2" />
<link type="text/css" rel="stylesheet" href="/css/jquery.ui.css" />
<link type="text/css" rel="stylesheet" href="/css/jquery.loading.min.css" />
<link type="text/css" rel="stylesheet" href="/css/buttons.css" />
<link type="text/css" rel="stylesheet" href="/css/global.css" />
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
<style>
<!-- /* Overlay */
#simplemodal-overlay {
	background-color: #000;
}
-->
</style>
<script type="text/javascript" src="/script/jquery-2.0.0.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
		 $("#tt").hide();
		$("#selectJob").change(function(){
			//alert($(this).val());
			var temp="";
			$.ajax({
				url:"/notice/searchJob.action?category="+$(this).val(),
				dataType:"json",
				type:"get",
				success:function(data){
				    $.each(data,function(i,dom){
				    	alert(dom.productName+' '+dom.productPrice);
				    	temp+="<tr><td>"+(i+1)+"</td><td>"+dom.n_title+"</td><td>"+dom.n_contents+"</td><td>"+dom.n_category+"</td><td>"+dom.n_hit+"</td><td>"+dom.regdate+"</td></tr>";
				    });
				    
				    $("#tt").show(1000);
		           $("#showtable").html(temp);
				}
			});
		});
	 });
   
   function searchOption() {
		var inputText = document.getElementById('selectText').value;
		//alert(inputText);
		if (inputText.length == 0 || inputText == '' || inputText == '검색어를 입력하세요.') {
			alert('검색어를 입력하세요');
		} else {
			/* alert($("input#selectText").val()); */
			 $("form#noticeSearch").submit(); 
		}
		
	}
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

		<script type="text/javascript">
			var totalCount = "237";
			var text = "";
			var select = "";
			$(document)
					.ready(
							function() {
								$('.menus').FrontGnb({
									selectedIndex : 4,
									subSelectedIndex : 0
								});
								$('.lnb').nav({
									mainIndex : 0,
									subIndex : 0
								});
								$('select').select2();

								jQuery('#nav').jaPageNavigator({
									page_row : "10" // 보여질 게시물 목록 수
									,
									page_link : "10" // 보여질 페이지 링크 수
									,
									total_count : "237" // 게시물 총 수
								//, tag : '#nav' // 특정 영역으로 이동 (책갈피)
								});

								// 검색어 체크
								if (isValidBlank1(text)) {
									console.log("aaaa");
									$("#searchText").val(text);
								}
								// selectbox value 체크
								if (isValidBlank1(select)) {
									$("select[name=selectSearch]").val(select);
								}

								$("#searchText").keypress(function(event) {
									if (event.which == 13) {
										$("#searchBtn").click();
									}
								});

								// 검색 버튼 클릭
								$("#searchBtn")
										.click(
												function() {
													var searchSelect = $(
															".searchSelect option:selected")
															.val();
													var searchText = $(
															"#searchText")
															.val();

													if (searchText == "") {
														layerAlert("검색어를 입력해주세요.");
														return false;
													}

													$(
															"input[name=searchSelect]")
															.val(searchSelect);
													$("input[name=searchText]")
															.val(searchText);

												});

								// 제목 클릭(상세보기)
								$(".subject > a")
										.click(
												function() {
													var idx = $(this).attr(
															"class");
													location.href = '/kr/support/notice/noticeView.do?idx='
															+ idx
															+ '&totalCount='
															+ totalCount + '';
												});

								$(".num")
										.click(
												function() {
													var searchSelect = $(
															".searchSelect option:selected")
															.val();
													var searchText = $(
															"#searchText")
															.val();

													//if(!isValidBlank(searchText, "검색어를 입력하여 주세요.")) return false;

													if (searchText == "검색어를 입력하세요.") {
														searchText = "";
													}

													var link = $(this).attr(
															"href");
													var pageNumber = $(this)
															.html();
													var selectLink = $(
															"#areaSelect option:selected")
															.val();

													if (link
															.indexOf("searchSelect") != -1) {
														var linkSplit = link
																.split("&")[0];
														var linkChange = linkSplit
																+ "?page="
																+ pageNumber
																+ "&searchSelect="
																+ searchSelect
																+ "&searchText="
																+ searchText;
														$(this).attr({
															"href" : linkChange
														});
													} else {
														if (selectLink != "noSelect") {
															var linkChange = link
																	+ "&searchSelect="
																	+ searchSelect
																	+ "&searchText="
																	+ searchText;
															$(this)
																	.attr(
																			{
																				"href" : linkChange
																			});
														}
													}

												});

								$(".start").click(function() {
									var link = $(this).attr("href");
									var thisObject = $(this);
									nav(link, thisObject);
								});

								$(".prev").click(function() {
									var link = $(this).attr("href");
									var thisObject = $(this);
									nav(link, thisObject);
								});

								$(".end").click(function() {
									var link = $(this).attr("href");
									var thisObject = $(this);
									nav(link, thisObject);
								});

								$(".next").click(function() {
									var link = $(this).attr("href");
									var thisObject = $(this);
									nav(link, thisObject);
								});
							});
			function nav(link, thisObject) {

				var searchSelect = $(".searchSelect option:selected").val();
				var searchText = $("#searchText").val();

				if (searchText == "검색어를 입력하세요.") {
					searchText = "";
				}
				var pageNumber = link.split("page=")[1];
				var selectLink = $("#areaSelect option:selected").val();

				if (link.indexOf("searchSelect") != -1) {
					var linkSplit = link.split("&")[0];
					var linkChange = linkSplit + "?page=" + pageNumber
							+ "&searchSelect=" + searchSelect + "&searchText="
							+ searchText;
					thisObject.attr({
						"href" : linkChange
					});
				} else {
					if (selectLink != "noSelect") {
						var linkChange = link + "&searchSelect=" + searchSelect
								+ "&searchText=" + searchText;
						thisObject.attr({
							"href" : linkChange
						});
					}
				}
			}
		</script>
		<div class="container bg5">
			<div class="location">
				<a href="/kr/index.do" class="home">HOME</a> &gt; <a
					href="/kr/support/notice/notice.do">고객지원</a> &gt; <a class="state">공지사항</a>
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
							<ul class="lnb" id="support">
								<li class="sta"><a href="/bustagoApp/noticeAction.action">공지사항</a></li>
								<li><a href="/guide/faq.jsp">FAQ</a></li>
								<li><a href="/guide/question.jsp">1:1 문의</a></li>
								<li class="end"><a href="/bustagoApp/lostListAction.action">유실물센터</a></li>
							</ul>

						</ul>
					</div>
				</div>

				<div class="content" id="Content">

					<!-- content -->
					<h3 class="stit">
						<img src="/images/customer/h3_notice.gif" alt="공지사항" />
					</h3>
					<p class="des">버스타고(전국시외버스 통합전산망)의 새로운 소식을 알려드립니다.</p>

					<!--  
            <input type="hidden" name="searchSelect" value="" />
            <input type="hidden" name="searchText" value=""/> -->

					<form id="noticeSearch" name="noticeSearch" id="noticeSearch"
						action="/bustagoApp/NoticeSearchAction.action" method="post">
						<div class="terminal_search">
							<select style="width: 110px;" id="seOptionData"
								class="searchSelect" name="seOptionData">
								<option value="N_TITLE" id="N_TITLE">제목</option>
								<option value="N_CONTENTS" id="N_CONTENTS">내용</option>
							</select> <input type="text" style="width: 200px;" id="selectText"
								name="selectText" class="txt" onclick="this.value=''"
								onblur="if(this.value=='') this.value='검색어를 입력하세요.'"
								value="검색어를 입력하세요." /> <span class="button"><input
								type="button" id="selectBtn" name="selectBtn" value="검색"
								onclick="searchOption()" /></span>
						</div>
					</form>


					<form id="noticeForm" name="noticeForm"
						action="/kr/support/notice/notice.do" method="post">
						<table class="board_list" summary="번호,제목,첨부,등록일,조회수">
							<caption>공지사항</caption>
							<colgroup>
								<col width="20" />
								<col width="200" />
								<col width="70" " />
								<col width="50" " />
								<col width="50" " />
								<col width="30" " />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">등록일</th>
									<th scope="col">조회</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="i" items="${Noticelist }" varStatus="cnt">
									<tr>
										<td>${i.n_no }</td>
										<td>${i.n_title }</td>
										<td>${i.regdate }</td>
										<td>${i.n_hit }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<div class="paginate_complex paging" id="nav">${sb }</div>
						<div id="navigator"></div>
						<table class="board_list" summary="번호,제목,첨부,등록일,조회수" id="tt">
							<caption>공지사항</caption>
							<colgroup>
								<col width="20" />
								<col width="200" />
								<col width="70" " />
								<col width="50" " />
								<col width="50" " />
								<col width="30" " />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">내용</th>
									<th scope="col">카테고리</th>
									<th scope="col">등록일</th>
									<th scope="col">조회</th>
								</tr>
							</thead>
							<tbody id="showtable">

							</tbody>
						</table>
				</div>
			</div>
		</div>

		</form>
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
	</div>
</body>
</html>