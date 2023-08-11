<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="common.*"%>
<%@ page import="java.sql.PreparedStatement"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String title = request.getParameter("title");
	String content = request.getParameter("content");

	/* 게시판 글 추가 */
	JDBConnecter jDBConnecter = new JDBConnecter(application);

	String id = (String)session.getAttribute("UserId");

	String sql = "insert into board (num,title,content,id,postdate,visitcount) values (seq_board_num.nextval, ?, ?, ?, sysdate,0)";

	PreparedStatement psmt = jDBConnecter.con.prepareStatement(sql);
	psmt.setString(1, title);
	psmt.setString(2, content);
	psmt.setString(3, id);

	int intResult = psmt.executeUpdate();

	jDBConnecter.JDBConnecterClose();
	%>


</body>
</html>