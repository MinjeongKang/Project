<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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

<script type="text/javascript" src="/public/js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="/public/js/design.js"></script>
<script src="/script/jquery-2.0.0.min.js"></script>
<script>
$(function () {
   $("#save").click(function(){
   $("#bnumber").val($("#bnumber1").val()+'-'+$("#bnumber2").val()+'-'+$("#bnumber3").val()+'-'+$("#bnumber4").val());
   $("form#cardFrm").submit();
   });
});
   
</script>

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
   
    $("img#testBtn").click(function(){

      //alert($("input[id=bus_no]").val());
      //sub_no=($("input[id=bus_no]").val().substr(0,10));
      
      $("form#frmSubmit").submit();
      
});
   
    $("img#canYedata").click(function(){

      //alert($("input[id=bus_no]").val());
      //sub_no=($("input[id=bus_no]").val().substr(0,10));
      
      $("form#canFrm").submit();
      
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

               <li class="sta" id="loginOutBtn">
                  <a href="/guide/login.jsp"><img src="/images/main/gnbs_01.gif" alt="�α���" /></a>
               </li>
               <li id="certificate">
                  <a href="/guide/member.jsp"><img src="/images/main/gnbs_02.gif" alt="ȸ������" /></a>
               </li>

               <li>
                  <a href="/guide/mypage.jsp"><img src="/images/main/gnbs_03.gif" alt="����������" /></a>
               </li>
               <li>
                  <a href="#"><img src="/images/main/sitemap.gif" alt="����Ʈ��" /></a>
               </li>
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
                     <li><a href="/guide/transportation.jsp">����ȸ�� �ȳ�</a></li>
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
      
   

         

         <div class="contents" id="Contents">
            <div class="lnbs" id="Lnb">
               <!-- lnb -->
               

               <!-- //lnb -->
            </div>

<div class="content" id="Content">


   
   


   
   
   <div class="reserveboxs">
         <form action="/bustagoApp/yedataSearchAction.action" name="cardFrm" id="cardFrm" method="post">
            
            <label for="check">
               ī�� ��ȣ �Է� : <input type="text" name="bnumber1" id="bnumber1" size="15"/> - <input type="text" size="15" name="bnumber2" id="bnumber2"/> - <input type="text" size="15" name="bnumber3" id="bnumber3"/> - <input type="text" size="15" name="bnumber4" id="bnumber4"/>
            <input type="hidden" name="bnumber" id="bnumber"/>
            <a style="cursor: pointer;" class="search" id="searchBtn"><img src="/images/common/bts_check.gif" id="save" name="save" alt="��ȸ�ϱ�"  /></a>
         
         </form>
         </div>
      <table class="board_view" summary="����,÷������,�����,��ȸ��,�۳���">
          <caption>���ǹ�</caption>
         <colgroup>
            <col style="width:15%;" />
            <col style="" />
            <col style="width:15%;" />
            <col style="width:15%;" />
         </colgroup>
         <tbody>
            <tr>
               <c:forEach var="i" items="${buslist}" varStatus="cnt">   
               <th scope="row">�����</th>
               <td class="left" id="subject">${i.b_start}</td>
               <th scope="row">������</th>
               <td id="registeDt">${i.b_end}</td>
            </tr>
            <tr>
               <th scope="row">��߽ð�</th>
               <td class="left" id="file">${i.b_time}</td>
               <th scope="row">�ҿ�ð�</th>
               <td id="nView">${i.e_time}</td>
            </tr>
            <tr>
               <th scope="row">�¼����</th>
               <td id="nView">${i.b_grade}</td>
            </tr>
   
         </tbody>
         <tbody>
         <tr>
              <c:forEach var="i" items="${yedatalist}" varStatus="cnt">   
               <th scope="row">�¼���ȣ</th>
               <td class="left" id="subject">${i.y_sit}</td>
               <th scope="row">���� �� �Ƶ� ��</th>
               <td id="registeDt">���� : "${i.a_cnt}" / �Ƶ� : "${i.k_cnt}"</td>
            </tr>
            <tr>
       <th scope="row">���Ž��ΰ��</th>
       <form action="bustagoApp/YedataDeleteAction.action" name="canFrm" id="canFrm">
       <td>${i.yeyak_ck} <input type="hidden" name="y_no" id="y_no" value="${i.y_no}"></td>
       <td colspan="2"><img src="/images/common/canbtn.png" name="canYedata" id="canYedata"/></td>
       </form>
       </tr>
         </tbody>
            </table>
      
   
   
   
   
   <div class="btn_center">
      <a href="/index.jsp"><img src="/images/button/btn_ok.gif" /></a>

   </div>
</div>
         </div>
      </div>
       </c:forEach>
     </c:forEach>
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
         <!-- 2014-12-12 -->
         <!-- p class="address"><img src="/images/main/footer_copyright.gif" alt="" /></p-->
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