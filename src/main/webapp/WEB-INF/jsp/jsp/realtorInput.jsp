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
<title> 공인중개사 추가</title>
</head>
<body>

		<div class="contianer">
			<h1>공인중개사 추가</h1>
			<form method="get" action="/jsp/test02/add_realtor"><!-- get으로 변경 -->
				<label>상호명</label><input type="text" class="form-control col-3" name="office"><!-- 역시나 이미 그 페이지에 정해진것 -->
				<label>전화번호</label><input type="text" class="form-control col-3" name="phoneNumber">
				<label>주소</label><input type="text" class="form-control col-3" name="address">
				<label>등급</label><input type="text" class="form-control col-3" name="grade">
				<button type="submit" class="btn btn-primary">추가</button><!-- 인풋타입으로 해도 됨 -->
			</form>
			
			
		</div>

</body>
</html>