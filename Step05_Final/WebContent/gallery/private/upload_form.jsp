<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/gallery/upload_form.jsp</title>
</head>
<jsp:include page="/include/resource.jsp"></jsp:include>
<body>
<jsp:include page="/include/navbar.jsp">
	<jsp:param value="gallery" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>이미지 업로드 폼</h1>
	<form action="upload.jsp" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="caption">설명</label>
			<input type="text" name="caption" id="caption"/>
		</div>
		<div class="form-group">
			<label for="image">이미지</label>
			<input type="file" name="image" id="image"
				accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
		</div>
		<button type="submit">업로드</button>
	</form>
</div>
</body>
</html>