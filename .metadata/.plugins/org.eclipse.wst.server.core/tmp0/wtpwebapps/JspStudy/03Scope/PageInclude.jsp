<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="common.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	int pPageInt = (Integer) pageContext.getAttribute("pageInt");
	String pString = pageContext.getAttribute("pageStr").toString();
	PersonDTO pPerson = (PersonDTO) (pageContext.getAttribute("pagePerson"));
	%>

	<%
	PersonDTO person = (PersonDTO) pageContext.getAttribute("pagePerson");
	out.print("pagePerson 이름 : " + person.getName());
	out.print("pagePerson 나이 : " + person.getAge());
	%>

</body>
</html>