/*
 * 2014-01-21 최유진
 * Submission 대신 Json Ajax 프로그램 호출
 * 파리미터 내역
 * example gf_Ajax(호출할페이지,파라미터데이터,동기화여부,사용자콜백함수)
 * @param p_url : 호출할페이지
 * @param p_param : 파라미터데이터
 * @param p_syncYN : 동기화여부
 * @param p_callback :  사용자콜백함수"
 */
var console = window.console || {log:function(){},error:function(){}}; 

function gf_Ajax(p_url, p_param, p_syncYN, p_callback)

{
	$.ajax({
		type : "POST",
		url : p_url,
		contentType : "application/json; charset=UTF-8",
		dataType : "json",
		async : p_syncYN,
		// data: JSON.stringify(p_param).replace(/\"/ig, '"'),
		data : JSON.stringify(p_param).replace(/\"/g, '"'),
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error :" + p_url + " [Message:" + textStatus + "]");
			gf_initLoadingBar(false);
			return false;
		},
		success : function(data) {
			var json = data.ParamInfo;
			if (data.ResultCode == "success") {
				var contact = JSON.parse(json); // 오브젝트로 변환
				var submissionID = contact.submissionID;

				if (typeof (p_callBack) == "function") {
					p_callback(data, submissionID);
				} else {

					if (data.Message_Info.length > 0) {
						alert(data.Message_Info);
					}
					var callbacks = $.Callbacks();
					callbacks.add(eval(p_callback));
					callbacks.fire(data, submissionID);
				}

			} else {
				alert(data.Message_Info);
			}

			gf_initLoadingBar(false);

		}
	});
}

/*******************************************************************************
 * /** 2014-01-21 최유진 페이지 로드 로딩구현 [이지미와 아직 정의가 없어 임시]
 */
/*var loadingBarCnt = 0;
function gf_initLoadingBar(flag) {
	if (flag == false) {

		return;

	}
}*/

/**
 * 공통 팝업 2014-01-21 최유진
 * 
 * @example gfn_commonPopup('http://www.naver.com', {a:'a',b:'b'},
 *          function(){alert('test')}, '2', "우리집",'500','300',true,true); 설명 :
 *          '주소','팝업네임','넓이','높이' 결과 : 없음
 * @param url :
 *            주소
 * @param params
 *            파라메터
 * @param popupname :
 *            팝업이름
 * @param width :
 *            넓이
 * @param height :
 *            높이
 * @param useFullScreen :
 *            풀스크린 사용여부
 */
/*function gf_commonPopup(url, params, popupname, width, height, scrollbars,
		left, top, useFullScreen) {
	window.open(url, popupname, 'width=' + width + ',height=' + height
			+ ',scrollbars=' + scrollbars + ',usefullscreen=' + useFullScreen
			+ ',left=' + left + ',top=' + top + '');
};*/

/**
 * confirm 메세지팝업을 호출한다 AJAX. 2014-01-21 최유진
 * 
 * @param message :
 *            메시지
 * @example showConfirm("저장하시겠습니까?", 폼네임);
 */
/*function gf_showConfirm(message, requestData, url) {
	if (confirm(message) == true) { // 확인

		if (url != "") {
			gf_Ajax(url, requestData, false, "fn_callback");
		}
	} else { // 취소
		return;
	}
	// 팝업 호출
}*/

/**
 * confirm 메세지팝업을 호출한다 일반. 2014-01-21 최유진
 * 
 * @param message :
 *            메시지
 * @example showConfirm("저장하시겠습니까?", 폼네임);
 */
/*function gf_u_showConfirm(message, formname, method, url) {
	if (confirm(message) == true) { // 확인
		$("#" + formname).attr({
			action : url,
			method : method
		}).submit();
		return true;
	} else { // 취소
		return;
	}
	// 팝업 호출
}*/

/**
 * 2014-01-22 최유진 hh24miss 8자리 리턴
 * 
 * @returns {String}
 */
/*function gf_getServerTime() {
	var requestData = {
		submissionID : "sysTime"
	};
	var g_returnData = "";
	gf_Ajax("/manager/common/selectsystime.do", requestData, false, function(
			data, submissionID) {
		g_returnData = data.InfoList.time;
	});
	return g_returnData;
}*/

/**
 * 콤보박스에 들어갈 공통코드 조회
 * 
 * 공통코드 2개일경우
 * 
 * @example getCommonCode(); 설명 : [공통코드명,공통코드명], [{콤보오브젝트명, 콤보오브젝트명}]
 */

/*function gf_getCommonCode(Code, arrBindComponent) {

	if (typeof arrBindComponent == "object") {
	}
	var requestData = {
		cgid : Code
	// testTags: [{id: "1111", tag: "2222"}]
	};
	$.ajax({
		type : "POST",
		url : "/manager/common/codelist.do",
		contentType : "application/json; charset=UTF-8",
		dataType : "json",
		async : false,
		data : JSON.stringify(requestData).replace(/\"/g, '"'),
		// fnParams: {arrCodemstcd: arrCodemstcd, arrBindComponent:
		// arrBindComponent},
		// beforeSend: setHeader,
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error :  [Message:" + textStatus + "]");
			// alert("error :" + XMLHttpRequest.responseText);
		},
		success : function(data) {// 성공시 셀렉트 박스에 첫 대입

			len = data.count;
			var json = data.InfoList;
			// var contact = JSON.parse(json); //오브젝트로 변환

			// 0:선택 1:전체, 2:인덱스 1번째꺼
			if (arrBindComponent.OptionType == "0") {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						"-선택-", ""));
			} else if (arrBindComponent.OptionType == "1") {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						"-전체-", "%"));
			}

			for (var i = 0; i < len; i++) {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						json[i].CODENAME, json[i].CG_CID));
			}
			$('select').find('option:first').attr('selected', 'selected'); // 초기selected
																			// 설정
		}
	});
}*/

