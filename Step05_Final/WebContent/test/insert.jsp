<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title= request.getParameter("title");
	String content= request.getParameter("content");
	System.out.println(content);
%>
<!DOCTYPE html>
<html>
<style>
	#content{
	  width: 800px;
      border: 1px dotted #cecece;
      box-shadow: 3px 3px 5px 6px #ccc;

	}
	img{
		width:400px;
		height:500px;
	}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p><%=title %></p>
<div id="content"><%=content %></div>
</body>
</html>