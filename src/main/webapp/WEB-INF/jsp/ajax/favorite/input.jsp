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
								<!-- 슬림버전이므로 slim 제거 ajax가 없으므로 -->
		<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>   
</head>
<body>
	<div class="container">
		<h1>즐겨 	찾기 추가하기</h1>
		<label>제목</label><br>
		<input type="text" name="name" id="nameInput" class="col-10"> <br><!-- id값 주기 -->
		<label>주소</label><br>
		<input type="text" name="url" id="urlInput" class="col-10"> <button type="submit" id="duplicateBtn" class="btn btn-info"> 중복확인</button> <br>
		<button type="submit" id ="addBtn" class="btn btn-success col-10">추가</button>
	</div>

<script>
	$(document).ready (function(){
		
		
		$("#duplicateBtn").on("click", function(){
			
			let url = $("#urlInput").val();
			
			if(url == ""){
				alert("주소를 입력하세요.");
				return ;
			}
	
		
		//중복확인
		
		$.ajax({
			type:"get"
			, url:"/ajax/favorite/duplicate"
			, data:{"url" : url} 
			, success:function(data) {
				// 중복된 경우 {"is_duplicate":true}
				// 중복되지 않은 경우 {"is_duplicate":false}

			if(data.is_duplicate){
				alert("중복되었습니다.")
			} else {
				alert("사용가능한 url입니다.");
			}
		}
			
			, error:function(){
				alert("추가 에러");
			}
		});
	});
		
		$("#addBtn").on("click", function(){
			let name = $("#nameInput").val();//""안은 에러 안뜨므로 조심
			let url = $("#urlInput").val();
			
			if(name == ""){
				alert("제목을 입력하세요");
				return ;
			}
			
			if(url == ""){
				alert("주소를 입력하세요.");
				return ;
			}
			
			// http로 시작하지 않고 https로 시작하지도 않으면 경고창을 띄워라
			// http://naver.com
			if(!url.startsWith("http://") && !url.startsWith("https://")){
				alert("주소 형식이 잘못되었습니다");
				return ;
			}
			
			
			
			// ?name=네이버&url=https://naver.com
			$.ajax({
				type:"post" //405 메소드 not allowed get/post
				, url:"/ajax/favorite/add" //404에러 뜨면 요놈 볼것 //400 이면 파라미터 문제 또는 변수문제 //500에러면 서버 
				// ?name=네이버&url=https://naver.com
				, data:{"name" : name, "url" : url} //name이라는 파라미터/ 사용자가 입력한값(위에let name)을 변수로
				, success:function(data) {//성공하면 이함수의 파라미터로 api에 response해라 라는 뜻
					// 성공: {"result":"success"}
					// 실패: {"result":"fail"}

				if(data.result == "success"){
					location.href = "/ajax/favorite/list";//문자열로 주소를 넣으면 그 주소로 이동
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