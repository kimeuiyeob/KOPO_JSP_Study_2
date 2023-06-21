<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.*"%>

<%
String id = request.getParameter("id");
String check = request.getParameter("check");
String pw = request.getParameter("pw");

out.print("id : " + id + "<br>");
out.print("check : " + check + "<br>");
out.print("pw : " + pw + "<br>");

int cookieTime = 60 * 60 * 24;

if ("kopo".equals(id) && "1234".equals(pw)) {
	if (check != null && check.equals("Y")) {
		CookieManager.makeCookie(response, "loginId", id, cookieTime);
	} else {
		CookieManager.deleteCookie(response, "loginId");
	}
	out.print("로그인 성공");
	/* JSFucntion.alertLocation("로그인성공", "IdSaveMain.jsp", out); */
} else {
	/* JSFucntion.alertBack("로그인실패", out); */
	out.print("로그인 실패");
}
%>
