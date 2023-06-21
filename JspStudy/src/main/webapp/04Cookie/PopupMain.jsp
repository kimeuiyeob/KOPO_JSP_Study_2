<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String popupMode = "on";

Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (Cookie c : cookies) {
		String cookieName = c.getName();
		String cookieVal = c.getValue();
		if (cookieName.equals("popupMode")) {
	popupMode = cookieVal;
		}
	}
}
%>

<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 팝업 관리</title>
<style>
div#popup {
	position: absolute;
	top: 100px;
	left: 50px;
	color: yellow;
	width: 270px;
	height: 100px;
	background-color: gray;
}

div#popup>div {
	position: relative;
	background-color: #ffffff;
	top: 0px;
	border: 1px solid gray;
	padding: 10px;
	color: black;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>

	$(function() {
		$('#closeBtn').click(function() {
			/* $('#popup').hide(); */
			$('#popup').css('display', 'none');

			//해당 체크박스가 체크가 되있을시에만 밸류 1을 가져오고 아니면 undifiend를 가져온다.
			var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();

			let datas = { //데이터를 담아서 보낼때 키와 밸류 형식으로 보낸다.
				checkStatus : chkVal
			}; 

			$.ajax({
				url : "./PopupCookie.jsp",
				type : "post",
				data : datas,
				success : function(resp) {
					/* 	if (resp != "") {
							location.reload();
						} */
				},
				error : function(request, status, error) {
					console.log("request : " + request.status);
					console.log("status : " + request.responseText);
					console.log("error : " + error);
				}
			})

		});
	});
	
</script>
</head>
<body>

	<h2>팝업 메인 페이지</h2>

	<%
	for (int i = 1; i <= 10; i++) {
		out.print("현재 팝업창은 " + popupMode + " 상태입니다.<br/>");
	}

	if (popupMode.equals("on")) {
	%>

	<div id="popup">
		<h2 align="center">공지사항 팝업입니다.</h2>
		<div align="right">
			<form name="popFrm">
				<input type="checkbox" id="inactiveToday" value="1" /> 하루 동안 열지 않음 <input type="button" value="닫기" id="closeBtn" />
			</form>
		</div>
	</div>

	<%
	}
	%>

</body>
</html>