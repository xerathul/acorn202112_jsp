<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글 깨지지 않도록
	request.setCharacterEncoding("utf-8");

	//폼 전송되는 파라미터 추출
	String msg=request.getParameter("msg");
	//콘솔에 출력해 보기
	System.out.println(msg);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/send.jsp</title>
</head>
<body>
	<p>클라이언트야 메세지 잘 받았어!</p>
</body>
</html>