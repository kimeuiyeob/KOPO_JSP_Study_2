<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
	String result = request.getParameter("checkStatus");
	if (result != null && result.equals("1")) {
		Cookie cookie = new Cookie("popupMode", "off");
		String uri = request.getContextPath();
		cookie.setPath(uri);
		cookie.setMaxAge(60 * 60 * 24);
		response.addCookie(cookie);
	}
	
	%>

</body>
</html>