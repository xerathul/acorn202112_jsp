<%@page import="test.todo.dto.TodoDto"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num= Integer.parseInt(request.getParameter("num"));
	TodoDto dto= TodoDao.getInstance().select(num);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
	<h1>Member Edit Form</h1>
	<form action="update.jsp" method="post" class="py-3">
		<input type="hidden" name="num" value="<%=dto.getNum() %>" />
		<div class="mb-2">
			<label class="form-label" for="num">no</label>
			<input class="form-control"  type="text" name="num" id="num" value="<%=dto.getNum() %>" disabled />
		</div>
		<div class="mb-2">
			<label class="form-label" for="content">content</label>
			<input class="form-control"  type="text" name="content" id="content" value="<%=dto.getContent() %>" />
		</div>
		<div class="mb-2">
			<label class="form-label" for="date">date</label>
			<input class="form-control"  type="text" name="date" id="date" value="<%=dto.getRegdate() %>" disabled/>
		</div>
	<button class="btn btn-primary" type="submit">commit</button>
	<button class="btn btn-primary" type="reset">cancel</button>
	</form>
	
	
</div>
</body>
</html>