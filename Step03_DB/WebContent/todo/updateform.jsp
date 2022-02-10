<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 수정할 할일의 번호를 읽어와서 
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당 할일의 정보를 읽어와서
	TodoDto dto=TodoDao.getInstance().select(num);
	//3. 수정 폼에 출력해서 응답한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/updateform.jsp</title>
</head>
<body>
<div class="container">
	<h1>할일 수정 양식</h1>
	<form action="update.jsp" method="post">
		<input type="hidden" name="num" value="<%=dto.getNum()%>"/>
		<div>
			<label for="num">번호</label>
			<input type="text" id="num" value="<%=dto.getNum()%>" disabled/>
		</div>
		<div>
			<label for="content">내용</label>
			<input type="text" name="content" id="content" value="<%=dto.getContent()%>"/>
		</div>
		<div>
			<label for="regdate">등록일</label>
			<input type="text" name="regdate" id="regdate" value="<%=dto.getRegdate()%>" disabled/>
		</div>
		<button type="submit">수정 확인</button>
		<button type="reset">취소</button>
	</form>
</div>
</body>
</html>









