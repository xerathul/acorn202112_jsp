package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/friend/list")
public class FriendServlet extends HttpServlet{
	 @Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<String> list= new ArrayList<String>();
		list.add("김구라");
		list.add("해골");
		list.add("원숭이");
		list.add("주뎅이");
		list.add("덩어리");
		
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 type 설정(웹브라우저에게 html 형식의 문자열을 응답할 예정이라고 알리고)
		resp.setContentType("text/html; charset=utf-8");
		//html 형식의 문자열 응답하기
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title>친구이름 목록 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<h1>친구이름 목록 입니당</h1>");
		pw.println("<ul>");
		for (int i = 0; i < list.size(); i++) {
			pw.println("<li>"+list.get(i)+"</li>");
		}
		//확장 for문 활용법
		for(String tmp:list) {
			pw.println("<li>"+tmp+"</li>");
		}
		pw.println("</ul>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
