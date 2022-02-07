package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/users/login")
public class LoginServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//한글 깨지지 않도록 
		req.setCharacterEncoding("utf-8");
		//요청 파라미터 추출 
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		
		//콘솔창에 출력
		System.out.println(id+"/"+pwd);
		//응답
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
		pw.println("<title>로그인 결과 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<p>로그인 되었습니다</p>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}












