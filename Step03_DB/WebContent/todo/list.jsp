<%@page import="test.todo.dao.TodoDao"%>
<%@page import="java.util.List"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	TodoDao dao= TodoDao.getInstance();
 	List<TodoDto> list= dao.selectAll();
 	
 	//한 페이지에 몇개씩 표시할 것인지
    final int PAGE_ROW_COUNT=5;
    //하단 페이지를 몇개씩 표시할 것인지
    final int PAGE_DISPLAY_COUNT=5;
    
    //보여줄 페이지의 번호를 일단 1이라고 초기값 지정
    int pageNum=1;
    //페이지 번호가 파라미터로 전달되는지 읽어와 본다.
    String strPageNum=request.getParameter("pageNum");
    //만일 페이지 번호가 파라미터로 넘어 온다면
    if(strPageNum != null){
       //숫자로 바꿔서 보여줄 페이지 번호로 지정한다.
       pageNum=Integer.parseInt(strPageNum);
    }
    
    //보여줄 페이지의 시작 ROWNUM
    int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
    //보여줄 페이지의 끝 ROWNUM
    int endRowNum=pageNum*PAGE_ROW_COUNT;
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
<jsp:include page="/include/navbar.jsp">
	<jsp:param value="todo" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1 style="text-align: center;">To do List</h1>
	<table class="table caption-top" >
	  <caption style="text-align:right;">
	  	<a href="insertform.jsp" style="color:primary;">
		  	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
			  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
			  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
			</svg>
		</a>  
			  
	  </caption>
	  <thead>
	    <tr>
	      <th scope="col">no</th>
	      <th scope="col">Content</th>
	      <th scope="col">Date</th>
	      <th scope="col">edit</th>
	      <th scope="col">delete</th>
	     
	    </tr>
	  </thead>
	  <tbody>
	  	<% for(TodoDto tmp:list){ %>
		  	<tr>
			      <td><%=tmp.getNum() %></td>
			      <td><%=tmp.getContent() %></td>
			      <td><%=tmp.getRegdate() %></td>
					<td><a href="updateform.jsp?num=<%=tmp.getNum()%>" style="color:black;">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
						  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
						  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
						</svg>
					</a></td>
					<td><a href="delete.jsp?num=<%=tmp.getNum()%>" style="color:red;">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-x" viewBox="0 0 16 16">
						  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
						  <path fill-rule="evenodd" d="M12.146 5.146a.5.5 0 0 1 .708 0L14 6.293l1.146-1.147a.5.5 0 0 1 .708.708L14.707 7l1.147 1.146a.5.5 0 0 1-.708.708L14 7.707l-1.146 1.147a.5.5 0 0 1-.708-.708L13.293 7l-1.147-1.146a.5.5 0 0 1 0-.708z"/>
						</svg>
		    </tr>
	  	<%} %>
	    
	    
	  </tbody>
	</table>
	
</div>
<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>