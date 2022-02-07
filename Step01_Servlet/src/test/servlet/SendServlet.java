package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/send")
public class SendServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		 *  <input type="text" name="msg" placeholder="서버에 할말 입력..."/>
		 *  
		 *  위의 input 요소에 입력한
		 *  
		 *  msg 라는 이름으로 전송된 문자열 추출하기 
		 */
		
		//post 방식 전송했을때 한글 깨지지 않도록 
		req.setCharacterEncoding("utf-8");
		
		String a = req.getParameter("msg");
		System.out.println(a);
		
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
		pw.println("<title></title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("okay~");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}











