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
		<div class="d-flex">
			<input type="text" name="url" id="urlInput" class="col-10"> 
			<button type="submit" id="duplicateBtn" class="btn btn-info"> 중복확인</button> <br>
			 <!-- 이렇게 div로 잡아준담 d-flex -->
		 </div>
		 <div><small id="idInfo" class="d-none text-danger">중복된 url 입니다.</small></div>
		 <div><small id="idInfo2" class="d-none text-danger">저장 가능한 url 입니다.</small></div>
		<button type="submit" id ="addBtn" class="btn btn-success ">추가</button>
	</div>

<script>
	$(document).ready (function(){
		
		//전역변수
		var isChecked = false;//첨엔체크안된상태
		var isDuplicate = true; // 중복이 된게 초기값
		
		$("#urlInput").on("input", function(){//url 건드렸을때 즉각반응하게끔
			isChecked = false;
			isDuplicate = true;
			$("#idInfo").addClass("d-none");
			$("#idInfo2").addClass("d-none");
			
		});
	
		
		
		
		$("#duplicateBtn").on("click", function(){//해당버튼에대한 클릭이벤트			
			let url = $("#urlInput").val();
			
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
			
			
			$.ajax({ //버튼 안에 아작스가 들어가있어야 함
				type:"post"
				, url:"/ajax/favorite/duplicate"
				, data:{"url" : url} //여기까지가 리퀘스트를 위한 옵션들
				, success:function(data) {
					
					// 중복체크 여부 저장
					isChecked = true;
					
					// 중복된 경우 {"is_duplicate":true}
					// 중복되지 않은 경우 {"is_duplicate":false}
					// 그 리스폰스 규격에 맞춰서 리스폰스 데이터 사용
				if(data.is_duplicate){// 멤버변수처럼 바로 사용할수 있다.
					$("#idInfo").removeClass("d-none");
					$("#idInfo2").addClass("d-none");
					
					isDuplicate = true;
				} else {
					$("#idInfo2").removeClass("d-none");
					$("#idInfo").addClass("d-none");
					
					isDuplicate = false;
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
			
			if(!url.startsWith("http://") && !url.startsWith("https://")){
				alert("주소 형식이 잘못되었습니다");
				return ;
			}
		
			
			// 중복체크가 되지 않은경우
			//if(isChecked == false) {
			if(!isChecked) {
				alert("중복체크를 진행해주세요");
				return ;
			}
			// 중복된 url인 경우
			if(isDuplicate){
				alert("중복된 url 입니다");
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