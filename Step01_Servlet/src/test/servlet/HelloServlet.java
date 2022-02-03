package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 *  [ 서블릿 만드는 방법 ]
 *  
 *  1. HttpServlet 클래스를 상속 받는다. 
 *  
 *  2. serive() 메소드를 오버라이딩 한다.
 *  
 *  3. 어떤경로 요청에 대해서 응답을 할지 맵핑을 한다. 
 */

@WebServlet("/hello")
public class HelloServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//여기서 우리가 원하는대로 응답하기 
		
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//웹브라우저에게 내가 어떤 컨텐츠를 응답할것인지와 문자 인코딩 정보도 같이 알려준다. 
		resp.setContentType("text/html; charset=utf-8");
		
		//요청을 한 웹브라우저에 문자열을 출력할수 있는 객체의 참조값 얻어오기 
		PrintWriter pw=resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title>hello</title>");
		pw.println("</head>");
		pw.println("<body>");
		//DB 에서 회원 목록을 읽어와서 반복문 돌면서 table row  를 출력한다. 
		for(int i=0; i<1000; i++) {
			pw.println("<p>Hello!</p>");
		}
		pw.println("<p>I'm here!</p>");
		pw.println("<p>Bye 잘가</p>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}











