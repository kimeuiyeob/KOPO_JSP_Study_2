package common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class DBConnectionPool {

	public Connection con; // DB연결
	public Statement stmt; // 파라미터 X 쿼리문
	public PreparedStatement psmt; // 파라미터 O 쿼리문
	public ResultSet rs; // 쿼리문 결과 저장

	// 필요할때만 자원을 쓰고 다시 반납하는 개념이다.
	public DBConnectionPool() {
		// 컨넥션 풀 얻어오기
		try {
			Context initCtx = new InitialContext();
			Context ctx = (Context) initCtx.lookup("java:comp/env"); // 웹 루트경로
			DataSource source = (DataSource) ctx.lookup("dbcp_myoracle");
			// 컨넥션 풀 연결
			con = source.getConnection();
			System.out.println("컨넥션 풀 연결 성공!!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("컨넥션 풀 연결 오류!!");
		}
	}

	public void DBConnectionPoolClose() {
		// 컨넥션 풀 닫기
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (psmt != null)
				psmt.close();
			if (con != null)
				con.close();
			System.out.println("컨넥션 풀 자원 반납 성공!!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("컨넥션 풀 자원 반납 실패!!");
		}
	}

}
