package test.filter;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
 * 요청을 가로채서 중간에 원하는 작업을 할 수 있는 필터 만들기
 * 1. javax.servlet.Filter 인터페이스 구현
 * 2. 어떤 요청에 대해 필터링을 할것인지 맵핑한다.
 */

//이 프로젝트의 context 하위의 모든 요청에 대해서 동작할 필터
@WebFilter("/*")
public class EncodingFilter implements Filter{

	@Override
	public void destroy() {
		
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
	     if(request.getCharacterEncoding()==null) {
	    	 request.setCharacterEncoding("utf-8");
	     }
	     chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		
	}
	
}
