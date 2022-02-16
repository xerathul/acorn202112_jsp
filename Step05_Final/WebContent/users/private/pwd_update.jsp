<%@page import="java.net.URLEncoder"%>
<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	//session scope에서 수정할 회원의 아이디를 읽어온다.
 	String id= (String)session.getAttribute("id");
 	String pwd= request.getParameter("pwd");
 	String newPwd= request.getParameter("newPwd");
 	
 	//DB에 수정 반영하고 성공여부를 리턴 받는다.
 	UsersDto dto= new UsersDto();
 	dto.setId(id);
 	dto.setPwd(pwd);
 	dto.setNewPwd(newPwd);
 	boolean isSuccess=UsersDao.getInstance().pwdUpdate(dto);
 	//응답한다.
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(isSuccess){ 
		//로그아웃 처리
		session.removeAttribute("id");
	%>
		<script>
			alert("비밀번호가 수정되었습니다. 다시 로그인 해주세요");
			location.href="${pageContext.request.contextPath}/users/loginform.jsp";
		</script>
	<%}else{%>
		<script>
			alert("비밀번호가 일치하지 않습니다");
			location.href="${pageContext.request.contextPath}/users/private/pwd_updateform.jsp";
		</script>
	<%} %>
</body>
</html>