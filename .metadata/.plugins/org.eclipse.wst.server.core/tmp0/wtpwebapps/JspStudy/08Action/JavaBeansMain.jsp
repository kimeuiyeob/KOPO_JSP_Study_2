<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>JAVA BEANS 사용</h3>
	<jsp:useBean id="person" class="common.PersonDTO" scope="request" />
	
	<h3>set property</h3>
	
	<jsp:setProperty property="name" name="person" value="임꺽정"/>
	<jsp:setProperty property="age" name="person" value="40"/>
	
	이름 : <jsp:getProperty property="name" name="person"/> 입니다.<br>
	나이 : <jsp:getProperty property="age" name="person"/> 살<br>
	
	
</body>
</html>