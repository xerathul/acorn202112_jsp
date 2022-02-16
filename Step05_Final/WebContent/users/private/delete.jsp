<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id= (String)session.getAttribute("id");
	boolean isSuccess=UsersDao.getInstance().delete(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(isSuccess){ 
		session.removeAttribute("id");%>
		<script>
			alert("<%=id%>님 탈퇴되었습니다.");
			location.href="${pageContext.request.contextPath}/index.jsp";
		</script>
	<%}else{%>
		<script>
			alert("오류가 발생되었습니다.");
			location.href="${pageContext.request.contextPath}/users/private/info.jsp";
		</script>
	<%} %>
<button ></button>
</body>
</html>