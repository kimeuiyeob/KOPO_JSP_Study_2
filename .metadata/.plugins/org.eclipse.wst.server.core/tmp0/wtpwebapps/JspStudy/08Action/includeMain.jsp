<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String outPath1 = "./Include/OuterPage1.jsp";
String outPath2 = "./Include/OuterPage2.jsp";

pageContext.setAttribute("pAttr", "김의엽");
request.setAttribute("rAttr", "김의엽킹왕짱");


%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>지시어 VS 액션태그 방식 비교</h3>
	
	<!-- 1. 지시어로 인클루드
		 2. newVar1 출력 
		 
		 3. 지시어 include : 표현식으로 경로 지정
		 4. 액션 태그로 include
		 5. 액션 태그로 include 표현식으로 경로 지정
		 6. newVar2 출력-->
	
	<!-- 1. 지시어로 인클루드 -->
	<%-- <%@ include file="./Include/OuterPage1.jsp" %> --%>
	
	<%-- <jsp:include page="./Include/OuterPage1.jsp"/> --%>
	
	<jsp:include page="<%=outPath1%>"/>
		 

</body>
</html>