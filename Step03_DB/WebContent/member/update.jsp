<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. form 전송되는 수정할 회원의 정보를 얻어와서
	request.setCharacterEncoding("utf-8");
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	
	//2. DB 에 수정 반영하고
	MemberDto dto=new MemberDto();
	dto.setNum(num);
	dto.setName(name);
	dto.setAddr(addr);
	boolean isSuccess=MemberDao.getInstance().update(dto);
	//3. 응답 한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/update.jsp</title>
</head>
<body>
<div class="container">
	<%if(isSuccess){ %>
		<p> 
			<strong><%=num %></strong> 번 회원의 정보를 수정 했습니다.
			<a href="list.jsp">확인</a>
		</p>
	<%}else{ %>
		<p>
			회원 정보 수정 실패!
			<a href="updateform.jsp?num=<%=num%>">다시 시도</a>
		</p>
	<%} %>
</div>
</body>
</html>







