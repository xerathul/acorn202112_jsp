<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id= (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/Index.jsp</title>
<jsp:include page="/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="/include/navbar.jsp"></jsp:include>
<div class="container">
	
	<%if(id!=null){ %>
		<p>
			<a href="users/private/info.jsp"><%=id %></a>님 로그인 중...
			<a href="${pageContext.request.contextPath}/users/logout.jsp">logout</a>
		</p>
	<%}else{ %>
		<a href="${pageContext.request.contextPath}/users/loginform.jsp">로그인</a>
	<%} %>
		
	<h1>인덱스 페이지 입니다.</h1>
	<ul>
		<li><a href="users/signup_form.jsp">회원가입</a></li>
		
		<li><a href="${pageContext.request.contextPath}/private/study.jsp">회원전용공간(공부)</a></li>
		<li><a href="${pageContext.request.contextPath}/private/game.jsp">회원전용공간(게임)</a></li>
		<li><a href="${pageContext.request.contextPath}/test/upload_form.jsp">파일 업로드</a></li>
	</ul>
</div>
</body>
</html>