<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UsersDto dto=new UsersDto();
	//1.수정할 회원의 정보를 읽어와서
	String id=(String)session.getAttribute("id");
	String email=request.getParameter("email");
	String profile=request.getParameter("profile");
	if(!profile.equals("empty")){
		dto.setProfile(profile);
	}
	
	dto.setId(id);
	dto.setEmail(email);
	//2. DB에수정 하고
	boolean isSuccess= UsersDao.getInstance().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
	<%if(isSuccess){ %>
		<script>
			alert("이메일이 수정되었습니다.");
			location.href="${pageContext.request.contextPath}/users/private/info.jsp";
		</script>
	<%}else{%>
		<script>
			alert("이메일이 수정되지 못했습니다.");
			location.href="${pageContext.request.contextPath}/users/private/updateform.jsp";
		</script>
	<%} %>
</body>
</html>