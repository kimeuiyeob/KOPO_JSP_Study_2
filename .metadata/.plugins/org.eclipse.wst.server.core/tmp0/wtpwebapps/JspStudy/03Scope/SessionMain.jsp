<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="common.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session scope</title>
</head>
<body>

	<%
	List<String> lists = new ArrayList<>();
	lists.add("리스트");
	lists.add("컬렉션");
	session.setAttribute("lists", lists);
	%>

	<a href="SessionLocation.jsp">SessionLocation.jsp 이동!!</a>


</body>
</html>