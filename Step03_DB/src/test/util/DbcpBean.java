package test.util;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
/*
 * 	[Data Base Connection Pool Bean]
 * 	- Bean 은 java 객체를 지정하는 단어 이기도 하다.
 * 	- Connection 객체를 관리하는 Pool의 개념을 만들어 놓고 Connection 을 관리한다.
 * 	- Connection 객체가 필요할 때 new DbcpBean().getConn() 해서 Connection 
 * 		객체를 얻어와서 사용하고 Connection 객체의 .close() 메소드를 호출하면 알아서 Pool에 
 * 		반환된다.
 * 	- 이런구조로  사용하는 이유는 Connection 객체를 얻어오는 작업이 웹서버 입장에서 시간이 많이 걸리는 ㅈ
 * 		작업이기 때문에 빠른 응답, 동작을 하기 위해 Pool의 개념을 만들어놓고 사용하는 것이다.
 * */
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
