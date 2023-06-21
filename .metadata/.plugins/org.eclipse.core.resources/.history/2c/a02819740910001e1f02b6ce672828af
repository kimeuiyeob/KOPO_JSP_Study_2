<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model1.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	BoardDao boardDao = new BoardDao(application); //DB 열기
	Map<String, Object> map = new HashMap<>();

	String searchField = request.getParameter("searchField");
	String searchWord = request.getParameter("searchWord");

	if (searchWord != null) {
		map.put("searchField", searchField);
		map.put("searchWord", searchWord);
	}

	int totalCount = boardDao.selectCount(map); //해당 검색된 게시물의 총개수
	List<BoardDto> boardLists = boardDao.selectList(map); //해당 검색된 게시물 전부

	boardDao.JDBConnecterClose(); //DB 닫기
	%>

	<jsp:include page="../07Common/Link.jsp" />
	<!-- 공통 링크 -->

	<h2>목록 보기(List)</h2>
	<!-- 검색폼 -->
	<form method="get">
		<table border="1" width="90%">
			<tr>
				<td align="center"><select name="searchField">
						<option value="title">제목</option>
						<option value="content">내용</option>
				</select> <input type="text" name="searchWord" /> <input type="submit" value="검색하기" /></td>
			</tr>
		</table>
	</form>
	<!-- 게시물 목록 테이블(표) -->
	<table border="1" width="90%">
		<!-- 각 칼럼의 이름 -->
		<tr>
			<th width="10%">번호</th>
			<th width="50%">제목</th>
			<th width="15%">작성자</th>
			<th width="10%">조회수</th>
			<th width="15%">작성일</th>
		</tr>
		<!-- 목록의 내용 -->
		<%
		if (boardLists.isEmpty()) {
			// 게시물이 하나도 없을 때
		%>
		<tr>
			<td colspan="5" align="center">등록된 게시물이 없습니다^^*</td>
		</tr>
		<%
		} else {
		// 게시물이 있을 때 
		int virtualNum = 0; // 화면상에서의 게시물 번호
		for (BoardDto dto : boardLists) {
			virtualNum = totalCount--; // 전체 게시물 수에서 시작해 1씩 감소
		%>
		<tr align="center">
			<td><%=virtualNum%></td>
			<!--게시물 번호-->
			<td align="left">
				<!--제목(+ 하이퍼링크)--> <a href="View.jsp?num=<%=dto.getNum()%>"><%=dto.getTitle()%></a>
			</td>
			<td align="center"><%=dto.getId()%></td>
			<!--작성자 아이디-->
			<td align="center"><%=dto.getVisitcount()%></td>
			<!--조회수-->
			<td align="center"><%=dto.getPostdate()%></td>
			<!--작성일-->
		</tr>
		<%
		}
		}
		%>
	</table>
	<!--목록 하단의 [글쓰기] 버튼-->
	<table border="1" width="90%">
		<tr align="right">
			<td><button type="button" onclick="location.href='Write.jsp';">글쓰기</button></td>
		</tr>
	</table>

</body>
</html>