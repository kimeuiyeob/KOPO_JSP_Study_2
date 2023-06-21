<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="common.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
	JDBConnecter jDBConnecter = new JDBConnecter(application);

	String sql2 = "select * from member";
	Statement stmt = jDBConnecter.con.createStatement();
	ResultSet rs = stmt.executeQuery(sql2);

	String id = request.getParameter("id");
	String pass = request.getParameter("pw");
	String name = request.getParameter("name");
	
	String result = "회원가입이 완료되었습니다.";

	while (rs.next()) {
		if (rs.getString(1).equals(id)) {
			result = "사용 불가능한 아이디 입니다!";
			break;
		}
	}
	
	if(result.equals("회원가입이 완료되었습니다.")) {
		
	String sql = "insert into member values (?,?,?,sysdate)";

	PreparedStatement psmt = jDBConnecter.con.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pass);
	psmt.setString(3, name);

	int intResult = psmt.executeUpdate();
	}

	jDBConnecter.JDBConnecterClose();
	%>

	<%=result%>
	<br>




</body>
</html>