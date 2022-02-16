<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/fortune.jsp</title>
</head>
<body>
	<%
		// "fortuneToday" 라는 키값으로 저장된 String type 데이터 읽어오기 
		String fortuneToday=(String)request.getAttribute("fortuneToday");
	%>
	<p>오늘의 운세: <strong><%=fortuneToday %></strong></p>
	<a href="test/fortune.jsp">request 영역에 담은 내용이 진짜 사라졌나?</a>
</body>
</html>