package dao;

import javax.servlet.ServletContext;

import common.JDBConnecter;
import dto.MemberDto;

public class MemberDao extends JDBConnecter {

	public MemberDao(ServletContext application) {
		super(application);
	}

	public MemberDto getMemeberDTO(String memberId, String memberPass) {

		MemberDto memberDto = new MemberDto();
		String query = "select * from member where id = ? and pass = ?";

		try {

			psmt = con.prepareStatement(query);

			psmt.setString(1, memberId);
			psmt.setString(2, memberPass);

			rs = psmt.executeQuery();

			if (rs.next()) {
				memberDto.setId(rs.getString(1));
				memberDto.setPass(rs.getString(2));
				memberDto.setName(rs.getString(3));
				memberDto.setRegidate(rs.getString(4));
			}
			;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return memberDto;
	}

}
