<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Bustago</title>

<script type="text/javascript"
	src="/js/netfunnel/netfunnel-2.1.16-bustago.js"></script>
<script type="text/javascript" src="/js/netfunnel/skin.js"></script>
<script type="text/javascript" src="/js/jquery/jquery-2.0.0.js"></script>

<script type="text/javascript">
	// �˻� �� ������ ��� 
	function searchOption() {
		var inputText = document.getElementById('selectText').value;
		//alert(inputText);
		if (inputText.length == 0 || inputText == '') {
			alert('�˻�� �Է��ϼ���');
		} else {
			$("form#search").submit();
		}
	}
</script>

</head>
<body>
	<form action="/bustagoApp/searchDataAction.action" name="search"
		id="search" method="post">

		<select id="selectSearch" name="seOptionData">
			<option id="C_NAME" value="C_NAME">ȸ���̸�</option>
			<option id="C_TEL" value="C_TEL">��ȣ</option>
		</select> <input type="text" size="10" id="selectText" name="selectText">
		<input type="button" id="selectBtn" name="selectBtn" value="�˻�"
			onclick="searchOption()" />
		<!-- <a href="/notice/searchAction.action"> �˻�</a> -->
	</form>
</body>
</html>

