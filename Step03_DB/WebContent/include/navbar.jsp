<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// thisPage라는 파라미터 명으로 전달되는 값을 읽어와 본다.( null 일수도 있음)
	String thisPage= request.getParameter("thisPage");
	
	if(thisPage==null){
		thisPage="";
	}
%> 
<p> </p>   
<div class="navbar bg-primary navbar-dark navbar-expand-sm">
   <div class="container">
      <a class="navbar-brand" href="/Step03_DB/index.jsp">Home</a>   
      <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#topNav">
         <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="topNav">
         <ul class="navbar-nav">
            <li class="nav-item " >
               <a class="nav-link <%=thisPage.equals("member") ? "active":""%>" href="${pageContext.request.contextPath }/member/list.jsp">member</a>
            </li>
            <li class="nav-item">
               <a class="nav-link <%=thisPage.equals("todo") ? "active":""%>" href="${pageContext.request.contextPath }/todo/list.jsp">todo</a>
            </li>
         </ul>   
      </div>
   </div>
</div>