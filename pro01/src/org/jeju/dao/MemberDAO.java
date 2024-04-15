package org.jeju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.jeju.dto.Member;
import org.jeju.dto.Notice;

public class MemberDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Member> getMemberList(){
		List<Member> memList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_MEMBER);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Member mem = new Member(rs.getString("name"),
						rs.getString("pw"),
						rs.getString("tel"),
						rs.getString("addr"),
						rs.getString("brith"),
						rs.getString("id"));
				memList.add(mem);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return memList;
	}
	
	public Member getMember(String id) {
		Member mem = new Member();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ONE_MEMBER);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mem.setId(rs.getString("id"));
				mem.setPw(rs.getString("pw"));
				mem.setName(rs.getString("name"));
				mem.setAddr(rs.getString("addr"));
				mem.setTel(rs.getString("tel"));
				mem.setBrith(rs.getString("brith"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return mem;
	}
	
	public int join(Member mem) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.INS_MEMBER);
			pstmt.setString(1, mem.getName());
			pstmt.setString(2, mem.getPw());
			pstmt.setString(3, mem.getTel());
			pstmt.setString(4, mem.getAddr());
			pstmt.setString(5, mem.getBrith());
			pstmt.setString(6, mem.getId());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int upMember(Member mem) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_MEMBER);
			pstmt.setString(1, mem.getName());
			pstmt.setString(2, mem.getPw());
			pstmt.setString(3, mem.getTel());
			pstmt.setString(4, mem.getAddr());
			pstmt.setString(5, mem.getBrith());
			pstmt.setString(6, mem.getId());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int memberOut(String id) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_MEMBER);
			pstmt.setString(1, id);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
		public boolean idCheck(String id) {
			boolean ck = false;
			OracleDB oracle = new OracleDB();
			try {
				con = oracle.connect();
				pstmt = con.prepareStatement(SqlLang.SELECT_ONE_MEMBER);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					ck = true;
				} else {
					ck = false;
				}
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				oracle.close(con, pstmt, rs);
			}
			return ck;
	}
}