package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fortune")
public class FortuneServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<String> list= new ArrayList<String>();
		list.add("동쪽으로 가면 귀인을 만나요");
		list.add("로또를 사면 3등에 당첨될 거에요");
		list.add("이상형을 만나게 될거에요");
		list.add("뜻밖에 횡재를 만납니다");
		list.add("물건을 잃어버려요 조심하세요");
		
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
		pw.println("<title>fortune</title>");
		pw.println("</head>");
		pw.println("<body>");
		
		Random ran= new Random();
		int ranNum=ran.nextInt(5);
		
		pw.println("<p>오늘의 운세: "+list.get(ranNum)+"</p>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
