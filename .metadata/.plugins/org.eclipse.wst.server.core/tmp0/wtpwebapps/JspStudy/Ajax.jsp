<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
	$(function() {
		$("#goAjax").click(function() {

			var id = $("#id").val();
			var pw = $("#pw").val();
			var name = $("#name").val();

			let datas = {
				"id" : id,
				"pw" : pw,
				"name" : name
			};

			$.ajax({
				url : "getAjax.jsp",
				type : "post",
				data : datas,
				success : function(result) {
					console.log("AJAX 성공");
					$('#msg').html(result);
					$('#msg').css("color", "blue");
				},
				error : function(request, status, error) {
					console.log("AJAX 실패");
					console.log("코드 : " + request.status);
					console.log("메시지 : " + request.responseText);
					console.log("에러 : " + error);
				}
			});

		});
	});
</script>

<body>

	<form>
		아이디 : <input type="text" name="id" id="id" placeholder="아이디를 입력해주세요">

		<div id="msg"></div>

		<button type="button" id="goAjax">아이디 중복 확인</button>
		<br> 이름 : <input type="text" name="name" id="name" placeholder="이름을 입력해주세요">
		<br> 비밀번호 : <input type="password" name="pw" id="pw" placeholder="비밀번호를 입력해주세요">
	</form>

</body>
</html>