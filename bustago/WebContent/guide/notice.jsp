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
		if (inputText.length == 0 || inputText == '' || inputText == '�˻�� �Է��ϼ���.') {
			alert('�˻�� �Է��ϼ���');
		} else {
			/* alert($("input#selectText").val()); */
			 $("form#noticeSearch").submit(); 
		}
		
	}
</script>
</head>
<body>
	<div class="invisible">
		<p>�ٷΰ���</p>
		<ul>
			<li><a href="#Gnb">�ָ޴� �ٷΰ���</a></li>
			<li><a href="#Lnb">�ָ޴� �ٷΰ���</a></li>
			<li><a href="#Content">������ �ٷΰ���</a></li>
		</ul>
	</div>

	<div class="dvwrap">
		<div id="Gnb" class="headers">
			<h1>
				<a href="/index.jsp"><img src="/images/main/logo.gif" alt="����Ÿ�� �ΰ�" /></a>
			</h1>
			<div class="tinfo">
				<ul>
					<li id="loginOutBtn">
					<%
						if (session.getAttribute("M_ID") == null) {
					%>
						<a href="/guide/login.jsp">
							<input id="ckLogin1" name="ckLogin1" type="image" src="/images/main/gnbs_01.gif" alt="�α���" />
						</a>
					<%
						} else {
					%>
						${M_ID}�� �������
						<a href="/guide/logout.jsp">
							<input id="ckLogin2" name="ckLogin2" type="image" src="/images/main/gnbs_logout.gif" alt="�α׾ƿ�" ">	
						</a>
					<%
						}
					%>
					</li>
					<li id="certificate">
						<a href="/guide/member.jsp"><img src="/images/main/gnbs_02.gif" alt="ȸ������" /></a>
					</li>

					<li>
						<a href="/member/mypageAction.action"><img src="/images/main/gnbs_03.gif" alt="����������" /></a>
					</li>
					<%
						if (session.getAttribute("M_ID") != null) {
							if (session.getAttribute("M_ID").equals("scott")) {
					%>
					<li>
						<a href="/bustagoApp/AdminMemberAction.action">
							<input id="admin" name="admin" type="button" value="������">
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
						<a href="/guide/ticket.jsp"><img src="/images/common/gnb01.png" alt="�����ǿ���" /></a><br /> 
						<span class="pic mg01"><img src="/images/common/gnb01_pic.png" alt="�����ǿ���" /></span>
						<ul class="gnb01">
							<li><a href="/guide/ticket.jsp">����/�߱�</a></li>
						</ul>
					</li>
					
					<li id="menu02">
						<a href="#"><img src="/images/common/gnb02.png" alt="��������ȸ" /></a><br /> 
						<span class="pic mg02"><img src="/images/common/gnb02_pic.png" alt="��������ȸ" /></span>
						<ul class="gnb02">
							<li><a href="#">��ȸ/����/���</a></li>
						</ul>
					</li>
					
					<li id="menu03">
						<a href="/guide/map.jsp"><img src="/images/common/gnb03.png" alt="��������" /></a><br /> 
						<span class="pic mg03"><img src="/images/common/gnb03_pic.png" alt="��������" /></span>
						<ul class="gnb03">
							<li><a href="/guide/map.jsp">����/�뼱 ����</a></li>
							<li><a href="/bustagoApp/comListAction.action">����ȸ�� �ȳ�</a></li>
						</ul>
					</li>
					
					<li id="menu04">
						<a href="/guide/terminallist.jsp"><img src="/images/common/gnb04.png" alt="�͹̳�����" /></a><br /> 
						<span class="pic mg04"><img src="/images/common/gnb04_pic.png" alt="�͹̳�����" /></span>
						<ul class="gnb04">
							<li><a href="/guide/terminallist.jsp">�͹̳� �ȳ�</a></li>
						</ul>
					</li>
					
					<li id="menu05">
						<a href="/guide/notice.jsp"><img src="/images/common/gnb05.png" alt="������" /></a><br /> 
						<span class="pic mg05"><img src="/images/common/gnb05_pic.png" alt="������" /></span>
						<ul class="gnb05">
							<li><a href="/bustagoApp/noticeAction.action">��������</a></li>
							<li><a href="/guide/faq.jsp">FAQ</a></li>
							<li><a href="/guide/question.jsp">1 : 1 ����</a></li>
							<li><a href="/bustagoApp/lostListAction.action">���ǹ�����</a></li>
						</ul>
					</li>
					
					<li id="menu06">
					<a href="/guide/info.jsp"><img src="/images/common/gnb06.png" alt="�̿�ȳ�" /></a><br /> 
					<span class="pic mg06"><img src="/images/common/gnb06_pic.png" alt="�̿�ȳ�" /></span>
						<ul class="gnb06">
							<li><a href="/guide/info.jsp">���� �ȳ�</a></li>
							<li><a href="/guide/guideticket.jsp">������ ���� �ȳ�</a></li>
							<li><a href="/guide/guidehometicket.jsp">ȨƼ�� �߱�/��� �ȳ�</a></li>
							<li><a href="/guide/guidecharge.jsp">��� ������ �ȳ�</a></li>
							<li><a href="/guide/guidemobile.jsp">����� �̿� �ȳ�</a></li>
							<li><a href="/guide/guidesetup.jsp">�����ȳ�</a></li>
							<li><a href="/guide/guidecharacter.jsp">ĳ���� �ȳ�</a></li>
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
									page_row : "10" // ������ �Խù� ��� ��
									,
									page_link : "10" // ������ ������ ��ũ ��
									,
									total_count : "237" // �Խù� �� ��
								//, tag : '#nav' // Ư�� �������� �̵� (å����)
								});

								// �˻��� üũ
								if (isValidBlank1(text)) {
									console.log("aaaa");
									$("#searchText").val(text);
								}
								// selectbox value üũ
								if (isValidBlank1(select)) {
									$("select[name=selectSearch]").val(select);
								}

								$("#searchText").keypress(function(event) {
									if (event.which == 13) {
										$("#searchBtn").click();
									}
								});

								// �˻� ��ư Ŭ��
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
														layerAlert("�˻�� �Է����ּ���.");
														return false;
													}

													$(
															"input[name=searchSelect]")
															.val(searchSelect);
													$("input[name=searchText]")
															.val(searchText);

												});

								// ���� Ŭ��(�󼼺���)
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

													//if(!isValidBlank(searchText, "�˻�� �Է��Ͽ� �ּ���.")) return false;

													if (searchText == "�˻�� �Է��ϼ���.") {
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

				if (searchText == "�˻�� �Է��ϼ���.") {
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
					href="/kr/support/notice/notice.do">������</a> &gt; <a class="state">��������</a>
			</div>
			<h2 class="title">
				<img id="lnbTitle" src="/images/customer/h2.gif" alt="������" />
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
								<li class="sta"><a href="/bustagoApp/noticeAction.action">��������</a></li>
								<li><a href="/guide/faq.jsp">FAQ</a></li>
								<li><a href="/guide/question.jsp">1:1 ����</a></li>
								<li class="end"><a href="/bustagoApp/lostListAction.action">���ǹ�����</a></li>
							</ul>

						</ul>
					</div>
				</div>

				<div class="content" id="Content">

					<!-- content -->
					<h3 class="stit">
						<img src="/images/customer/h3_notice.gif" alt="��������" />
					</h3>
					<p class="des">����Ÿ��(�����ÿܹ��� ���������)�� ���ο� �ҽ��� �˷��帳�ϴ�.</p>

					<!--  
            <input type="hidden" name="searchSelect" value="" />
            <input type="hidden" name="searchText" value=""/> -->

					<form id="noticeSearch" name="noticeSearch" id="noticeSearch"
						action="/bustagoApp/NoticeSearchAction.action" method="post">
						<div class="terminal_search">
							<select style="width: 110px;" id="seOptionData"
								class="searchSelect" name="seOptionData">
								<option value="N_TITLE" id="N_TITLE">����</option>
								<option value="N_CONTENTS" id="N_CONTENTS">����</option>
							</select> <input type="text" style="width: 200px;" id="selectText"
								name="selectText" class="txt" onclick="this.value=''"
								onblur="if(this.value=='') this.value='�˻�� �Է��ϼ���.'"
								value="�˻�� �Է��ϼ���." /> <span class="button"><input
								type="button" id="selectBtn" name="selectBtn" value="�˻�"
								onclick="searchOption()" /></span>
						</div>
					</form>


					<form id="noticeForm" name="noticeForm"
						action="/kr/support/notice/notice.do" method="post">
						<table class="board_list" summary="��ȣ,����,÷��,�����,��ȸ��">
							<caption>��������</caption>
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
									<th scope="col">��ȣ</th>
									<th scope="col">����</th>
									<th scope="col">�����</th>
									<th scope="col">��ȸ</th>
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
						<table class="board_list" summary="��ȣ,����,÷��,�����,��ȸ��" id="tt">
							<caption>��������</caption>
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
									<th scope="col">��ȣ</th>
									<th scope="col">����</th>
									<th scope="col">����</th>
									<th scope="col">ī�װ�</th>
									<th scope="col">�����</th>
									<th scope="col">��ȸ</th>
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
						src="/images/main/footer_01.gif" alt="Ȩ������ �̿���" /></a></li>
				<li><a href="/kr/etc/privacy.do"><img
						src="/images/main/footer_02.gif" alt="����������޹�ħ" /></a></li>
				<li><a href="/kr/etc/ebanking.do"><img
						src="/images/main/footer_03.gif" alt="���ڱ����ŷ� �⺻���" /></a></li>
				<li><a href="/kr/etc/email.do"><img
						src="/images/main/footer_04.gif" alt="�̸��Ϲ��ܼ����ź�" /></a></li>
				<li><a href="#"><img src="/images/main/footer_06.gif"
						alt="���������" onclick="onopenPopup();" /></a></li>
			</ul>
			<div class="family">
				<span class="flink"><img src="/images/main/family.gif" alt="" /></span>
				<div class="flist">
					<ul>
						<li><a href="http://www.mltm.go.kr" target="_blank">���䱳���</a></li>
						<li><a href="http://www.visitkorea.co.kr" target="_blank">�ѱ���������</a></li>
						<li><a href="http://www.bus.or.kr" target="_blank">����������ۻ�����տ���ȸ</a></li>
						<li><a href="http://www.sbus.or.kr" target="_blank">����Ư���ù�����ۻ������</a></li>
						<li><a href="http://www.incheonbus.or.kr" target="_blank">��õ�����ù�����ۻ������</a></li>
						<li><a href="http://www.daejeonbus.or.kr" target="_blank">���������ù�����ۻ������</a></li>
						<li><a href="http://www.ulsanbus.or.kr" target="_blank">��걤���ù�����ۻ������</a></li>
						<li><a href="http://www.gbus.or.kr" target="_blank">��⵵������ۻ������</a></li>
						<li><a href="http://www.busta.or.kr" target="_blank">����ϵ�������ۻ������</a></li>
					</ul>
				</div>
			</div>
			<p class="address">
				<img src="/images/main/footer_copyright.gif"
					alt="(��)�̺�ī��, ����ڵ�Ϲ�ȣ: 129-86-38970, ����Ǹž� 2013-��⼺��-1165,  ����� ��õ�� ���������2�� 179(���굿 533-2),  �ݼ��� 1644-2992,  interoper@lotte.net" />
			</p>
			<!-- 2014-12-12 -->
		</div>
		<script type="text/javascript">
			if (self.name != "") {
				document
						.writeln("<div><a href='https://m.bustago.or.kr:444/mobus' style='display:block; width:640px; margin:0 auto;' target=\"_top\" ><img src='/images/main/bustago_mobile_icon.gif' alt='����� ������Ʈ�� �̵�' width='640' height='83' /></a></div>");
			}
		</script>
	</div>
</body>
</html>