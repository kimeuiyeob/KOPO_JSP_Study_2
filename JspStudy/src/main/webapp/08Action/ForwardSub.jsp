<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>포워드 서브 - 결과</h3>
	<%
	String pageCopeVal = (String)pageContext.getAttribute("pAttr");
	String requestCopeVal = (String)request.getAttribute("rAttr");
	%>
	
	pageCopeVal : <%=pageCopeVal %> <br>
	requestCopeVal : <%=requestCopeVal %> <br>
	
	<jsp:forward page="/08Action/ForwardSubSub.jsp"/>

</body>
</html>