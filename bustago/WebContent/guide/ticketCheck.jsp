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
		
		<div class="invisible">
			<p>�ٷΰ���</p>
			<ul>
				<li><a href="#Gnb">�ָ޴� �ٷΰ���</a></li>
				<li><a href="#Lnb">�ָ޴� �ٷΰ���</a></li>
				<li><a href="#Content">������ �ٷΰ���</a></li>
			</ul>
		</div>

		<div class="dvwrap">

			<div class="container bg1">
				<!-- content -->
				<div class="location">
					<a href="/kr/index.do" class="home">HOME</a> &gt; 
					<a href="/kr/ticket/ticket.do">������ ����</a> &gt; <a class="state">������ ����</a>
				</div>

				<h2 class="title">
					<img src="/images/ticket/title.gif" alt="�����ǿ���" />
				</h2>
				<p class="step">
					<img src="/images/ticket/step02.gif" alt="��������" />
				</p>

				<h4 class="stit">
					<img src="/images/ticket/h4_member.gif" alt="ȸ�� ����" /> <span><img
						src="/images/ticket/member_txt01.gif"
						alt="ȸ���� ��쿡�� �α����� �Ͻ� �� ������ ���Ÿ� ������ �ֽñ� �ٶ��ϴ�." /></span>
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
								src="/images/button/bts_login.gif" alt="�α���" /></a>
						</div>
						<ul class="tt">
							<li>���̵�� ��й�ȣ�� �ؾ�����̴ٸ�, �Ʒ��� ���̵� ã��, <br />��й�ȣ ã�⸦ ���� ã���� ��
								�ֽ��ϴ�.
							</li>
							<li>���� ȸ���� �ƴϽø�, ȸ�������� ���� ȸ���� �ǽ� �� <br />�ֽ��ϴ�.
							</li>
						</ul>
					</div>
					<div class="loglink">
						<img src="/images/ticket/member_img01.gif" alt="."
							usemap="#link01" />
						<map name="link01">
							<area alt="���̵�ã��" coords="1,127,108,153"
								href="/kr/member/id_check.do">
							<area alt="��й�ȣã��" coords="162,126,268,154"
								href="/kr/member/pw_check.do">
							<area alt="ȸ������" coords="322,126,430,154"
								href="/kr/member/member_certificate.do">
						</map>
					</div>
				</div>

				<h4 class="stit">
					<img src="/images/ticket/h4_member2.gif" alt="��ȸ�� ����" /> <span><img
						src="/images/ticket/member_txt02.gif"
						alt="��ȸ������ ���Ÿ� �Ͻô� ���� �Ʒ��� �������� ���� �� �̿뿡 ���� �ȳ��� �а� ���� �� ������ ���Ÿ�  ������ �ֽñ� �ٶ��ϴ�. " /></span>
				</h4>
				<div class="box1">
					<div class="btm">
						<div class="top membox">
							<!-- ���� -->
							<div class="ss">
								<strong class="mtit">�������� ��ȣ�� ���� �̿��� ���ǻ���</strong>
								<div class="mscroll">
									<strong>�����ϴ� �������� �׸�</strong>
									<p>1) �������� �����׸��� �ʼ� �׸����� �������, �޴���ȭ��ȣ, ���Ž� ����� �ſ�ī�� ���� ����
										�Դϴ�. ����, ���� �̿�����̳� ���μ���ó�� �������� IP�ּ�, ��Ű, �湮�Ͻ�, ���� �̿� �����
										�ڵ����� �����Ǿ� ������ �� �ֽ��ϴ�.</p>

									<strong>���������� ���� �� �̿� ����</strong>
									<p>ȸ��� ������ ���� ������ ���Ͽ� ���������� �����ϸ�, �ش� ���� �������� ������ ���������� �̿��ϰ�
										�ֽ��ϴ�.</p>
									<p>1) ���� ������ ���� ��� ���� �� ���� ������ ���� ������� ������ ����, ���� �� ��� ����
										ȸ��� ���� �⺻�� �α� ħ���� ����� �ִ� �ΰ��� ��������(���� �� ����, ��� �� ����, �뵿���� ��
										������ ����,����� �� ������, ��ġ�� ���� �� ���˱��, �ǰ����� �� ����Ȱ ��)�� ������ �����ϰ� �����ϱ�
										���� �ο��� �����ĺ�����(�ֹε�Ϲ�ȣ, ���ǹ�ȣ, ���������� �����ȣ, �ܱ��ε�Ϲ�ȣ)�� ������ ��������
										�ʽ��ϴ�.</p>

									<strong>���������� ���� �� �̿�Ⱓ</strong>
									<p>���� ���������� ��Ģ������ ���������� ���� �� �̿������ �޼��Ǹ� ��ü ���� �ı��մϴ�. ��,
										������ ������ ���ؼ��� �Ʒ��� ������ ����� �Ⱓ ���� �����մϴ�.</p>
									<p>
										1) ȸ���� ���� ��ħ�� ���� ���� ���� ����<br /> �� �����̿��� (6����, ���� �̿� ����)<br />
										<br /> 2) ���ù��ɿ� ���� �������� ����<br /> �� ��� �Ǵ� û��öȸ � ���� ���: 5��
										(���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����)<br /> �� ��ݰ��� �� ��ȭ ���� ���޿� ���� ���: 5��
										(���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����)<br /> �� �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ���: 5��
										(���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����)
									</p>
									<br />
								</div>
								<div class="chk chks">
									<input type="checkbox" id="agree1" /> <label for="agree">�����ϴ�
										�������� �׸�, ����/�̿����, �������� �����Ⱓ�� �����մϴ�.</label>
								</div>
							</div>
							<div class="ss">
								<strong class="mtit">���ͳ� �̿���</strong>
								<div class="mscroll">
									<strong>��1�� ��Ģ</strong> <strong>��1�� (����) </strong>
									<p>�� ����� ���̺�ī�尡 �����ϴ� �ÿܹ��� ������ ���� ����/����/�ȳ� ����Ʈ���� �����ϴ� ����
										������ �̿�� �����Ͽ� ȸ��� ���� �Ǹ�, �ǹ� �� å�ӻ���, ��Ÿ �ʿ��� ������ �������� �������� �Ѵ�.
									</p>

									<strong>��2�� (����� ����)</strong>
									<p>
										�� "ȸ��"�� ��ȭ�� �뿪�� �̿��ڿ��� �����ϱ� ���Ͽ� ��ǻ�� �� ������� ���� �̿��Ͽ� ��ȭ �Ǵ� �뿪��
										�ŷ��� �� �ֵ��� ������ ���ͳݻ��� ���������� �����, �� ���������� ��ϴ� ����ڸ� ���մϴ�.<br />
										�� "www.bustago.or.kr"�� ȸ�簡 ��ȭ�� �뿪�� �̿��ڿ��� �����ϱ� ���Ͽ� ��ǻ�� �� �������
										���� �̿��Ͽ� ��ȭ �Ǵ� �뿪�� �ŷ��� �� �ֵ��� ������ ���ͳݻ��� ���������� ���մϴ�.<br /> ��
										"�̿���"�� �� ����� ���� "www.bustago.or.kr"�� �����ϴ� ���񽺸� �̿��ϴ� �ڸ� ���մϴ�.<br />
										�� "����"�� �̿��ڰ� "www.bustago.or.kr" ���� �̿��� ���� ������������ �����ݾ��� �����ϴ�
										������ ���մϴ�.<br /> �� "ȯ��"�̶� �̿��ڰ� ������ ������ ���� ��� ��û�� �ϴ� ��� ������ �ݾ���
										�̿��ڿ��� �����ִ� ������ ���մϴ�.
									</p>

									<strong>��3�� (����� �Խÿ� ����)</strong>
									<p>
										�� ȸ��� ����� ����� ��ȣ, ������ ������, ��ǥ���� ����, ����� ��Ϲ�ȣ, ����ó(��ȭ, �ѽ�, ���ڿ���
										�ּ� ��) ���� �̿��ڰ� ���� Ȯ���� �� �ֵ��� "www.bustago.or.kr" �ʱ� ����ȭ�鿡 �Խ��ϰų�
										��Ÿ�� ������� �̿��ڿ��� �����մϴ�. <br /> �� ȸ��� ������� ������ ���� ������, ��������Ÿ�
										�̿����� �� ������ȣ � ���� ������ �� ���ù��� �������� �ʴ� �������� �� ����� ������ �� �ֽ��ϴ�. <br />
										�� ��������� �� �������� ���Ŀ� ü��Ǵ� ��࿡�� ����ǰ�, �� ������ ü��� ��࿡ ���ؼ��� ���� ����
										����� ����˴ϴ�. <br /> �� �� ����� ������ �ƴ��� ���װ� �� ����� �ؼ��� ���Ͽ���
										�����ڰŷ��⺻����, �����ڰŷ��Һ��ں�ȣ��ħ�� �� ������� �Ǵ� ����ʿ� �����ϴ�.
									</p>

									<strong>��4�� (�̿��� ü��)</strong>
									<p>
										- �̿����� �̿����� �������, �̿��û, ȸ���� �³��� ���Ͽ� ü��˴ϴ�.<br /> - ȸ��� ���� ��
										ȣ�� 1�� �ش��ϴ� ��쿡�� �̿��û�� �³����� �ƴ��� �� �ֽ��ϴ�.
									</p>
									<p>
										1. ���� ���� ������ �뷮�� ������ ���<br /> 2. ����� ��� ������ �ִ� ��� <br /> 3.
										������ �Ǹ����� ��û���� �ƴ��� ��� <br /> 4. �̿��û �� �ʿ� ������ ������ �����Ͽ� ��û�� ���
										<br /> 5. �������� �Ǵ� ������ ��ǳ����� ������ ����� �ִ� ��� <br /> 6. ��Ÿ ȸ�簡
										�ʿ��ϴٰ� ������ ���
									</p>


									<strong>��5�� (������ ���� �� ����)</strong>
									<p>
										�� ȸ��� Ư���� ������ ���� �� "www.bustago.or.kr"�� �����ϴ� ���񽺸� �׽� �̿��� �� �ֵ���
										�մϴ�.<br /> �� ȸ��� ����� ����� ���� �Ǵ� ��Ÿ �Ұ����� �����̳� ���� ���� �ִ� ��쿡�� ����
										ü��Ǵ� ��࿡ ���� ������ ������ ������ ������ �� �ֽ��ϴ�.<br /> �� ��쿡�� ����� ������ ����
										�� �������ڸ� ����Ͽ� �̿��ڿ��� �����մϴ�. ��, ��6�� 1���� ������ �ش��ϴ� ��쿡�� �������� ���� ��
										�ֽ��ϴ�.
									</p>

									<strong>��6�� (������ �ߴ�) </strong>
									<p>
										�� ȸ��� ���� �� ȣ���� �� 1�� �ش��ϴ� ��� ������ ���� �Ǵ� �Ϻθ� �����ϰų� �ߴ� �ֽ��ϴ�<br />
										1. ���񽺿� ������ ���� �� ����� ���� �ε����� ���<br /> 2. ���� ȸ���� ����Ȱ���� �����ϴ�
										��� <br /> 3. ����, ���� ������ ��� �Ǵ� �̿뷮�� ���� ������ �������� ���� �̿뿡 ������ �ִ�
										��� <br /> 4. ���� �������ڿ��� ��� ���� ��� ���� ȸ���� ���� �������� ���񽺸� ������ �� ����
										��� <br /> 5. ��Ÿ õ������, ���������� �� �Ұ��׷��� ������ �ִ� ���<br /> �� ��1����
										������ ���� �Ǵ� �ߴ��� ��쿡�� ���� �� ���ڸ� �̿��ڿ��� �����մϴ�. ��, ȸ�簡 ������ �� ���� ������
										���� ������ �ߴ� �� ���� ������ �Ұ����� ��쿡�� �������� ���� �� �ֽ��ϴ�.<br /> �� ȸ��� ȸ����
										���� �Ǵ� ������ ���� ������ ���� �Ǵ� �ߴ����� ���Ͽ� �߻��ϴ� ������ ���ؼ��� ��� å�ӵ� ����
										�ʽ��ϴ�.
									</p>

									<strong>��3�� ��� ������� �ǹ� </strong> <strong>��7�� (ȸ���� �ǹ�)</strong>
									<p>
										�� ȸ��� ���ɰ� �� ����� �����ϰų� ��������, ��ǳ��ӿ� ���ϴ� ������ ���� ������, �� ����� ���ϴ� �ٿ�
										���� �������̰� ���������� ��ȭ �� �뿪�� �����ϴµ� �ּ��� ���Ͽ��� �մϴ�. <br /> �� ȸ��� �̿��ڰ�
										�����ϰ� ���ͳ� ���񽺸� �̿��� �� �ֵ��� �̿����� ��������(�ſ����� ����) ��ȣ�� ���� ���� �ý����� ���߾��
										�մϴ�. <br /> �� ȸ�簡 ��ǰ�̳� �뿪�� ���Ͽ� ��ǥ�� ������ ����ȭ�� ���� ������ ��3�� ������
										�δ��� ǥ�� �Ǵ� ���������� �����ν� �̿��ڰ� ���ظ� ���� ������ �̸� ����� å���� ���ϴ�. <br /> ��
										ȸ��� �̿��ڰ� ������ �ʴ� ���������� ���� ���� ������ �߼����� �ʽ��ϴ�.
									</p>

									<strong>��8�� (�̿����� �ǹ�)</strong>
									<p>
										�� �̿��ڴ� �������, �� ����� ����, �̿�ȳ� �� ȸ�簡 �����ϴ� ������ �ؼ��Ͽ��� �ϸ�, ��Ÿ ȸ����
										������ ���صǴ� ������ �ؼ��� �ȵ˴ϴ�. <br /> �� �̿��ڴ� ������ �Ϻη� �������� ȸ���� ���ڿ�����
										�޴� �Ϳ� �����մϴ�. <br /> �� �̿��ڴ� ���� �̿�� �����Ͽ� ���� �� ȣ�� ������ �ؼ��� �ȵ˴ϴ�.
										<br /> 1. ���� ��û �Ǵ� ���� �� ���������� ��� <br /> 2.
										"www.bustago.or.kr"�� �Խõ� ������ �㰡 ���� ���� ���� <br /> 3. ȸ�簡 ���� ����
										�̿��� ����(��ǻ�� ���α׷� ��)�� �۽� �Ǵ� �Խ� <br /> 4. ȸ�� ��Ÿ ��3���� ���۱� �� ����
										���ǿ� ���� ħ�� <br /> 5. ȸ�� ��Ÿ ��3���� ���� �ջ��Ű�ų� ������ �����ϴ� ���� <br />
										6. �ܼ� �Ǵ� �������� �޽���, ȭ��, ���� ��Ÿ �������� ��ǳ��ӿ� ���ϴ� ������
										"www.bustago.or.kr"�� ���� �Ǵ� �Խ��ϴ� ���� <br /> 7. ��Ÿ �����Ž�������ȸ��
										������ �䱸 �޴� ����
									</p>


									<strong>��4�� �������� �ǹ�</strong> <strong>��9�� (��������)</strong>
									<p>Ȩ���������� �����ϴ� ��ȭ �Ǵ� �뿪�� ���� ���������� �ſ�ī�� �Ǵ� ��Ÿ ȸ�簡 �߰��� �����ϴ�
										���������Դϴ�.</p>

									<strong>��10�� (��������)</strong>
									<p>
										�� Ȩ���������� ������ ���� �� ���� ������� �����ϴ�. <br /> �� Ȩ���������� ������ ���� �� �ſ�ī��
										������ ���ͳ� ���Ž����� �̷�����ϴ�.
									</p>


									<strong>��5�� ������ �̿� </strong> <strong>��11�� (���� �̿�ð�)
									</strong>
									<p>
										�� ���� �̿�ð��� ȸ���� ������ �Ǵ� ����� Ư���� ������ ���� �� ���߹��� 1�� 24�ð��� ��Ģ����
										�մϴ�. �ٸ� �������� ���� �ʿ�� ȸ�簡 ���� ���̳� �ð��� ���ܵ˴ϴ�. <br /> �� ȸ��� ���񽺸�
										���������� �����Ͽ� �� �������� �̿밡�� �ð��� ������ ���� �� �ֽ��ϴ�. �� ��� �� ������ �̿��ڿ��� ������
										�����մϴ�.
									</p>

									<strong>��12�� (���� �̿�å��) </strong>
									<p>
										�� �̿��ڴ� ȸ�翡�� ���� �ִ� ����� ������ ������� ���鿡 ���� ��ü������ ����� ��츦 �����ϰ�� ���񽺸�
										�̿��Ͽ� ��ǰ�� �Ǹ��ϴ� ����Ȱ���� �� �� ������, Ư�� ��ŷ, ����, ���� ����Ʈ ���� ���� �������,
										���S/W �ҹ� ���� ���� �� �� �����ϴ�. <br /> �� ȸ��� �̿��ڰ� ���� ��1���� ���� �߻���
										����Ȱ���� ��� �� �������� ���� �����ġ � ���ؼ��� å���� ���� �ʽ��ϴ�.
									</p>

									<strong>��13�� (������ ����)</strong>
									<p>ȸ��� �̿��ڰ� ���� �̿� �� �ʿ��ϴٰ� �����Ǵ� �پ��� ������ ���ؼ� ���ڿ��� �Ǵ� ���ſ��� ����
										������� ȸ������ ������ �� �ֽ��ϴ�.</p>

									<strong>��14�� (�Խù��� ����) </strong>
									<p>
										ȸ��� �̿��ڰ� �Խ��ϰų� ����ϴ� ������ ���빰�� ���� �� ���� 1�� �ش��Ѵٰ� �ǴܵǴ� ��쿡�� ��������
										���� ������ �� �ֽ��ϴ�. <br /> �� �ٸ� ȸ�� �Ǵ� ��3�ڸ� ����ϰų� ���� �ջ��Ű�� ������ ���
										<br /> �� �������� �� ��ǳ��ӿ� ���ݵǴ� ������ �����ϰų� ���ͳ� ����Ʈ�� ��ũ�ϴ� ��� <br />
										�� ������ ������ ��εȴٰ� �����Ǵ� ��� <br /> �� ȸ���� ���۱�, ��3���� ���۱� ���� �Ǹ���
										ħ���ϴ� ������ ��� <br /> �� ��Ÿ ������ɿ� ���ݵȴٰ� �ǴܵǴ� ���
									</p>

									<strong>��15�� (�Խù��� ���۱�) </strong>
									<p>
										�� �Խù��� ���� �Ǹ��� å���� �Խ��ڿ��� ������, ȸ��� �Խ����� ���� ���̴� �̸� ����Ʈ �� ���� �̿���
										������������ ����� �� �����ϴ�. <br /> �� �̿��ڴ� ���񽺸� �̿��Ͽ� ���� ������ ����, �Ǹ��ϴ� ����
										�� ���񽺿� ����� �ڷḦ ��������� ����� �� �����ϴ�.
									</p>

									<strong>��16�� (�̿��ڿ� ���� ����) </strong>
									<p>
										�� ȸ�簡 �̿��ڿ� ���� ������ �ϴ� ��� �̿��ڰ� ȸ�翡 ������ ���ڿ��� �ּҷ� �� �� �ֽ��ϴ�. <br />
										�� ȸ��� ��Ư���ټ� �̿��ڿ� ���� ������ ��� 1���� �̻� ����Ʈ�� �Խ������ν� ���� ������ ������ ��
										�ֽ��ϴ�.
									</p>


									<strong>��6�� ��� �� ȯ�� </strong> <strong>��17�� (���, ȯ��) </strong>
									<p>
										�� ������ �������� ��Ҵ� ��۾���� ��õ� ���뿡 �����ϴ�. <br /> �� ���� �� ����� ���� �ð�
										������ "www.bustago.or.kr" �ش� �͹̳��� ������ ���� �ٸ� �� �ֽ��ϴ�. <br /> ��
										������ ���� �� ����� ���� �ð��� ����ȸ��, �͹̳� �� ���ñ���� ������ ���� ����� �� �ֽ��ϴ�. <br />
										������ �������� ��� �� ��ҽ����� ���� �����ᰡ �ΰ��� �� �ֽ��ϴ�. <br /> �� �������� �����ϰ�
										�͹̳ο��� �ش� �������� �߱��� �� �Ǵ� �ش� ������ ����� ������ ȯ�ҿ� ���Ͽ��� ��۾���� ������ ����
										�����ᰡ �ΰ��� �� �ֽ��ϴ�. <br /> �� ��Ÿ �� ��� �� �̿�ȳ��� �������� ���� ȯ�� �� ��ҿ� ����
										���� �� �������� ���뿡 ���ؼ��� ���Һ��� ���غ���������� �����ϴ�.
									</p>

									<strong>��18�� (�������� ó��)</strong>
									<p>
										�� ���� ��� �ÿ��� ���ε� ������ ��� �ݾ��� ���� �� ���� �ݾ׿� ���Ͽ� �����Ḧ �ΰ��մϴ�. <br />
										�� ȯ�ұݾ��� ȯ�� ����� ȯ������ ���� ��� ������ �ش� �ſ�ī����� ȯ�� ó�����ؿ� ���� �ټ� ���̰� ����
										�� ������, ���� ���� ȯ�� ��å�� ���ؼ��� ȸ�� �Ǵ� �ش� �ſ�ī���� �����Ͻñ� �ٶ��ϴ�.
									</p>


									<strong>��7�� ��Ÿ </strong> <strong>��19�� (���۱��� �ͼ� �� �̿�����)
									</strong>
									<p>
										�� ȸ�簡 �ۼ��� ���۹��� ���� ���۱� ��Ÿ ���������� ȸ�翡 �ͼ��մϴ�. <br /> �� �̿��ڴ�
										Ȩ�������� ���� ���� ������ ȸ���� ���� �³� ���� ����, �۽�, ����, ����, ��� ��Ÿ ����� ���Ͽ� ����
										�������� �̿��ϰų� ��3�ڿ��� �̿��ϰ� �Ͽ����� �ȵ˴ϴ�.
									</p>

									<strong>��20�� (���� �ذ�) </strong>
									<p>
										�� ȸ��� �̿��ڰ� �����ϴ� ������ �ǰ��̳� �Ҹ��� �ݿ��ϰ� �� ���ظ� �����ϱ� ���� ���غ���ó���ⱸ�� ��ġ,
										��մϴ�. <br /> �� ȸ��� �̿��ڰ� �����ϴ� �ǰ��̳� �Ҹ��� �ż��ϰ� ó���մϴ�. ��, �ż��� ó����
										����� ��쿡�� �̿��ڿ��� �� ������ ó�������� �뺸�մϴ�. <br /> �� ȸ��� �̿��� ���� �߻��� ������
										�����ڰŷ��⺻������ ���Ͽ� ��ġ�� ���ڰŷ� ������������ȸ�� ������ ���� �� �ֽ��ϴ�.
									</p>

									<strong>��21�� (��å����) </strong>
									<p>
										ȸ��� ���� �� ���� 1�� �ش��ϴ� ��쿡�� å���� ���� �ʽ��ϴ�. <br /> �� ȸ��� �̿��ڰ� �����ϴ�
										������ �ǰ��̳� �Ҹ��� �ݿ��ϰ� �� ���ظ� �����ϱ� ���� ���غ���ó���ⱸ�� ��ġ, ��մϴ�. <br /> ��
										ȸ��� �̿��ڰ� �����ϴ� �ǰ��̳� �Ҹ��� �ż��ϰ� ó���մϴ�. ��, �ż��� ó���� ����� ��쿡�� �̿��ڿ��� ��
										������ ó�������� �뺸�մϴ�. <br /> �� ȸ��� �̿��� ���� �߻��� ������ �����ڰŷ��⺻������ ���Ͽ�
										��ġ�� ���ڰŷ� ������������ȸ�� ������ ���� �� �ֽ��ϴ�.
									</p>


									<strong>��22�� (���� ����) </strong>
									<p>Ȩ�������� ���õ� ���￡ ���� �Ҽ��� ����� ��� ȸ���� ���� �������� �����ϴ� ������ ����
										���ҹ������� �մϴ�.</p>

									<strong>��Ģ<2010. 6. 1> </strong>
									<p>�� �� ����� 2010�� 6�� 1�Ϻ��� �����մϴ�.</p>
									<br />
								</div>
								<div class="chk chks">
									<input type="checkbox" id="agree2" /> <label for="agree">���ͳ�
										�̿����� �����մϴ�.</label>
								</div>
							</div>
							<div class="ss">
								<strong class="mtit">������ �ʴ� ��� �������� ���� �� �̿뿡 �������� ���� ��
									�ֽ��ϴ�. �̷��� ��� ���� ���񽺸� ���������� �� ������ �˷��帳�ϴ�.</strong> </br>
								</br>
								</br>
							</div>
							<!-- //���� -->
							<div class="chk_agree"
								style="position: absolute; margin-top: -30px; text-align: right; right: 65px;">
								<input type="checkbox" id="agree3" value="Y" /> <label
									for="agree">��ü �����մϴ�.</label>
							</div>
							<div class="ss line ">
								<strong class="mtit">�߱� �� Ȯ������</strong> <span class="essential2">
									<!-- * �� �ʼ��Է� �׸��Դϴ�. -->�Է��Ͻ� ������ ������ ��ȸ �� �߱� �� ī���ȣ ��� ����Ͻ� ��
									�ֽ��ϴ�.
								</span>
								<table class="member etc space1" summary="�̸�, �������, �ڵ�����ȣ">
									<caption>ȸ������ �Է�</caption>
									<colgroup>
										<col style="width: 22%;" />
										<col style="" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="row"><label for="name">������� *</label></th>
											<td><input type="text" id="birthDate" class="txt"
												style="width: 155px;" maxlength="6" /> <span
												id="birthDaySpan" class="tt">(������� 6�ڸ��� �Է��� �ּ���.)</span></td>
										</tr>
										<tr>
											<th scope="row"><label for="phone">�ڵ�����ȣ *</label></th>
											<td><select style="width: 70px;" id="phone1"
												title="�ڵ��� �չ�ȣ">
													<option value="">����</option>

													<option value="010">010</option>

													<option value="011">011</option>

													<option value="016">016</option>

													<option value="017">017</option>

													<option value="018">018</option>

													<option value="019">019</option>

											</select> - <input type="text" class="txt" id="phone2" maxLength="4"
												onKeyUp="moveNext(event,'#phone2','#phone3',4)"
												style="width: 55px;" title="�ڵ��� �߰���ȣ" /> - <input
												type="text" class="txt" id="phone3" maxLength="4"
												style="width: 55px;" title="�ڵ��� ����ȣ" /> <span
												id="birthDaySpan" class="tt">(�߱� �� ī���ȣ ��� �̿�)</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="btn_center">

					<!--a id="reserveBtn" style="cursor:pointer;"><img src="/images/button/btn_next.gif" alt="����" /></a-->
					<input name="" id="reserveBtn" type="image"
						src="/images/button/btn_next.gif">
				</div>
				<!-- //content -->
				<form id="frmSubmit" name="frmSubmit" method="post">
					<input type="hidden" id="RETSTR1" name="RETSTR1" value="" /> <input
						type="hidden" id="RETSTR2" name="RETSTR2" value="" /> <input
						type="hidden" id="PhoneNO" name="PhoneNO" value="" />
					<!-- ��ȭ��ȣ -->
					<input type="hidden" id="uname" name="uname" value="" />
					<!-- ����� �̸� (�̻��) -->
					<input type="hidden" id="CcNameOnCard" name="CcNameOnCard" value="" />
					<!-- ī�� ����� �̸� (�̻��) -->
					<input type="hidden" id="hp1" name="hp1" value="" />
					<!-- �ڵ��� ��ȣ -->
					<input type="hidden" id="hp2" name="hp2" value="" />
					<!-- �ڵ��� ��ȣ -->
					<input type="hidden" id="hp3" name="hp3" value="" />
					<!-- �ڵ��� ��ȣ -->
					<input type="hidden" id="birthdate" name="birthdate" value="" />
					<!-- ������� -->
					<input type="hidden" id="selWay" name="selWay" value="1" />
					<!-- �պ�(2) or ��(1) ����  -->
					<input type="hidden" id="sdate" name="sdate" value="20150522" />
					<!-- �����  -->
					<input type="hidden" id="edate" name="edate" value="" />
					<!-- ������  -->
					<input type="hidden" id="stime" name="stime" value="0730" />
					<!-- ��߽ð� -->
					<input type="hidden" id="etime" name="etime" value="" />
					<!-- �����ð� -->
					<input type="hidden" id="slvl" name="slvl" value="1" />
					<!-- ������� ��� -->
					<input type="hidden" id="elvl" name="elvl" value="" />
					<!-- �պ��� ���������� -->
					<input type="hidden" id="adults" name="adults" value="1" />
					<!-- ���� ǥ �ż� -->
					<input type="hidden" id="university" name="university" value="0" />
					<!-- ���л� ǥ �ż� -->
					<input type="hidden" id="student" name="student" value="0" />
					<!-- �л� ǥ �ż� -->
					<input type="hidden" id="children" name="children" value="0" />
					<!-- �Ƶ� ǥ �ż� -->
					<input type="hidden" id="mAdults" name="mAdults" value="19200" />
					<!-- ���� ǥ ���� -->
					<input type="hidden" id="mUniversity" name="mUniversity" value="0" />
					<!-- ���л� ǥ ���� -->
					<input type="hidden" id="mStudent" name="mStudent" value="15400" />
					<!-- �л� ǥ ���� -->
					<input type="hidden" id="mChildren" name="mChildren" value="9600" />
					<!-- �Ƶ� ǥ ���� -->
					<input type="hidden" id="sterCode" name="sterCode" value="0004" />
					<!-- ��� �͹̳� �ڵ� -->
					<input type="hidden" id="eterCode" name="eterCode" value="6001" />
					<!-- ���� �͹̳� �ڵ� -->
					<input type="hidden" id="sterName" name="sterName" value="���ﳲ��" />
					<!-- ��� �͹̳� �̸� -->
					<input type="hidden" id="eterName" name="eterName" value="��â" />
					<!-- ���� �͹̳� �̸� -->
					<input type="hidden" id="routecode" name="routecode"
						value="000004603201" />
					<!-- �� ���� ���� �ڵ� -->
					<input type="hidden" id="selectlvl" name="selectlvl" value="1" />
					<!-- ���õ� ���� ��� -->
					<input type="hidden" id="starttime" name="starttime" value="0730" />
					<!-- // 20111010 �ּ�ȣ �¼���ġ ���� ȣ�� ���ν����� ���� -->
					<!-- �� �͹̳� ��� �ð� -->
					<input type="hidden" id="startTime" name="startTime" value="0730" />
					<!-- // 20111010 �ּ�ȣ �¼���ġ ���� ȣ�� ���ν����� ���� -->
					<!-- �� �͹̳� ��� �ð� -->
					<input type="hidden" id="changNo" name="changNo" value="99" />
					<!-- ? -->
					<input type="hidden" id="sjType" name="sjType" value="" /> <input
						type="hidden" id="seatNo" name="seatNo" value="26" />
					<!-- ���� �¼� ��ȣ -->
					<input type="hidden" id="seatNos" name="seatNos" value="26" />
					<!-- ��ü �¼� ��ȣ(','�� ����) -->
					<input type="hidden" id="totCnt" name="totCnt" value="1" />
					<!-- �� ǥ �ż� -->
					<input type="hidden" id="totFee" name="totFee" value="19200" />
					<!-- �� ǥ ���� -->
					<input type="hidden" id="busFee" name="busFee"
						value="19200:15400:13400:9600" />
					<!-- �� ǥ ���� -->
					<input type="hidden" id="bizr_id" name="bizr_id" value="5500051" />
					<!-- ����ȸ�� �ڵ� 7�ڸ� -->
					<input type="hidden" id="bizr_nm" name="bizr_nm" value="��â��Ӣ�" />
					<!-- ����ȸ�� �ڵ� 7�ڸ� -->
					<input type="hidden" id="ebizr_id" name="ebizr_id" value="" />
					<!-- ����ȸ�� �ڵ� 7�ڸ� -->
					<input type="hidden" id="ebizr_nm" name="ebizr_nm" value="" />
					<!-- ����ȸ�� �ڵ� 7�ڸ� -->
					<input type="hidden" id="seatState" name="seatState"
						value="88888811888888888baa888888808888888888888" />
					<!-- �� �¼� ���� (���¼�-8) -->
					<input type="hidden" id="reserveNo" name="reserveNo" value="" />
					<!-- ���Ź�ȣ -->
					<input type="hidden" id="jsType" name="jsType" value="2" />
					<!-- �¼� ���� Ÿ�� (���ͳ�: ����-2 / ����-3) -->
					<input type="hidden" id="startDate" name="startDate"
						value="20150522" />
					<!-- ���� ��¥ -->
					<input type="hidden" id="reserveTime" name="reserveTime"
						value="0210" />
					<!-- ���Žð� -->
					<input type="hidden" id="totalSeat" name="totalSeat" value="41" />
					<!-- ��ü �¼� -->
					<input type="hidden" id="email" name="email" /> <input
						type="hidden" id="MSTR" name="MSTR"
						value="26!1!0!0!0!19200!0!15400!9600!0730" /> <input
						type="hidden" id="MSTR2" name="MSTR2" value="" /> <input
						type="hidden" id="oriReserveNo" name="oriReserveNo" value="" /> <input
						type="hidden" id="startDistance" name="startDistance" value="0" />
					<input type="hidden" id="startDist_Time" name="startDist_Time"
						value="210" /> <input type="hidden" id="startRouteData"
						name="startRouteData" value="���ﳲ�� �� ���� �� ��â" /> <input
						type="hidden" id="finishDistance" name="finishDistance" value="" />
					<input type="hidden" id="finishDist_Time" name="finishDist_Time"
						value="" /> <input type="hidden" id="finishRouteData"
						name="finishRouteData" value="" />
				</form>
			</div>

		</div>

		<!-- ��Ĺ -->


		<!-- ������ -->









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