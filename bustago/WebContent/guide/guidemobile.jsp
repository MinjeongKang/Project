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
		$("a#infoBtn").click(function() {
			$("div.dvwrap").hide();
			$.ajax({
				url : '/guide/info.jsp',
				dataType : 'html',
				success : function(data) {
					$("div.dvwrap").html(data);
					$("div.dvwrap").show();
				}
			});
		});
		
		$("a#ticketBtn").click(function() {
			$("div.dvwrap").hide();
			$.ajax({
				url : '/guide/guideticket.jsp',
				dataType : 'html',
				success : function(data) {
					$("div.dvwrap").html(data);
					$("div.dvwrap").show();
				}
			});
		});
		
		$("a#hometicketBtn").click(function() {
			$("div.dvwrap").hide();
			$.ajax({
				url : '/guide/guidehometicket.jsp',
				dataType : 'html',
				success : function(data) {
					$("div.dvwrap").html(data);
					$("div.dvwrap").show();
				}
			});
		});
		
		$("a#chargeBtn").click(function() {
			$("div.dvwrap").hide();
			$.ajax({
				url : '/guide/guidecharge.jsp',
				dataType : 'html',
				success : function(data) {
					$("div.dvwrap").html(data);
					$("div.dvwrap").show();
				}
			});
		});
		
		$("a#mobileBtn").click(function() {
			$("div.dvwrap").hide();
			$.ajax({
				url : '/guide/guidemobile.jsp',
				dataType : 'html',
				success : function(data) {
					$("div.dvwrap").html(data);
					$("div.dvwrap").show();
				}
			});
		});
		
		$("a#setupBtn").click(function() {
			$("div.dvwrap").hide();
			$.ajax({
				url : '/guide/guidesetup.jsp',
				dataType : 'html',
				success : function(data) {
					$("div.dvwrap").html(data);
					$("div.dvwrap").show();
				}
			});
		});
		
		$("a#characterBtn").click(function() {
			$("div.dvwrap").hide();
			$.ajax({
				url : '/guide/guidecharacter.jsp',
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

		<div class="container bg6">
			<div class="location">
				<a href="/kr/index.do" class="home">HOME</a> &gt; <a
					href="/kr/guide/info.do">�̿�ȳ�</a> &gt; <a class="state">�����
					�̿�ȳ�</a>
			</div>

			<h2 class="title">
				<img src="/images/guide/h2.gif" alt="�̿�ȳ�" />
			</h2>

			<div class="contents">
				<div class="lnbs">
					<!-- lnb -->
					<p class="lnbt">
						<img src="/images/reserve/lnb_tit.gif" alt="" />
					</p>
					<div class="slnb">
						<ul class="lnb">
							<li class="sta"><a href="#" id="infoBtn">���� �ȳ�</a></li>
							<li><a href="#" id="ticketBtn">������ ���� �ȳ�</a></li>
							<li><a href="#" id="hometicketBtn">ȨƼ�� �߱�/��� �ȳ�</a></li>
							<li><a href="#" id="chargeBtn">��� ������ �ȳ�</a></li>
							<li><a href="#" id="mobileBtn">����� �̿� �ȳ�</a></li>
							<li><a href="#" id="setupBtn">�����ȳ�</a></li>
							<li class="end"><a href="#" id="characterBtn">ĳ���� �ȳ�</a></li>
						</ul>
					</div>
				</div>
				<div class="content" id="Content">
					<h3 class="stit">
						<img src="/images/guide/h3_mobile.gif" alt="����� �̿�ȳ�" />
					</h3>

					<div class="mob_img">
						<img src="/images/guide/mobile_img03.gif"
							alt="�� ������ ���ϰ�, �ÿܹ��� ������ �����Ͻð� ���� ������ �غ��ϼ���." />
					</div>

					<h4 class="stit">
						<img src="/images/guide/mobile_tit01.gif" alt="����� ���ø����̼� / �� ����Ʈ" />
					</h4>
					<p class="mob_txt">
						����Ʈ���� �º� PC������ �����ϰ� ���� ����Ÿ�� �̿��Ͻ� �� �ֽ��ϴ�. <br /> ����Ÿ��(���� �ÿܹ���
						������ ���� ����) ���ø����̼� �� ����� �� ����Ʈ���� ���� �ÿܹ��� �͹̳��� ������(Ƽ��) ���� �� ���
						<br />���񽺿� ����/�뼱 ���� �� �پ��� ���񽺸� �����մϴ�.
					</p>

					<h4 class="stit">
						<img src="/images/guide/mobile_tit02.gif" alt="�̿���" />
					</h4>
					
					<table class="type1" summary="���� ���ø����̼�, ����� ������Ʈ">
						<caption>�̿���</caption>
						<colgroup>
							<col style="width: 50%;" />
							<col style="" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col">���� ���ø����̼�</th>
								<th scope="col" class="line">����� ������Ʈ</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>�� ��ũ�� Ŭ���Ͻø�, �ش� ����Ʈ�� OS �۽����� �̵��մϴ�.<br />
									<ul class="app" style="padding-bottom: 2px;">
										<li>
											<img src="/images/guide/mobile_ico06.gif" alt="Google Play" />
											<a href="https://play.google.com/store/apps/details?id=com.ebcard.bustago">�ȵ���̵� ��</a>
											<br />
											<img src="/images/common/android_down_qrcode.jpg" style="padding-left: 25px;" alt="Google Play Download QR Code" />
										</li>
										<li>
											<img src="/images/guide/mobile_ico07.gif" alt="Apple App Store" />
											<a href="https://itunes.apple.com/kr/app/jeongug-sioebeoseu-seungchagwon/id966782397?mt=8">������</a>
											<br />
											<img src="/images/common/ios_down_qrcode.jpg" width="124" height="145" style="padding-left: 25px;" alt="Apple AppStore Download QR Code" />
										</li>
									</ul>
									<div
										style="position: relative; top: 10px; padding-bottom: 10px;">
										<br /> QR �ڵ彺ĵ <br />
										<div style="margin: 5px 0 0 9px;">����Ʈ�� �ڵ� ��ĵ������ QR �ڵ带
											��ĵ�ϸ� ����� ������ �̵��մϴ�.</div>
									</div>
								</td>
								<td class="line">
									<ul class="list01">
										<li>����Ʈ�� �� �º� ���������� 
										<a href="http://m.bustago.or.kr" class="under" target="_blank">m.bustago.or.kr</a>�� ���� �մϴ�.
										</li>
										<li>����� ���л���Ʈ���� �� ����Ÿ�� �� �˻� �� ����</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>

					<h4 class="stit">
						<img src="/images/guide/mobile_tit03.gif" alt="�̿� ���� ����" />
					</h4>
					<ul class="app2">
						<li><img src="/images/guide/mobile_ico01.gif" alt="������ ����" />
							<strong>������ ����</strong>
							<p>���� ���� ������ �¼������� ���������� �Ѵ���! �ÿܹ��� ������ ����</p></li>
						<li><img src="/images/guide/mobile_ico02.gif" alt="������ ��ȸ" />
							<strong>������ ��ȸ</strong>
							<p>������ ������ ���� ���� ��ȸ</p></li>
						<li><img src="/images/guide/mobile_ico03.gif" alt="������ ���� ���" />
							<strong>���� ���</strong>
							<p>������ ������ ���</p></li>
						<li><img src="/images/guide/mobile_ico04.gif" alt="����������" />
							<strong>����������</strong>
							<p>������ ��ȸ ��Ȳ, ���� ��ҳ��� Ȯ��, �� �̿� �͹̳� ���� (�α��ν� �̿밡��)</p></li>
						<li><img src="/images/guide/mobile_ico05.gif" alt="�͹̳� ����" />
							<strong>�͹̳� ����</strong>
							<p>�͹̳� ��ġ����, ���ι߱Ǳ� �ȳ�, ����Ȩ ����, ���ǽü� �ȳ� ���� ����</p></li>
					</ul>
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
		</div>
 
		<script type="text/javascript">
			if (self.name != "") {
				document.writeln("<div><a href='https://m.bustago.or.kr:444/mobus' style='display:block; width:640px; margin:0 auto;' target=\"_top\" ><img src='/images/main/bustago_mobile_icon.gif' alt='����� ������Ʈ�� �̵�' width='640' height='83' /></a></div>");
			}
		</script>

	</div>
</body>
</html>