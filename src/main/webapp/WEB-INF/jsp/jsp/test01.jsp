<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>seller 추가</title>
</head>
<body>




	<div class="container"><!-- 컨테이너 추가 -->
	
	<h1>판매자 추가</h1>
	<form method="post" action="/jsp/test01/add_seller"><!-- form 태그안에 넣기 -->
	
		<label>닉네임</label><input type="text" class="form-control col-3" name="nickname"><br>
		<label>프로필 사진 url</label><input type="text" class="form-control col-6" name="profileImage"><br>
		<label>온도</label><input type="text" class="form-control col-3" name="temperature"><br>
		
		<button type ="submit"class="btn btn-primary">추가</button>
	</form>
	</div>
	


</body>
</html>