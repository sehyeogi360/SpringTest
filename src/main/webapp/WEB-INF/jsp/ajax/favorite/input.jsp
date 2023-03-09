<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨 찾기 추가하기</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    


</head>
<body>
	
	<label>제목</label><br>
	<input type="text" name="name" id="nameInput" class="col-10"> <br>
	<label>주소</label><br>
	<input type="text" name="url" id="urlInput" class="col-10"> <br>	
	<button type="submit" id ="addBtn" class="btn btn-success col-10">추가</button>
	

<script>
	$(document).ready (function(){
		$("#addBtn").on("click", function(){
			let name = $("#nameInput").val();
			let url = $("#urlInput").val();
			
			if(name == ""){
				alert("이름을 입력하세요");
				return ;
			}
			
			if(url == ""){
				alert("주소를 입력하세요.");
				return ;
			}
			
			
			//ajax활용해보기
			
			$.ajax({
				type:"get"
				, url:"/ajax/favorite/add"
				, data:{"name" : name, "url" : url}
				, success:function(data) {
					alert("");
				if(data.result == "success"){
					location.href = "/ajax/favorite/list";
				} else {
					alert("추가 실패");
				}
			}
				
				, error:function(){
					alert("추가 에러");
				}
				
			});
			
			
			
		});
		
	});
	
	
	

</script>

</body>
</html>