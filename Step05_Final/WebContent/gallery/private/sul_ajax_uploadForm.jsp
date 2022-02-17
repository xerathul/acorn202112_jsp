<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<form action="insert.jsp" method="post" id="insertForm">
		<input type="hidden" name="imagePath" id="imagePath" />
		<div>
			<label for="caption">설명</label>
			<input type="text" name="caption" id="caption" />
		</div>
	</form>
	<form action="ajax_upload.jsp" method="post" id="ajaxForm" enctype="multipart/form-data">
		<div>
			<label for="image">이미지</label>
			<input type="file" name="image" id="image"
				accept=".jpg, .jpeg, .png, .JPG, .JPEG"/> 
		</div>
	</form>
	<button id="submitBtn">submit</button>
	<div class="img-wrapper">
		<img />
	</div>
</div>
<script src="${pageContext.request.contextPath}/js/gura_util.js"></script>
<script>
	//이미지를 선택했을 때 실행할 함수
	document.querySelector("#image").addEventListener("change", function(){
		const form=document.querySelector("#ajaxForm");
		ajaxFormPromise(form)
		.then(function(response){
			return response.json();
		})
		.then(function(data){
			console.log(data);
			const path="${pageContext.request.contextPath}"+data.imagePath;
			document.querySelector(".img-wrapper img").setAttribute("src", path);
			document.querySelector("#imagePath").value =data.imagePath;	
		})
	})
	//등록 버튼을 눌렀을 때 첫번째  form을 강제 submit 시키기
	document.querySelector("#submitBtn").addEventListener("click",function(){
		document.querySelector("#insertForm").submit();
	})
	
</script>
</body>
</html>