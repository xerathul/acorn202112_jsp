<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num= Integer.parseInt(request.getParameter("num"));
	boolean isSuccess=TodoDao.getInstance().delete(num);
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
			alert("삭제 되었습니다.");
			//목록 보기로 이동시키기
			location.href="list.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("삭제 되지 않았습니다.(오류발생)")
			location.href="list.jsp";
		</script>
	<%} %>
</body>
</html>