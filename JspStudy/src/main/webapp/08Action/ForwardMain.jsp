<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
pageContext.setAttribute("pAttr", "김의엽");
request.setAttribute("rAttr", "김의엽킹왕짱");
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>액션 태그 - Forward</h3>
	<jsp:forward page="/08Action/ForwardSub.jsp"/>

</body>
</html>