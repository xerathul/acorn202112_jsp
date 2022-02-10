<%@page import="test.todo.dto.TodoDto"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	TodoDao dao= TodoDao.getInstance();
	TodoDto dto= new TodoDto();
	
	String content= request.getParameter("content");
	
	
	dto.setContent(content);
	
	boolean isSuccess=dao.insert(dto);
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
  		alert("추가되었습니다.");
  		location.href="list.jsp"
  	</script>
  <%}else{ %>
  	<script>
  		alert("다시 시도해 주세요")
  		location.href="insertform.jsp"
  	</script>
  <%} %>
</body>
</html>