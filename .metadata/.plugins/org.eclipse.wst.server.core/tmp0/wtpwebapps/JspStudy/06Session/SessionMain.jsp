<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	SimpleDateFormat sf = new SimpleDateFormat("yyyy/mm/dd HH:mm:ss");
	String timeStart = sf.format(new Date(0));
	out.print("timeStart : " + timeStart);
	
	long createTime = session.getCreationTime(); //최초 세션 요청 시각 생성
	out.print("createTime : " + createTime);
	String creationTimStr = sf.format(new Date(createTime));

	long lastTime = session.getLastAccessedTime();
	out.print("lastTime : " + lastTime);
	String lastTimStr = sf.format(new Date(lastTime)); //마지막 요청 시각
	%>

	<h3>세션 시간 확인</h3>

	세션 유지 시간 :
	<%=session.getMaxInactiveInterval()%>
	<br>
	<!-- 세션 생명 시간 -->
	세션 아이디 :
	<%=session.getId()%>
	<br> 세션 요청 시각 :
	<%=creationTimStr%>
	<br> 세션 마지막 요청 시각 :
	<%=lastTimStr%>
	<br>

</body>
</html>