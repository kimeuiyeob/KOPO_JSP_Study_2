<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (Cookie c : cookies) {
			String cookieName = c.getName();
			String cookieValue = c.getValue();
			out.print("쿠키이름 : " + cookieName + "<br>");
			out.print("쿠키값 : " + cookieValue + "<br>");
			out.print("쿠키 생명주기 : " + c.getMaxAge() + "<br>");
		}
	}
	%>

</body>
</html>