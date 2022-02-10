<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
<jsp:include page="/include/navbar.jsp"></jsp:include>
	
	<div class="container">
		<h1>index Page</h1>
		<p>컨텍스트 경로: <strong>${pageContext.request.contextPath }</strong></p>
		<ul>
			<li><a href="test.jsp">DB Connection Test</a></li>
			<li><a href="member/list.jsp">Member List</a></li>
			<li><a href="todo/list.jsp">To do list</a></li>
		</ul>
	</div>
	
<%--
	[다른 jsp 페이지와 공동으로 응답하기]
	
	-컨텍스트 경로는 쓰지 않는다. /가 곧 WebContent이다.
	- 상대경로도 가능하다
	- include 된 jsp 페이지와 공동으로(협동 작업으로) 응답하는 것이다.
 --%>
<jsp:include page="/include/footer.jsp"></jsp:include>
	
</body>
</html>