/**
 * jqx 테이블 td 안에 태그 삽입 개발자 : 최유진
 * 
 * @example gf_setEmail("셀렉트 네임",str2)
 */
/*function gf_jqx_settd(str) {
	var container = "<div>" + str + "</div>";
	return container;
}*/

/**
 * 이메일 코드 자동입력 개발자 : 최유진 해당 셀렉트 박스에 현재상의 메이일 계정을 뿌린다.
 * 
 * @example gf_setEmail("셀렉트 네임",str2)
 */
/*function gf_setEmail(str, str2) {
	document.write("<select name='" + str + "' id='" + str
			+ "' onChange='gf_email_change(\"" + str + "\",\"" + str2
			+ "\")'></select>");
	var email_str = "select domain,chol.com,hanmail.net,dreamwiz.com,empal.com,freechal.com,hanafos.com,"
			+ "hanmir.com,hihome.com,hotmail.com,intizen.com,kebi.com,kornet.net,korea.com,"
			+ "lycos.co.kr,msn.com,nate.com,naver.com,netian.com,samsunglife.com,samsung.com,"
			+ "samsung.co.kr,shinbiro.com,simmani.com,unitel.co.kr,yahoo.co.kr,orgio.net,"
			+ "hitel.net,bcline.com";
	var email_dns = email_str.split(",");
	var opt = gf_getObject(str);
	for (var i = 0; i < email_dns.length; i++) {
		opt.options[i] = new Option(email_dns[i], email_dns[i]);
	}
	opt.options[0] = new Option("선택하세요", "00");
	opt.options[++i] = new Option("기타[직접입력]", "99");
	opt.options[0].selected = true;
}

function gf_getObject(objectId) {
	if (document.getElementById && document.getElementById(objectId)) {
		return document.getElementById(objectId);
	} else if (document.all && document.all(objectId)) {
		return document.all(objectId);
	} else if (document.layers && document.layers[objectId]) {
		return document.layers[objectId];
	} else {
		return false;
	}
}
function gf_email_change(str, str2) {
	var opt = document.getElementById(str);
	var opt2 = document.getElementById(str2);

	if (opt.options[opt.selectedIndex].value == '00') {
		opt2.disabled = true;
		opt2.value = "";
	} else if (opt.options[opt.selectedIndex].value == '99') {
		opt2.disabled = false;
		opt2.value = "";
		opt2.focus();
	} else {
		opt2.disabled = true;
		opt2.value = opt.options[opt.selectedIndex].value;
	}
}*/

/**
 * 2014-01-23 천원단위 콤마 입력 개발자 : 안지훈 number를 넘겨주면 3자리 단위로 콤마를 찍는다.
 * 
 * @example numberFormat(number);
 */
function numberFormat(num) {
	
	var len = 0, point = 0, str = "";  
	  
    num = num + "";  
    point = num.length % 3;
    len = num.length;  

    str = num.substring(0, point);  
    while (point < len) {  
        if (str != "") str += ",";  
        str += num.substring(point, point + 3);  
        point += 3;  
    }
    
    if(str.length <= 0){
    	str = "0";
    }

    return str; 

	/*if (isNaN(number)) {
		return 0;
	}
	return number + "".replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');*/

	/*
	 * var reg = /(^[+-]?\d+)(\d{3})/; number += ''; while (reg.test(number))
	 * number = number.replace(reg, '$1' + ',' + '$2'); return number;
	 */
}

/**
 * 2014-01-23 해당 키만 입력 받는 Function 개발자 : 안지훈 해당 mode를 넘겨주면 해당하는 키만 입력 되게 한다.
 * 
 * @example $(".alpha-upper")formatKey("alpha-upper");
 */
