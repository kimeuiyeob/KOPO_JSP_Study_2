<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="common.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	DBConnectionPool dBConnectionPool = new DBConnectionPool();
	dBConnectionPool.DBConnectionPoolClose();
	%>

</body>
</html>