<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String loc1 = request.getParameter("loc1");
	String loc2 = request.getParameter("loc2");
	%>
	
	<h3>request 확인</h3>
	장소1 : <%= loc1%> <br>
	장소2 : <%= loc2%> <br>
	
	파람 장소1 : ${param.loc1} <br>
	파람 장소2 : ${param.loc2} <br>

</body>
</html>