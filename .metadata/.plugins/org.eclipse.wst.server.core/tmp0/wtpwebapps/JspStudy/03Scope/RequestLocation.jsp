<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="common.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>RequestLocation.jsp</h2>

	<%
	PersonDTO pPerson = (PersonDTO) (request.getAttribute("person"));
	%>

	<%="문자열 : " + request.getAttribute("str").toString()%>
	<%="이름 : " + pPerson.getName()%>
	<%="나이 : " + pPerson.getAge()%>
	<%="파라미터 : " + request.getParameter("param")%>

</body>
</html>