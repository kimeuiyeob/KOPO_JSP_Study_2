<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@ page import="common.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>어플리케이션 영역</h3>
	<%
	Map<String,PersonDTO> map = new HashMap<>();
	map.put("AClass",new PersonDTO("euiyeob",31));
	map.put("BClass",new PersonDTO("jeongwoo",27));
	
	application.setAttribute("map", map);
	%>

</body>
</html>