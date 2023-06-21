<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>외부 파일 1</h3>
	<% String newVar1 = "고구려 세운 동명왕"; %>
	
	page 영역 : <%= pageContext.getAttribute("pAttr") %><br>
	request 영역 : <%= request.getAttribute("rAttr") %><br>

</body>
</html>