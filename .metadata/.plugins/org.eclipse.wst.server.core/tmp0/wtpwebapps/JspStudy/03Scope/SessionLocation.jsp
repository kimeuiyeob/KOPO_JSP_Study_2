<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>페이지 이동후 : session 처리 확인</h3>
	<%
	String list = session.getAttribute("lists").toString();
	List<String> lists = (ArrayList<String>) session.getAttribute("lists");
	for (int i = 0; i < lists.size(); i++) {
		out.print((i + 1) + "번째 : " + lists.get(i));
	}
	%>



</body>
</html>