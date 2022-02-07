package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/users/signup")
public class SignupServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//한글 인코딩 설정
		req.setCharacterEncoding("utf-8");
		
		//이메일
		String email=req.getParameter("email");
		//성별
		String gender=req.getParameter("gender");
		//취미(선택한 취미가 없으면 null 이 리턴된다)
		String[] hobby=req.getParameterValues("hobby");
		//직업
		String job=req.getParameter("job");
		//점심
		String lunch=req.getParameter("lunch");
		//하고 싶은 말
		String comment=req.getParameter("comment");
		System.out.println("이메일:"+email);
		System.out.println("성별:"+gender);
		
		// NullPointerException 을 발생시키지 않으려면 
		if(hobby != null) {
			for(int i=0; i<hobby.length; i++) {
				String tmp=hobby[i];
				System.out.println("취미:"+tmp);
			}
		}
		
		System.out.println("직업:"+job);
		System.out.println("점심:"+lunch);
		System.out.println("하고 싶은말:"+comment);
		
		//응답하기 
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
		pw.println("<title>회원가입 결과 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<p>가입 되었습니다.</p>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}





















