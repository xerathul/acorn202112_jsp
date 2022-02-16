<%@page import="java.net.URLEncoder"%>
<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	
	//로그인 후 가야할 목적지 정보
	String url=request.getParameter("url");
	//로그인 실패를 대비해서 목적지 정보를 인코딩한 결과도 준비한다.
	String encodeUrl= URLEncoder.encode(url);
   
   //1. 폼 전송되는 파라미터 추출하기 
   String id=request.getParameter("id");
   String pwd=request.getParameter("pwd");
  
   
   //2. dto에 담기
   UsersDto dto=new UsersDto();
   dto.setId(id);
   dto.setPwd(pwd);
   
   //3. db 에  있는지 확인하기
   boolean isSuccess=UsersDao.getInstance().isValid(dto);
   //4. 로그인 처리를 해준다.
   	if(isSuccess){
   		session.setAttribute("id", id);
   	}
   //5.응답
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>알림</h1>
   <%if(isSuccess){ %>
      <p>
         <strong><%=id %></strong>님 로그인 되었습니다.
         <a href="<%= url%>">check</a>
      </p>
   <%}else{ %>
      <p>
         	로그인이 실패 했습니다.
         <a href="${pageContext.request.contextPath}/users/loginform.jsp?url=<%=encodeUrl%>">다시 로그인하러 가기</a>
      </p>
   <%} %>
</body>
</html>