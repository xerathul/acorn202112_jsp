<%@page import="test.todo.dto.TodoDto"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//할일 목록 읽어오기
	List<TodoDto> list=TodoDao.getInstance().selectAll();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
</head>
<body>
<div class="container">
	<a href="insertform.jsp">할일 추가</a>
	<h1>할일 목록 입니다.</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>내용</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
		<%for(TodoDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getContent() %></td>
				<td><%=tmp.getRegdate() %></td>
			</tr>
		<%} %>
		</tbody>
	</table>
</div>
</body>
</html>


