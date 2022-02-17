<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="applicaition/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String inputId=request.getParameter("inputId");
	UsersDto dto= UsersDao.getInstance().getData(inputId);
	
%>
<%if(dto==null){%>
	{"isExist":false}
<%}else{  %>
	{"isExist":true}
<%}%>