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

	<h3>회원 추가 executeUpdate() 함수</h3>

	<%
	
	/* 업데이트 */
	JDBConnecter jDBConnecter = new JDBConnecter(application);

	String id = "김의엽";
	String pass = "1234";
	String name = "kim";

	String sql = "insert into member values (?,?,?,sysdate)";

	PreparedStatement psmt = jDBConnecter.con.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pass);
	psmt.setString(3, name);

	int intResult = psmt.executeUpdate();
	out.print(intResult + " 입력 완료!!");

	jDBConnecter.JDBConnecterClose(); 
	
	
	/* =========================================================================== */
	
	
	/* 조회 */
	JDBConnecter jDBConnecter2 = new JDBConnecter(application);

	String sql2 = "select * from member";

	Statement stmt = jDBConnecter2.con.createStatement();
	ResultSet rs = stmt.executeQuery(sql2);
	
	while(rs.next()) {
		
		if(rs.getString(1).equals("김의엽")) {
			out.print("ID:<h1 style='color : blue'>" + rs.getString(1) + "짱</h1><br>");
		}else {
		out.print("ID : " + rs.getString(1) + "<br>");
		}
		
		out.print("PASS : " + rs.getString(2) + "<br>");
		out.print("NAME : " + rs.getString(3) + "<br>");
		
		Date regiDate = rs.getDate("regiDate");
		out.print("DATE : " + regiDate + "<br>");
		
		out.print("=============================<br>");
	};
	
	jDBConnecter.JDBConnecterClose();
	
	%>

</body>
</html>