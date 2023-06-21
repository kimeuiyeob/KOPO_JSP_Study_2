<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	%>

	<h3>쿠키 설정하기</h3>
	<%
	//쿠키 만들기
	Cookie cookie1 = new Cookie("cooki1", "의엽쿠키1");
	Cookie cookie2 = new Cookie("cookie2", "의엽쿠키2");

	String uri = request.getContextPath(); //루트 경로
	cookie1.setPath(uri);
	cookie2.setPath(uri);
	
	cookie1.setMaxAge(60 * 60 * 24 * 365); //1년
	cookie2.setMaxAge(60 * 60 * 24 * 365); //1년

	//응답헤더에 쿠키를 담아준다.
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	%>

	<h3>쿠키 확인하기</h3>
	<%
	//쿠키는 배열형태로 받는다.
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