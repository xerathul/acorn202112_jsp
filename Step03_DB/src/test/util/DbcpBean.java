package test.util;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DbcpBean {
	private Connection conn;
	
	public DbcpBean() {
		try{
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			//db 연결객체인 Connection 객체의 참조값 얻어오기
			conn = ds.getConnection();
			System.out.println("oracle DB 접속 성공");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//Connection 객체를 리턴해주는 메소드
	public Connection getConn() {
		return conn;
	}
}
