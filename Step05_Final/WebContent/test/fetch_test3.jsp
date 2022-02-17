<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/fetch_test3.jsp</title>
</head>
<body>
	<a href="get_msg3.jsp?msg=hello">요청하기</a>
	<br />
	<input type="text" id="inputMsg" placeholder="write sth..." />
	<button id="sendBtn">get send</button>
	<button id="sendBtn2">post send</button>
	<button id="sendBtn3">Post send(gura_util.js)</button>
	<script src="${pageContext.request.contextPath}/js/gura_util.js"></script>
	<script>
		document.querySelector("#sendBtn").addEventListener("click",function(){
			let msg= document.querySelector("#inputMsg").value;
			fetch("get_msg3.jsp?msg="+msg)
			.then(function(response){
				return response.text();
			})
			.then(function(data){
				console.log(data);
			});
		})
		
		 document.querySelector("#sendBtn2").addEventListener("click", function(){
         //입력한 문자열을 읽어온다. 
	         let msg=document.querySelector("#inputMsg").value;
	         
	         fetch("get_msg3.jsp",{
	            method:"POST",
	            headers:{"Content-Type":"application/x-www-form-urlencoded; charset=utf-8"},
	            body:"msg="+msg
	         })
	         .then(function(response){
	            return response.text();
	         })
	         .then(function(data){
	            console.log(data);
	         });
	      });
		
		document.querySelector("#sendBtn3").addEventListener("click", function(){
	         //입력한 문자열을 읽어온다. 
		         let msg=document.querySelector("#inputMsg").value;
		         
		         ajaxPromise("get_msg3.jsp", "POST","msg="+msg)
		         })
		         .then(function(response){
		            return response.text();
		         })
		         .then(function(data){
		            console.log(data);
		         });
		      });

	</script>
</body>
</html>