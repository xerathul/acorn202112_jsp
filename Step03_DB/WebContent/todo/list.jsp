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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<div class="navbar bg-primary navbar-dark navbar-expand-sm">
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">Acorn</a>	
		<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#topNav">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="topNav">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath }/member/list.jsp">member</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="${pageContext.request.contextPath }/todo/list.jsp">todo</a>
				</li>
			</ul>	
		</div>
	</div>
</div>
<div class="container">
	<a href="insertform.jsp">할일 추가</a>
	<h1>할일 목록 입니다.</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>내용</th>
				<th>등록일</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%for(TodoDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getContent() %></td>
				<td><%=tmp.getRegdate() %></td>
				<td><a href="updateform.jsp?num=<%=tmp.getNum() %>">수정</a></td>
				<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
			</tr>
		<%} %>
		</tbody>
	</table>
</div>
</body>
</html>


