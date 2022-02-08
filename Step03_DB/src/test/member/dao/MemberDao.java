package test.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import test.member.dto.MemberDto;
import test.util.DbcpBean;

public class MemberDao {
	//MemberDao 객체의 참조값을 저장할 static 필드 
	private static MemberDao dao;
	//외부에서 객체 생성하지 못하도록 생성자의 접근 지정자를 private 로 설정
	private MemberDao() {}
	//MemberDao 객체를 한번만 생성해서 그 참조값을 리턴해주는 static 메소드
	public static MemberDao getInstance() {
		//만일 최초 호출되었다면
		if(dao==null) {
			//MemberDao 객체를 생성해서 static 필드에 저장해 놓기 
			dao=new MemberDao();
		}
		//static 필드에 저장된 MemberDao 객체의 참조값을 리턴해 주기
		return dao;
	}
	
	public boolean insert(MemberDto dto) {
		return false;
	}
	public boolean update(MemberDto dto) {
		return false;
	}
	public boolean delete(int num) {
		return false;
	}
	public MemberDto select(int num) {
		return null;
	}
	public List<MemberDto> selectAll(){
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn=new DbcpBean().getConn();
			//실행할 sql 문 준비
			String sql="";
			pstmt=conn.prepareStatement(sql);
			//? 에 값 바인딩하기
			
			//query 문 수행하고 결과 받아오기 
			rs=pstmt.executeQuery();
			while(rs.next()) {
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {}
		}
		
		return null;
	}
}