$.fn.formatKey = function(mode) {
	$(this).css({
		"ime-mode" : "disabled"
	});

	this.each(function() {
		$(this).keypress(function(e) {

			if (window.event) {
				key = window.event.keyCode;
			} else if (e) {
				key = e.which;
			} else {
				return true;
			}

			keychar = String.fromCharCode(key);

			if ((key == null) || (key == 8))
				return true;

			switch (mode) {
			// 대문자만 입력 가능
			case 'alpha-upper':
				return /[^A-Z]+$/.test(keychar) ? false : true;
				break;
			// 소문자만 입력 가능
			case 'alpha-lower':
				return /[^a-z]+$/.test(keychar) ? false : true;
				break;
			// 영문자만 입력 가능
			case 'alpha':
				return /[^a-zA-Z]+$/.test(keychar) ? false : true;
				break;
			// 영문자와 숫자만 입력가능
			case 'alpha-number':
				return /\W/.test(keychar) ? false : true;
				break;
			// 숫자만 입력 가능
			case 'number':
				return isNaN(keychar) || /[^\d]/.test(keychar) ? false : true;
				break;
			// 마이너스 숫자만 입력가능
			case 'minus-number':
				return !/^[-]?[0-9]*$/.test(keychar) ? false : true;
				break;
			// 영문자, 숫자, 특수키 입력 가능
			case 'alpha-number-spcharacters':
				return !/[a-zA-Z0-9`~!@#%*()\-_=+:?\,\.\/\$\^\&\{\}\[\]\;]/.test(keychar) ? false : true;
				break;
			// 한글만 입력
			case 'hangul':
				return !/[\ㄱ-ㅎ가-힣ㅏ-ㅣ]/g.test(keychar) ? false : true;
				break;
			// 한글만 입력 제외
			case 'no-hangul':
				return true;
				break;
			default:
				return true;
			}

		}).keyup(function() {
			$(this).val($(this).val().replace(/[\ㄱ-ㅎ가-힣ㅏ-ㅣ]/g, ''));
		});
	});
};

/**
 * 2014-01-23 핸드폰 번호 체크(-바포함) 개발자 : 안지훈 해당 번호를 넘겨받아 정규식으로 체크 후 해당 input에 focus
 * 
 * @example isValidPhone("010-1234-1234", "#validPhone", true);
 */
function isValidPhone(input, inputId, blankCheck) {
	var regExp = /^01([0|1|6|7|8|9])-([0-9]{3,4})-([0-9]{4})$/;
	console.log(blankCheck);
	if (blankCheck == true) {
		if (!isValidBlank1(input)) {
			layerAlert("휴대폰 번호를 입력해 주세요.");
			$(inputId).focus();
			return false;
		} else {
			if (!regExp.test(input)) {
				layerAlert("휴대폰 번호 형식이 맞지 않습니다.");
				$(inputId).focus();
				return false;
			}
		}
	} else {
		if (!regExp.test(input)) {
			layerAlert("휴대폰 번호 형식이 맞지 않습니다.");
			$(inputId).focus();
			return false;
		}
	}
	return true;
}

/**
 * 2014-01-24 email 체크 개발자 : 안지훈 email을 넘겨받아 체크 후 해당 input에 focus
 * 
 * @example isValidEmail("a@naver.com", "#validEmail", true);
 */
function isValidEmail(input, inputId, blankCheck) {
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	if (blankCheck == true) {
		if (!isValidBlank1(input)) {
			layerAlert("email을 입력해 주세요.");
			$(inputId).focus();
			return false;
		} else {
			if (!regExp.test(input)) {
				layerAlert("email 형식이 맞지 않습니다.");
				$(inputId).focus();
				return false;
			}
		}
	} else {
		if (!regExp.test(input)) {
			layerAlert("email 형식이 맞지 않습니다.");
			$(inputId).focus();
			return false;
		}
	}
	return true;
}

/**
 * 2014-01-24 공백 체크 개발자 : 안지훈 해당 input을 입력 받아 blank인지 체크
 * 
 * @example isValidBlank("");
 */
function isValidBlank1(input) {
	var regExp = /^[\s]+$/i;
	if (regExp.test(input) || input == "") {
		return false;
	}
	return true;
}

/**
 * 2014-01-24 IP 체크 개발자 : 안지훈 해당 input을 입력 받아 blank인지 체크 후 메시지 출력
 * 
 * @example isValidIp("", "메세지 입력");
 */
function isValidIp(input, msg) {
	var regExpIp = /^(?:25[0-5]|2[0-4]\d|1\d\d|[1-9]\d|\d)(?:[.](?:25[0-5]|2[0-4]\d|1\d\d|[1-9]\d|\d)){3}$/;
	if (!regExpIp.test(input)) {
		$('#mask').show();
		$('#viewLayer').html(msg);
		$('#viewLayer').show();
		setTimeout("$('#viewLayer').hide(); $('#mask').hide();",2000);
		return false;
	}
	return true;
}



/**
 * 2014-01-24 공백 체크 개발자 : 안지훈 해당 input을 입력 받아 blank인지 체크 후 메시지 출력
 * 
 * @example isValidBlank("", "메세지 입력");
 */
function isValidBlank(input, msg) {
	var regExp = /^[\s]+$/i;
	if (regExp.test(input) || input.length == 0) {
		layerAlert(msg);
		return false;
	}
	return true;
}


/**
 * 2014-01-24 사인 체크 개발자 : 안지훈 해당 input을 입력 받아 Sign이 입력 되었는지 체크 후 메시지 출력
 * 
 * @example isValidSign("", "메세지 입력");
 */
/*function isValidSign(input, msg) {
	var regExp = "image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj48c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgdmVyc2lvbj0iMS4xIiB3aWR0aD0iMCIgaGVpZ2h0PSIwIj48L3N2Zz4=";
	if (regExp == input || input.length == 333) {
		$('#mask').show();
		$('#viewLayer').html(msg);
		$('#viewLayer').show();
		setTimeout("$('#viewLayer').hide(); $('#mask').hide();",2000);
		return false;
	}
	return true;
}*/

/**
 * 2014-01-24 셀렉트박스 체크 개발자 : 안지훈 selectBox Id나 class명을 입력 받아 selected 했는지 체크
 * 
 * @example $.selectBoxCheck("#validSelectBox"); or
 *          $.selectBoxCheck(".validSelectBox");
 */
$.validSelectBox = function(selected,msg) {
	var param = $(selected + "> option:selected").val();
	var check = $(selected + "> option:eq(0)").val();
	if (param == check) {
		layerAlert(msg);
		return false;
	}
	return true;
};

/**
 * 2014-01-24 라디오버튼 체크 개발자 : 안지훈 라디오 버튼의 name을 입력받아 라디오 버튼을 선택 했는지 체크
 * 
 * @example $.validRadioBtn("validRadio", "라디오 버튼을 선택해 주세요.");
 */
$.validRadioBtn = function(selected, msg) {
	var radioBtnLength = $("input[name=" + selected + "]:checked").length;
	if (radioBtnLength == 0 || radioBtnLength < 0) {
		layerAlert(msg);
		return false;
	}
	return true;
};

/**
 * 2014-01-27 체크박스 버튼 체크 개발자 : 안지훈 체크박스의 상위 엘리먼트의 class나 Id를 입력받아 체크박스의 체크여부 확인과
 * 메세지를 입력 받아 Alert 출력
 * 
 * @example $.validCheckBox("validRadio", "체크박스 버튼을 선택해 주세요.");
 */
$.validCheckBox = function(selected, msg) {
	var checkBoxLength = $(selected + " > input[type=checkbox]:checked").length;
	if (checkBoxLength == 0 || checkBoxLength < 0) {
		layerAlert(msg);
		return false;
	}
	return true;
};

/**
 * 2014-02-03 엑셀 다운로드 개발자 : 최유진 해당 테이블에 내용을 엑셀로 다운로드 한다.
 * 
 * @example $.validCheckBox("validRadio", "체크박스 버튼을 선택해 주세요.");
 */
/*function gf_Ex_Download(datatable, top, option) {

};*/

/**
 * 2014-02-06 json Ajax 호출 개발자 : 안지훈 체크박스의 상위 엘리먼트의 class나 Id를 입력받아 체크박스의 체크여부
 * 확인과 메세지를 입력 받아 Alert 출력
 * 
 * @example checkDetailUrl("체크할url");
 */
jQuery.busCall = function(param) {
	var defaultValue = {
		timeout : 40000,
		async : true,
		cache : false,
		type : "POST",
		dataType : "json",
		data : "",
		success : function() {
		}
	};
	var options = $.extend({}, defaultValue, param);

	var xhr = null;
	xhr = this
			.ajax({
				url : options.url,
				timeout : options.timeout,
				async : options.async,
				cache : options.cache,
				type : options.type,
				dataType : options.dataType,
				contentType : options.contentType,
				//beforeSend : function(xhr) {
					// xhr.setRequestHeader("contentType", "application/json");
				//},
				beforeSend : options.beforeSend,
				data : options.data,
				success : function(data) {
					options.success(data);
				},
				error : function(xhr, ajaxOptions, thrownError) {
					if (xhr.status == "401") {
						// location.href = "/web/index.html?v_=_version1_";
						// 에러 페이지로 이동할것인지 사양이 필요함
					} else {
						if (options.error != null || options.error != undefined) {
							if (xhr.status == 0 && xhr.statusText == "error") {
								// $.__log("##### JQuery server_call /
								// statusText is error");
								alert("##### JQuery server_call / statusText is error");
							} else {
								options.error(xhr, ajaxOptions, thrownError);
							}
						}
					}
				},
				complete : options.complete
			});

	return xhr;
};

/**
 * 2014-02-11 최유진 상품에 관한 카테고리 관련 비동기 호출 후 셀렉트 박스에 옵션 추가
 * 
 * @returns {String}
 */
/*function gf_getCatesDepthLevelList(Depth, allDepth, arrBindComponent) {
	var requestData = {
		submissionID : "catesDepth",
		depth : Depth,
		alldepth : allDepth
	}; // 넘길 데이타
	$.ajax({
		type : "POST",
		url : "/manager/common/catesdepthlevellist.do",
		contentType : "application/json; charset=UTF-8",
		dataType : "json",
		async : false,
		data : JSON.stringify(requestData).replace(/\"/g, '"'),
		// fnParams: {arrCodemstcd: arrCodemstcd, arrBindComponent:
		// arrBindComponent},
		// beforeSend: setHeader,
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error :  [Message:" + textStatus + "]");
			// alert("error :" + XMLHttpRequest.responseText);
		},
		success : function(data) {// 성공시 셀렉트 박스에 첫 대입
			$("select[name=" + arrBindComponent.cmpObj + "] option").remove();
			len = data.count;
			var json = data.InfoList;

			// 0:선택 1:전체, 2:인덱스 1번째꺼
			if (arrBindComponent.OptionType == "0") {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						"- Depth" + Depth + " 선택 -", ""));
			} else if (arrBindComponent.OptionType == "1") {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						"-전체-", "%"));
			}

			for (var i = 0; i < len; i++) {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						json[i].CID + " : " + json[i].CNAME, json[i].CID));
			}

			if (Depth != '0') {// 하위 구조시

			}
		}
	});
};*/

/**
 * 2014-03-10 최유진 샵 리스트
 * 
 * @returns {String}
 */
/*function gf_getHshopList(data, arrBindComponent) {
	var requestData = data;
	$.ajax({
		type : "POST",
		url : "/manager/common/shoplist.do",
		contentType : "application/json; charset=UTF-8",
		dataType : "json",
		async : false,
		data : JSON.stringify(requestData).replace(/\"/g, '"'),
		// fnParams: {arrCodemstcd: arrCodemstcd, arrBindComponent:
		// arrBindComponent},
		// beforeSend: setHeader,
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error :  [Message:" + textStatus + "]");
			alert("error :" + XMLHttpRequest.responseText);
		},
		success : function(data) {// 성공시 셀렉트 박스에 첫 대입
			len = data.Count;
		
				$("select[id=" + arrBindComponent.cmpObj + "] option")
						.remove();	
				var json = data.InfoList;

				// 0:선택 1:전체, 2:인덱스 1번째꺼
				if (arrBindComponent.OptionType == "0") {
					$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
							"- 선택 -", ""));
				} else if (arrBindComponent.OptionType == "1") {
					$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
							"-전체-", "%"));
				}
			if (len > 0) {
				for (var i = 0; i < len; i++) {
					$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
							json[i].NAME, json[i].SID));
				}
			} else {
				alert("검색 결과가 없습니다.");
			}
		}
	});
};*/

/**
 * 2014-02-21 최유진 상품에 관한 카테고리 관련 비동기 호출 후 셀렉트 박스에 옵션 추가
 * 
 * @returns {String}
 */
/*function gf_getShopList(dep, arrBindComponent) {
	var requestData = {
		submissionID : "shoplist"
	}; // 넘길 데이타
	$.ajax({
		type : "POST",
		url : "/manager/category/ajaxmatchingSetUpFormShopList.do",
		contentType : "application/json; charset=UTF-8",
		dataType : "json",
		async : false,
		data : JSON.stringify(requestData).replace(/\"/g, '"'),
		// fnParams: {arrCodemstcd: arrCodemstcd, arrBindComponent:
		// arrBindComponent},
		// beforeSend: setHeader,
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error :  [Message:" + textStatus + "]");
			alert("error :" + XMLHttpRequest.responseText);
		},
		success : function(data) {// 성공시 셀렉트 박스에 첫 대입

			$("select[name=" + arrBindComponent.cmpObj + "] option").remove();
			len = data.Count;
			var json = data.InfoList;

			// 0:선택 1:전체, 2:인덱스 1번째꺼
			if (arrBindComponent.OptionType == "0") {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						"- Depth" + Depth + " 선택 -", ""));
			} else if (arrBindComponent.OptionType == "1") {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						"-전체-", "%"));
			}

			for (var i = 0; i < len; i++) {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						json[i].NAME, json[i].SID));
			}
		}
	});
};*/

/**
 * 2014-02-10 입력한 문자열의 길이가 체크할 길이를 초과하는지 여부를 확인한다. 개발자 : 홍길동 입력한 문자열의 길이가 체크할
 * 길이를 초과하는지 여부를 확인한다.
 * 
 * @example checkLength(문자값,체크할길이)
 */
function isSmallLen(str, len) {

	if (str.length == 0) {
		return true;
	}

	var inputLen = getByteLength(str);
	if (len < inputLen) {
		return false;
	} else {
		return true;
	}
}

/**
 * 2014-02-10 문자에 대한 byte 길이 구하기 개발자 : 홍길동 해당 콤포년트 입력 값의 길이를 체크한다.
 * 
 * @example getByteLength(체크할문자값)
 */
function getByteLength(str) {
	var len = 0;
	for (var i = 0; i < str.length; i++) {
		var oneChar = escape(str.charAt(i));
		if (oneChar.length == 1) {
			len++;
		} else if (oneChar.indexOf("%u") != -1) {
			len += 2;
		} else if (oneChar.indexOf("%") != -1) {
			len += oneChar.length / 3;
		}
	}
	return len;
}

/**
 * 2014-02-10 유효한(존재하는) 일(日) 인지 체크 개발자 : 홍길동
 * 
 * @example
 */
function isValidDay(yyyymmdd) {
	var yyyy = yyyymmdd.substr(0, 4);
	var mm = yyyymmdd.substr(4, 6);
	var dd = yyyymmdd.substr(6, 8);
	alert(yyyy + "/" + mm + "/" + dd);

	var m = parseInt(mm, 10) - 1;
	var d = parseInt(dd, 10);
	var end = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

	if ((yyyy % 4 == 0 && yyyy % 100 != 0) || yyyy % 400 == 0) {
		end[1] = 29;
	}
	return (d >= 1 && d <= end[m]);
}

/**
 * 2014-02-10 url 형식 체크 개발자 : 안지훈 return - true, false
 * 
 * @example checkDetailUrl("체크할url");
 */
function checkDetailUrl(strUrl) {
	var expUrl = /^(http\:\/\/)?((\w+)[.])+(asia|biz|cc|cn|com|de|eu|in|info|jobs|jp|kr|mobi|mx|name|net|nz|org|travel|tv|tw|uk|us)(\/(\w*))*$/i;
	// var expUrl =
	// /(?:(?:(https?|ftp|telnet):\/\/|[\s\t\r\n\[\]\`\<\>\"\'])((?:[\w$\-_\.+!*\'\(\),]|%[0-9a-f][0-9a-f])*\:(?:[\w$\-_\.+!*\'\(\),;\?&=]|%[0-9a-f][0-9a-f])+\@)?(?:((?:(?:[a-z0-9\-가-힣]+\.)+[a-z0-9\-]{2,})|(?:[\d]{1,3}\.){3}[\d]{1,3})|localhost)(?:\:([0-9]+))?((?:\/(?:[\w$\-_\.+!*\'\(\),;:@&=ㄱ-ㅎㅏ-ㅣ가-힣]|%[0-9a-f][0-9a-f])+)*)(?:\/([^\s\/\?\.:<>|#]*(?:\.[^\s\/\?:<>|#]+)*))?(\/?[\?;](?:[a-z0-9\-]+(?:=[^\s:&<>]*)?\&)*[a-z0-9\-]+(?:=[^\s:&<>]*)?)?(#[\w\-]+)?)/gmi;
	return expUrl.test(strUrl);
}


/**
 * 2014-03-15 셀렉트 박스 검사 개발자 : 최유진 return - true, false
 * 
 * @example checkDetailUrl("체크할url");
 */
/*function gf_selectboxcheck(count, name) {
	var go_yn = true;
	for (var i = 0; i < count; i++) {
		var size = $("#" + name + "" + (i + 1) + " option").size();

		if (size > 1) {
			var option = $("#" + name + "" + (i + 1) + " option:selected")
					.val();

			if (option == "") {
				go_yn = false;
			}
		}
	}
	return go_yn;
}*/

/**
 * 2014-02-27 홍길동 현재 일자를 리턴한다.
 * 
 * @returns {String}
 */
function getCurrDate() {
	var date = new Date();
	var yyyy = date.getFullYear();
	var mm = "" + (1 + date.getMonth());
	if (mm.length == 1) {
		mm = "0" + mm;
	}
	var dd = "" + date.getDate();
	if (dd.length == 1) {
		dd = "0" + dd;
	}
	return yyyy + mm + dd;
}

/**
 * 2014-03-11 홍길동 오늘날자에서 파라미터로 넘어온 숫자만금 더해진(증감/가감) 된 날짜를 리턴한다. *
 * 
 * @returns {String}
 */
function getAddDate(addDay, filler) {
	var currDate = getCurrDate();
	var preWeekDate = new Date();
	preWeekDate.setFullYear(currDate.substring(0, 4),
			currDate.substring(4, 6) - 1, parseInt(currDate.substring(6))
					+ addDay);
	var y = preWeekDate.getFullYear();
	var m = preWeekDate.getMonth() + 1;
	var d = preWeekDate.getDate();
	if (m < 10) {
		m = "0" + m;
	}
	if (d < 10) {
		d = "0" + d;
	}

	if (filler == null)
		filler = "";

	return y + filler + m + filler + d;
}

/**
 * 2014-02-10 url 형식 체크 개발자 : 안지훈 return - true, false
 * 
 * @example ValidUrl("체크할url");
 */
function ValidUrl(str) {

	var pattern = new RegExp('^(https?:\\/\\/)?' + // 프로토콜

	'((([a-z\\d]([a-z\\d-]*[a-z\\d])*)\\.)+[a-z]{2,}|' + // 도메인명 <-이부분만 수정됨

	'((\\d{1,3}\\.){3}\\d{1,3}))' + // 아이피

	'(\\:\\d+)?(\\/[-a-z\\d%_.~+]*)*' + // 포트번호

	'(\\?[;&a-z\\d%_.~+=-]*)?' + // 쿼리스트링

	'(\\#[-a-z\\d_]*)?$', 'i'); // 해쉬테그들

	if (!pattern.test(str)) {

		return false;

	} else {

		return true;

	}
}

/**
 * 콤보박스에 들어갈 핫존 셀렉트 박스 공통코드 조회 개발자 : 최유진
 * 
 * 
 * @example getCommonCode(); 설명 : [공통코드명,공통코드명], [{콤보오브젝트명, 콤보오브젝트명}]
 */

/*function gf_getHzoneList(len, arrBindComponent) {

	if (typeof arrBindComponent == "object") {
	}
	var requestData = {

	};
	$.ajax({
		type : "POST",
		url : "/manager/common/hzonelist.do",
		contentType : "application/json; charset=UTF-8",
		dataType : "json",
		async : false,
		data : JSON.stringify(requestData).replace(/\"/g, '"'),
		// fnParams: {arrCodemstcd: arrCodemstcd, arrBindComponent:
		// arrBindComponent},
		// beforeSend: setHeader,
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error :  [Message:" + textStatus + "]");
			// alert("error :" + XMLHttpRequest.responseText);
		},
		success : function(data) {// 성공시 셀렉트 박스에 첫 대입

			plen = data.count;
			var json = data.InfoList;

			for (var o = 0; o < len; o++) {
				// 0:선택 1:전체, 2:인덱스 1번째꺼
				var selectbox = "#" + arrBindComponent.cmpObj + "" + (o + 1);
				if (arrBindComponent.OptionType == "0") {
					$(selectbox)[0].options.add(new Option("-선택-", ""));
				} else if (arrBindComponent.OptionType == "1") {
					$(selectbox)[0].options.add(new Option("-전체-", "%"));
				}

				for (var i = 0; i < plen; i++) {
					$(selectbox)[0].options.add(new Option(json[i].ANAME,
							json[i].AID));
				}
			}
		}
	});
}*/


//핫존 공통 셀렉트 박스 조회 : 개발자 : 최유진
/*function gf_getOzoneList(arrBindComponent) {

	if (typeof arrBindComponent == "object") {
	}
	var requestData = {

	};
	$.ajax({
		type : "POST",
		url : "/manager/common/hzonelist.do",
		contentType : "application/json; charset=UTF-8",
		dataType : "json",
		async : false,
		data : JSON.stringify(requestData).replace(/\"/g, '"'),
		// fnParams: {arrCodemstcd: arrCodemstcd, arrBindComponent:
		// arrBindComponent},
		// beforeSend: setHeader,
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error :  [Message:" + textStatus + "]");
			// alert("error :" + XMLHttpRequest.responseText);
		},
		success : function(data) {// 성공시 셀렉트 박스에 첫 대입

			plen = data.count;
			var json = data.InfoList;

			// 0:선택 1:전체, 2:인덱스 1번째꺼
			var selectbox = "#" + arrBindComponent.cmpObj + "";
			if (arrBindComponent.OptionType == "0") {
				$(selectbox)[0].options.add(new Option("-선택-", ""));
			} else if (arrBindComponent.OptionType == "1") {
				$(selectbox)[0].options.add(new Option("-전체-", "%"));
			}

			for (var i = 0; i < plen; i++) {
				$(selectbox)[0].options.add(new Option(json[i].ANAME,
						json[i].AID));
			}
		}
	});
}*/

/**
 * 콤보박스에 들어갈 핫존 셀렉트 박스 공통코드 areaslist 조회 개발자 : 최유진
 * 
 * @example getCommonCode(); 설명 : [공통코드명,공통코드명], [{콤보오브젝트명, 콤보오브젝트명}]
 */

/*function gf_getAreaslist(depth, aid, arrBindComponent) {

	if (typeof arrBindComponent == "object") {
	}

	var requestData = {
		submissionID : "Arealist",
		depth : depth,
		aid : aid
	};
	$.ajax({
		type : "POST",
		url : "/manager/common/areaslist.do",
		contentType : "application/json; charset=UTF-8",
		dataType : "json",
		async : false,
		data : JSON.stringify(requestData).replace(/\"/g, '"'),
		// fnParams: {arrCodemstcd: arrCodemstcd, arrBindComponent:
		// arrBindComponent},
		// beforeSend: setHeader,
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error :  [Message:" + textStatus + "]");
			// alert("error :" + XMLHttpRequest.responseText);
		},
		success : function(data) {// 성공시 셀렉트 박스에 첫 대입
			$("select[name=" + arrBindComponent.cmpObj + "] option").remove();
			len = data.InfoList.length;

			var json = data.InfoList;

			// 0:선택 1:전체, 2:인덱스 1번째꺼
			if (arrBindComponent.OptionType == "0") {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						"- Depth" + Depth + " 선택 -", ""));
			} else if (arrBindComponent.OptionType == "1") {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						"-전체-", "%"));
			}

			for (var i = 0; i < len; i++) {
				$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
						json[i].ANAME, json[i].AID));
			}
		}
	});
}*/

/**
 * 체크 박스 모두 체크 2014 0313 최유진 gf_checkeboxcheckedall(체크박스 아이디)
 */
/*function gf_checkeboxcheckedall(name) {	
	$("input[id="+name+"]:checkbox").each(function() {
		$(this).prop("checked", true); //
	});
}*/
// 체크 박스 모두 해제  2014 0313 최유진 gf_checkeboxuncheckAll(체크박스 아이디)
/*function gf_checkeboxuncheckAll(name) {
	$("input[id="+name+"]:checkbox").each(function() {
		$(this).prop("checked", false);
	});
}*/
// 체크 되어 있는 값 추출  2014 0313 최유진 gf_getCheckedAll(체크박스 아이디)
/*function gf_getCheckedAll(name) {
	$("input[id="+name+"]:checked").each(function() {
		var test = $(this).val();
		console.log(test);
	});
}*/

/**
 * 콤보박스에 들어갈 핫존 공통코드 areaslist만큼 체크박스 생성 개발자 : 최유진
 * 
 * @example gf_getAreaslistCheckBox(); 설명 : [뎁스,aid코드명], [{콤보오브젝트명, 콤보오브젝트명}]
 */

/*function gf_getAreaslistCheckBox (depth, aid, arrBindComponent) {
    var html = "";
	var requestData = {
		submissionID : "Arealist",
		depth : depth,
		aid : aid
	};
	$.ajax({
		type : "POST",
		url : "/manager/common/areaslist.do",
		contentType : "application/json; charset=UTF-8",
		dataType : "json",
		async : false,
		data : JSON.stringify(requestData).replace(/\"/g, '"'),
		// fnParams: {arrCodemstcd: arrCodemstcd, arrBindComponent:
		// arrBindComponent},
		// beforeSend: setHeader,
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error :  [Message:" + textStatus + "]");
			// alert("error :" + XMLHttpRequest.responseText);
		},
		success : function(data) {// 성공시 셀렉트 박스에 첫 대입
			$("select[name=" + arrBindComponent.cmpObj + "] option").remove();
			len = data.InfoList.length;

			var json = data.InfoList;
			    html+= "<ul>";
			for (var i = 0; i < len; i++) {
				html+= "<li><input id="+arrBindComponent.checkObj+" name="+arrBindComponent.checkObj+" type='checkbox' value="+json[i].AID+" /><label id="+arrBindComponent.checkObj+">"+json[i].ANAME+"</label></li>";
			//	$("#" + arrBindComponent.cmpObj)[0].options.add(new Option(
				//		json[i].ANAME, json[i].AID));
			}
		        html+= "</ul>";
			$("#" + arrBindComponent.cmpObj).html(html);
		}
	});
}*/

/**
 * shopSelectList 공통
* 
* 
* @example gf_getShopSelectList('<c:url value="/common/shopSelectList.do" />', "sid", sid);
* 설명 : '<c:url value="/common/shopSelectList.do" />', selectBox Name, 선택할 selectId
*/
/*function gf_getShopSelectList(url, name, selectId) {
	$.cooCall({
		url:url,
		type:"POST",
		success:function(data){
			
			$("select[name="+name+"] option").remove();
			$("select[name="+name+"]")[0].options.add(new Option("전체" ,"") );
			$("select[name="+name+"]")[0].options.add(new Option("====== 주요업체 ======" ,"") );
			$(data).each(function(key, value){
				if(value.sorting == 1) {
					$("select[name="+name+"]")[0].options.add(new Option(value.name ,value.sid) );
				}
			});
			$("select[name="+name+"]")[0].options.add(new Option("====== 진행중 ======" ,"") );
			$(data).each(function(key, value){
				if(value.sorting == 2) {
					$("select[name="+name+"]")[0].options.add(new Option(value.name ,value.sid) );
				}
			});
			$("select[name="+name+"]")[0].options.add(new Option("====== 중지 ======" ,"") );
			$(data).each(function(key, value){
				if(value.sorting == 3) {
					$("select[name="+name+"]")[0].options.add(new Option(value.name ,value.sid) );
				}
			});
			if(selectId == "") {
				$("select[name="+name+"] option:selected").eq(0);
			} else {
				$("select[name="+name+"]").val(selectId);
			}
		}
	});
}*/

/**
 * 2014-03-20 최유진 상품 번호에 따른 상품 리스트 공통 개발자 : 최유진
 * 
 * @returns {String}
 */
/*function gf_getshopprnumList(data, arrBindComponent) {
	var requestData = data;
	$.ajax({
		type : "POST",
		url : "/manager/common/getshopprnum.do",
		contentType : "application/json; charset=UTF-8",
		dataType : "json",
		async : false,
		data : JSON.stringify(requestData).replace(/\"/g, '"'),
		// fnParams: {arrCodemstcd: arrCodemstcd, arrBindComponent:
		// arrBindComponent},
		// beforeSend: setHeader,
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error :  [Message:" + textStatus + "]");
			alert("error :" + XMLHttpRequest.responseText);
		},
		success : function(data) {

			len = data.Count;
	
				var json = data.InfoList;
				
			if (len > 0) {
				for (var i = 0; i < len; i++) {
					$("#" + arrBindComponent.cmpObj).html("["+json[i].SNAME+"] "+" "+ json[i].DEALNAME +"("+ json[i].NM_PRICE+"원 / "+ json[i].DC_PRICE+")"+"원 / "+ json[i].SDATE+"~"+ json[i].EDATE+" [판매량 : "+ json[i].TOTAL_SALECNT+"]");
				
					if(arrBindComponent.hidden != undefined){//히든 필드값이 있을시 값 대입
						 $(opener.document).find('#'+arrBindComponent.hidden).val(json[i].SID);
					}
				}
				
			} else {
				alert("검색 결과가 없습니다.");
			}
		}
	});
};*/

/**
 * 2014-02-06 레이어 팝업 알림창 및 백그라운드 마스크
 * 메세지를 입력 받아 마스크 및 레이어 팝업 알림창 출력
 * 
 * @example viewLodingImg($("레이어이름").show());
 */
/*$.viewLodingImg = function(){
	$("#mask").css({'width':$(window).width(), 'height':$(window).height()});
	
	var $layerPopupAlertObj = $('#viewLayer').width($(document).width()-70);
	var left = ( $(window).scrollLeft() + ($(window).width() - ($layerPopupAlertObj.width()+50)) / 2 );
	var top = ( $(window).scrollTop() + ($(window).height() - ($layerPopupAlertObj.height()+50)) / 2 );
	$layerPopupAlertObj.css({'left':left,'top':top});

	var $layerPopupObj1 = $('#layerPopupBox').width($(document).width()-80);
	var left1 = ( $(window).scrollLeft() + ($(window).width() - ($layerPopupObj1.width())) / 2 );
	var top1 = ( $(window).scrollTop() + ($(window).height() - ($layerPopupObj1.height())) / 2 );
	$layerPopupObj1.css({'left':left1,'top':top1, 'position':'absolute'});
};*/
/**
 * 2014-02-06 json 데이터 출력
 * json 데이터를 입력 받아 출력
 * 
 * @example JSONtoString("json데이터");
 */
function JSONtoString(object) {
    var results = [];
    for (var property in object) {
        var value = object[property];
        if (value)
            results.push(property.toString() + ': ' + value);
        }
                 
        return '{' + results.join(', ') + '}';
}

/**
 * 2014-10-30 달력
 * json 데이터를 입력 받아 출력(한글용)
 * 
 * @example JSONtoString("json데이터");
 */
$.dateCustomKr = function(inputId, imgUrl, minDate) {
	var dtNow = "";
	
	if(minDate == "Y") {
		dtNow = new Date();
	} else {
		dtNow = "";
	}
	
	//$(inputId).focus().attr('alt','달력보기').attr('readonly','readonly').css({'margin-right':'5px'});
	
	$(inputId).datepicker({
        inline: true,
        closeText: '닫기',  
        prevText: '이전달',  
        nextText: '다음달',  
        currentText: '오늘',  
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],  
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],  
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],  
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],  
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],  
        yearSuffix: '년',  
        showOtherMonths: true, // 나머지 날짜도 화면에 표시  
        minDate: dtNow,
        altFormat: "yy-mm-dd (DD)",
        dateFormat: "yy-mm-dd (DD)", 
        showAnim: "slide", //애니메이션을 적용한다.
        showOn: "button",
        buttonImage: imgUrl,
        buttonImageOnly: true,
        buttonText: "달력보기",
        beforeShow: function(event, ui) {
        	$.each($('.value-holder'),function(index){
            	if ($('ul.new-selectbox').eq(index).css('display') != 'none') {
            		$('ul.new-selectbox').eq(index).trigger('click');
            	}
        	});
            $('select:not([multiple])').blur(); 
        }
	});
};

/**
 * 2014-10-30 달력
 * json 데이터를 입력 받아 출력(영문용)
 * 
 * @example JSONtoString("json데이터");
 */
$.dateCustomEn = function(inputId, imgUrl, minDate) {
	var dtNow = "";
	
	if(minDate == "Y") {
		dtNow = new Date();
	} else {
		dtNow = "";
	}
	
	$(inputId).datepicker({
        inline: true,
        showOtherMonths: true, // 나머지 날짜도 화면에 표시  
        minDate: dtNow,
        //altField: optionId,
        altFormat: "yy-mm-dd",
        dateFormat: "yy-mm-dd",
        minDate: minDate,
        closeText: 'Close',
        showAnim: "slide", //애니메이션을 적용한다.
        showOn: "button",
        buttonImage: imgUrl,
        buttonImageOnly: true,
        buttonText: "Select date"
        /*onSelect: function (dateText, inst) {  
			// 일자 선택된 후 이벤트 발생
        	$('#'+inputId).slideUp(500);
		} */ 
    });
};

//FROM ~ TO 일자수 얻기
//param1 : yyyymmdd 시작일
//param2 : yyyymmdd 종료일
function common_dayDiff(str1, str2) {
	var fromYear;
	var fromMonth;
	var fromDay;
	var fromDate;
	var toYear;
	var toMonth;
	var toDay;
	var toDate;

	fromYear = str1.substring(0,4);
	fromMonth = str1.substring(4,6) - 1;
	fromDay = str1.substring(6);
	fromDate = new Date(fromYear, fromMonth, fromDay);

	toYear = str2.substring(0,4);
	toMonth = str2.substring(4,6) - 1;
	toDay = str2.substring(6);
	toDate = new Date(toYear, toMonth, toDay);

	return Math.ceil((toDate - fromDate) / 1000 / 24 / 60 / 60);
}


function layerAlert(str) {
	noty({
        text        : str,
        type        : 'alert',
        dismissQueue: true,
        closeWith   : ['click', 'backdrop'],
        modal       : true,
        layout      : 'center',
        theme       : 'defaultTheme',
        maxVisible  : 1,
        timeout 	: true,
        buttons     : [
			{addClass: 'noty_btn noty_btn-primary', text: '확인', onClick: function ($noty) {
				$noty.close();
				//noty({dismissQueue: true, force: true, layout: layout, theme: 'defaultTheme', text: 'You clicked "Ok" button', type: 'success'});
				}
			}
		]
    });
}

function leadingZeros(n, digits) {
	var rtnStr = '';
	n = n.toString().split(",");
	
	for(var i= 0; i < n.length; i++){
		var zero = '';
		if (n[i].length < digits) {
			for (var j = 0; j < digits - n[i].length; j++) zero += '0';
		}
		rtnStr += zero + n[i] + ",";
	}
	
	return rtnStr.substr(0,rtnStr.length-1);
}

if (!Object.keys) {
	Object.keys = (function () {
		'use strict';
		var hasOwnProperty = Object.prototype.hasOwnProperty,
	       	hasDontEnumBug = !({toString: null}).propertyIsEnumerable('toString'),
	       	dontEnums = ['toString','toLocaleString','valueOf','hasOwnProperty','isPrototypeOf','propertyIsEnumerable','constructor'],
	       	dontEnumsLength = dontEnums.length;

		return function (obj) {
			if (typeof obj !== 'object' && (typeof obj !== 'function' || obj === null)) {
				throw new TypeError('Object.keys called on non-object');
			}

			var result = [], prop, i;

			for (prop in obj) {
				if (hasOwnProperty.call(obj, prop)) {
					result.push(prop);
				}
			}

			if (hasDontEnumBug) {
				for (i = 0; i < dontEnumsLength; i++) {
					if (hasOwnProperty.call(obj, dontEnums[i])) {
						result.push(dontEnums[i]);
					}
				}
			}
			return result;
	    };
	}());
}