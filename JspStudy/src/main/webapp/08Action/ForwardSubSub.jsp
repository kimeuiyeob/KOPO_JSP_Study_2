<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>포워드 서브서브 - 결과</h3>
	<%
	String requestCopeVal = (String) request.getAttribute("rAttr");
	%>

	requestCopeVal : <%=requestCopeVal %> <br>
	
</body>
</html>