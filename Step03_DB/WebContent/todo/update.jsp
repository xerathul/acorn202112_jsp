<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int num= Integer.parseInt(request.getParameter("num"));
	String content= request.getParameter("content");
	String date= request.getParameter("date");
	
	TodoDto dto= new TodoDto();
	dto.setNum(num);
	dto.setContent(content);
	dto.setRegdate(date);
	boolean isSuccess=TodoDao.getInstance().update(dto);
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
			alert(<%=num%>+"번의 목록이 수정되었습니다.")
			location.href="list.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("다시 시도해 주세요")
			location.href="updateform.jsp?num=<%=num%>";
		</script>
	<%} %>
</body>
</html>