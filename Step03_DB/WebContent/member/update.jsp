<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int num= Integer.parseInt(request.getParameter("num"));
	String name= request.getParameter("name");
	String addr= request.getParameter("addr");
	MemberDto dto= new MemberDto();
	dto.setNum(num);
	dto.setName(name);
	dto.setAddr(addr);
	
	boolean isSuccess=MemberDao.getInstance().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(isSuccess){ %>
		<script>
			alert("수정되었습니다.");
			location.href="list.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("다시 시도해주세요");
			location.href="updateform.jsp";
		</script>
	<%} %>
</body>
</html>