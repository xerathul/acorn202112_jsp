<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/Users/signup_form.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>회원가입 폼 입니다.</h1>
		<form action="signup.jsp" method="post">
			<div class="form">
				<label for="id">id</label>
				<input type="text" name="id" id="id" />
			</div>
			<div>
				<label for="pwd">password</label>
				<input type="password" name="pwd" id="pwd" />
			</div>
			<div>
				<label for="email">email</label>
				<input type="text" name="email" id="email" />
			</div>
			<button type="submit" class="btn btn-primary">sign up</button>
		</form>
	</div>
</body>
</html>