<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String pValue = "김의엽짱짱맨";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="person" class="common.PersonDTO" scope="request"></jsp:useBean>

<jsp:setProperty property="name" name="person" value="손오공"/>
<jsp:setProperty property="age" name="person" value="2000"/>


<jsp:forward page="ParamForward.jsp?param1=루피">
	<jsp:param value="미쿡 워싱턴" name="param2"/>
	<jsp:param value="<%=pValue%>" name="param3"/>
</jsp:forward>


</body>
</html>