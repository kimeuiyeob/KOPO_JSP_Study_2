<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String loginId = CookieManager.readCookie(request, "loginId");
	String cookieCheck = "";

	if (!loginId.equals("")) {
		cookieCheck = "checked";
	}
	
	%>

	<form action="IdSaveProcess.jsp" method="post">
	
		아이디 : <input type="text" placeholder="아이디를 입력해주세요." name="id" value="<%=loginId%>"> 
		<br> 
		아이디 저장하기 : <input type="checkBox" name="check" value="Y" <%=cookieCheck%> id="check"> 
		<br> 
		패스워드 : <input type="password" placeholder="비밀번호를 입력해주세요." name="pw">
		<br> 
		<input type="submit" value="로그인">
		
	</form>

</body>
</html>