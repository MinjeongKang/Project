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
<meta name="keywords" content="�ÿܹ���, �ÿܹ��� ����, �ÿܹ����͹̳�, �͹̳�, ���ﳲ���͹̳�, ���� ���� �͹̳�, ���ﳲ���͹̳� ����, ���ﳲ���͹̳� ����,�ÿܹ����͹̳� ����, �ÿܹ��� ���, �ÿܹ��� �ð�ǥ"> 
<meta name="description" content="�ÿܹ���  ���� �ÿܹ��� �͹̳� ����  ���ﳲ���͹̳� ���� ���� �͹̳� ����, ���� ���� �͹̳� ���� �ÿܹ����͹̳�  �ÿܹ��� ��� �ÿܹ��� �ð�ǥ ">

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
			alert('����â�� Ȯ���Ͽ��ּ���');
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
							if (session.getAttribute("M_ID").equals("admin")) {
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
							<li><a href="/guide/reservelist.jsp">��ȸ/����/���</a></li>
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
	
		<div id="Content" class="container">
			<!-- //content -->
			<div class="mcont1">
				<div class="mreserve">
					<ul class="rtab">
						<li id="goTicketTab" class="selected">
							<a href="#" id="goTicket">
							<img src="/images/main/tab01.gif" alt="��" /></a>
						</li>
					</ul>
					<div class="reservebox">
						<form action="/bustagoApp/ticketListAction.action" id='frmSubmit' name='frmSubmit' method='post'>
						<input type="hidden" id="startType" name="startType" value="S"/>
						<!-- �� : S / �Ϻ� : D -->
						<!-- ���� -->
						<table class="station">
							<tr>
								<th><label for="start">�����</label></th>
								<td>
									<select id="S_CODE" name="S_CODE">
										<option value="empty" selected="selected">�����ϼ���</option>
										<option value="01">��Ʈ��(����ȣ��)</option>
										<option value="02">�(���)</option>
										<option value="03">����(������)</option>
										<option value="04">����(������)</option>
										<option value="05">������</option>
										<option value="06">����</option>
										<option value="07">�س�</option>
										<option value="08">����û��</option>
										<option value="09">û��</option>
										<option value="11">����</option>
										<option value="12">��â</option>
										<option value="13">����</option>
										<option value="14">����(��������)</option>
										<option value="15">����(ȫ����)</option>
										<option value="16">�쵿(�쵿��)</option>
									</select>							
								</td>
							</tr>
							<tr>
								<th><label for="finish">������</label></th>
								<td>
									<select id="E_CODE" name="E_CODE">
										<option value="empty" selected="selected">�����ϼ���</option>
										<option value="01">��Ʈ��(����ȣ��)</option>
										<option value="02">�(���)</option>
										<option value="03">����(������)</option>
										<option value="04">����(������)</option>
										<option value="05">������</option>
										<option value="06">����</option>
										<option value="07">�س�</option>
										<option value="08">����û��</option>
										<option value="09">û��</option>
										<option value="11">����</option>
										<option value="12">��â</option>
										<option value="13">����</option>
										<option value="14">����(��������)</option>
										<option value="15">����(ȫ����)</option>
										<option value="16">�쵿(�쵿��)</option>
									</select>
								</td>
							</tr>
						</table>

						<div class="times">
							<table class="time">
							<tr>
								<th><label for="go">��� ��¥</label></th>
								<td class="seletw">
									<select id="B_DATE1" name="B_DATE1" style="width:70px" onchange="javascript:bdate_check1()">
										<option value="15" selected="selected">2015��</option>
										<option value="16">2016��</option>
										<option value="17">2017��</option>
										<option value="18">2018��</option>
										<option value="19">2019��</option>
										<option value="20">2020��</option>
									</select>
									<select id="B_DATE2" name="B_DATE2" style="width:55px" onchange="javascript:bdate_check2()">
										<option value="01" selected="selected">01��</option>
										<option value="02">02��</option>
										<option value="03">03��</option>
										<option value="04">04��</option>
										<option value="05">05��</option>
										<option value="06">06��</option>
										<option value="07">07��</option>
										<option value="08">08��</option>
										<option value="09">09��</option>
										<option value="10">10��</option>
										<option value="11">11��</option>
										<option value="12">12��</option>
									</select>
									<select id="B_DATE3" name="B_DATE3" style="width:55px" onchange="javascript:bdate_check3()">
										<option value="01" selected="selected">01��</option>
										<option value="02">02��</option>
										<option value="03">03��</option>
										<option value="04">04��</option>
										<option value="05">05��</option>
										<option value="06">06��</option>
										<option value="07">07��</option>
										<option value="08">08��</option>
										<option value="09">09��</option>
										<option value="10">10��</option>
										<option value="11">11��</option>
										<option value="12">12��</option>
										<option value="13">13��</option>
										<option value="14">14��</option>
										<option value="15">15��</option>
										<option value="16">16��</option>
										<option value="17">17��</option>
										<option value="18">18��</option>
										<option value="19">19��</option>
										<option value="20">20��</option>
										<option value="21">21��</option>
										<option value="22">22��</option>
										<option value="23">23��</option>
										<option value="24">24��</option>
										<option value="25">25��</option>
										<option value="26">26��</option>
										<option value="27">27��</option>
										<option value="28">28��</option>
										<option value="29">29��</option>
										<option value="30">30��</option>
										<option value="31">31��</option>
									</select>
									<input type="hidden" id="B_DATE" name="B_DATE"/>
									<!-- 														
									<img class="selectday" src="/images/common/input01.gif" style="padding-left: 3px; ">
									-->
								</td>
							</tr>
							<tr>
								<th><label for="go">��� �ð�</label></th>
								<td class="selecttime">
									<select id="B_TIME" name="B_TIME" onchange="javascript:btime_check()">
										<option value="empty" selected="selected">�����ϼ���</option>
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
						<!-- //���� -->
						</form>
						<div class="mbtn">
							<a id="reserveBtn" name="reserveBtn" style="cursor:pointer;">
								<img src="/images/main/btn_reserves.gif" alt="����" />
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
					<strong><img src="/images/main/pr_tit.gif" alt="ȫ����" /></strong>
					<p><a href="http://www.usquare.co.kr/index.asp" target="_blank"><img src="/images/main/pr_img.gif" alt="��ȣ�͹̳� ������ ��� ������ ���� New LandMark" /></a></p>
				</div>
				<div class="evt">
					<ul>
						<li><a href="#"><img src="/images/main/eve_01.jpg" alt="#" /></a></li>
						<li><a href="#""><img src="/images/main/eve_02.jpg" alt="#" /></a></li>
					</ul>
				</div>
				<div class="info">
					<ul>
						<li><a href="/kr/guide/hometicket.do"><img src="/images/main/quick_01.gif" alt="ȨƼ�� ���žȳ�" /></a></li>
						<li><a href="/kr/guide/mobile.do"><img src="/images/main/quick_02.gif" alt="����� ���žȳ�" /></a></li>
						<li><a onclick="layerAlert('���� �غ��� �Դϴ�.');" style="cursor:pointer;"><img src="/images/main/quick_03.gif" alt="�����ǰ �ȳ�" /></a></li>
						<li><a href="/kr/guide/setup.do"><img src="/images/main/quick_04.gif" alt="ȯ�漳�� �ȳ�" /></a></li>
						<li><a href="/kr/support/notice/notice.do"><img src="/images/main/quick_05.gif" alt="��������" /></a></li>
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
		<li class="sta"><a href="/kr/etc/agreement.do"><img src="/images/main/footer_01.gif" alt="Ȩ������ �̿���" /></a></li>
		<li><a href="/kr/etc/privacy.do"><img src="/images/main/footer_02.gif" alt="����������޹�ħ" /></a></li>
		<li><a href="/kr/etc/ebanking.do"><img src="/images/main/footer_03.gif" alt="���ڱ����ŷ� �⺻���" /></a></li>
		<li><a href="/kr/etc/email.do"><img src="/images/main/footer_04.gif" alt="�̸��Ϲ��ܼ����ź�" /></a></li>
		<li><a href="#"><img src="/images/main/footer_06.gif" alt="���������" onclick="onopenPopup();" /></a></li>
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
	<p class="address"><img src="/images/main/footer_copyright.gif" alt="SIST 7th, ����ڵ�Ϲ�ȣ: 777-77-77777, ����Ǹž� 2015-���ѹα�-1004,  ����� ������ �������242-1(���ﵿ 513-2),  lee.devne@gmail.com" /></p>
</div>

<script type="text/javascript">
    if (self.name != ""){
		document.writeln("<div><a href='https://m.bustago.or.kr:444/mobus' style='display:block; width:640px; margin:0 auto;' target=\"_top\" ><img src='/images/main/bustago_mobile_icon.gif' alt='����� ������Ʈ�� �̵�' width='640' height='83' /></a></div>");
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
				
				$("#startTerminalNm").val("�͹̳θ��� �Է����ּ���");

				$(".arealist li").each(function(index,value){
					if($(this).attr("terId") == terCode){
						$(this).addClass("selected");
					} else {
						$(this).removeClass("selected");
					}
				});
				
				if(terCode!="") $("#terCode").val(terCode);
				if(terminalNm!="") $("#terName").val(terminalNm);
				$("#startTerNm").html("����� "+$("#terName").val());

				if($.trim(orderCreateDays)!="") $("#startBusOrderCreateDays").val(orderCreateDays);
		
				// ����,��õ�͹̳� ���â ���� 20120530
				if (terCode =="8038"){
					layerAlert("�ش� �͹̳�("+terminalNm+")�� �߰��/�Ƶ� ���Ÿ� �� �� �����ϴ�.<br/><br/>�߰��/�Ƶ� ���Ŵ� �Ϲݽ����� ���� �� �ش� �͹̳ο��� �߱� �� ��ȯ�ϼž��մϴ�.");
				}
				// ���� ���â ���� 20120530
				if (terCode =="9401"){
					layerAlert("�ش� �͹̳�("+terminalNm+")�� �߰�� ���Ÿ� �� �� �����ϴ�.<br/><br/>�߰�� ���Ŵ� �Ϲݽ����� ���� �� �ش� �͹̳ο��� �߱� �� ��ȯ�ϼž��մϴ�.");
				}
				// �λ굿�� ���â ���� 20120713
				//if (terCode =="9001"){
				//	layerAlert("�ش� �͹̳�("+$(this).text()+")�� ���� ��������\n10�� �̳��� ������ ���ؼ��� ���Ű� �����մϴ�.\n�߰�� ���� ���� �͹̳� �湮 �� �� ���� �л��� ����ٶ��ϴ�.");
				//}
				// �ؿ��(������) �˸� ���� 20121004
				if (terCode =="9009"){
					layerAlert("�ؿ���͹̳��� �λ��ؿ��, �ؿ��(������)�����ҷ� �и��Ǿ����ϴ�.<br/><br/>����,����,�Ȼ�,��õ,���,������ �뼱�� �ؿ��(������)�����ҿ��� ���� �� �߱�, ž���� �����մϴ�.<br/><br/>�ؿ��(������)�����Ҵ� �λ������ ���� ��ġ�մϴ�.<br/><br/>(�������� ����)<br/>��ȭ : 1688-7645");
				}
				// �λ��ؿ�� �˸� ���� 20121004
				if (terCode =="9007"){
					layerAlert("����,����,�Ȼ�,��õ,���,������ �뼱�� �ؿ��(������)�����Ҹ� �̿��Ͽ��ֽʽÿ�.");
				}
				// ��� �˸� ���� 20121004 , ���꽺��, �ŷʿ� �߰� 20121016, ��õ 20121113, ���� 20121121, ���� 20130708
				if (terCode =="1782" || terCode =="4294" || terCode =="4115" || terCode =="8042" || terCode =="4003"){
					layerAlert(terminalNm+"���� �߱��Ͻ� ��� �ݵ�� ������ ����� ī�带 �����ϼž� �մϴ�.");
				}
				// ���� ���â ���� 20121107
				if (terCode =="5046"){
					layerAlert("�߱�/ȯ��/ž���� ����� �͹̳ο����� �����ϸ� �ּ� ��߽ð� 15�� ���� �߱��Ͻñ� �ٶ��ϴ�.");
				}
				// ǳ���͹̳� ���â ���� 20130731
				if (terCode =="5283"){
					layerAlert("�����͹̳� ��� �ð��� ���� �°��忡�� ��ٷ� �ֽñ� �ٶ��ϴ�.<br/><br/>�߱�/ȯ��/ž���� ����� �͹̳ο����� �����ϸ� �ּ� ��߽ð� 15�� ���� �߱��Ͻñ� �ٶ��ϴ�.");
				}
				// �����͹̳� ���â ���� 20130401
				if (terCode =="5007"){
					layerAlert("�����͹̳ΰ��� ����뼱���� ���� 6~10�¼��� ���Ű� �����մϴ�.<br/><br/>�ָ��� ��� ������ 28�ν¿��� 41�ν����� ����� �� �ֽ��ϴ�.");
				}
				// ȫõ �˸� ���� ���� 20140826
				//if (terCode =="2044"){
				//	layerAlert("9��6��(��)~9��10��(��)���� �߼��ڷ� �������� ���Ͽ� ��߽ð��� 10�� ���� ������ ���ؼ� <br/>�߼����Ű� �ȵ˴ϴ�.");
				//}
				// ��õ �˸� ���� ���� 20140828
				//if (terCode =="9015"){
				//	layerAlert("ħ���� ���Ͽ� ��õ������ ���ͳ� ���Ű� �Ұ��մϴ�.<br/><br/>���� ���� ���� ���� �ϵ��� �ϰڽ��ϴ�.<br/><br/>������ȭ 051)746-3550");
				//	return;
				//}
				// ���� �˸� ���� ���� 20140828
				if (terCode =="5071"){
					layerAlert("2014�� 9��1�Ϻ��� ���� - �Ű����� �뼱�� �¼����� ��մϴ�.<br/><br/>���� �̿�ٶ��ϴ�.<br/><br/>�����մϴ�.");
				}
				// ���� �˸� ���� ���� 20140829
				if (terCode =="2051"){
					layerAlert("�л� �� û�ҳ� ����(20%) �� ��������������(30%)�� ������ �ǽô� �°������� �͹̳� ���忹��(05:30~22:00)��, ���ͳݿ��� �Ϲ����� ������ ��ǥâ������ �л���( û�ҳ���)�� ������������ Ȯ���� ���ε� ���������� ��ȯ�Ͽ� �ֽñ� �ٶ��ϴ�.<br/><br/>(04:00 ��������-��õ������ ��� ������ ��ȯ�� ��� ���� ������, ����� �Ϸ������� ��ǥ�� �湮�� ���ε� ���������� ��ȯ �Ͻñ� �ٶ��ϴ�.(��ȯ���ɽð�05:30~22:00))<br/><br/>(���� üũī��� �������� ������ ��� ��� �Ǵ� ȯ���� 3~5�� ���� �ҿ�˴ϴ�. �����ܰ� �����Ͻñ� �ٶ��ϴ�.)<br/><br/><p><span style=\"color: rgb(255, 0, 0);\">������ �нǽ� ������� �Ұ��Ͽ���, ������ �нǿ� ���� �Ͻñ� �ٶ��ϴ�.</span><br></p>");
				}
				// ���� �˸� ���� ���� 20140901
				if (terCode =="8006"){
					layerAlert("�������͹̳�(�߸������͹̳�) ���Ŵ� ��������� �������� �����Ͽ� �ֽñ� �ٶ��ϴ�.");
				}
				// ������ �˸� ���� ���� 20140901
				if (terCode =="8019"){
					//layerAlert("����ÿܹ����͹̳� ���Ŵ� ��������� ������ �����Ͽ� �ֽñ� �ٶ��ϴ�.");
					layerAlert("������(�߸���),����(������)�� ������� �ٸ����� <br/>Ȯ���� �����Ͻñ� �ٶ��ϴ�.");
				}
				// �λ굿�� ���â ���� 20120713 �߰� 20121029
				if (terCode =="9001"){
					//layerAlert("�ش� �͹̳�("+terminalNm+")�� ���� �������� 10�� �̳��� ������ ���ؼ��� ���Ű� �����մϴ�.<br/><br/>�߰�� ���� ���� �� �͹̳� �湮�� ���� �л��� �����ϼż� ���Ź߱� �Ͻñ�ٶ��ϴ�. (�л���, �ſ�ī�� �ʼ� ����)");
					layerAlert("�߰�� ���� ���� �� �͹̳� �湮�� ���� �л��� �����ϼż� ���Ź߱� �Ͻñ�ٶ��ϴ�. (�л���, �ſ�ī�� �ʼ� ����)");
				}
				// ���� ���â ���� 20140716
				if (terCode =="8041"){
					layerAlert("�ش� �͹̳�("+terminalNm+")�� �߰�� ���Ÿ� �� �� �����ϴ�.<br/><br/>�߰�� ���Ŵ� �Ϲݽ����� ���� �� �ش� �͹̳ο��� �߱� �� ��ȯ�ϼž��մϴ�.");
				}
				// ��õ �˸� ���� ���� 20141204
				//if (terCode =="9302"){
				//	layerAlert("12�� 11�Ϻη� �ȼ���/��â��/��������/������ �Ϻνð� �� ����Ȩ ����ȳ�<br/><br/>�ȼ���   9������Ȩ -> 6������Ȩ , ��â�� 17������Ȩ -> 16������//Ȩ<br/>�������� 17������Ȩ -> 16������Ȩ");
				//}
				// ���ְ��� �˸� ���� ����
				if (terCode =="6349"){
					layerAlert("��õ���� ��ǥ�� ���� ���������� �ٷ� �� ���׳ױ�信�� �ϰ� ������<br/><br/>�ڼ��� ������ (��)�����ġ���񽺷� ���� �Ͻñ� �ٶ��ϴ�.(053-356-1387)");
				}
				// ���� �˸� ���� ���� 20150119
				if (terCode =="4024"){
					layerAlert("���Ŵ� ����� ���� 2���� �߸��մϴ�.<br/>���ɹ� ��Ʈ�� ���� �߰�� ���Ű� �Ұ��� �մϴ�.");
				}
				// ���� �˸� ���� ���� 20150119
				if (terCode =="1010"){
					layerAlert(
					"<p><span style=\"color: rgb(255, 0, 0);\">[��ް���] ���������͹̳� ��ǥ�� ������ ��� ���̸� ���� ī��θ� �߱��� �����ϸ�, ���� �����Ͻ� �°������� ���� ���Բ� ������ �����ϰ� ž���ϼž��մϴ�. ������ �߱��� �ż��ϰ� �Ϸ��� ������ ���ͳ� ���Ÿ� �̿��Ͽ� �ֽʽÿ�.  </span><br></p><br>"+terminalNm+"���� �߱��Ͻ� ��� �ݵ�� ������ ����� ī�带 �����ϼž� �մϴ�.");
				}
				//��õ �˸�
				if (terCode =="1007"){
					layerAlert("<p><span style=\"color: rgb(255, 0, 0);\">��õ �͹̳��� 6������ �Ƶ������ �޽��ϴ�. <br/>6�� ~ �ʵ��л��� ��� �Ƶ����� ���� ������ �Ͻñ� �ٶ��ϴ�. </span></p>");
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

							$.each(["��","��","��","��","��","��","��","��","��","��","��","��","��","��"],function(index,value){
								var tmpStr = terminalQuery(orgEndStringTmp,"TERMINAL_MOEUM",value);
		
								if(tmpStr!=""){
									var tmpChk = $.parseJSON(tmpStr);
									$.each(tmpChk,function(index1,value1){
										//var tmpChk1 = setTerminalChk('e', value1["RESERVATION_CHK"], value1["TERMINAL_ID"], terCode);/* $.parseJSON(tmpStr1); */
										
										//if(value1["ROUND_TICKET_CD"]=="1"||value1["ROUND_TICKET_CD"]=="2"){
											if(parseInt(value1["RESERVATION_CHK"], 10) > 0 && value1["ONE_WAY_CD"] == "1"){
												//�պ�/��
												reserveEndTable = "					<tr><td class='ov3'><a href='javascript:terminalSet(\""+value1["TERMINAL_ID"]+"\",\""+value1["TERMINAL_NM"]+"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
												reserveEndTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_both.gif\" alt=\"�պ����Ű���\" /></td></tr>";
												tableHtml[index] += reserveEndTable;
											}
											if(parseInt(value1["RESERVATION_CHK"], 10) > 0 && value1["ONE_WAY_CD"] == "0"){
												//�պ�/��
												reserveEndTable = "					<tr><td class='ov1'><a href='javascript:terminalSet(\""+value1["TERMINAL_ID"]+"\",\""+value1["TERMINAL_NM"]+"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
												reserveEndTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_one.gif\" alt=\"�����Ű���\" /></td></tr>";
												tableHtml[index] += reserveEndTable;
											}
											if(parseInt(value1["RESERVATION_CHK"], 10) == 0){
												//��������
												reserveEndEtcTable = "					<tr><td class='ov2'><a href='javascript:terminalSet(\""+value1["TERMINAL_ID"]+"\",\""+value1["TERMINAL_NM"]+"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
												reserveEndEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"���źҰ�\" /></td></tr>";
												tableHtmlEtc[index] += reserveEndEtcTable;
											}
											if(parseInt(value1["RESERVATION_CHK"], 10) == -1){
												//�뼱����
												reserveEndEtcTable = "					<tr><td class='ov3'><a href='javascript:terminalSet(\""+value1["TERMINAL_ID"]+"\",\""+value1["TERMINAL_NM"]+"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
												reserveEndEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"���źҰ�\" /></td></tr>";
												tableHtmlEtc[index] += reserveEndEtcTable;
											}
										//} else {
											//�뼱����
										//	reserveEndEtcTable = "					<tr><td class='ov4'><a href='javascript:terminalSet(\""+value1["TERMINAL_ID"]+"\",\""+value1["TERMINAL_NM"]+"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
										//	reserveEndEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"���źҰ�\" /></td></tr>";
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
							layerAlert("�����Ͻ� ���� �Ǵ� �˻���� ������ �͹̳��� �����ϴ�.");
							$("#finishTerminalListSearch").hide();
						}
					}
				});
		
				$("#finishTitle").html("�͹̳� �� �������� ������ �ּ���.").show();
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
									$.each(["��","��","��","��","��","��","��","��","��","��","��","��","��","��"],function(index,value){
										var tmpStr = terminalQuery(orgEndStringTmp,"TERMINAL_MOEUM",value);
		
										if(tmpStr!=""){
											var tmpChk = $.parseJSON(tmpStr);
											$.each(tmpChk,function(index1,value1){
												if($.isNumeric(terminalNm)) $("#startBusOrderCreateDays").val(value1["BUS_ORDER_CREATE_DAYS"]);
												//var tmpStr1 = terminalQuery(terminalChk,"code",value1["TERMINAL_ID"]);
												//if(tmpStr1!=""){
													//var tmpChk1 = $.parseJSON(tmpStr1);
													if(value1["ROUND_TICKET_CD"]=="1"){
														//�պ�/��
														reserveTable = "					<tr><td class='ov3'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
														reserveTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_both.gif\" alt=\"�պ����Ű���\" /></td></tr>";
														tableHtml[index] += reserveTable;
													}
													if(value1["ROUND_TICKET_CD"]=="2"){
														//�պ�/��
														reserveTable = "					<tr><td class='ov1'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
														reserveTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_one.gif\" alt=\"�����Ű���\" /></td></tr>";
														tableHtml[index] += reserveTable;
													}
													if(value1["ROUND_TICKET_CD"]=="3"){
														//��������
														reserveEtcTable = "					<tr><td class='ov2'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
														reserveEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"���źҰ�\" /></td></tr>";
														tableEtcHtml[index] += reserveEtcTable;
													}
													if(value1["ROUND_TICKET_CD"]=="4" || value1["ROUND_TICKET_CD"]=="0"){
														//�뼱����
														reserveEtcTable = "					<tr><td class='ov4'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
														reserveEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"���źҰ�\" /></td></tr>";
														tableEtcHtml[index] += reserveEtcTable;
													}
												//} else {
												//	reserveEtcTable += "					<tr><td class='ov4'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
												//	reserveEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"���źҰ�\" /></td></tr>";
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
									layerAlert("�����Ͻ� ���� �Ǵ� �˻���� ������ �͹̳��� �����ϴ�.");
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
							$.each(["��","��","��","��","��","��","��","��","��","��","��","��","��","��"],function(index,value){
								var tmpStr = terminalQuery(orgEndStringTmp,"TERMINAL_MOEUM",value);
		
								if(tmpStr!=""){
									var tmpChk = $.parseJSON(tmpStr);
									$.each(tmpChk,function(index1,value1){
										if(value1["ROUND_TICKET_CD"]=="1"){
											//�պ�/��
											reserveTable = "					<tr><td class='ov3'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
											reserveTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_both.gif\" alt=\"�պ����Ű���\" /></td></tr>";
											tableHtml[index] += reserveTable;
										}
										if(value1["ROUND_TICKET_CD"]=="2"){
											//�պ�/��
											reserveTable = "					<tr><td class='ov1'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
											reserveTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_one.gif\" alt=\"�����Ű���\" /></td></tr>";
											tableHtml[index] += reserveTable;
										}
										if(value1["ROUND_TICKET_CD"]=="3"){
											//��������
											reserveEtcTable = "					<tr><td class='ov2'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
											reserveEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"���źҰ�\" /></td></tr>";
											tableEtcHtml[index] += reserveEtcTable;
										}
										if(value1["ROUND_TICKET_CD"]=="4" || value1["ROUND_TICKET_CD"]=="0"){
											//�뼱����
											reserveEtcTable = "					<tr><td class='ov4'><a href='javascript:terminalEndList(\"S\",\""+value1["TERMINAL_ID"]+"\",\"\",\""+value1["TERMINAL_NM"]+"\",\"\",\""+value1["BUS_ORDER_CREATE_DAYS"]+"\")' class=\"terName\" terCode=\""+value1["TERMINAL_ID"]+"\" busOrderCreateDays=\""+value1["BUS_ORDER_CREATE_DAYS"]+"\" title=\""+value1["TERMINAL_AREA"]+"\"><b>["+value1["TERMINAL_AREA"].replace(/ /g, '')+"]</b>"+value1["TERMINAL_NM"]+"</a></td>";
											reserveEtcTable += "					<td class=\"bico\"><img src=\"/images/popup/ico_buy.png\" alt=\"���źҰ�\" /></td></tr>";
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
							layerAlert("�����Ͻ� ���� �Ǵ� �˻���� ������ �͹̳��� �����ϴ�.");
							$("#finishTerminalListSearch").hide();
						}
					}
				/* } */
			};
			
			function terminalSet(cd,nm,orderCreateDays) {
				$("#startTerminalNm").val("�͹̳θ��� �Է����ּ���");
				$("#finishTerminalNm").val("�͹̳θ��� �Է����ּ���");
				$.busCall({
					type : 'POST',
					url : '/common/busOrderCreateDays.do?depTerId='+$("#terCode").val()+'&arrTerId='+cd,
					dataType : 'text',
					success : function(data) {
						$("#finishBusOrderCreateDays").val(common_dayDiff(serverDateTimes_string.substring(0,8),$.parseJSON(data)["busOrderCreateDays"]));
					}
				});
				//$("#finishBusOrderCreateDays").val(orderCreateDays);

				// ������� ��õ�̰�, �ش� �������� ��� Ȱ��ȭ, �ƴ� ��� ���л� ��Ȱ��ȭ
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
				//���ָ� ���� 2011-08-22, ����, ����, �س�, ����, ��õ, �����߰� 2011-10-10, 20120903 ����߰�
				//�λ굿���͹̳� �߰�� ��Ȱ�� �߰�(20140708)
				//�����͹̳�(4024), ��õ�ؼ�����(4141) �Ϲݸ� ���ŵǵ��� ����(20140721)
				//�����͹̳�(4024) ���� ����(20150113)
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
					$("#notiTxt").html("�߰�� ���ͳ� <font color='red'>���źҰ�</font> �͹̳� �Դϴ�.");
					if($("#terCode").val()=="7033" 
							|| $("#terCode").val()=="7099" 
							|| $("#terCode").val()=="7100" 
							|| $("#terCode").val()=="4141"
							|| $("#terCode").val()=="8038"
							|| $("#terCode").val()=="6040"){
						$('#childrenCnt').attr('disabled',true);
						$('#childrenCnt option:eq(0)').attr('selected','selected');
						$("#notiTxt").html("�߰��/�Ƶ� ���ͳ� <font color='red'>���źҰ�</font> �͹̳� �Դϴ�.");
					} else {
						$('#childrenCnt').attr('disabled',false);
					}
				} else {
					$("#studentCnt").prop('disabled',false);
					$("#childrenCnt").prop('disabled',false);
					$("#notiTxt").html("");
				}
		
				// ��ȯ(���,�),��ȯ(����,����), ��ȯ(��õ,����), ��ȯ(����,����)�� ��� �Ƶ� disabled ó��(20140708 �߰�)
				if (cd =="z067" || cd =="z068" || cd =="z073" || cd =="z074"){
					$("#childrenCnt").attr('disabled',true);
					$('#childrenCnt option:eq(0)').attr('selected','selected');
					$("#notiTxt").html("�Ƶ� ���ͳ� <font color='red'>���źҰ�</font> �͹̳� �Դϴ�.");
				}
				
				// ����� ����(4024), ������ ��Ʈ����Ƽ(0006) �� ��� �߰�� ��Ȱ��ȭ (20150117)
				if($("#terCode").val()=="4024" && cd=="0006") {
					$('#studentCnt').attr('disabled',true);
					$('#studentCnt option:eq(0)').attr('selected','selected');
					$("#notiTxt").html("�߰�� ���ͳ� <font color='red'>���źҰ�</font> �͹̳� �Դϴ�.");
				}
				
				// ����� ���(1782), ������ õ��(4019) �� ��� �߰�� ��Ȱ��ȭó�� (20140922)
				if($("#terCode").val()=="1782" && cd=="4019") {
					$('#studentCnt').attr('disabled',true);
					$('#studentCnt option:eq(0)').attr('selected','selected');
					$("#notiTxt").html("�߰�� ���ͳ� <font color='red'>���źҰ�</font> �͹̳� �Դϴ�.");
				} else if($("#terCode").val()=="1782" && cd!="4019") {
					$("#studentCnt").attr('disabled',false);
				}

				$("#start").val($("#terName").val());
				$("#finish").val(nm);
				$("#startId").val($("#terCode").val());
				$("#finishId").val(cd);
				$("#finishTerNm").html("������ "+nm);
		
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
						$("#startTitleMain").html("���ͳ� ���� ����");
					} else if($(this).scrollTop()>$("#startTerminalReserve").height()&&$(this).scrollTop()<=($("#startTerminalReserve").height()+$("#startTerminalTransport").height())){
						$("#startTitleMain").html("���������� ����");
					} else {
						$("#startTitleMain").html("�뼱������ ����");
					}
				});
				
				$("#searchStartTerminalList").scroll(function(){
					if(startScroll > 0){
						if($(this).scrollTop()<=startScroll){
							$("#startTitle").html("���ͳ� ���� ����");
						} else {
							$("#startTitle").html("���ͳ� ���� �Ұ�");
						}
					}
				});
				
				$("#finishTerminalList").scroll(function(){
					if(finishScroll > 0){
						if($(this).scrollTop()<=finishScroll){
							$("#finishTitle").html("���ͳ� ���� ����");
						} else {
							$("#finishTitle").html("���ͳ� ���� �Ұ�");
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
					if($("#startTerminalNm").val()=="") $("#startTerminalNm").val("�͹̳θ��� �Է����ּ���");
				});
				
				$("#startSearchBtn").click(function(){
					if($("#startTerminalNm").val() == '�͹̳θ��� �Է����ּ���' || $("#startTerminalNm").val() == '') {
						layerAlert("�˻��Ͻ� �͹̳� ���� �Է��� �ּ���.");
					} else {
						terminalList('',$("#startTerminalNm").val());
						$("[id=allDepTerminal]").show();
						//$("#startTerminalNm").val("�͹̳θ��� �Է����ּ���");
					}
				});
				
				$("#finishTerminalNm").click(function(){
					$(this).val("");
				});
				
				$("#finishTerminalNm").focus(function(){
					$(this).val("");
				});
				
				$("#finishTerminalNm").blur(function(){
					if($("#finishTerminalNm").val()=="") $("#finishTerminalNm").val("�͹̳θ��� �Է����ּ���");
				});
				
				$("#finishSearchBtn").click(function(){
					if($("#finishTerminalNm").val() == '�͹̳θ��� �Է����ּ���' || $("#finishTerminalNm").val() == '') {
						layerAlert("�˻��Ͻ� �͹̳� ���� �Է��� �ּ���.");
					} else {
						terminalEndList('',$("#terCode").val(),'','',$("#finishTerminalNm").val());
						//$("#finishTerminalNm").val("�͹̳θ��� �Է����ּ���");
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

			<!-- �͹̳ΰ˻� layer -->
			<div style="display:none;" >
				<div class="laybox" id="LayerAlert">
					<div class="laycont1_top"></div>
					<div class="laycont1">
						<strong class="laytit etc"><img src="/images/popup/tit_terminal.gif" alt="�͹̳� �˻�" /></strong>

						<div class="terboxs">
							<div class="part1">
								<strong><img src="/images/popup/ico_01.png" alt="���ͳ� ���� ���� - ��,�պ�" /></strong>
								<span>��, �պ����� ���ͳ� ���� ���� �մϴ�.</span>
							</div>
							<div class="part2">
								<strong><img src="/images/popup/ico_02.png" alt="���ͳ� ���� �Ұ� - ���忹��" /></strong>
								<span>�͹̳� ��ǥ�ҿ��� ������ ���� ���� �մϴ�.</span>
							</div>
						</div>

						<strong class="areatit">�ֿ� �͹̳�</strong>
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
							<!-- ����� -->
							<div class="parts1">
								<div class="seletw">
									<select id="startArea" style="width:143px;" title="���� ����">
										<option value="">��ü</option>
										<option value="����">����</option>
										<option value="���">���</option>
										<option value="�λ�">�λ�</option>
										<option value="��õ">��õ</option>
										<option value="����">����</option>
										<option value="����">����</option>
										<option value="�뱸">�뱸</option>
										<option value="���">���</option>
										<option value="����">����</option>
										<option value="���">���</option>
										<option value="�泲">�泲</option>
										<option value="����">����</option>
										<option value="����">����</option>
										<option value="���">���</option>
										<option value="�泲">�泲</option>
										<option value="����">����</option>
									</select> &nbsp;
									<input type="text" class="txts" id="startTerminalNm" value="�͹̳θ��� �Է����ּ���" style="width:158px; ime-mode:active;" onkeydown="javascript: if (event.keyCode == 13) {$('#startSearchBtn').click();}">
									<a href="#" class="btn1"><img id="startSearchBtn" src="/images/button/bts_search.gif" alt="�˻�" class="bts"  /></a>
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
									        	layerAlert("'"+str+"' �� �����ϴ� �͹̳��� �����ϴ�.");
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
									        	layerAlert("'"+str+"' �� �����ϴ� �͹̳��� �����ϴ�.");
									        }
										});
									});
								</script>
								<div style="margin:5px 0 -10px 0;">
									<table style="border:1px solid #cccccc; width:355px; cursor:pointer;">
										<tr>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
										</tr>
									</table>
								</div>
								<div name="startLayer" class="partsbox" style="display:none;">
									<strong class="ltit">�����</strong>
									<a id="allDepTerminal" style="cursor:pointer;"><img src="/images/popup/ico_terminal.png" alt="��ü�͹̳�" class="terimg" /></a>
									<span id="startTitle" class="ltit2">�͹̳� �� �������� ������ �ּ���.</span>
									<div id="searchStartTerminalList" class="layscroll" style="position:relative;">
										<table id="searchStartTerminalReserve" style="position:relative;">
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
											<tr><th>��</th><td><table name="moeum"></table></td></tr>
										</table>
										<table id="searchStartTerminalReserveEtc" style="position:absolute; border-top:0px;">
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_etc"></table></td></tr>
										</table>
									</div>
								</div>
								<div name="startLayer" class="partsbox">
									<strong class="ltit">�����</strong>
									<a id="allDepTerminal" style="cursor:pointer;"><img src="/images/popup/ico_terminal.png" alt="��ü�͹̳�" class="terimg" /></a>
									<span id="startTitleMain" class="ltit2">���ͳ� ���� ����</span>
									<div id="startTerminalList" class="layscroll">
										<table id="startTerminalReserve" style="display:none;">
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2051","","����","")' class='terName' terCode="2051" title="���� ������"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","6001","","��â�͹̳�","")' class='terName' terCode="6001" title="�泲 ��â��"><b>[�泲]</b>��â�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","5005","","����͹̳�","")' class='terName' terCode="5005" title="��� ����"><b>[���]</b>����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","5007","","����","")' class='terName' terCode="5007" title="��� ���ֽ�"><b>[���]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","1782","","���","")' class='terName' terCode="1782" title="��� ����"><b>[���]</b>���</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4036","","���","")' class='terName' terCode="4036" title="�泲 �����"><b>[�泲]</b>���</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2049","","����","")' class='terName' terCode="2049" title="���� ������"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","8007","","����","")' class='terName' terCode="8007" title="���� ���ʱ�"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","4038","","���ֻ꼺","")' class='terName' terCode="4038" title="�泲 ���ֽ�"><b>[�泲]</b>���ֻ꼺</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","4003","","���������͹̳�","")' class='terName' terCode="4003" title="�泲 ���ֽ�"><b>[�泲]</b>���������͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
																													
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","9518","","����������","")' class='terName' terCode="9518" title="���� ����"><b>[����]</b>����������</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>	
															<td class='ov1'><a href='javascript:terminalEndList("S","1872","","����(KTX)","")' class='terName' terCode="1872" title="��� �����"><b>[���]</b>����(KTX)</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","1061","","����(ö��)","")' class='terName' terCode="1061" title="����(ö�꿪)"><b>[���]</b>����(ö�꿪)</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","8006","","����","")' class='terName' terCode="8006" title="���� �����"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","9401","","���������͹̳�","")' class='terName' terCode="9401" title="���� ����"><b>[����]</b>���������͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1222","","����","")' class='terName' terCode="1222" title="��� ������"><b>[���]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","4031","","������","")' class='terName' terCode="4031" title="�泲 ������"><b>[�泲]</b>������</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","5016","","��õ","")' class='terName' terCode="5016" title="��� ��õ��"><b>[���]</b>��õ</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6295","","���ذ���","")' class='terName' terCode="6295" title="�λ� ������"><b>[�λ�]</b>���ذ���</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","7010","","�����������","")' class='terName' terCode="7010" title="���� ������"><b>[����]</b>�����������</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="��" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","6045","","����","")' class='terName' terCode="6045" title="����"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6007","","�����͹̳�","")' class='terName' terCode="6007" title="�泲 ���ر�"><b>[�泲]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4319","","����","")' class='terName' terCode="4319" title="�泲 ȫ����"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","8232","","���","")' class='terName' terCode="8232" title="���� �ϵ���"><b>[����]</b>���</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","4006","","����","")' class='terName' terCode="4006" title="�泲 ������"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","9201","","�뱸�����͹̳�","")' class='terName' terCode="9201" title="�뱸 ����"><b>[�뱸]</b>�뱸�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9202","","�뱸�Ϻ�","")' class='terName' terCode="9202" title="�뱸 ����"><b>[�뱸]</b>�뱸�Ϻ�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","9508","","����������","")' class='terName' terCode="9508" title="���� ����"><b>[����]</b>����������</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","9504","","���������͹̳�","")' class='terName' terCode="9504" title="���� �߱�"><b>[����]</b>���������͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","9509","","������ε�","")' class='terName' terCode="9509" title="������ε�"><b>[����]</b>������ε�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9505","","����û��ÿ�","")' class='terName' terCode="9505" title="���� ����"><b>[����]</b>����û��ÿ�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","4141","","��õ�ؼ�����","")' class='terName' terCode="4141" title="�泲 ���ɽ�"><b>[�泲]</b>��õ�ؼ�����</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","7085","","������","")' class='terName' terCode="7085" title="���� ���ֽ�"><b>[����]</b>������</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","4294","","���꽺��","")' class='terName' terCode="4294" title="�泲 ���걺"><b>[�泲]</b>���꽺��</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","8019","","������","")' class='terName' terCode="8019" title="���� �����"><b>[����]</b>������</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","8024","","�����͹̳�","")' class='terName' terCode="8024" title="���� ������"><b>[����]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1006","","�������","")' class='terName' terCode="1006" title="��� ���ֽ�"><b>[���]</b>�������</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6013","","�ΰ�","")' class='terName' terCode="6013" title="�ΰ�"><b>[�泲]</b>�ΰ�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9001","","�λ굿���͹̳�","")' class='terName' terCode="9001" title="�λ� ������"><b>[�λ�]</b>�λ굿���͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","4008","","�ο�","")' class='terName' terCode="4008" title="�泲 �ο���"><b>[�泲]</b>�ο�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1007","","��õ","")' class='terName' terCode="1007" title="��� ��õ��"><b>[���]</b>��õ</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","4024","","����","")' class='terName' terCode="4024" title="�泲 ���ɽ�"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","8034","","��ȣ�������","")' class='terName' terCode="8034" title="���� ���ϱ�"><b>[����]</b>��ȣ�������</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4040","","��õ","")' class='terName' terCode="4040" title="�泲 ������"><b>[�泲]</b>��õ</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","0002","","����͹̳�","")' class='terName' terCode="0002" title="����͹̳�"><b>[����]</b>����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1010","","�����͹̳�","")' class='terName' terCode="1010" title="��� ������"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","4292","","������","")' class='terName' terCode="4292" title="�泲 ���ⱺ"><b>[�泲]</b>������</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","4318","","����û��","")' class='terName' terCode="4318" title="����Ư����ġ��"><b>[����]</b>����û��</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2019","","���ʽÿܹ���","")' class='terName' terCode="2019" title="���� ���ʽ�"><b>[����]</b>���ʽÿܹ���</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","8038","","��õ�͹̳�","")' class='terName' terCode="8038" title="���� ��õ��"><b>[����]</b>��õ�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","1226","","�Ű�(����)","")' class='terName' terCode="1226" title="��� ���ν�"><b>[���]</b>�Ű�(����)</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4115","","�ŷʿ�","")' class='terName' terCode="4115" title="�泲 ���걺"><b>[�泲]</b>�ŷʿ�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","9614","","�ź��͹̳�","")' class='terName' terCode="9614" title="���� ����"><b>[���]</b>�ź��͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4032","","����","")' class='terName' terCode="4032" title="�泲 ������"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","5043","","�ȵ�","")' class='terName' terCode="5043" title="��� �ȵ���"><b>[���]</b>�ȵ�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","1060","","�Ⱦ���������͹̳�","")' class='terName' terCode="1060" title="�Ⱦ���������͹̳�"><b>[���]</b>�Ⱦ���������͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","1018","","�Ⱦ��͹̳�","")' class='terName' terCode="1018" title="��� �Ⱦ��"><b>[���]</b>�Ⱦ��͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","6018","","����͹̳�","")' class='terName' terCode="6018" title="�泲 ����"><b>[�泲]</b>����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","8041","","�����͹̳�","")' class='terName' terCode="8041" title="���� ������"><b>[����]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","8042","","��õ�͹̳�","")' class='terName' terCode="8042" title="���� ������"><b>[����]</b>��õ�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","5044","","���������͹̳�","")' class='terName' terCode="5044" title="��� ������"><b>[���]</b>���������͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","5046","","�����͹̳�","")' class='terName' terCode="5046" title="��� ���ֽ�"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6046","","����","")' class='terName' terCode="6046" title="����"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","4015","","�����͹̳�","")' class='terName' terCode="4015" title="�泲 ���걺"><b>[�泲]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","3026","","��â","")' class='terName' terCode="3026" title="��� û�ֽ�"><b>[���]</b>��â</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1861","","�����ŵ���","")' class='terName' terCode="1861" title="��� ���ֽ�"><b>[���]</b>�����ŵ���</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","9633","","������ž�͹̳�","")' class='terName' terCode="9633" title="��� ����"><b>[���]</b>������ž�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9601","","����͹̳�","")' class='terName' terCode="9601" title="��� ����"><b>[���]</b>����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>	
															<td class='ov3'><a href='javascript:terminalEndList("S","9502","","�����͹̳�","")' class='terName' terCode="9502" title="���� ������"><b>[����]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1025","","�����͹̳�","")' class='terName' terCode="1025" title="��� ���ν�"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","6019","","�Ƿ��͹̳�","")' class='terName' terCode="6019" title="�Ƿ��͹̳�"><b>[�泲]</b>�Ƿ��͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9302","","��õ�����͹̳�","")' class='terName' terCode="9302" title="��õ ����"><b>[��õ]</b>��õ�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","7093","","�ϻ굿","")' class='terName' terCode="7093" title="�ϻ굿"><b>[����]</b>�ϻ굿</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>	
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","7100","","��Ŵ�","")' class='terName' terCode="7100" title="��Ŵ�"><b>[����]</b>��Ŵ�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","7099","","���ִ�","")' class='terName' terCode="7099" title="���ִ�"><b>[����]</b>���ִ�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>	
															<td class='ov3'><a href='javascript:terminalEndList("S","7033","","�����͹̳�","")' class='terName' terCode="7033" title="���� ���ֽ�"><b>[����]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","5060","","�����͹̳�","")' class='terName' terCode="5060" title="��� �����"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>	
															<td class='ov3'><a href='javascript:terminalEndList("S","3011","","��õ�͹̳�","")' class='terName' terCode="3011" title="��� ��õ��"><b>[���]</b>��õ�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="��" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","9015","","��õ","")' class='terName' terCode="9015" title="�λ� ���屺"><b>[�λ�]</b>��õ</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>	
															<td class='ov3'><a href='javascript:terminalEndList("S","3013","","�����͹̳�","")' class='terName' terCode="3013" title="��� ����"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","6414","","���ֽÿܹ����͹̳�","")' class='terName' terCode="6414" title="�泲 ���ֽ�"><b>[�泲]</b>���ֽÿܹ����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>	
															<td class='ov1'><a href='javascript:terminalEndList("S","6349","","���ְ���(��õ����)","")' class='terName' terCode="6349" title="���ְ���(��õ����)"><b>[��õ]</b>���ְ���(��õ����)</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","6040","","����(���ﳲ��,��õ) ","")' class='terName' terCode="6040" title="����(���ﳲ��,��õ) "><b>[�泲]</b>����(���ﳲ��,��õ)</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6025","","����","")' class='terName' terCode="6025" title="�泲 ����"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","6044","","â��","")' class='terName' terCode="6044" title="�泲 â�籺"><b>[�泲]</b>â��</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","4020","","û��������","")' class='terName' terCode="4020" title="�泲 û�籺"><b>[�泲]</b>û��������</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2037","","��õ�͹̳�","")' class='terName' terCode="2037" title="���� ��õ��"><b>[����]</b>��õ�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2039","","�¹�","")' class='terName' terCode="2039" title="���� �¹��"><b>[����]</b>�¹�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","5071","","����","")' class='terName' terCode="5071" title="��� ���׽�"><b>[���]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","5283","","ǳ��ic�͹̳�","")' class='terName' terCode="5283" title="ǳ��ic�͹̳�"><b>[���]</b>ǳ��ic�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","4034","","�Ѽ���","")' class='terName' terCode="4034" title="�泲 �����"><b>[�泲]</b>�Ѽ���</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","6032","","�Ծ�","")' class='terName' terCode="6032" title="�泲 �Ծ籺"><b>[�泲]</b>�Ծ�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="��" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","4022","","�մ�","")' class='terName' terCode="4022" title="�泲 ������"><b>[�泲]</b>�մ�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","8062","","�س��͹̳�","")' class='terName' terCode="8062" title="���� �س���"><b>[����]</b>�س��͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","4033","","�ع�","")' class='terName' terCode="4033" title="�泲 �����"><b>[�泲]</b>�ع�</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","9009","","�ؿ��(������)","")' class='terName' terCode="9009" title="�ؿ��(������)"><b>[�λ�]</b>�ؿ��(������)</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="��" /></td>
														</tr>
														<tr>
															<td class='ov1'><a href='javascript:terminalEndList("S","9210","","��ǳ","")' class='terName' terCode="9210" title="�뱸 �޼���"><b>[�뱸]</b>��ǳ</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
															<td class='ov1'><a href='javascript:terminalEndList("S","4090","","ȫ��","")' class='terName' terCode="4090" title="�泲 ȫ����"><b>[�泲]</b>ȫ��</a></td>
															<td class="bico"><img src="/images/popup/ico_one.gif" alt="��" /></td>
														</tr>
														<tr>
															<td class='ov3'><a href='javascript:terminalEndList("S","2044","","ȫõ","")' class='terName' terCode="2044" title="���� ȫõ��"><b>[����]</b>ȫõ</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
															<td class='ov3'><a href='javascript:terminalEndList("S","1038","","ȭ���͹̳�","")' class='terName' terCode="1038" title="��� ����"><b>[���]</b>ȭ���͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_both.gif" alt="�պ�" /></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
										<table id="startTerminalTransport" style="display:none;">
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1001","","�����͹̳�","")' class='terName' terCode="1001" title="��� ����"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","4117","","����","")' class='terName' terCode="4117" title="�泲 ȫ����"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5194","","��ϴ����","")' class='terName' terCode="5194" title="��� ���ֽ�"><b>[���]</b>��ϴ����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8233","","���","")' class='terName' terCode="8233" title="���� �ϵ���"><b>[����]</b>���</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8003","","��������","")' class='terName' terCode="8003" title="���� ���"><b>[����]</b>��������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>	
															<td class='ov2'><a href='javascript:terminalEndList("S","9613","","����ž(�ؿ��)","")' class='terName' terCode="9613" title="����ž(�ؿ��)"><b>[���]</b>����ž(�ؿ��)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1720","","�ݰ����","")' class='terName' terCode="1720" title="�ݰ����"><b>[���]</b>�ݰ����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>	
															<td class='ov2'><a href='javascript:terminalEndList("S","1002","","����","")' class='terName' terCode="1002" title="��� ���ֽ�"><b>[���]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5014","","�⼺�͹̳�","")' class='terName' terCode="5014" title="��� ������"><b>[���]</b>�⼺�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>	
															<td class='ov2'><a href='javascript:terminalEndList("S","6470","","���������������","")' class='terName' terCode="6470" title="���������������"><b>[�泲]</b>���������������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","7094","","����۵�","")' class='terName' terCode="7094" title="����۵�"><b>[����]</b>����۵�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","2071","","����","")' class='terName' terCode="2071" title="���� �籸��"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8133","","����","")' class='terName' terCode="8133" title="���� ���ȱ�"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8256","","���ǵ�û","")' class='terName' terCode="8256" title="���ǵ�û"><b>[����]</b>���ǵ�û</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","7103","","�����Ϻ�������","")' class='terName' terCode="7103" title="�����Ϻ�������"><b>[����]</b>�����Ϻ�������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8010","","��â","")' class='terName' terCode="8010" title="���� �س���"><b>[����]</b>��â</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","6338","","���ػ�Ÿ�","")' class='terName' terCode="6338" title="���ػ�Ÿ�"><b>[�泲]</b>���ػ�Ÿ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8159","","����","")' class='terName' terCode="8159" title="���� ������"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","3023","","�ܾ����","")' class='terName' terCode="3023" title="�ܾ����"><b>[���]</b>�ܾ����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","3003","","�ܾ��͹̳�","")' class='terName' terCode="3003" title="��� �ܾ籺"><b>[���]</b>�ܾ��͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","9203","","�뱸����","")' class='terName' terCode="9203" title="�뱸 ������"><b>[�뱸]</b>�뱸����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8113","","����","")' class='terName' terCode="8113" title="���� ������"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","2009","","����������","")' class='terName' terCode="2009" title="���� ��ô��"><b>[����]</b>����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","1221","","���ƹ�۴�","")' class='terName' terCode="1221" title="��� �ȼ���"><b>[���]</b>���ƹ�۴�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","2671","","���ذ���","")' class='terName' terCode="2671" title="���� ���ؽ�"><b>[����]</b>���ذ���</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8164","","��������","")' class='terName' terCode="8164" title="���� �س���"><b>[����]</b>��������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8109","","��ȭ��","")' class='terName' terCode="8109" title="���� �ϱ�"><b>[����]</b>��ȭ��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","7016","","�ݼ�","")' class='terName' terCode="7016" title="�ݼ�"><b>[����]</b>�ݼ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8132","","���","")' class='terName' terCode="8132" title="���� ���ﱺ"><b>[����]</b>���</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","2060","","�����Ա�","")' class='terName' terCode="2060" title="���� ������"><b>[����]</b>�����Ա�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8031","","�����͹̳�","")' class='terName' terCode="8031" title="���� ������"><b>[����]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","9010","","�λ굿��","")' class='terName' terCode="9010" title="�λ� ������"><b>[�λ�]</b>�λ굿��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","9007","","�λ��ؿ��","")' class='terName' terCode="9007" title="�λ� �ؿ��"><b>[�λ�]</b>�λ��ؿ��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8162","","����","")' class='terName' terCode="8162" title="���� �س���"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","7019","","��ʰ������","")' class='terName' terCode="7019" title="���� ���ֱ�"><b>[����]</b>��ʰ������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","4153","","������","")' class='terName' terCode="4153" title="������"><b>[�泲]</b>������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","4045","","��õ������","")' class='terName' terCode="4045" title="�泲 ��õ��"><b>[�泲]</b>��õ������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","8417","","������(����)","")' class='terName' terCode="8417" title="������(����)"><b>[����]</b>������(����)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8345","","������(����)","")' class='terName' terCode="8345" title="���� ���ʱ�"><b>[����]</b>������(����)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","9402","","����������","")' class='terName' terCode="9402" title="����������"><b>[����]</b>����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","1011","","��ź�͹̳�","")' class='terName' terCode="1011" title="��� ���ý�"><b>[���]</b>��ź�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","8069","","��õ�Ϻ�","")' class='terName' terCode="8069" title="���� ��õ��"><b>[����]</b>��õ�Ϻ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8679","","��õ�Ϻ�(����)","")' class='terName' terCode="8679" title="��õ�Ϻ�(����)"><b>[����]</b>��õ�Ϻ�(����)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","8346","","��õ��","")' class='terName' terCode="8346" title="���� ��õ��"><b>[����]</b>��õ��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8680","","��õ��(����)","")' class='terName' terCode="8680" title="��õ��(����)"><b>[����]</b>��õ��(����)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","9616","","�ź�(�ݾ�)","")' class='terName' terCode="9616" title="�ź�(�ݾ�)"><b>[���]</b>�ź�(�ݾ�)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","4030","","�ֿ뵿","")' class='terName' terCode="4030" title="�ֿ뵿"><b>[�泲]</b>�ֿ뵿</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5040","","�Ȱ��͹̳�","")' class='terName' terCode="5040" title="��� ���ֽ�"><b>[���]</b>�Ȱ��͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5256","","�Ȱ�����","")' class='terName' terCode="5256" title="�Ȱ�����"><b>[���]</b>�Ȱ�����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5042","","�ȴ�","")' class='terName' terCode="5042" title="��� û�۱�"><b>[���]</b>�ȴ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5166","","�ȵ����������","")' class='terName' terCode="5166" title="��� �ȵ���"><b>[���]</b>�ȵ����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5286","","�ȵ��ʱ�","")' class='terName' terCode="5286" title="��� �ȵ���"><b>[���]</b>�ȵ��ʱ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","1232","","�ȼ�","")' class='terName' terCode="1232" title="��� �ȼ���"><b>[���]</b>�ȼ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1795","","�ȼ��ù�ȸ��","")' class='terName' terCode="1795" title="��� �ȼ���"><b>[���]</b>�ȼ��ù�ȸ��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","1020","","�����͹̳�","")' class='terName' terCode="1020" title="��� ����"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1022","","��������","")' class='terName' terCode="1022" title="��� ���ֽ�"><b>[���]</b>��������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5344","","����","")' class='terName' terCode="5344" title="����"><b>[���]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","4313","","����������","")' class='terName' terCode="4313" title="����������"><b>[�泲]</b>����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5125","","������","")' class='terName' terCode="5125" title="�泲 ����"><b>[�泲]</b>������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8047","","�����͹̳�","")' class='terName' terCode="8047" title="���� ���ϱ�"><b>[����]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5280","","����(�ɵ���)","")' class='terName' terCode="5280" title="��� ���ֽ�"><b>[���]</b>����(�ɵ���)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","5047","","��õ�����͹̳�","")' class='terName' terCode="5047" title="��� �����"><b>[���]</b>��õ�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8131","","����","")' class='terName' terCode="8131" title="���� ������"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","7023","","�����������","")' class='terName' terCode="7023" title="���� �ӽǱ�"><b>[����]</b>�����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","9251","","���","")' class='terName' terCode="9251" title="���"><b>[�뱸]</b>���</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","7106","","�켮��","")' class='terName' terCode="7106" title="�켮��"><b>[����]</b>�켮��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8158","","�����","")' class='terName' terCode="8158" title="���� �س���"><b>[����]</b>�����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","7320","","��ȭ","")' class='terName' terCode="7320" title="��ȭ"><b>[����]</b>��ȭ</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8051","","����","")' class='terName' terCode="8051" title="���� �ϵ���"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","6282","","����","")' class='terName' terCode="6282" title="�泲 ��û��"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","2029","","����","")' class='terName' terCode="2029" title="���� ������"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","8084","","����","")' class='terName' terCode="8084" title="���� �س���"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","4017","","�����͹̳�","")' class='terName' terCode="4017" title="�泲 ���ֽ�"><b>[�泲]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","5056","","�Ǽ�","")' class='terName' terCode="5056" title="��� �Ǽ���"><b>[���]</b>�Ǽ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","7027","","�ο�","")' class='terName' terCode="7027" title="���� ������"><b>[����]</b>�ο�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","2031","","����","")' class='terName' terCode="2031" title="���� ������"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","7098","","���ĵ�","")' class='terName' terCode="7098" title="���ĵ�"><b>[����]</b>���ĵ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","1108","","����","")' class='terName' terCode="1108" title="��� �ȼ���"><b>[���]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","7028","","�ӽǰ������","")' class='terName' terCode="7028" title="���� �ӽǱ�"><b>[����]</b>�ӽǰ������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8054","","�强��������","")' class='terName' terCode="8054" title="���� �强��"><b>[����]</b>�强��������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","6455","","�����","")' class='terName' terCode="6455" title="�����"><b>[�泲]</b>�����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8248","","����","")' class='terName' terCode="8248" title="���� ���ﱺ"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","2032","","����","")' class='terName' terCode="2032" title="���� ��â��"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1030","","��ȣ���������","")' class='terName' terCode="1030" title="��� ��õ��"><b>[���]</b>��ȣ���������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5359","","���̺Ϻ�","")' class='terName' terCode="5359" title="��� �����"><b>[���]</b>���̺Ϻ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8130","","����","")' class='terName' terCode="8130" title="���� ������"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","3037","","�ִ�","")' class='terName' terCode="3037" title="��� ���ֽ�"><b>[���]</b>�ִ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8046","","����(������)","")' class='terName' terCode="8046" title="���� ���ֽ�"><b>[����]</b>����(������)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","6021","","�����������","")' class='terName' terCode="6021" title="�泲 �ϵ���"><b>[�泲]</b>�����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","7034","","����","")' class='terName' terCode="7034" title="���� ���ȱ�"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","7321","","���Ȼ�Ÿ�","")' class='terName' terCode="7321" title="���Ȼ�Ÿ�"><b>[����]</b>���Ȼ�Ÿ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","6038","","����","")' class='terName' terCode="6038" title="�泲 ���ֽ�"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","6041","","����(�泲)","")' class='terName' terCode="6041" title="����(�泲)"><b>[�泲]</b>����(�泲)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","6042","","����(���)","")' class='terName' terCode="6042" title="����(���)"><b>[�泲]</b>����(���)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","6816","","����(�λ�)","")' class='terName' terCode="6816" title="����(�λ�)"><b>[�泲]</b>����(�λ�)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","6039","","���ֺλ걳��","")' class='terName' terCode="6039" title="���ֺλ걳��"><b>[�泲]</b>���ֺλ걳��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","6048","","����(��������)","")' class='terName' terCode="6048" title="�泲 ���ֽ�"><b>[�泲]</b>����(��������)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>	
															<td class='ov2'><a href='javascript:terminalEndList("S","3014","","��õ�͹̳�","")' class='terName' terCode="3014" title="��� ��õ��"><b>[���]</b>��õ�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8073","","û��","")' class='terName' terCode="8073" title="���� ���ȱ�"><b>[����]</b>û��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","5065","","û���������","")' class='terName' terCode="5065" title="��� û����"><b>[���]</b>û���������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1034","","û���͹̳�","")' class='terName' terCode="1034" title="��� ����"><b>[���]</b>û���͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","1051","","�ϳ�","")' class='terName' terCode="1051" title="��� �ϳ���"><b>[���]</b>�ϳ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","8070","","�е�","")' class='terName' terCode="8070" title="���� ����"><b>[����]</b>�е�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8061","","�����͹̳�","")' class='terName' terCode="8061" title="���� ����"><b>[����]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","1092","","ȣ�赿","")' class='terName' terCode="1092" title="��� �Ⱦ��"><b>[���]</b>ȣ�赿</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
														<tr>
															<td class='ov2'><a href='javascript:terminalEndList("S","8064","","ȫ���͹̳�","")' class='terName' terCode="8064" title="���� ������"><b>[����]</b>ȫ���͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
															<td class='ov2'><a href='javascript:terminalEndList("S","2047","","Ⱦ��","")' class='terName' terCode="2047" title="���� Ⱦ����"><b>[����]</b>Ⱦ��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="��������" /></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
										<table id="startTerminalRoute" style="display:none;">
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","9013","","��������͹̳�","")' class='terName' terCode="9013" title="��������͹̳�"><b>[�λ�]</b>��������͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","8137","","����","")' class='terName' terCode="8137" title="���� �ξȱ�"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","7003","","��â�͹̳�","")' class='terName' terCode="7003" title="���� ��â��"><b>[����]</b>��â�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","8347","","����","")' class='terName' terCode="8347" title="���� �����"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","8488","","��õ","")' class='terName' terCode="8488" title="���� ��õ��"><b>[����]</b>��õ</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5011","","�����͹̳�","")' class='terName' terCode="5011" title="��� ���̽�"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","5252","","������","")' class='terName' terCode="5252" title="������"><b>[���]</b>������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","7078","","��õ��","")' class='terName' terCode="7078" title="��õ��"><b>[����]</b>��õ��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","7006","","����","")' class='terName' terCode="7006" title="���� �����"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5012","","�����������","")' class='terName' terCode="5012" title="��� ������"><b>[���]</b>�����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","0010","","��������","")' class='terName' terCode="0010" title="��������"><b>[����]</b>��������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","6006","","���ؽÿܹ���","")' class='terName' terCode="6006" title="�泲 ���ؽ�"><b>[�泲]</b>���ؽÿܹ���</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2001","","����","")' class='terName' terCode="2001" title="��� ����"><b>[���]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","8119","","����","")' class='terName' terCode="8119" title="����"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","4023","","���","")' class='terName' terCode="4023" title="�泲 ����"><b>[�泲]</b>���</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","8502","","�뱸","")' class='terName' terCode="8502" title="���� ������"><b>[����]</b>�뱸</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","9024","","�뱸(�������)","")' class='terName' terCode="9024" title="�뱸 ����"><b>[�뱸]</b>�뱸(�������)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","9227","","�뱸���б�","")' class='terName' terCode="9227" title="�뱸 ����"><b>[�뱸]</b>�뱸���б�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","9204","","�뱸����","")' class='terName' terCode="9204" title="�뱸 ����"><b>[�뱸]</b>�뱸����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","9503","","���������͹̳�","")' class='terName' terCode="9503" title="���� ����"><b>[����]</b>���������͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","9512","","�����ÿ�","")' class='terName' terCode="9512" title="���� ����"><b>[����]</b>�����ÿ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","9235","","���뱸","")' class='terName' terCode="9235" title="�뱸 ����"><b>[�뱸]</b>���뱸</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","0001","","�������͹̳�","")' class='terName' terCode="0001" title="�������͹̳�"><b>[����]</b>�������͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","6010","","��������͹̳�","")' class='terName' terCode="6010" title="�泲 â����"><b>[�泲]</b>��������͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","9604","","������ÿܹ����͹̳�","")' class='terName' terCode="9604" title="��� ����"><b>[���]</b>������ÿܹ����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","6264","","�鹫��","")' class='terName' terCode="6264" title="�泲 �Ծ籺"><b>[�泲]</b>�鹫��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","7053","","����","")' class='terName' terCode="7053" title="���� ������"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","9304","","����","")' class='terName' terCode="9304" title="��õ ����"><b>[��õ]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>	
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2552","","��縮","")' class='terName' terCode="2552" title="���� ȭõ��"><b>[����]</b>��縮</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","8103","","��Ÿ�","")' class='terName' terCode="8103" title="��Ÿ�"><b>[����]</b>��Ÿ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2015","","��ô���չ���","")' class='terName' terCode="2015" title="���� ��ô��"><b>[����]</b>��ô���չ���</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","1715","","�����","")' class='terName' terCode="1715" title="��� ���ֽ�"><b>[���]</b>�����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","5033","","�����͹̳�","")' class='terName' terCode="5033" title="��� ���ֽ�"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","7067","","����","")' class='terName' terCode="7067" title="����"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","4010","","����","")' class='terName' terCode="4010" title="�泲 �����"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","1008","","�������͹̳�","")' class='terName' terCode="1008" title="��� ������"><b>[���]</b>�������͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","5035","","����","")' class='terName' terCode="5035" title="��� ���̽�"><b>[���]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","0019","","��Ʈ��(����)","")' class='terName' terCode="0019" title="��Ʈ��(����)"><b>[����]</b>��Ʈ��(����)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","6225","","�����͹̳�","")' class='terName' terCode="6225" title="�����͹̳�"><b>[�泲]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","1012","","�����͹̳�","")' class='terName' terCode="1012" title="��� ������"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","7020","","��â�͹̳�","")' class='terName' terCode="7020" title="���� ��â��"><b>[����]</b>��â�͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","7021","","�����ΰ������","")' class='terName' terCode="7021" title="���� ������"><b>[����]</b>�����ΰ������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","1128","","�Ű�����","")' class='terName' terCode="1128" title="��� ���ν�"><b>[���]</b>�Ű�����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","1015","","�Ȼ�","")' class='terName' terCode="1015" title="��� �Ȼ��"><b>[���]</b>�Ȼ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","1115","","�Ȼ��û��","")' class='terName' terCode="1115" title="�Ȼ��û��"><b>[���]</b>�Ȼ��û��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","2022","","�籸�������","")' class='terName' terCode="2022" title="���� �籸��"><b>[����]</b>�籸�������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5315","","����","")' class='terName' terCode="5315" title="��� ���ֽ�"><b>[���]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","8045","","�����������","")' class='terName' terCode="8045" title="���� ������"><b>[����]</b>�����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","2025","","�����������","")' class='terName' terCode="2025" title="���� ������"><b>[����]</b>�����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","5049","","��õ�������","")' class='terName' terCode="5049" title="��� ��õ��"><b>[���]</b>��õ�������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","6231","","����","")' class='terName' terCode="6231" title="�泲 ����"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","5050","","�����������","")' class='terName' terCode="5050" title="��� ������"><b>[���]</b>�����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","8311","","����","")' class='terName' terCode="8311" title="����"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","5054","","�����͹̳�","")' class='terName' terCode="5054" title="��� ������"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","2028","","����","")' class='terName' terCode="2028" title="���� ���ֽ�"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>	
															<td class='ov4'><a href='javascript:terminalEndList("S","1027","","���������չ����͹̳�","")' class='terName' terCode="1027" title="��� ������"><b>[���]</b>���������չ����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","7026","","�ͻ�","")' class='terName' terCode="7026" title="���� �ͻ��"><b>[����]</b>�ͻ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","7030","","����������","")' class='terName' terCode="7030" title="���� �����"><b>[����]</b>����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","2250","","����","")' class='terName' terCode="2250" title="���� ȫõ��"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","7084","","����","")' class='terName' terCode="7084" title="���� ������"><b>[����]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","9005","","�����������","")' class='terName' terCode="9005" title="���� ������"><b>[����]</b>�����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2034","","�ֹ����͹̳�","")' class='terName' terCode="2034" title="���� ������"><b>[����]</b>�ֹ����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5061","","�ֿջ�������","")' class='terName' terCode="5061" title="�ֿջ�������"><b>[���]</b>�ֿջ�������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","8059","","�����������","")' class='terName' terCode="8059" title="���� ������"><b>[����]</b>�����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5064","","�����������","")' class='terName' terCode="5064" title="��� û�۱�"><b>[���]</b>�����������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","6023","","����","")' class='terName' terCode="6023" title="�泲 ���ֽ�"><b>[�泲]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td></td>
															<td class="bico"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","6028","","â��","")' class='terName' terCode="6028" title="�泲 â����"><b>[�泲]</b>â��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","4019","","õ��","")' class='terName' terCode="4019" title="�泲 õ�Ƚ�"><b>[�泲]</b>õ��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2553","","ö��","")' class='terName' terCode="2553" title="ö��"><b>[����]</b>ö��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5066","","û�۰������","")' class='terName' terCode="5066" title="û�۰������"><b>[���]</b>û�۰������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","3015","","û��","")' class='terName' terCode="3015" title="��� û�ֽ�"><b>[���]</b>û��</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","3017","","����","")' class='terName' terCode="3017" title="��� ���ֽ�"><b>[���]</b>����</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","8185","","�¹�(����)","")' class='terName' terCode="8185" title="�¹�(����)"><b>[����]</b>�¹�(����)</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","4021","","�¾�","")' class='terName' terCode="4021" title="�泲 �¾ȱ�"><b>[�泲]</b>�¾�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","1035","","�����͹̳�","")' class='terName' terCode="1035" title="��� ���ý�"><b>[���]</b>�����͹̳�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","5069","","���ذ������","")' class='terName' terCode="5069" title="��� ������"><b>[���]</b>���ذ������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<th>��</th>
												<td>
													<table>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","5158","","�Ͼ�","")' class='terName' terCode="5158" title="��� ����"><b>[���]</b>�Ͼ�</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","8060","","�б��������","")' class='terName' terCode="8060" title="�б��������"><b>[����]</b>�б��������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
														<tr>
															<td class='ov4'><a href='javascript:terminalEndList("S","2043","","ȣ��������","")' class='terName' terCode="2043" title="���� ��ô��"><b>[����]</b>ȣ��������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
															<td class='ov4'><a href='javascript:terminalEndList("S","2045","","ȭõ�������","")' class='terName' terCode="2045" title="ȭõ�������"><b>[����]</b>ȭõ�������</a></td>
															<td class="bico"><img src="/images/popup/ico_buy.png" alt="�뼱����" /></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<!-- //����� -->
							<!-- ������ -->
							<div class="parts2">
								<div class="seletw">
									<input type="hidden" id="terCode" />
									<input type="hidden" id="terName" />
									<select id="finishArea" style="width:143px;" title="���� ����">
										<option value="">��ü</option>
										<option value="����">����</option>
										<option value="���">���</option>
										<option value="�λ�">�λ�</option>
										<option value="��õ">��õ</option>
										<option value="����">����</option>
										<option value="����">����</option>
										<option value="�뱸">�뱸</option>
										<option value="���">���</option>
										<option value="����">����</option>
										<option value="���">���</option>
										<option value="�泲">�泲</option>
										<option value="����">����</option>
										<option value="����">����</option>
										<option value="���">���</option>
										<option value="�泲">�泲</option>
										<option value="����">����</option>
									</select> &nbsp;
									<input type="text" class="txts" id="finishTerminalNm" value="�͹̳θ��� �Է����ּ���" style="width:158px; ime-mode:active;" onkeydown="javascript: if (event.keyCode == 13) {$('#finishSearchBtn').click();}">
									<a href="#" class="btn1"><img id="finishSearchBtn" src="/images/button/bts_search.gif" alt="�˻�" class="bts"  /></a>
								</div>
								<div style="margin:5px 0 -10px 0;">
									<table style="border:1px solid #cccccc; width:355px; cursor:pointer;">
										<tr>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
											<td id="moeumBtn1" style="width:23px; height: 25px; text-align:center; background-color:#f4f4f4;">��</td>
										</tr>
									</table>
								</div>
								<div id="finishTerminalListDiv" class="partsbox">
									<strong class="ltit">������</strong>
									<span id="finishTitle" class="ltit2">���ͳ� ���� ����</span>	
									<div id="finishTerminalList" class="layscroll" style="overflow:hidden; position:relative;">
										<table id="finishTerminalListTable" style="position:relative; display:none;">
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish"></table></td></tr>
										</table>
										<table id="finishTerminalEtcListTable" style="position:absolute; display:none; border-top:0px;">
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
											<tr><th>��</th><td><table name="moeum_finish_etc"></table></td></tr>
										</table>
										<div id="finishTerminalListNone" style="display:block; overflow:hidden;"><center><img style="margin-top:40px;" src="/images/popup/selectStartTerminal.jpg" /></center></div>
										<div id="finishTerminalListSearch" style="position:relative; display:none; overflow:hidden; margin:-60px 0 0 -20px;"><center><img src="/images/common/load.gif" /></center></div>
									</div>
								</div>
							</div>
							<!-- //������ -->
						</div>
						<div class="laybtn"><a href="javascript:$.fancybox.close();"><img src="/images/button/btn_close.gif" alt="�ݱ�" /></a></div>
						<a href="javascript:$.fancybox.close();" class="layclose"><img src="/images/popup/close.gif" alt="�ݱ�" /></a>
					</div>
					<div class="laycont1_btm"></div>
				</div>
				<div id="loading" style="display:none;"><img id="loading" src="/images/common/load.gif"/></div>
			</div>
	</div>		
</body>
</html>