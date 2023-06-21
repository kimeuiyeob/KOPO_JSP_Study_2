<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="common.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestScope data check</title>
</head>
<body>

	<%
	request.setAttribute("str", "월요일은 역시 쉽지않아...");
	request.setAttribute("person", new PersonDTO("김의엽", 31));
	%>

	<%
	String str = request.getAttribute("str").toString();
	PersonDTO person = (PersonDTO) request.getAttribute("person");
	%>

	<%="문자열 : " + str%>
	<%="이름 : " + person.getName()%>
	<%="나이 : " + person.getAge()%>

	<h3>request 영역속성 전달 - 포워드 활용</h3>
	<!-- 포워드는 헤더에 담겨서 간다. -->
	<%
	request.getRequestDispatcher("RequestLocation.jsp?param=1").forward(request, response);
	%>


</body>
</html>