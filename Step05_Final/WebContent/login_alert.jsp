<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("해당 페이지는 로그인이 필요합니다.")
		location.href="${pageContext.request.contextPath}/users/loginform.jsp"
	</script>

</body>
</html>